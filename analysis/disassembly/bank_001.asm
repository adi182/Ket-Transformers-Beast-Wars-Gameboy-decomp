; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    nop                                           ; $4000: $00
    rst RST_18                                    ; $4001: $DF
    ldh [$FFE1], a                                ; $4002: $E0 $E1
    ldh [c], a                                    ; $4004: $E2
    db $E3                                        ; $4005: $E3
    db $E4                                        ; $4006: $E4
    ld [$0607], sp                                ; $4007: $08 $07 $06
    dec b                                         ; $400A: $05
    inc b                                         ; $400B: $04
    inc bc                                        ; $400C: $03
    ld [bc], a                                    ; $400D: $02
    ld bc, $0800                                  ; $400E: $01 $00 $08
    rlca                                          ; $4011: $07
    ld b, $05                                     ; $4012: $06 $05
    inc b                                         ; $4014: $04
    inc bc                                        ; $4015: $03
    ld [bc], a                                    ; $4016: $02
    ld bc, $0800                                  ; $4017: $01 $00 $08
    rlca                                          ; $401A: $07
    ld b, $05                                     ; $401B: $06 $05
    inc b                                         ; $401D: $04
    inc bc                                        ; $401E: $03
    ld [bc], a                                    ; $401F: $02
    ld bc, $0000                                  ; $4020: $01 $00 $00
    push hl                                       ; $4023: $E5
    ldh [$FFE6], a                                ; $4024: $E0 $E6
    ldh [c], a                                    ; $4026: $E2
    rst RST_20                                    ; $4027: $E7
    db $E4                                        ; $4028: $E4
    nop                                           ; $4029: $00
    ld bc, $0302                                  ; $402A: $01 $02 $03
    inc b                                         ; $402D: $04
    dec b                                         ; $402E: $05
    ld b, $07                                     ; $402F: $06 $07
    ld [$0100], sp                                ; $4031: $08 $00 $01
    ld [bc], a                                    ; $4034: $02
    inc bc                                        ; $4035: $03
    inc b                                         ; $4036: $04
    dec b                                         ; $4037: $05
    ld b, $07                                     ; $4038: $06 $07
    ld [$0100], sp                                ; $403A: $08 $00 $01
    ld [bc], a                                    ; $403D: $02
    inc bc                                        ; $403E: $03
    inc b                                         ; $403F: $04
    dec b                                         ; $4040: $05
    ld b, $07                                     ; $4041: $06 $07
    ld [$E9E8], sp                                ; $4043: $08 $E8 $E9
    ld [$ECEB], a                                 ; $4046: $EA $EB $EC
    db $ED                                        ; $4049: $ED
    rlca                                          ; $404A: $07
    ld b, $05                                     ; $404B: $06 $05
    inc b                                         ; $404D: $04
    inc bc                                        ; $404E: $03
    ld [bc], a                                    ; $404F: $02
    ld bc, $0000                                  ; $4050: $01 $00 $00
    ld bc, $0302                                  ; $4053: $01 $02 $03
    inc b                                         ; $4056: $04
    dec b                                         ; $4057: $05
    ld b, $07                                     ; $4058: $06 $07
    nop                                           ; $405A: $00
    ld bc, $0302                                  ; $405B: $01 $02 $03
    inc b                                         ; $405E: $04
    dec b                                         ; $405F: $05
    dec b                                         ; $4060: $05
    inc b                                         ; $4061: $04
    inc bc                                        ; $4062: $03
    ld [bc], a                                    ; $4063: $02
    ld bc, $3100                                  ; $4064: $01 $00 $31
    nop                                           ; $4067: $00
    db $DD                                        ; $4068: $DD
    ld a, $3C                                     ; $4069: $3E $3C
    ld [$C2DE], a                                 ; $406B: $EA $DE $C2
    ei                                            ; $406E: $FB

Jump_001_406F:
    call Call_001_52D9                            ; $406F: $CD $D9 $52
    call Call_001_4093                            ; $4072: $CD $93 $40
    call Call_001_41BC                            ; $4075: $CD $BC $41
    call Call_001_5EA0                            ; $4078: $CD $A0 $5E
    call Call_001_42A9                            ; $407B: $CD $A9 $42
    call Call_001_47B7                            ; $407E: $CD $B7 $47
    call Call_001_6491                            ; $4081: $CD $91 $64
    call Call_001_584A                            ; $4084: $CD $4A $58
    call Call_000_2AC3                            ; $4087: $CD $C3 $2A
    call Call_001_429E                            ; $408A: $CD $9E $42
    call Call_000_0417                            ; $408D: $CD $17 $04
    jp Jump_001_406F                              ; $4090: $C3 $6F $40


Call_001_4093:
    ld hl, $C01A                                  ; $4093: $21 $1A $C0
    inc [hl]                                      ; $4096: $34
    ld hl, $D920                                  ; $4097: $21 $20 $D9
    bit 7, [hl]                                   ; $409A: $CB $7E
    jr z, jr_001_40AA                             ; $409C: $28 $0C

    ld bc, $D900                                  ; $409E: $01 $00 $D9
    ld de, $D680                                  ; $40A1: $11 $80 $D6
    ld hl, $FF98                                  ; $40A4: $21 $98 $FF
    call Call_000_25AB                            ; $40A7: $CD $AB $25

jr_001_40AA:
    ldh a, [$FF98]                                ; $40AA: $F0 $98
    ld [$D954], a                                 ; $40AC: $EA $54 $D9
    ldh a, [$FF99]                                ; $40AF: $F0 $99
    ld [$D953], a                                 ; $40B1: $EA $53 $D9
    and $0F                                       ; $40B4: $E6 $0F
    ld [$D955], a                                 ; $40B6: $EA $55 $D9
    ld a, [$D959]                                 ; $40B9: $FA $59 $D9
    or a                                          ; $40BC: $B7
    jp nz, Jump_001_40C7                          ; $40BD: $C2 $C7 $40

    ldh a, [$FF99]                                ; $40C0: $F0 $99
    bit 4, a                                      ; $40C2: $CB $67
    jp z, Jump_001_40F1                           ; $40C4: $CA $F1 $40

Jump_001_40C7:
    ldh a, [$FF98]                                ; $40C7: $F0 $98
    bit 4, a                                      ; $40C9: $CB $67
    jp z, Jump_001_40E6                           ; $40CB: $CA $E6 $40

Call_001_40CE:
    ld hl, $D959                                  ; $40CE: $21 $59 $D9
    inc [hl]                                      ; $40D1: $34
    ld a, $08                                     ; $40D2: $3E $08
    cp [hl]                                       ; $40D4: $BE
    jp nc, Jump_001_40F1                          ; $40D5: $D2 $F1 $40

    ld hl, $D955                                  ; $40D8: $21 $55 $D9
    res 4, [hl]                                   ; $40DB: $CB $A6
    set 6, [hl]                                   ; $40DD: $CB $F6
    xor a                                         ; $40DF: $AF
    ld [$D959], a                                 ; $40E0: $EA $59 $D9
    jp Jump_001_40F1                              ; $40E3: $C3 $F1 $40


Jump_001_40E6:
    ld hl, $D955                                  ; $40E6: $21 $55 $D9
    set 4, [hl]                                   ; $40E9: $CB $E6
    res 6, [hl]                                   ; $40EB: $CB $B6
    xor a                                         ; $40ED: $AF
    ld [$D959], a                                 ; $40EE: $EA $59 $D9

Jump_001_40F1:
    ld a, [$D95A]                                 ; $40F1: $FA $5A $D9
    or a                                          ; $40F4: $B7
    jp nz, Jump_001_40FF                          ; $40F5: $C2 $FF $40

    ldh a, [$FF99]                                ; $40F8: $F0 $99
    bit 5, a                                      ; $40FA: $CB $6F
    jp z, Jump_001_4129                           ; $40FC: $CA $29 $41

Jump_001_40FF:
    ldh a, [$FF98]                                ; $40FF: $F0 $98
    bit 5, a                                      ; $4101: $CB $6F
    jp z, Jump_001_411E                           ; $4103: $CA $1E $41

    ld hl, $D95A                                  ; $4106: $21 $5A $D9
    inc [hl]                                      ; $4109: $34
    ld a, $08                                     ; $410A: $3E $08
    cp [hl]                                       ; $410C: $BE
    jp nc, Jump_001_4129                          ; $410D: $D2 $29 $41

    ld hl, $D955                                  ; $4110: $21 $55 $D9
    res 5, [hl]                                   ; $4113: $CB $AE
    set 7, [hl]                                   ; $4115: $CB $FE
    xor a                                         ; $4117: $AF
    ld [$D95A], a                                 ; $4118: $EA $5A $D9
    jp Jump_001_4129                              ; $411B: $C3 $29 $41


Jump_001_411E:
    ld hl, $D955                                  ; $411E: $21 $55 $D9
    set 5, [hl]                                   ; $4121: $CB $EE
    res 7, [hl]                                   ; $4123: $CB $BE
    xor a                                         ; $4125: $AF
    ld [$D95A], a                                 ; $4126: $EA $5A $D9

Jump_001_4129:
    ld hl, $DA20                                  ; $4129: $21 $20 $DA
    bit 7, [hl]                                   ; $412C: $CB $7E
    jr z, jr_001_413C                             ; $412E: $28 $0C

    ld bc, $DA00                                  ; $4130: $01 $00 $DA
    ld de, $D6C0                                  ; $4133: $11 $C0 $D6
    ld hl, $FFAB                                  ; $4136: $21 $AB $FF
    call Call_000_25AB                            ; $4139: $CD $AB $25

jr_001_413C:
    ldh a, [$FFAB]                                ; $413C: $F0 $AB
    ld [$DA54], a                                 ; $413E: $EA $54 $DA
    ldh a, [$FFAC]                                ; $4141: $F0 $AC
    ld [$DA53], a                                 ; $4143: $EA $53 $DA
    and $0F                                       ; $4146: $E6 $0F
    ld [$DA55], a                                 ; $4148: $EA $55 $DA
    ld a, [$DA59]                                 ; $414B: $FA $59 $DA
    or a                                          ; $414E: $B7
    jp nz, Jump_001_4159                          ; $414F: $C2 $59 $41

    ldh a, [$FFAC]                                ; $4152: $F0 $AC
    bit 4, a                                      ; $4154: $CB $67
    jp z, Jump_001_4183                           ; $4156: $CA $83 $41

Jump_001_4159:
    ldh a, [$FFAB]                                ; $4159: $F0 $AB
    bit 4, a                                      ; $415B: $CB $67
    jp z, Jump_001_4178                           ; $415D: $CA $78 $41

    ld hl, $DA59                                  ; $4160: $21 $59 $DA
    inc [hl]                                      ; $4163: $34
    ld a, $08                                     ; $4164: $3E $08
    cp [hl]                                       ; $4166: $BE
    jp nc, Jump_001_4183                          ; $4167: $D2 $83 $41

    ld hl, $DA55                                  ; $416A: $21 $55 $DA
    res 4, [hl]                                   ; $416D: $CB $A6
    set 6, [hl]                                   ; $416F: $CB $F6
    xor a                                         ; $4171: $AF
    ld [$DA59], a                                 ; $4172: $EA $59 $DA
    jp Jump_001_4183                              ; $4175: $C3 $83 $41


Jump_001_4178:
    ld hl, $DA55                                  ; $4178: $21 $55 $DA
    set 4, [hl]                                   ; $417B: $CB $E6
    res 6, [hl]                                   ; $417D: $CB $B6
    xor a                                         ; $417F: $AF
    ld [$DA59], a                                 ; $4180: $EA $59 $DA

Jump_001_4183:
    ld a, [$DA5A]                                 ; $4183: $FA $5A $DA
    or a                                          ; $4186: $B7
    jp nz, Jump_001_4191                          ; $4187: $C2 $91 $41

    ldh a, [$FFAC]                                ; $418A: $F0 $AC
    bit 5, a                                      ; $418C: $CB $6F
    jp z, Jump_001_41BB                           ; $418E: $CA $BB $41

Jump_001_4191:
    ldh a, [$FFAB]                                ; $4191: $F0 $AB
    bit 5, a                                      ; $4193: $CB $6F
    jp z, Jump_001_41B0                           ; $4195: $CA $B0 $41

    ld hl, $DA5A                                  ; $4198: $21 $5A $DA
    inc [hl]                                      ; $419B: $34
    ld a, $08                                     ; $419C: $3E $08
    cp [hl]                                       ; $419E: $BE
    jp nc, Jump_001_41BB                          ; $419F: $D2 $BB $41

    ld hl, $DA55                                  ; $41A2: $21 $55 $DA
    res 5, [hl]                                   ; $41A5: $CB $AE
    set 7, [hl]                                   ; $41A7: $CB $FE
    xor a                                         ; $41A9: $AF
    ld [$DA5A], a                                 ; $41AA: $EA $5A $DA
    jp Jump_001_41BB                              ; $41AD: $C3 $BB $41


Jump_001_41B0:
    ld hl, $DA55                                  ; $41B0: $21 $55 $DA
    set 5, [hl]                                   ; $41B3: $CB $EE
    res 7, [hl]                                   ; $41B5: $CB $BE
    xor a                                         ; $41B7: $AF
    ld [$DA5A], a                                 ; $41B8: $EA $5A $DA

Jump_001_41BB:
    ret                                           ; $41BB: $C9


Call_001_41BC:
    ldh a, [$FF99]                                ; $41BC: $F0 $99
    and $80                                       ; $41BE: $E6 $80
    jp z, Jump_001_41E7                           ; $41C0: $CA $E7 $41

    ld hl, $C2F1                                  ; $41C3: $21 $F1 $C2
    set 0, [hl]                                   ; $41C6: $CB $C6
    call Call_001_4212                            ; $41C8: $CD $12 $42

jr_001_41CB:
    ldh a, [$FF99]                                ; $41CB: $F0 $99
    bit 7, a                                      ; $41CD: $CB $7F
    jr nz, jr_001_41DB                            ; $41CF: $20 $0A

    call Call_000_0452                            ; $41D1: $CD $52 $04
    jr jr_001_41CB                                ; $41D4: $18 $F5

    call Call_001_426D                            ; $41D6: $CD $6D $42
    jr jr_001_41CB                                ; $41D9: $18 $F0

jr_001_41DB:
    ld hl, $FF98                                  ; $41DB: $21 $98 $FF
    call Call_001_4245                            ; $41DE: $CD $45 $42
    ld hl, $C2F1                                  ; $41E1: $21 $F1 $C2
    res 0, [hl]                                   ; $41E4: $CB $86
    ret                                           ; $41E6: $C9


Jump_001_41E7:
    ldh a, [$FFAC]                                ; $41E7: $F0 $AC
    and $80                                       ; $41E9: $E6 $80
    jp z, Jump_001_4211                           ; $41EB: $CA $11 $42

    ld hl, $C2F1                                  ; $41EE: $21 $F1 $C2
    set 1, [hl]                                   ; $41F1: $CB $CE
    call Call_001_4212                            ; $41F3: $CD $12 $42

jr_001_41F6:
    ldh a, [$FFAC]                                ; $41F6: $F0 $AC
    bit 7, a                                      ; $41F8: $CB $7F
    jr nz, jr_001_4206                            ; $41FA: $20 $0A

    call Call_000_0452                            ; $41FC: $CD $52 $04
    jr jr_001_41F6                                ; $41FF: $18 $F5

    call Call_001_426D                            ; $4201: $CD $6D $42
    jr jr_001_41F6                                ; $4204: $18 $F0

jr_001_4206:
    ld hl, $FFAB                                  ; $4206: $21 $AB $FF
    call Call_001_4245                            ; $4209: $CD $45 $42
    ld hl, $C2F1                                  ; $420C: $21 $F1 $C2
    res 1, [hl]                                   ; $420F: $CB $8E

Jump_001_4211:
    ret                                           ; $4211: $C9


Call_001_4212:
    ld a, $01                                     ; $4212: $3E $01
    ld [$C01D], a                                 ; $4214: $EA $1D $C0
    ld a, $A8                                     ; $4217: $3E $A8
    call Call_000_1360                            ; $4219: $CD $60 $13
    call Call_000_188C                            ; $421C: $CD $8C $18
    ld a, [$C2F1]                                 ; $421F: $FA $F1 $C2
    bit 0, a                                      ; $4222: $CB $47
    jr z, jr_001_422B                             ; $4224: $28 $05

    ld hl, $9846                                  ; $4226: $21 $46 $98
    jr jr_001_422E                                ; $4229: $18 $03

jr_001_422B:
    ld hl, $984B                                  ; $422B: $21 $4B $98

jr_001_422E:
    ld b, $03                                     ; $422E: $06 $03
    ld a, $7B                                     ; $4230: $3E $7B

jr_001_4232:
    push af                                       ; $4232: $F5
    di                                            ; $4233: $F3

jr_001_4234:
    ldh a, [rSTAT]                                ; $4234: $F0 $41
    bit 1, a                                      ; $4236: $CB $4F
    jr nz, jr_001_4234                            ; $4238: $20 $FA

    pop af                                        ; $423A: $F1
    ld [hl+], a                                   ; $423B: $22
    ei                                            ; $423C: $FB
    inc a                                         ; $423D: $3C
    dec b                                         ; $423E: $05
    jr nz, jr_001_4232                            ; $423F: $20 $F1

    call Call_000_0417                            ; $4241: $CD $17 $04
    ret                                           ; $4244: $C9


Call_001_4245:
    xor a                                         ; $4245: $AF
    ld [$C01D], a                                 ; $4246: $EA $1D $C0
    ld a, $A9                                     ; $4249: $3E $A9
    call Call_000_1360                            ; $424B: $CD $60 $13
    ld a, [$C2F1]                                 ; $424E: $FA $F1 $C2
    bit 0, a                                      ; $4251: $CB $47
    jr z, jr_001_425A                             ; $4253: $28 $05

    ld hl, $9846                                  ; $4255: $21 $46 $98
    jr jr_001_425D                                ; $4258: $18 $03

jr_001_425A:
    ld hl, $984B                                  ; $425A: $21 $4B $98

jr_001_425D:
    ld b, $03                                     ; $425D: $06 $03

jr_001_425F:
    di                                            ; $425F: $F3

jr_001_4260:
    ldh a, [rSTAT]                                ; $4260: $F0 $41
    bit 1, a                                      ; $4262: $CB $4F
    jr nz, jr_001_4260                            ; $4264: $20 $FA

    xor a                                         ; $4266: $AF
    ld [hl+], a                                   ; $4267: $22
    ei                                            ; $4268: $FB
    dec b                                         ; $4269: $05
    jr nz, jr_001_425F                            ; $426A: $20 $F3

    ret                                           ; $426C: $C9


Call_001_426D:
    xor a                                         ; $426D: $AF
    ld [$C01D], a                                 ; $426E: $EA $1D $C0
    ld a, [$C2F1]                                 ; $4271: $FA $F1 $C2
    push af                                       ; $4274: $F5
    xor a                                         ; $4275: $AF
    ld [$C2F1], a                                 ; $4276: $EA $F1 $C2
    call Call_001_4093                            ; $4279: $CD $93 $40
    call Call_001_5EA0                            ; $427C: $CD $A0 $5E
    call Call_001_42A9                            ; $427F: $CD $A9 $42
    call Call_001_47B7                            ; $4282: $CD $B7 $47
    call Call_001_6491                            ; $4285: $CD $91 $64
    call Call_001_584A                            ; $4288: $CD $4A $58
    call Call_000_2AC3                            ; $428B: $CD $C3 $2A
    call Call_001_429E                            ; $428E: $CD $9E $42
    call Call_000_0417                            ; $4291: $CD $17 $04
    pop af                                        ; $4294: $F1
    ld [$C2F1], a                                 ; $4295: $EA $F1 $C2
    ld a, $01                                     ; $4298: $3E $01
    ld [$C01D], a                                 ; $429A: $EA $1D $C0
    ret                                           ; $429D: $C9


Call_001_429E:
    ld a, [$C2DF]                                 ; $429E: $FA $DF $C2
    ld hl, $C2E0                                  ; $42A1: $21 $E0 $C2
    or [hl]                                       ; $42A4: $B6
    ld [$C2E1], a                                 ; $42A5: $EA $E1 $C2
    ret                                           ; $42A8: $C9


Call_001_42A9:
    ld a, [$C2EB]                                 ; $42A9: $FA $EB $C2
    cp $FF                                        ; $42AC: $FE $FF
    jr z, jr_001_42BE                             ; $42AE: $28 $0E

    ld hl, $C2EC                                  ; $42B0: $21 $EC $C2
    ld b, $00                                     ; $42B3: $06 $00
    ld c, a                                       ; $42B5: $4F
    add hl, bc                                    ; $42B6: $09
    dec a                                         ; $42B7: $3D
    ld [$C2EB], a                                 ; $42B8: $EA $EB $C2
    ld a, [hl]                                    ; $42BB: $7E
    ldh [$FFEB], a                                ; $42BC: $E0 $EB

jr_001_42BE:
    ld a, [$D923]                                 ; $42BE: $FA $23 $D9
    bit 1, a                                      ; $42C1: $CB $4F
    jr nz, jr_001_42CD                            ; $42C3: $20 $08

    bit 6, a                                      ; $42C5: $CB $77
    jp nz, Jump_001_42D9                          ; $42C7: $C2 $D9 $42

    jp Jump_001_4302                              ; $42CA: $C3 $02 $43


jr_001_42CD:
    ld a, [$C01A]                                 ; $42CD: $FA $1A $C0
    and $0F                                       ; $42D0: $E6 $0F
    srl a                                         ; $42D2: $CB $3F
    srl a                                         ; $42D4: $CB $3F
    jp Jump_001_42DE                              ; $42D6: $C3 $DE $42


Jump_001_42D9:
    ld a, [$C01A]                                 ; $42D9: $FA $1A $C0
    and $03                                       ; $42DC: $E6 $03

Jump_001_42DE:
    cp $01                                        ; $42DE: $FE $01
    jr z, jr_001_42F0                             ; $42E0: $28 $0E

    cp $02                                        ; $42E2: $FE $02
    jr z, jr_001_42F6                             ; $42E4: $28 $10

    cp $03                                        ; $42E6: $FE $03
    jr z, jr_001_42FC                             ; $42E8: $28 $12

    ld a, $4C                                     ; $42EA: $3E $4C
    ld b, $00                                     ; $42EC: $06 $00
    jr jr_001_433F                                ; $42EE: $18 $4F

jr_001_42F0:
    ld a, $D0                                     ; $42F0: $3E $D0
    ld b, $04                                     ; $42F2: $06 $04
    jr jr_001_433F                                ; $42F4: $18 $49

jr_001_42F6:
    ld a, $34                                     ; $42F6: $3E $34
    ld b, $05                                     ; $42F8: $06 $05
    jr jr_001_433F                                ; $42FA: $18 $43

jr_001_42FC:
    ld a, $54                                     ; $42FC: $3E $54
    ld b, $06                                     ; $42FE: $06 $06
    jr jr_001_433F                                ; $4300: $18 $3D

Jump_001_4302:
    ld a, [$D920]                                 ; $4302: $FA $20 $D9
    bit 6, a                                      ; $4305: $CB $77
    jr nz, jr_001_4312                            ; $4307: $20 $09

    ld a, [$D930]                                 ; $4309: $FA $30 $D9
    bit 0, a                                      ; $430C: $CB $47
    jr nz, jr_001_4312                            ; $430E: $20 $02

    jr jr_001_433B                                ; $4310: $18 $29

jr_001_4312:
    ld a, [$C01A]                                 ; $4312: $FA $1A $C0
    and $03                                       ; $4315: $E6 $03
    cp $01                                        ; $4317: $FE $01
    jr z, jr_001_4329                             ; $4319: $28 $0E

    cp $02                                        ; $431B: $FE $02
    jr z, jr_001_432F                             ; $431D: $28 $10

    cp $03                                        ; $431F: $FE $03
    jr z, jr_001_4335                             ; $4321: $28 $12

    ld a, $8C                                     ; $4323: $3E $8C
    ld b, $00                                     ; $4325: $06 $00
    jr jr_001_433F                                ; $4327: $18 $16

jr_001_4329:
    ld a, $0C                                     ; $4329: $3E $0C
    ld b, $02                                     ; $432B: $06 $02
    jr jr_001_433F                                ; $432D: $18 $10

jr_001_432F:
    ld a, $8C                                     ; $432F: $3E $8C
    ld b, $00                                     ; $4331: $06 $00
    jr jr_001_433F                                ; $4333: $18 $0A

jr_001_4335:
    ld a, $80                                     ; $4335: $3E $80
    ld b, $03                                     ; $4337: $06 $03
    jr jr_001_433F                                ; $4339: $18 $04

jr_001_433B:
    ld a, $8C                                     ; $433B: $3E $8C
    ld b, $00                                     ; $433D: $06 $00

jr_001_433F:
    ld hl, $C037                                  ; $433F: $21 $37 $C0
    bit 7, [hl]                                   ; $4342: $CB $7E
    jr z, jr_001_4348                             ; $4344: $28 $02

    xor $3C                                       ; $4346: $EE $3C

jr_001_4348:
    ldh [rOBP0], a                                ; $4348: $E0 $48
    ld a, [$D682]                                 ; $434A: $FA $82 $D6
    and $F8                                       ; $434D: $E6 $F8
    or b                                          ; $434F: $B0
    ld [$D682], a                                 ; $4350: $EA $82 $D6
    ld a, [$D683]                                 ; $4353: $FA $83 $D6
    and $F8                                       ; $4356: $E6 $F8
    or b                                          ; $4358: $B0
    ld [$D683], a                                 ; $4359: $EA $83 $D6
    ld a, [$C039]                                 ; $435C: $FA $39 $C0
    and $30                                       ; $435F: $E6 $30
    jr nz, jr_001_4387                            ; $4361: $20 $24

    ld a, [$C2C6]                                 ; $4363: $FA $C6 $C2
    and $F0                                       ; $4366: $E6 $F0
    cp $20                                        ; $4368: $FE $20
    jr z, jr_001_4387                             ; $436A: $28 $1B

    ld a, [$D702]                                 ; $436C: $FA $02 $D7
    and $F8                                       ; $436F: $E6 $F8
    or b                                          ; $4371: $B0
    ld [$D702], a                                 ; $4372: $EA $02 $D7
    ld a, [$D782]                                 ; $4375: $FA $82 $D7
    and $F8                                       ; $4378: $E6 $F8
    or b                                          ; $437A: $B0
    ld [$D782], a                                 ; $437B: $EA $82 $D7
    ld a, [$D802]                                 ; $437E: $FA $02 $D8
    and $F8                                       ; $4381: $E6 $F8
    or b                                          ; $4383: $B0
    ld [$D802], a                                 ; $4384: $EA $02 $D8

jr_001_4387:
    ld a, [$DA23]                                 ; $4387: $FA $23 $DA
    bit 1, a                                      ; $438A: $CB $4F
    jr nz, jr_001_4396                            ; $438C: $20 $08

    bit 6, a                                      ; $438E: $CB $77
    jp nz, Jump_001_43A2                          ; $4390: $C2 $A2 $43

    jp Jump_001_43CB                              ; $4393: $C3 $CB $43


jr_001_4396:
    ld a, [$C01A]                                 ; $4396: $FA $1A $C0
    and $0F                                       ; $4399: $E6 $0F
    srl a                                         ; $439B: $CB $3F
    srl a                                         ; $439D: $CB $3F
    jp Jump_001_43A7                              ; $439F: $C3 $A7 $43


Jump_001_43A2:
    ld a, [$C01A]                                 ; $43A2: $FA $1A $C0
    and $03                                       ; $43A5: $E6 $03

Jump_001_43A7:
    cp $01                                        ; $43A7: $FE $01
    jr z, jr_001_43B9                             ; $43A9: $28 $0E

    cp $02                                        ; $43AB: $FE $02
    jr z, jr_001_43BF                             ; $43AD: $28 $10

    cp $03                                        ; $43AF: $FE $03
    jr z, jr_001_43C5                             ; $43B1: $28 $12

    ld a, $8C                                     ; $43B3: $3E $8C
    ld b, $01                                     ; $43B5: $06 $01
    jr jr_001_4408                                ; $43B7: $18 $4F

jr_001_43B9:
    ld a, $E0                                     ; $43B9: $3E $E0
    ld b, $04                                     ; $43BB: $06 $04
    jr jr_001_4408                                ; $43BD: $18 $49

jr_001_43BF:
    ld a, $38                                     ; $43BF: $3E $38
    ld b, $05                                     ; $43C1: $06 $05
    jr jr_001_4408                                ; $43C3: $18 $43

jr_001_43C5:
    ld a, $A8                                     ; $43C5: $3E $A8
    ld b, $06                                     ; $43C7: $06 $06
    jr jr_001_4408                                ; $43C9: $18 $3D

Jump_001_43CB:
    ld a, [$DA20]                                 ; $43CB: $FA $20 $DA
    bit 6, a                                      ; $43CE: $CB $77
    jr nz, jr_001_43DB                            ; $43D0: $20 $09

    ld a, [$DA30]                                 ; $43D2: $FA $30 $DA
    bit 0, a                                      ; $43D5: $CB $47
    jr nz, jr_001_43DB                            ; $43D7: $20 $02

    jr jr_001_4404                                ; $43D9: $18 $29

jr_001_43DB:
    ld a, [$C01A]                                 ; $43DB: $FA $1A $C0
    and $03                                       ; $43DE: $E6 $03
    cp $01                                        ; $43E0: $FE $01
    jr z, jr_001_43F2                             ; $43E2: $28 $0E

    cp $02                                        ; $43E4: $FE $02
    jr z, jr_001_43F8                             ; $43E6: $28 $10

    cp $03                                        ; $43E8: $FE $03
    jr z, jr_001_43FE                             ; $43EA: $28 $12

    ld a, $4C                                     ; $43EC: $3E $4C
    ld b, $01                                     ; $43EE: $06 $01
    jr jr_001_4408                                ; $43F0: $18 $16

jr_001_43F2:
    ld a, $0C                                     ; $43F2: $3E $0C
    ld b, $02                                     ; $43F4: $06 $02
    jr jr_001_4408                                ; $43F6: $18 $10

jr_001_43F8:
    ld a, $4C                                     ; $43F8: $3E $4C
    ld b, $01                                     ; $43FA: $06 $01
    jr jr_001_4408                                ; $43FC: $18 $0A

jr_001_43FE:
    ld a, $40                                     ; $43FE: $3E $40
    ld b, $03                                     ; $4400: $06 $03
    jr jr_001_4408                                ; $4402: $18 $04

jr_001_4404:
    ld a, $4C                                     ; $4404: $3E $4C
    ld b, $01                                     ; $4406: $06 $01

jr_001_4408:
    ld hl, $C037                                  ; $4408: $21 $37 $C0
    bit 7, [hl]                                   ; $440B: $CB $7E
    jr z, jr_001_4411                             ; $440D: $28 $02

    xor $3C                                       ; $440F: $EE $3C

jr_001_4411:
    ldh [rOBP1], a                                ; $4411: $E0 $49
    ld a, [$D6C2]                                 ; $4413: $FA $C2 $D6
    and $F8                                       ; $4416: $E6 $F8
    or b                                          ; $4418: $B0
    ld [$D6C2], a                                 ; $4419: $EA $C2 $D6
    ld a, [$D6C3]                                 ; $441C: $FA $C3 $D6
    and $F8                                       ; $441F: $E6 $F8
    or b                                          ; $4421: $B0
    ld [$D6C3], a                                 ; $4422: $EA $C3 $D6
    ld a, [$C039]                                 ; $4425: $FA $39 $C0
    and $30                                       ; $4428: $E6 $30
    jr nz, jr_001_4450                            ; $442A: $20 $24

    ld a, [$C2C6]                                 ; $442C: $FA $C6 $C2
    and $F0                                       ; $442F: $E6 $F0
    cp $20                                        ; $4431: $FE $20
    jr z, jr_001_4450                             ; $4433: $28 $1B

    ld a, [$D742]                                 ; $4435: $FA $42 $D7
    and $F8                                       ; $4438: $E6 $F8
    or b                                          ; $443A: $B0
    ld [$D742], a                                 ; $443B: $EA $42 $D7
    ld a, [$D7C2]                                 ; $443E: $FA $C2 $D7
    and $F8                                       ; $4441: $E6 $F8
    or b                                          ; $4443: $B0
    ld [$D7C2], a                                 ; $4444: $EA $C2 $D7
    ld a, [$D842]                                 ; $4447: $FA $42 $D8
    and $F8                                       ; $444A: $E6 $F8
    or b                                          ; $444C: $B0
    ld [$D842], a                                 ; $444D: $EA $42 $D8

jr_001_4450:
    ld a, [$C2C6]                                 ; $4450: $FA $C6 $C2
    and $F0                                       ; $4453: $E6 $F0
    cp $20                                        ; $4455: $FE $20
    jr z, jr_001_4472                             ; $4457: $28 $19

    ld a, [$C039]                                 ; $4459: $FA $39 $C0
    and $C0                                       ; $445C: $E6 $C0
    jr z, jr_001_44B7                             ; $445E: $28 $57

    bit 7, a                                      ; $4460: $CB $7F
    jr z, jr_001_4468                             ; $4462: $28 $04

    ld b, $0F                                     ; $4464: $06 $0F
    ld c, $4F                                     ; $4466: $0E $4F

jr_001_4468:
    bit 6, a                                      ; $4468: $CB $77
    jr z, jr_001_448D                             ; $446A: $28 $21

    ld b, $00                                     ; $446C: $06 $00
    ld c, $00                                     ; $446E: $0E $00
    jr jr_001_448D                                ; $4470: $18 $1B

jr_001_4472:
    ld a, [$C039]                                 ; $4472: $FA $39 $C0
    bit 6, a                                      ; $4475: $CB $77
    jr nz, jr_001_4489                            ; $4477: $20 $10

    bit 5, a                                      ; $4479: $CB $6F
    jr nz, jr_001_4483                            ; $447B: $20 $06

    ld b, $30                                     ; $447D: $06 $30
    ld c, $30                                     ; $447F: $0E $30
    jr jr_001_448D                                ; $4481: $18 $0A

jr_001_4483:
    ld b, $10                                     ; $4483: $06 $10
    ld c, $10                                     ; $4485: $0E $10
    jr jr_001_448D                                ; $4487: $18 $04

jr_001_4489:
    ld b, $00                                     ; $4489: $06 $00
    ld c, $00                                     ; $448B: $0E $00

jr_001_448D:
    ld a, [$D954]                                 ; $448D: $FA $54 $D9
    and b                                         ; $4490: $A0
    ld [$D954], a                                 ; $4491: $EA $54 $D9
    ld a, [$D955]                                 ; $4494: $FA $55 $D9
    and b                                         ; $4497: $A0
    ld [$D955], a                                 ; $4498: $EA $55 $D9
    ld a, [$D953]                                 ; $449B: $FA $53 $D9
    and c                                         ; $449E: $A1
    ld [$D953], a                                 ; $449F: $EA $53 $D9
    ld a, [$DA54]                                 ; $44A2: $FA $54 $DA
    and b                                         ; $44A5: $A0
    ld [$DA54], a                                 ; $44A6: $EA $54 $DA
    ld a, [$DA55]                                 ; $44A9: $FA $55 $DA
    and b                                         ; $44AC: $A0
    ld [$DA55], a                                 ; $44AD: $EA $55 $DA
    ld a, [$DA53]                                 ; $44B0: $FA $53 $DA
    and c                                         ; $44B3: $A1
    ld [$DA53], a                                 ; $44B4: $EA $53 $DA

jr_001_44B7:
    call Call_001_46C5                            ; $44B7: $CD $C5 $46
    ld hl, $D920                                  ; $44BA: $21 $20 $D9
    res 0, [hl]                                   ; $44BD: $CB $86
    ld a, [$C039]                                 ; $44BF: $FA $39 $C0
    bit 7, a                                      ; $44C2: $CB $7F
    jr nz, jr_001_44DA                            ; $44C4: $20 $14

    ld a, [$D700]                                 ; $44C6: $FA $00 $D7
    and $80                                       ; $44C9: $E6 $80
    jr z, jr_001_44D1                             ; $44CB: $28 $04

    set 0, [hl]                                   ; $44CD: $CB $C6
    jr jr_001_44DA                                ; $44CF: $18 $09

jr_001_44D1:
    ld a, [$D780]                                 ; $44D1: $FA $80 $D7
    and $80                                       ; $44D4: $E6 $80
    jr z, jr_001_44DA                             ; $44D6: $28 $02

    set 0, [hl]                                   ; $44D8: $CB $C6

jr_001_44DA:
    ld hl, $DA20                                  ; $44DA: $21 $20 $DA
    res 0, [hl]                                   ; $44DD: $CB $86
    ld a, [$C039]                                 ; $44DF: $FA $39 $C0
    bit 7, a                                      ; $44E2: $CB $7F
    jr nz, jr_001_44FA                            ; $44E4: $20 $14

    ld a, [$D740]                                 ; $44E6: $FA $40 $D7
    and $80                                       ; $44E9: $E6 $80
    jr z, jr_001_44F1                             ; $44EB: $28 $04

    set 0, [hl]                                   ; $44ED: $CB $C6
    jr jr_001_44FA                                ; $44EF: $18 $09

jr_001_44F1:
    ld a, [$D7C0]                                 ; $44F1: $FA $C0 $D7
    and $80                                       ; $44F4: $E6 $80
    jr z, jr_001_44FA                             ; $44F6: $28 $02

    set 0, [hl]                                   ; $44F8: $CB $C6

jr_001_44FA:
    ld a, [$D920]                                 ; $44FA: $FA $20 $D9
    ld [$DA7D], a                                 ; $44FD: $EA $7D $DA
    ld a, [$D921]                                 ; $4500: $FA $21 $D9
    ld [$DA7E], a                                 ; $4503: $EA $7E $DA
    ld a, [$D922]                                 ; $4506: $FA $22 $D9
    ld [$DA7F], a                                 ; $4509: $EA $7F $DA
    ld a, [$D923]                                 ; $450C: $FA $23 $D9
    ld [$DA80], a                                 ; $450F: $EA $80 $DA
    ld a, [$D924]                                 ; $4512: $FA $24 $D9
    ld [$DA81], a                                 ; $4515: $EA $81 $DA
    ld a, [$DA20]                                 ; $4518: $FA $20 $DA
    ld [$D97D], a                                 ; $451B: $EA $7D $D9
    ld a, [$DA21]                                 ; $451E: $FA $21 $DA
    ld [$D97E], a                                 ; $4521: $EA $7E $D9
    ld a, [$DA22]                                 ; $4524: $FA $22 $DA
    ld [$D97F], a                                 ; $4527: $EA $7F $D9
    ld a, [$DA23]                                 ; $452A: $FA $23 $DA
    ld [$D980], a                                 ; $452D: $EA $80 $D9
    ld a, [$DA24]                                 ; $4530: $FA $24 $DA
    ld [$D981], a                                 ; $4533: $EA $81 $D9
    ld a, [$D682]                                 ; $4536: $FA $82 $D6
    ld [$DA98], a                                 ; $4539: $EA $98 $DA
    ld a, [$D6C2]                                 ; $453C: $FA $C2 $D6
    ld [$D998], a                                 ; $453F: $EA $98 $D9
    ld a, [$D684]                                 ; $4542: $FA $84 $D6
    ld [$DA99], a                                 ; $4545: $EA $99 $DA
    ld a, [$D6C4]                                 ; $4548: $FA $C4 $D6
    ld [$D999], a                                 ; $454B: $EA $99 $D9
    ld a, [$D686]                                 ; $454E: $FA $86 $D6
    ld [$DA9A], a                                 ; $4551: $EA $9A $DA
    ld a, [$D6C6]                                 ; $4554: $FA $C6 $D6
    ld [$D99A], a                                 ; $4557: $EA $9A $D9
    ld a, [$D962]                                 ; $455A: $FA $62 $D9
    ld [$DA9B], a                                 ; $455D: $EA $9B $DA
    ld a, [$DA62]                                 ; $4560: $FA $62 $DA
    ld [$D99B], a                                 ; $4563: $EA $9B $D9
    ld a, [$D93C]                                 ; $4566: $FA $3C $D9
    ld [$DA85], a                                 ; $4569: $EA $85 $DA
    ld a, [$DA3C]                                 ; $456C: $FA $3C $DA
    ld [$D985], a                                 ; $456F: $EA $85 $D9
    ld a, [$D93D]                                 ; $4572: $FA $3D $D9
    ld [$DA86], a                                 ; $4575: $EA $86 $DA
    ld a, [$DA3D]                                 ; $4578: $FA $3D $DA
    ld [$D986], a                                 ; $457B: $EA $86 $D9
    ld a, [$D92F]                                 ; $457E: $FA $2F $D9
    ld [$DA83], a                                 ; $4581: $EA $83 $DA
    ld a, [$DA2F]                                 ; $4584: $FA $2F $DA
    ld [$D983], a                                 ; $4587: $EA $83 $D9
    ld a, [$D930]                                 ; $458A: $FA $30 $D9
    ld [$DA84], a                                 ; $458D: $EA $84 $DA
    ld a, [$DA30]                                 ; $4590: $FA $30 $DA
    ld [$D984], a                                 ; $4593: $EA $84 $D9
    ld a, [$D995]                                 ; $4596: $FA $95 $D9
    or a                                          ; $4599: $B7
    jr z, jr_001_45AB                             ; $459A: $28 $0F

    xor a                                         ; $459C: $AF
    ld [$DA46], a                                 ; $459D: $EA $46 $DA
    ld [$D995], a                                 ; $45A0: $EA $95 $D9
    ld hl, $DA21                                  ; $45A3: $21 $21 $DA
    set 6, [hl]                                   ; $45A6: $CB $F6
    inc hl                                        ; $45A8: $23
    res 2, [hl]                                   ; $45A9: $CB $96

jr_001_45AB:
    ld a, [$DA95]                                 ; $45AB: $FA $95 $DA
    or a                                          ; $45AE: $B7
    jr z, jr_001_45C0                             ; $45AF: $28 $0F

    xor a                                         ; $45B1: $AF
    ld [$D946], a                                 ; $45B2: $EA $46 $D9
    ld [$DA95], a                                 ; $45B5: $EA $95 $DA
    ld hl, $D921                                  ; $45B8: $21 $21 $D9
    set 6, [hl]                                   ; $45BB: $CB $F6
    inc hl                                        ; $45BD: $23
    res 2, [hl]                                   ; $45BE: $CB $96

jr_001_45C0:
    ld a, [$D997]                                 ; $45C0: $FA $97 $D9
    ld [$DA96], a                                 ; $45C3: $EA $96 $DA
    ld a, [$DA97]                                 ; $45C6: $FA $97 $DA
    ld [$D996], a                                 ; $45C9: $EA $96 $D9
    ld hl, $D946                                  ; $45CC: $21 $46 $D9
    ld bc, $DA87                                  ; $45CF: $01 $87 $DA
    call Call_001_46B3                            ; $45D2: $CD $B3 $46
    ld hl, $D94C                                  ; $45D5: $21 $4C $D9
    ld bc, $DA8D                                  ; $45D8: $01 $8D $DA
    call Call_001_46B3                            ; $45DB: $CD $B3 $46
    ld hl, $DA46                                  ; $45DE: $21 $46 $DA
    ld bc, $D987                                  ; $45E1: $01 $87 $D9
    call Call_001_46B3                            ; $45E4: $CD $B3 $46
    ld hl, $DA4C                                  ; $45E7: $21 $4C $DA
    ld bc, $D98D                                  ; $45EA: $01 $8D $D9
    call Call_001_46B3                            ; $45ED: $CD $B3 $46
    ld a, [$D965]                                 ; $45F0: $FA $65 $D9
    cp $02                                        ; $45F3: $FE $02
    jr nz, jr_001_461D                            ; $45F5: $20 $26

    ld a, [$D96A]                                 ; $45F7: $FA $6A $D9
    cp $00                                        ; $45FA: $FE $00
    jr nz, jr_001_461D                            ; $45FC: $20 $1F

    ld hl, $D966                                  ; $45FE: $21 $66 $D9
    ld a, [hl+]                                   ; $4601: $2A
    or a                                          ; $4602: $B7
    jr nz, jr_001_4609                            ; $4603: $20 $04

    ld a, [hl]                                    ; $4605: $7E
    or a                                          ; $4606: $B7
    jr z, jr_001_461D                             ; $4607: $28 $14

jr_001_4609:
    ld a, [$D967]                                 ; $4609: $FA $67 $D9
    sub $01                                       ; $460C: $D6 $01
    daa                                           ; $460E: $27
    ld [$D967], a                                 ; $460F: $EA $67 $D9
    jr nc, jr_001_461D                            ; $4612: $30 $09

    ld a, [$D966]                                 ; $4614: $FA $66 $D9
    sub $01                                       ; $4617: $D6 $01
    daa                                           ; $4619: $27
    ld [$D966], a                                 ; $461A: $EA $66 $D9

jr_001_461D:
    ld a, [$DA65]                                 ; $461D: $FA $65 $DA
    cp $02                                        ; $4620: $FE $02
    jr nz, jr_001_464A                            ; $4622: $20 $26

    ld a, [$DA6A]                                 ; $4624: $FA $6A $DA
    cp $00                                        ; $4627: $FE $00
    jr nz, jr_001_464A                            ; $4629: $20 $1F

    ld hl, $DA66                                  ; $462B: $21 $66 $DA
    ld a, [hl+]                                   ; $462E: $2A
    or a                                          ; $462F: $B7
    jr nz, jr_001_4636                            ; $4630: $20 $04

    ld a, [hl]                                    ; $4632: $7E
    or a                                          ; $4633: $B7
    jr z, jr_001_464A                             ; $4634: $28 $14

jr_001_4636:
    ld a, [$DA67]                                 ; $4636: $FA $67 $DA
    sub $01                                       ; $4639: $D6 $01
    daa                                           ; $463B: $27
    ld [$DA67], a                                 ; $463C: $EA $67 $DA
    jr nc, jr_001_464A                            ; $463F: $30 $09

    ld a, [$DA66]                                 ; $4641: $FA $66 $DA
    sub $01                                       ; $4644: $D6 $01
    daa                                           ; $4646: $27
    ld [$DA66], a                                 ; $4647: $EA $66 $DA

jr_001_464A:
    ld a, [$C001]                                 ; $464A: $FA $01 $C0
    bit 3, a                                      ; $464D: $CB $5F
    jr z, jr_001_4668                             ; $464F: $28 $17

    ld a, [$D962]                                 ; $4651: $FA $62 $D9
    cp $10                                        ; $4654: $FE $10
    jr z, jr_001_4668                             ; $4656: $28 $10

    ld b, $0F                                     ; $4658: $06 $0F
    ld a, [$C01A]                                 ; $465A: $FA $1A $C0
    and b                                         ; $465D: $A0
    jr nz, jr_001_4668                            ; $465E: $20 $08

    ld a, $01                                     ; $4660: $3E $01
    ld bc, $D900                                  ; $4662: $01 $00 $D9
    call Call_000_3353                            ; $4665: $CD $53 $33

jr_001_4668:
    ld a, [$C001]                                 ; $4668: $FA $01 $C0
    bit 3, a                                      ; $466B: $CB $5F
    jr z, jr_001_4686                             ; $466D: $28 $17

    ld a, [$DA62]                                 ; $466F: $FA $62 $DA
    cp $10                                        ; $4672: $FE $10
    jr z, jr_001_4686                             ; $4674: $28 $10

    ld b, $0F                                     ; $4676: $06 $0F
    ld a, [$C01A]                                 ; $4678: $FA $1A $C0
    and b                                         ; $467B: $A0
    jr nz, jr_001_4686                            ; $467C: $20 $08

    ld a, $01                                     ; $467E: $3E $01
    ld bc, $DA00                                  ; $4680: $01 $00 $DA
    call Call_000_3353                            ; $4683: $CD $53 $33

jr_001_4686:
    ld a, [$D96E]                                 ; $4686: $FA $6E $D9
    or a                                          ; $4689: $B7
    jr z, jr_001_4690                             ; $468A: $28 $04

    ld hl, $D96E                                  ; $468C: $21 $6E $D9
    dec [hl]                                      ; $468F: $35

jr_001_4690:
    ld a, [$DA6E]                                 ; $4690: $FA $6E $DA
    or a                                          ; $4693: $B7
    jr z, jr_001_469A                             ; $4694: $28 $04

    ld hl, $DA6E                                  ; $4696: $21 $6E $DA
    dec [hl]                                      ; $4699: $35

jr_001_469A:
    ld a, [$D96E]                                 ; $469A: $FA $6E $D9
    ld [$DA93], a                                 ; $469D: $EA $93 $DA
    ld a, [$DA6E]                                 ; $46A0: $FA $6E $DA
    ld [$D993], a                                 ; $46A3: $EA $93 $D9
    ld a, [$D96F]                                 ; $46A6: $FA $6F $D9
    ld [$DA94], a                                 ; $46A9: $EA $94 $DA
    ld a, [$DA6F]                                 ; $46AC: $FA $6F $DA
    ld [$D994], a                                 ; $46AF: $EA $94 $D9
    ret                                           ; $46B2: $C9


Call_001_46B3:
    ld a, [hl+]                                   ; $46B3: $2A
    ld [bc], a                                    ; $46B4: $02
    inc bc                                        ; $46B5: $03
    ld a, [hl+]                                   ; $46B6: $2A
    ld [bc], a                                    ; $46B7: $02
    inc bc                                        ; $46B8: $03
    ld a, [hl+]                                   ; $46B9: $2A
    ld [bc], a                                    ; $46BA: $02
    inc bc                                        ; $46BB: $03
    ld a, [hl+]                                   ; $46BC: $2A
    ld [bc], a                                    ; $46BD: $02
    inc bc                                        ; $46BE: $03
    ld a, [hl+]                                   ; $46BF: $2A
    ld [bc], a                                    ; $46C0: $02
    inc bc                                        ; $46C1: $03
    ld a, [hl+]                                   ; $46C2: $2A
    ld [bc], a                                    ; $46C3: $02
    ret                                           ; $46C4: $C9


Call_001_46C5:
    ld a, [$D6C4]                                 ; $46C5: $FA $C4 $D6
    ld b, a                                       ; $46C8: $47
    ld a, [$D684]                                 ; $46C9: $FA $84 $D6
    sub b                                         ; $46CC: $90
    jp z, Jump_001_475C                           ; $46CD: $CA $5C $47

    jp nc, Jump_001_471A                          ; $46D0: $D2 $1A $47

    push af                                       ; $46D3: $F5
    ld hl, $D681                                  ; $46D4: $21 $81 $D6
    set 3, [hl]                                   ; $46D7: $CB $DE
    inc hl                                        ; $46D9: $23
    ld a, [$D921]                                 ; $46DA: $FA $21 $D9
    bit 1, a                                      ; $46DD: $CB $4F
    jp nz, Jump_001_46F5                          ; $46DF: $C2 $F5 $46

    set 5, [hl]                                   ; $46E2: $CB $EE
    ld a, [$D680]                                 ; $46E4: $FA $80 $D6
    bit 0, a                                      ; $46E7: $CB $47
    jp nz, Jump_001_46F5                          ; $46E9: $C2 $F5 $46

    ld a, [$D93C]                                 ; $46EC: $FA $3C $D9
    or a                                          ; $46EF: $B7
    jp z, Jump_001_46F5                           ; $46F0: $CA $F5 $46

    ld a, [hl+]                                   ; $46F3: $2A
    ld [hl], a                                    ; $46F4: $77

Jump_001_46F5:
    ld hl, $D6C1                                  ; $46F5: $21 $C1 $D6
    res 3, [hl]                                   ; $46F8: $CB $9E
    inc hl                                        ; $46FA: $23
    ld a, [$DA21]                                 ; $46FB: $FA $21 $DA
    bit 1, a                                      ; $46FE: $CB $4F
    jr nz, jr_001_4715                            ; $4700: $20 $13

    res 5, [hl]                                   ; $4702: $CB $AE
    ld a, [$D6C0]                                 ; $4704: $FA $C0 $D6
    bit 0, a                                      ; $4707: $CB $47
    jp nz, Jump_001_4715                          ; $4709: $C2 $15 $47

    ld a, [$DA3C]                                 ; $470C: $FA $3C $DA
    or a                                          ; $470F: $B7
    jp z, Jump_001_4715                           ; $4710: $CA $15 $47

    ld a, [hl+]                                   ; $4713: $2A
    ld [hl], a                                    ; $4714: $77

Jump_001_4715:
jr_001_4715:
    pop af                                        ; $4715: $F1
    cpl                                           ; $4716: $2F
    inc a                                         ; $4717: $3C
    jr jr_001_475C                                ; $4718: $18 $42

Jump_001_471A:
    push af                                       ; $471A: $F5
    ld hl, $D681                                  ; $471B: $21 $81 $D6
    res 3, [hl]                                   ; $471E: $CB $9E
    inc hl                                        ; $4720: $23
    ld a, [$D921]                                 ; $4721: $FA $21 $D9
    bit 1, a                                      ; $4724: $CB $4F
    jr nz, jr_001_473B                            ; $4726: $20 $13

    res 5, [hl]                                   ; $4728: $CB $AE
    ld a, [$D680]                                 ; $472A: $FA $80 $D6
    bit 0, a                                      ; $472D: $CB $47
    jp nz, Jump_001_473B                          ; $472F: $C2 $3B $47

    ld a, [$D93C]                                 ; $4732: $FA $3C $D9
    or a                                          ; $4735: $B7
    jp z, Jump_001_473B                           ; $4736: $CA $3B $47

    ld a, [hl+]                                   ; $4739: $2A
    ld [hl], a                                    ; $473A: $77

Jump_001_473B:
jr_001_473B:
    ld hl, $D6C1                                  ; $473B: $21 $C1 $D6
    set 3, [hl]                                   ; $473E: $CB $DE
    inc hl                                        ; $4740: $23
    ld a, [$DA21]                                 ; $4741: $FA $21 $DA
    bit 1, a                                      ; $4744: $CB $4F
    jr nz, jr_001_475B                            ; $4746: $20 $13

    set 5, [hl]                                   ; $4748: $CB $EE
    ld a, [$D6C0]                                 ; $474A: $FA $C0 $D6
    bit 0, a                                      ; $474D: $CB $47
    jp nz, Jump_001_475B                          ; $474F: $C2 $5B $47

    ld a, [$DA3C]                                 ; $4752: $FA $3C $DA
    or a                                          ; $4755: $B7
    jp z, Jump_001_475B                           ; $4756: $CA $5B $47

    ld a, [hl+]                                   ; $4759: $2A
    ld [hl], a                                    ; $475A: $77

Jump_001_475B:
jr_001_475B:
    pop af                                        ; $475B: $F1

Jump_001_475C:
jr_001_475C:
    ld [$D970], a                                 ; $475C: $EA $70 $D9
    ld [$DA70], a                                 ; $475F: $EA $70 $DA
    ld a, [$D744]                                 ; $4762: $FA $44 $D7
    ld b, a                                       ; $4765: $47
    ld a, [$D740]                                 ; $4766: $FA $40 $D7
    bit 7, a                                      ; $4769: $CB $7F
    jr nz, jr_001_4778                            ; $476B: $20 $0B

    ld a, [$D920]                                 ; $476D: $FA $20 $D9
    bit 3, a                                      ; $4770: $CB $5F
    jr nz, jr_001_4778                            ; $4772: $20 $04

    ld a, [$D6C4]                                 ; $4774: $FA $C4 $D6
    ld b, a                                       ; $4777: $47

jr_001_4778:
    ld hl, $D681                                  ; $4778: $21 $81 $D6
    res 2, [hl]                                   ; $477B: $CB $96
    ld a, [$D684]                                 ; $477D: $FA $84 $D6
    sub b                                         ; $4780: $90
    jr z, jr_001_4789                             ; $4781: $28 $06

    jr nc, jr_001_4789                            ; $4783: $30 $04

    set 2, [hl]                                   ; $4785: $CB $D6
    cpl                                           ; $4787: $2F
    inc a                                         ; $4788: $3C

jr_001_4789:
    ld [$D971], a                                 ; $4789: $EA $71 $D9
    ld a, [$D704]                                 ; $478C: $FA $04 $D7
    ld b, a                                       ; $478F: $47
    ld a, [$D700]                                 ; $4790: $FA $00 $D7
    bit 7, a                                      ; $4793: $CB $7F
    jr nz, jr_001_47A2                            ; $4795: $20 $0B

    ld a, [$DA20]                                 ; $4797: $FA $20 $DA
    bit 3, a                                      ; $479A: $CB $5F
    jr nz, jr_001_47A2                            ; $479C: $20 $04

    ld a, [$D684]                                 ; $479E: $FA $84 $D6
    ld b, a                                       ; $47A1: $47

jr_001_47A2:
    ld hl, $D6C1                                  ; $47A2: $21 $C1 $D6
    res 2, [hl]                                   ; $47A5: $CB $96
    ld a, [$D6C4]                                 ; $47A7: $FA $C4 $D6
    sub b                                         ; $47AA: $90
    jr z, jr_001_47B3                             ; $47AB: $28 $06

    jr nc, jr_001_47B3                            ; $47AD: $30 $04

    set 2, [hl]                                   ; $47AF: $CB $D6
    cpl                                           ; $47B1: $2F
    inc a                                         ; $47B2: $3C

jr_001_47B3:
    ld [$DA71], a                                 ; $47B3: $EA $71 $DA
    ret                                           ; $47B6: $C9


Call_001_47B7:
    xor a                                         ; $47B7: $AF
    ld [$D972], a                                 ; $47B8: $EA $72 $D9
    ld [$DA72], a                                 ; $47BB: $EA $72 $DA
    ld [$D974], a                                 ; $47BE: $EA $74 $D9
    ld [$DA74], a                                 ; $47C1: $EA $74 $DA
    ld [$D973], a                                 ; $47C4: $EA $73 $D9
    ld [$DA73], a                                 ; $47C7: $EA $73 $DA
    ld [$D728], a                                 ; $47CA: $EA $28 $D7
    ld [$D768], a                                 ; $47CD: $EA $68 $D7
    ld [$D7A8], a                                 ; $47D0: $EA $A8 $D7
    ld [$D7E8], a                                 ; $47D3: $EA $E8 $D7
    ld a, [$D922]                                 ; $47D6: $FA $22 $D9
    bit 7, a                                      ; $47D9: $CB $7F
    jp nz, Jump_001_4831                          ; $47DB: $C2 $31 $48

    ld a, [$DA22]                                 ; $47DE: $FA $22 $DA
    bit 7, a                                      ; $47E1: $CB $7F
    jp nz, Jump_001_4831                          ; $47E3: $C2 $31 $48

    ld a, [$D699]                                 ; $47E6: $FA $99 $D6
    or a                                          ; $47E9: $B7
    jr z, jr_001_4831                             ; $47EA: $28 $45

    ld de, $C333                                  ; $47EC: $11 $33 $C3
    call Call_001_4E68                            ; $47EF: $CD $68 $4E
    ld a, [$D684]                                 ; $47F2: $FA $84 $D6
    ld b, a                                       ; $47F5: $47
    ld a, [$D686]                                 ; $47F6: $FA $86 $D6
    ld c, a                                       ; $47F9: $4F
    ld a, [$D683]                                 ; $47FA: $FA $83 $D6
    ld [$C329], a                                 ; $47FD: $EA $29 $C3
    ld a, [$D6D9]                                 ; $4800: $FA $D9 $D6
    or a                                          ; $4803: $B7
    jr z, jr_001_4831                             ; $4804: $28 $2B

    ld de, $C33D                                  ; $4806: $11 $3D $C3
    call Call_001_4E68                            ; $4809: $CD $68 $4E
    ld a, [$D6C4]                                 ; $480C: $FA $C4 $D6
    ld d, a                                       ; $480F: $57

Jump_001_4810:
    ld a, [$D6C6]                                 ; $4810: $FA $C6 $D6
    ld e, a                                       ; $4813: $5F
    ld a, [$D6C3]                                 ; $4814: $FA $C3 $D6
    ld [$C32A], a                                 ; $4817: $EA $2A $C3
    call Call_001_4E7F                            ; $481A: $CD $7F $4E
    jr nc, jr_001_4831                            ; $481D: $30 $12

    ld hl, $D972                                  ; $481F: $21 $72 $D9
    set 0, [hl]                                   ; $4822: $CB $C6
    set 4, [hl]                                   ; $4824: $CB $E6
    inc hl                                        ; $4826: $23
    ld [hl], b                                    ; $4827: $70
    ld hl, $DA72                                  ; $4828: $21 $72 $DA
    set 0, [hl]                                   ; $482B: $CB $C6
    set 4, [hl]                                   ; $482D: $CB $E6
    inc hl                                        ; $482F: $23
    ld [hl], b                                    ; $4830: $70

Jump_001_4831:
jr_001_4831:
    ld a, [$D69B]                                 ; $4831: $FA $9B $D6
    or a                                          ; $4834: $B7
    jr nz, jr_001_4845                            ; $4835: $20 $0E

    ld a, [$DA22]                                 ; $4837: $FA $22 $DA
    bit 6, a                                      ; $483A: $CB $77
    jp nz, Jump_001_4886                          ; $483C: $C2 $86 $48

    ld a, [$D69A]                                 ; $483F: $FA $9A $D6
    or a                                          ; $4842: $B7
    jr z, jr_001_4886                             ; $4843: $28 $41

jr_001_4845:
    ld de, $C333                                  ; $4845: $11 $33 $C3
    call Call_001_4E68                            ; $4848: $CD $68 $4E
    ld a, [$D684]                                 ; $484B: $FA $84 $D6
    ld b, a                                       ; $484E: $47
    ld a, [$D686]                                 ; $484F: $FA $86 $D6
    ld c, a                                       ; $4852: $4F
    ld a, [$D683]                                 ; $4853: $FA $83 $D6
    ld [$C329], a                                 ; $4856: $EA $29 $C3
    ld a, [$D6D9]                                 ; $4859: $FA $D9 $D6
    or a                                          ; $485C: $B7
    jr z, jr_001_4886                             ; $485D: $28 $27

    ld de, $C33D                                  ; $485F: $11 $3D $C3
    call Call_001_4E68                            ; $4862: $CD $68 $4E
    ld a, [$D6C4]                                 ; $4865: $FA $C4 $D6
    ld d, a                                       ; $4868: $57
    ld a, [$D6C6]                                 ; $4869: $FA $C6 $D6
    ld e, a                                       ; $486C: $5F
    ld a, [$D6C3]                                 ; $486D: $FA $C3 $D6
    ld [$C32A], a                                 ; $4870: $EA $2A $C3
    call Call_001_4E7F                            ; $4873: $CD $7F $4E
    jr nc, jr_001_4886                            ; $4876: $30 $0E

    ld hl, $D972                                  ; $4878: $21 $72 $D9
    set 1, [hl]                                   ; $487B: $CB $CE
    set 4, [hl]                                   ; $487D: $CB $E6
    ld hl, $DA72                                  ; $487F: $21 $72 $DA
    set 0, [hl]                                   ; $4882: $CB $C6
    set 5, [hl]                                   ; $4884: $CB $EE

Jump_001_4886:
jr_001_4886:
    ld a, [$D6DB]                                 ; $4886: $FA $DB $D6
    or a                                          ; $4889: $B7
    jr nz, jr_001_489A                            ; $488A: $20 $0E

    ld a, [$D922]                                 ; $488C: $FA $22 $D9
    bit 6, a                                      ; $488F: $CB $77
    jp nz, Jump_001_48DB                          ; $4891: $C2 $DB $48

    ld a, [$D6DA]                                 ; $4894: $FA $DA $D6
    or a                                          ; $4897: $B7
    jr z, jr_001_48DB                             ; $4898: $28 $41

jr_001_489A:
    ld de, $C333                                  ; $489A: $11 $33 $C3
    call Call_001_4E68                            ; $489D: $CD $68 $4E
    ld a, [$D6C4]                                 ; $48A0: $FA $C4 $D6
    ld b, a                                       ; $48A3: $47
    ld a, [$D6C6]                                 ; $48A4: $FA $C6 $D6
    ld c, a                                       ; $48A7: $4F
    ld a, [$D6C3]                                 ; $48A8: $FA $C3 $D6
    ld [$C329], a                                 ; $48AB: $EA $29 $C3
    ld a, [$D699]                                 ; $48AE: $FA $99 $D6
    or a                                          ; $48B1: $B7
    jr z, jr_001_48DB                             ; $48B2: $28 $27

    ld de, $C33D                                  ; $48B4: $11 $3D $C3
    call Call_001_4E68                            ; $48B7: $CD $68 $4E
    ld a, [$D684]                                 ; $48BA: $FA $84 $D6
    ld d, a                                       ; $48BD: $57
    ld a, [$D686]                                 ; $48BE: $FA $86 $D6
    ld e, a                                       ; $48C1: $5F
    ld a, [$D683]                                 ; $48C2: $FA $83 $D6
    ld [$C32A], a                                 ; $48C5: $EA $2A $C3
    call Call_001_4E7F                            ; $48C8: $CD $7F $4E
    jr nc, jr_001_48DB                            ; $48CB: $30 $0E

    ld hl, $D972                                  ; $48CD: $21 $72 $D9
    set 0, [hl]                                   ; $48D0: $CB $C6
    set 5, [hl]                                   ; $48D2: $CB $EE
    ld hl, $DA72                                  ; $48D4: $21 $72 $DA
    set 1, [hl]                                   ; $48D7: $CB $CE
    set 4, [hl]                                   ; $48D9: $CB $E6

Jump_001_48DB:
jr_001_48DB:
    ld a, [$C2E1]                                 ; $48DB: $FA $E1 $C2
    or a                                          ; $48DE: $B7
    jp nz, Jump_001_4E67                          ; $48DF: $C2 $67 $4E

    ld a, [$C2E1]                                 ; $48E2: $FA $E1 $C2
    or a                                          ; $48E5: $B7
    jp nz, Jump_001_4953                          ; $48E6: $C2 $53 $49

    ld a, [$DA21]                                 ; $48E9: $FA $21 $DA
    bit 7, a                                      ; $48EC: $CB $7F
    jp nz, Jump_001_4953                          ; $48EE: $C2 $53 $49

    ld a, [$DA22]                                 ; $48F1: $FA $22 $DA
    bit 6, a                                      ; $48F4: $CB $77
    jp nz, Jump_001_4953                          ; $48F6: $C2 $53 $49

    ld a, [$D700]                                 ; $48F9: $FA $00 $D7
    bit 7, a                                      ; $48FC: $CB $7F
    jp z, Jump_001_4953                           ; $48FE: $CA $53 $49

    ld a, [$D71A]                                 ; $4901: $FA $1A $D7
    or a                                          ; $4904: $B7
    jp z, Jump_001_4953                           ; $4905: $CA $53 $49

    ld de, $C333                                  ; $4908: $11 $33 $C3
    call Call_001_4E68                            ; $490B: $CD $68 $4E
    ld a, [$D704]                                 ; $490E: $FA $04 $D7
    ld b, a                                       ; $4911: $47
    ld a, [$D706]                                 ; $4912: $FA $06 $D7
    ld c, a                                       ; $4915: $4F
    ld a, [$D702]                                 ; $4916: $FA $02 $D7
    ld [$C329], a                                 ; $4919: $EA $29 $C3
    ld a, [$D6D9]                                 ; $491C: $FA $D9 $D6
    or a                                          ; $491F: $B7
    jr z, jr_001_4953                             ; $4920: $28 $31

    ld de, $C33D                                  ; $4922: $11 $3D $C3
    call Call_001_4E68                            ; $4925: $CD $68 $4E
    ld a, [$D6C4]                                 ; $4928: $FA $C4 $D6
    ld d, a                                       ; $492B: $57
    ld a, [$D6C6]                                 ; $492C: $FA $C6 $D6
    ld e, a                                       ; $492F: $5F
    ld a, [$D6C3]                                 ; $4930: $FA $C3 $D6
    ld [$C32A], a                                 ; $4933: $EA $2A $C3
    call Call_001_4E7F                            ; $4936: $CD $7F $4E
    jr nc, jr_001_4953                            ; $4939: $30 $18

    ld a, $01                                     ; $493B: $3E $01
    ld [$D728], a                                 ; $493D: $EA $28 $D7
    ld hl, $D972                                  ; $4940: $21 $72 $D9
    set 2, [hl]                                   ; $4943: $CB $D6
    set 4, [hl]                                   ; $4945: $CB $E6
    ld hl, $DA72                                  ; $4947: $21 $72 $DA
    set 0, [hl]                                   ; $494A: $CB $C6
    set 6, [hl]                                   ; $494C: $CB $F6
    ld a, $01                                     ; $494E: $3E $01
    ld [$DA74], a                                 ; $4950: $EA $74 $DA

Jump_001_4953:
jr_001_4953:
    ld a, [$D921]                                 ; $4953: $FA $21 $D9
    bit 7, a                                      ; $4956: $CB $7F
    jp nz, Jump_001_49BD                          ; $4958: $C2 $BD $49

    ld a, [$D922]                                 ; $495B: $FA $22 $D9
    bit 6, a                                      ; $495E: $CB $77
    jp nz, Jump_001_49BD                          ; $4960: $C2 $BD $49

    ld a, [$D740]                                 ; $4963: $FA $40 $D7
    bit 7, a                                      ; $4966: $CB $7F
    jp z, Jump_001_49BD                           ; $4968: $CA $BD $49

    ld a, [$D75A]                                 ; $496B: $FA $5A $D7
    or a                                          ; $496E: $B7
    jp z, Jump_001_49BD                           ; $496F: $CA $BD $49

    ld de, $C333                                  ; $4972: $11 $33 $C3
    call Call_001_4E68                            ; $4975: $CD $68 $4E
    ld a, [$D744]                                 ; $4978: $FA $44 $D7
    ld b, a                                       ; $497B: $47
    ld a, [$D746]                                 ; $497C: $FA $46 $D7
    ld c, a                                       ; $497F: $4F
    ld a, [$D742]                                 ; $4980: $FA $42 $D7
    ld [$C329], a                                 ; $4983: $EA $29 $C3
    ld a, [$D699]                                 ; $4986: $FA $99 $D6
    or a                                          ; $4989: $B7
    jr z, jr_001_49BD                             ; $498A: $28 $31

    ld de, $C33D                                  ; $498C: $11 $3D $C3
    call Call_001_4E68                            ; $498F: $CD $68 $4E
    ld a, [$D684]                                 ; $4992: $FA $84 $D6
    ld d, a                                       ; $4995: $57
    ld a, [$D686]                                 ; $4996: $FA $86 $D6
    ld e, a                                       ; $4999: $5F
    ld a, [$D683]                                 ; $499A: $FA $83 $D6
    ld [$C32A], a                                 ; $499D: $EA $2A $C3
    call Call_001_4E7F                            ; $49A0: $CD $7F $4E
    jr nc, jr_001_49BD                            ; $49A3: $30 $18

    ld a, $01                                     ; $49A5: $3E $01
    ld [$D768], a                                 ; $49A7: $EA $68 $D7
    ld hl, $DA72                                  ; $49AA: $21 $72 $DA
    set 2, [hl]                                   ; $49AD: $CB $D6
    set 4, [hl]                                   ; $49AF: $CB $E6
    ld hl, $D972                                  ; $49B1: $21 $72 $D9
    set 0, [hl]                                   ; $49B4: $CB $C6
    set 6, [hl]                                   ; $49B6: $CB $F6
    ld a, $01                                     ; $49B8: $3E $01
    ld [$D974], a                                 ; $49BA: $EA $74 $D9

Jump_001_49BD:
jr_001_49BD:
    ld a, [$DA20]                                 ; $49BD: $FA $20 $DA
    and $30                                       ; $49C0: $E6 $30
    jp z, Jump_001_4A3E                           ; $49C2: $CA $3E $4A

    ld a, [$D700]                                 ; $49C5: $FA $00 $D7
    bit 7, a                                      ; $49C8: $CB $7F
    jp z, Jump_001_4A3E                           ; $49CA: $CA $3E $4A

    ld a, [$D71A]                                 ; $49CD: $FA $1A $D7
    or a                                          ; $49D0: $B7
    jp z, Jump_001_4A3E                           ; $49D1: $CA $3E $4A

    ld de, $C333                                  ; $49D4: $11 $33 $C3
    call Call_001_4E68                            ; $49D7: $CD $68 $4E
    ld a, [$D704]                                 ; $49DA: $FA $04 $D7
    ld b, a                                       ; $49DD: $47
    ld a, [$D706]                                 ; $49DE: $FA $06 $D7
    ld c, a                                       ; $49E1: $4F
    ld a, [$D702]                                 ; $49E2: $FA $02 $D7
    ld [$C329], a                                 ; $49E5: $EA $29 $C3
    ld a, [$D6DA]                                 ; $49E8: $FA $DA $D6
    or a                                          ; $49EB: $B7
    jr z, jr_001_4A3E                             ; $49EC: $28 $50

    ld de, $C33D                                  ; $49EE: $11 $3D $C3
    call Call_001_4E68                            ; $49F1: $CD $68 $4E
    ld a, [$D6C4]                                 ; $49F4: $FA $C4 $D6
    ld d, a                                       ; $49F7: $57
    ld a, [$D6C6]                                 ; $49F8: $FA $C6 $D6
    ld e, a                                       ; $49FB: $5F
    ld a, [$D6C3]                                 ; $49FC: $FA $C3 $D6
    ld [$C32A], a                                 ; $49FF: $EA $2A $C3
    call Call_001_4E7F                            ; $4A02: $CD $7F $4E
    jr nc, jr_001_4A3E                            ; $4A05: $30 $37

    ld a, [$DA20]                                 ; $4A07: $FA $20 $DA
    bit 5, a                                      ; $4A0A: $CB $6F
    jp nz, Jump_001_4A26                          ; $4A0C: $C2 $26 $4A

    ld a, [$DA20]                                 ; $4A0F: $FA $20 $DA
    bit 6, a                                      ; $4A12: $CB $77
    jp nz, Jump_001_4A1E                          ; $4A14: $C2 $1E $4A

    ld a, [$D729]                                 ; $4A17: $FA $29 $D7
    or a                                          ; $4A1A: $B7
    jp nz, Jump_001_4A3E                          ; $4A1B: $C2 $3E $4A

Jump_001_4A1E:
    ld a, $01                                     ; $4A1E: $3E $01
    ld [$D728], a                                 ; $4A20: $EA $28 $D7
    jp Jump_001_4A2B                              ; $4A23: $C3 $2B $4A


Jump_001_4A26:
    ld a, $02                                     ; $4A26: $3E $02
    ld [$D728], a                                 ; $4A28: $EA $28 $D7

Jump_001_4A2B:
    ld hl, $D972                                  ; $4A2B: $21 $72 $D9
    set 3, [hl]                                   ; $4A2E: $CB $DE
    set 5, [hl]                                   ; $4A30: $CB $EE
    ld hl, $DA72                                  ; $4A32: $21 $72 $DA
    set 1, [hl]                                   ; $4A35: $CB $CE
    set 7, [hl]                                   ; $4A37: $CB $FE
    ld a, $01                                     ; $4A39: $3E $01
    ld [$DA74], a                                 ; $4A3B: $EA $74 $DA

Jump_001_4A3E:
jr_001_4A3E:
    ld a, [$D920]                                 ; $4A3E: $FA $20 $D9
    and $30                                       ; $4A41: $E6 $30
    jp z, Jump_001_4ABE                           ; $4A43: $CA $BE $4A

    ld a, [$D740]                                 ; $4A46: $FA $40 $D7
    bit 7, a                                      ; $4A49: $CB $7F
    jp z, Jump_001_4ABE                           ; $4A4B: $CA $BE $4A

    ld a, [$D75A]                                 ; $4A4E: $FA $5A $D7
    or a                                          ; $4A51: $B7
    jr z, jr_001_4ABE                             ; $4A52: $28 $6A

    ld de, $C333                                  ; $4A54: $11 $33 $C3
    call Call_001_4E68                            ; $4A57: $CD $68 $4E
    ld a, [$D744]                                 ; $4A5A: $FA $44 $D7
    ld b, a                                       ; $4A5D: $47
    ld a, [$D746]                                 ; $4A5E: $FA $46 $D7
    ld c, a                                       ; $4A61: $4F
    ld a, [$D742]                                 ; $4A62: $FA $42 $D7
    ld [$C329], a                                 ; $4A65: $EA $29 $C3
    ld a, [$D69A]                                 ; $4A68: $FA $9A $D6
    or a                                          ; $4A6B: $B7
    jr z, jr_001_4ABE                             ; $4A6C: $28 $50

    ld de, $C33D                                  ; $4A6E: $11 $3D $C3
    call Call_001_4E68                            ; $4A71: $CD $68 $4E
    ld a, [$D684]                                 ; $4A74: $FA $84 $D6
    ld d, a                                       ; $4A77: $57
    ld a, [$D686]                                 ; $4A78: $FA $86 $D6
    ld e, a                                       ; $4A7B: $5F
    ld a, [$D683]                                 ; $4A7C: $FA $83 $D6
    ld [$C32A], a                                 ; $4A7F: $EA $2A $C3
    call Call_001_4E7F                            ; $4A82: $CD $7F $4E
    jr nc, jr_001_4ABE                            ; $4A85: $30 $37

    ld a, [$D920]                                 ; $4A87: $FA $20 $D9
    bit 5, a                                      ; $4A8A: $CB $6F
    jp nz, Jump_001_4AA6                          ; $4A8C: $C2 $A6 $4A

    ld a, [$D920]                                 ; $4A8F: $FA $20 $D9
    bit 6, a                                      ; $4A92: $CB $77
    jp nz, Jump_001_4A9E                          ; $4A94: $C2 $9E $4A

    ld a, [$D769]                                 ; $4A97: $FA $69 $D7
    or a                                          ; $4A9A: $B7
    jp nz, Jump_001_4ABE                          ; $4A9B: $C2 $BE $4A

Jump_001_4A9E:
    ld a, $01                                     ; $4A9E: $3E $01
    ld [$D768], a                                 ; $4AA0: $EA $68 $D7
    jp Jump_001_4AAB                              ; $4AA3: $C3 $AB $4A


Jump_001_4AA6:
    ld a, $02                                     ; $4AA6: $3E $02
    ld [$D768], a                                 ; $4AA8: $EA $68 $D7

Jump_001_4AAB:
    ld hl, $DA72                                  ; $4AAB: $21 $72 $DA
    set 3, [hl]                                   ; $4AAE: $CB $DE
    set 5, [hl]                                   ; $4AB0: $CB $EE
    ld hl, $D972                                  ; $4AB2: $21 $72 $D9
    set 1, [hl]                                   ; $4AB5: $CB $CE
    set 7, [hl]                                   ; $4AB7: $CB $FE
    ld a, $01                                     ; $4AB9: $3E $01
    ld [$D974], a                                 ; $4ABB: $EA $74 $D9

Jump_001_4ABE:
jr_001_4ABE:
    ld a, [$D700]                                 ; $4ABE: $FA $00 $D7
    bit 7, a                                      ; $4AC1: $CB $7F
    jp z, Jump_001_4B33                           ; $4AC3: $CA $33 $4B

    ld a, [$D740]                                 ; $4AC6: $FA $40 $D7
    bit 7, a                                      ; $4AC9: $CB $7F
    jp z, Jump_001_4B33                           ; $4ACB: $CA $33 $4B

    ld a, [$D71A]                                 ; $4ACE: $FA $1A $D7
    or a                                          ; $4AD1: $B7
    jr z, jr_001_4B33                             ; $4AD2: $28 $5F

    ld de, $C333                                  ; $4AD4: $11 $33 $C3
    call Call_001_4E68                            ; $4AD7: $CD $68 $4E
    ld a, [$D704]                                 ; $4ADA: $FA $04 $D7
    ld b, a                                       ; $4ADD: $47
    ld a, [$D706]                                 ; $4ADE: $FA $06 $D7
    ld c, a                                       ; $4AE1: $4F
    ld a, [$D702]                                 ; $4AE2: $FA $02 $D7
    ld [$C329], a                                 ; $4AE5: $EA $29 $C3
    ld a, [$D75A]                                 ; $4AE8: $FA $5A $D7
    or a                                          ; $4AEB: $B7
    jr z, jr_001_4B33                             ; $4AEC: $28 $45

    ld de, $C33D                                  ; $4AEE: $11 $3D $C3
    call Call_001_4E68                            ; $4AF1: $CD $68 $4E
    ld a, [$D744]                                 ; $4AF4: $FA $44 $D7
    ld d, a                                       ; $4AF7: $57
    ld a, [$D746]                                 ; $4AF8: $FA $46 $D7
    ld e, a                                       ; $4AFB: $5F
    ld a, [$D742]                                 ; $4AFC: $FA $42 $D7
    ld [$C32A], a                                 ; $4AFF: $EA $2A $C3
    call Call_001_4E7F                            ; $4B02: $CD $7F $4E
    jr nc, jr_001_4B33                            ; $4B05: $30 $2C

    ld a, [$D769]                                 ; $4B07: $FA $69 $D7
    ld b, a                                       ; $4B0A: $47
    ld a, [$D729]                                 ; $4B0B: $FA $29 $D7
    cp b                                          ; $4B0E: $B8
    jr z, jr_001_4B2B                             ; $4B0F: $28 $1A

    jr c, jr_001_4B1F                             ; $4B11: $38 $0C

    ld a, $00                                     ; $4B13: $3E $00
    ld [$D728], a                                 ; $4B15: $EA $28 $D7
    ld a, $01                                     ; $4B18: $3E $01
    ld [$D768], a                                 ; $4B1A: $EA $68 $D7
    jr jr_001_4B33                                ; $4B1D: $18 $14

jr_001_4B1F:
    ld a, $00                                     ; $4B1F: $3E $00
    ld [$D768], a                                 ; $4B21: $EA $68 $D7
    ld a, $01                                     ; $4B24: $3E $01
    ld [$D728], a                                 ; $4B26: $EA $28 $D7
    jr jr_001_4B33                                ; $4B29: $18 $08

jr_001_4B2B:
    ld a, $01                                     ; $4B2B: $3E $01
    ld [$D728], a                                 ; $4B2D: $EA $28 $D7
    ld [$D768], a                                 ; $4B30: $EA $68 $D7

Jump_001_4B33:
jr_001_4B33:
    ld a, [$DA21]                                 ; $4B33: $FA $21 $DA
    bit 7, a                                      ; $4B36: $CB $7F
    jp nz, Jump_001_4B9D                          ; $4B38: $C2 $9D $4B

    ld a, [$DA22]                                 ; $4B3B: $FA $22 $DA
    bit 6, a                                      ; $4B3E: $CB $77
    jp nz, Jump_001_4B9D                          ; $4B40: $C2 $9D $4B

    ld a, [$D780]                                 ; $4B43: $FA $80 $D7
    bit 7, a                                      ; $4B46: $CB $7F
    jp z, Jump_001_4B9D                           ; $4B48: $CA $9D $4B

    ld a, [$D79A]                                 ; $4B4B: $FA $9A $D7
    or a                                          ; $4B4E: $B7
    jp z, Jump_001_4B9D                           ; $4B4F: $CA $9D $4B

    ld de, $C333                                  ; $4B52: $11 $33 $C3
    call Call_001_4E68                            ; $4B55: $CD $68 $4E
    ld a, [$D784]                                 ; $4B58: $FA $84 $D7
    ld b, a                                       ; $4B5B: $47
    ld a, [$D786]                                 ; $4B5C: $FA $86 $D7
    ld c, a                                       ; $4B5F: $4F
    ld a, [$D782]                                 ; $4B60: $FA $82 $D7
    ld [$C329], a                                 ; $4B63: $EA $29 $C3
    ld a, [$D6D9]                                 ; $4B66: $FA $D9 $D6
    or a                                          ; $4B69: $B7
    jr z, jr_001_4B9D                             ; $4B6A: $28 $31

    ld de, $C33D                                  ; $4B6C: $11 $3D $C3
    call Call_001_4E68                            ; $4B6F: $CD $68 $4E
    ld a, [$D6C4]                                 ; $4B72: $FA $C4 $D6
    ld d, a                                       ; $4B75: $57
    ld a, [$D6C6]                                 ; $4B76: $FA $C6 $D6
    ld e, a                                       ; $4B79: $5F
    ld a, [$D6C3]                                 ; $4B7A: $FA $C3 $D6
    ld [$C32A], a                                 ; $4B7D: $EA $2A $C3
    call Call_001_4E7F                            ; $4B80: $CD $7F $4E
    jr nc, jr_001_4B9D                            ; $4B83: $30 $18

    ld a, $01                                     ; $4B85: $3E $01
    ld [$D7A8], a                                 ; $4B87: $EA $A8 $D7
    ld hl, $D972                                  ; $4B8A: $21 $72 $D9
    set 2, [hl]                                   ; $4B8D: $CB $D6
    set 4, [hl]                                   ; $4B8F: $CB $E6
    ld hl, $DA72                                  ; $4B91: $21 $72 $DA
    set 0, [hl]                                   ; $4B94: $CB $C6
    set 6, [hl]                                   ; $4B96: $CB $F6
    ld a, $02                                     ; $4B98: $3E $02
    ld [$DA74], a                                 ; $4B9A: $EA $74 $DA

Jump_001_4B9D:
jr_001_4B9D:
    ld a, [$D921]                                 ; $4B9D: $FA $21 $D9
    bit 7, a                                      ; $4BA0: $CB $7F
    jp nz, Jump_001_4C07                          ; $4BA2: $C2 $07 $4C

    ld a, [$D922]                                 ; $4BA5: $FA $22 $D9
    bit 6, a                                      ; $4BA8: $CB $77
    jp nz, Jump_001_4C07                          ; $4BAA: $C2 $07 $4C

    ld a, [$D7C0]                                 ; $4BAD: $FA $C0 $D7
    bit 7, a                                      ; $4BB0: $CB $7F
    jp z, Jump_001_4C07                           ; $4BB2: $CA $07 $4C

    ld a, [$D7DA]                                 ; $4BB5: $FA $DA $D7
    or a                                          ; $4BB8: $B7
    jp z, Jump_001_4C07                           ; $4BB9: $CA $07 $4C

    ld de, $C333                                  ; $4BBC: $11 $33 $C3
    call Call_001_4E68                            ; $4BBF: $CD $68 $4E
    ld a, [$D7C4]                                 ; $4BC2: $FA $C4 $D7
    ld b, a                                       ; $4BC5: $47
    ld a, [$D7C6]                                 ; $4BC6: $FA $C6 $D7
    ld c, a                                       ; $4BC9: $4F
    ld a, [$D7C2]                                 ; $4BCA: $FA $C2 $D7
    ld [$C329], a                                 ; $4BCD: $EA $29 $C3
    ld a, [$D699]                                 ; $4BD0: $FA $99 $D6
    or a                                          ; $4BD3: $B7
    jr z, jr_001_4C07                             ; $4BD4: $28 $31

    ld de, $C33D                                  ; $4BD6: $11 $3D $C3
    call Call_001_4E68                            ; $4BD9: $CD $68 $4E
    ld a, [$D684]                                 ; $4BDC: $FA $84 $D6
    ld d, a                                       ; $4BDF: $57
    ld a, [$D686]                                 ; $4BE0: $FA $86 $D6
    ld e, a                                       ; $4BE3: $5F
    ld a, [$D683]                                 ; $4BE4: $FA $83 $D6
    ld [$C32A], a                                 ; $4BE7: $EA $2A $C3
    call Call_001_4E7F                            ; $4BEA: $CD $7F $4E
    jr nc, jr_001_4C07                            ; $4BED: $30 $18

    ld a, $01                                     ; $4BEF: $3E $01
    ld [$D7E8], a                                 ; $4BF1: $EA $E8 $D7
    ld hl, $DA72                                  ; $4BF4: $21 $72 $DA
    set 2, [hl]                                   ; $4BF7: $CB $D6
    set 4, [hl]                                   ; $4BF9: $CB $E6
    ld hl, $D972                                  ; $4BFB: $21 $72 $D9
    set 0, [hl]                                   ; $4BFE: $CB $C6
    set 6, [hl]                                   ; $4C00: $CB $F6
    ld a, $02                                     ; $4C02: $3E $02
    ld [$D974], a                                 ; $4C04: $EA $74 $D9

Jump_001_4C07:
jr_001_4C07:
    ld a, [$DA20]                                 ; $4C07: $FA $20 $DA
    and $30                                       ; $4C0A: $E6 $30
    jp z, Jump_001_4C88                           ; $4C0C: $CA $88 $4C

    ld a, [$D780]                                 ; $4C0F: $FA $80 $D7
    bit 7, a                                      ; $4C12: $CB $7F
    jp z, Jump_001_4C88                           ; $4C14: $CA $88 $4C

    ld a, [$D79A]                                 ; $4C17: $FA $9A $D7
    or a                                          ; $4C1A: $B7
    jp z, Jump_001_4C88                           ; $4C1B: $CA $88 $4C

    ld de, $C333                                  ; $4C1E: $11 $33 $C3
    call Call_001_4E68                            ; $4C21: $CD $68 $4E
    ld a, [$D784]                                 ; $4C24: $FA $84 $D7
    ld b, a                                       ; $4C27: $47
    ld a, [$D786]                                 ; $4C28: $FA $86 $D7
    ld c, a                                       ; $4C2B: $4F
    ld a, [$D782]                                 ; $4C2C: $FA $82 $D7
    ld [$C329], a                                 ; $4C2F: $EA $29 $C3
    ld a, [$D6DA]                                 ; $4C32: $FA $DA $D6
    or a                                          ; $4C35: $B7
    jr z, jr_001_4C88                             ; $4C36: $28 $50

    ld de, $C33D                                  ; $4C38: $11 $3D $C3
    call Call_001_4E68                            ; $4C3B: $CD $68 $4E
    ld a, [$D6C4]                                 ; $4C3E: $FA $C4 $D6
    ld d, a                                       ; $4C41: $57
    ld a, [$D6C6]                                 ; $4C42: $FA $C6 $D6
    ld e, a                                       ; $4C45: $5F
    ld a, [$D6C3]                                 ; $4C46: $FA $C3 $D6
    ld [$C32A], a                                 ; $4C49: $EA $2A $C3
    call Call_001_4E7F                            ; $4C4C: $CD $7F $4E
    jr nc, jr_001_4C88                            ; $4C4F: $30 $37

    ld a, [$DA20]                                 ; $4C51: $FA $20 $DA
    bit 5, a                                      ; $4C54: $CB $6F
    jp nz, Jump_001_4C70                          ; $4C56: $C2 $70 $4C

    ld a, [$DA20]                                 ; $4C59: $FA $20 $DA
    bit 6, a                                      ; $4C5C: $CB $77
    jp nz, Jump_001_4C68                          ; $4C5E: $C2 $68 $4C

    ld a, [$D7A9]                                 ; $4C61: $FA $A9 $D7
    or a                                          ; $4C64: $B7
    jp nz, Jump_001_4C88                          ; $4C65: $C2 $88 $4C

Jump_001_4C68:
    ld a, $01                                     ; $4C68: $3E $01
    ld [$D7A8], a                                 ; $4C6A: $EA $A8 $D7
    jp Jump_001_4C75                              ; $4C6D: $C3 $75 $4C


Jump_001_4C70:
    ld a, $02                                     ; $4C70: $3E $02
    ld [$D7A8], a                                 ; $4C72: $EA $A8 $D7

Jump_001_4C75:
    ld hl, $D972                                  ; $4C75: $21 $72 $D9
    set 3, [hl]                                   ; $4C78: $CB $DE
    set 5, [hl]                                   ; $4C7A: $CB $EE
    ld hl, $DA72                                  ; $4C7C: $21 $72 $DA
    set 1, [hl]                                   ; $4C7F: $CB $CE
    set 7, [hl]                                   ; $4C81: $CB $FE
    ld a, $02                                     ; $4C83: $3E $02
    ld [$DA74], a                                 ; $4C85: $EA $74 $DA

Jump_001_4C88:
jr_001_4C88:
    ld a, [$D920]                                 ; $4C88: $FA $20 $D9
    and $30                                       ; $4C8B: $E6 $30
    jp z, Jump_001_4D08                           ; $4C8D: $CA $08 $4D

    ld a, [$D7C0]                                 ; $4C90: $FA $C0 $D7
    bit 7, a                                      ; $4C93: $CB $7F
    jp z, Jump_001_4D08                           ; $4C95: $CA $08 $4D

    ld a, [$D7DA]                                 ; $4C98: $FA $DA $D7
    or a                                          ; $4C9B: $B7
    jr z, jr_001_4D08                             ; $4C9C: $28 $6A

    ld de, $C333                                  ; $4C9E: $11 $33 $C3
    call Call_001_4E68                            ; $4CA1: $CD $68 $4E
    ld a, [$D7C4]                                 ; $4CA4: $FA $C4 $D7
    ld b, a                                       ; $4CA7: $47
    ld a, [$D7C6]                                 ; $4CA8: $FA $C6 $D7
    ld c, a                                       ; $4CAB: $4F
    ld a, [$D7C2]                                 ; $4CAC: $FA $C2 $D7
    ld [$C329], a                                 ; $4CAF: $EA $29 $C3
    ld a, [$D69A]                                 ; $4CB2: $FA $9A $D6
    or a                                          ; $4CB5: $B7
    jr z, jr_001_4D08                             ; $4CB6: $28 $50

    ld de, $C33D                                  ; $4CB8: $11 $3D $C3
    call Call_001_4E68                            ; $4CBB: $CD $68 $4E
    ld a, [$D684]                                 ; $4CBE: $FA $84 $D6
    ld d, a                                       ; $4CC1: $57
    ld a, [$D686]                                 ; $4CC2: $FA $86 $D6
    ld e, a                                       ; $4CC5: $5F
    ld a, [$D683]                                 ; $4CC6: $FA $83 $D6
    ld [$C32A], a                                 ; $4CC9: $EA $2A $C3
    call Call_001_4E7F                            ; $4CCC: $CD $7F $4E
    jr nc, jr_001_4D08                            ; $4CCF: $30 $37

    ld a, [$D920]                                 ; $4CD1: $FA $20 $D9
    bit 5, a                                      ; $4CD4: $CB $6F
    jp nz, Jump_001_4CF0                          ; $4CD6: $C2 $F0 $4C

    ld a, [$D920]                                 ; $4CD9: $FA $20 $D9
    bit 6, a                                      ; $4CDC: $CB $77
    jp nz, Jump_001_4CE8                          ; $4CDE: $C2 $E8 $4C

    ld a, [$D7E9]                                 ; $4CE1: $FA $E9 $D7
    or a                                          ; $4CE4: $B7
    jp nz, Jump_001_4D08                          ; $4CE5: $C2 $08 $4D

Jump_001_4CE8:
    ld a, $01                                     ; $4CE8: $3E $01
    ld [$D7E8], a                                 ; $4CEA: $EA $E8 $D7
    jp Jump_001_4CF5                              ; $4CED: $C3 $F5 $4C


Jump_001_4CF0:
    ld a, $02                                     ; $4CF0: $3E $02
    ld [$D7E8], a                                 ; $4CF2: $EA $E8 $D7

Jump_001_4CF5:
    ld hl, $DA72                                  ; $4CF5: $21 $72 $DA
    set 3, [hl]                                   ; $4CF8: $CB $DE
    set 5, [hl]                                   ; $4CFA: $CB $EE
    ld hl, $D972                                  ; $4CFC: $21 $72 $D9
    set 1, [hl]                                   ; $4CFF: $CB $CE
    set 7, [hl]                                   ; $4D01: $CB $FE
    ld a, $02                                     ; $4D03: $3E $02
    ld [$D974], a                                 ; $4D05: $EA $74 $D9

Jump_001_4D08:
jr_001_4D08:
    ld a, [$D780]                                 ; $4D08: $FA $80 $D7
    bit 7, a                                      ; $4D0B: $CB $7F
    jp z, Jump_001_4D7D                           ; $4D0D: $CA $7D $4D

    ld a, [$D7C0]                                 ; $4D10: $FA $C0 $D7
    bit 7, a                                      ; $4D13: $CB $7F
    jp z, Jump_001_4D7D                           ; $4D15: $CA $7D $4D

    ld a, [$D79A]                                 ; $4D18: $FA $9A $D7
    or a                                          ; $4D1B: $B7
    jr z, jr_001_4D7D                             ; $4D1C: $28 $5F

    ld de, $C333                                  ; $4D1E: $11 $33 $C3
    call Call_001_4E68                            ; $4D21: $CD $68 $4E
    ld a, [$D784]                                 ; $4D24: $FA $84 $D7
    ld b, a                                       ; $4D27: $47
    ld a, [$D786]                                 ; $4D28: $FA $86 $D7
    ld c, a                                       ; $4D2B: $4F
    ld a, [$D782]                                 ; $4D2C: $FA $82 $D7
    ld [$C329], a                                 ; $4D2F: $EA $29 $C3
    ld a, [$D7DA]                                 ; $4D32: $FA $DA $D7
    or a                                          ; $4D35: $B7
    jr z, jr_001_4D7D                             ; $4D36: $28 $45

    ld de, $C33D                                  ; $4D38: $11 $3D $C3
    call Call_001_4E68                            ; $4D3B: $CD $68 $4E
    ld a, [$D7C4]                                 ; $4D3E: $FA $C4 $D7
    ld d, a                                       ; $4D41: $57
    ld a, [$D7C6]                                 ; $4D42: $FA $C6 $D7
    ld e, a                                       ; $4D45: $5F
    ld a, [$D7C2]                                 ; $4D46: $FA $C2 $D7
    ld [$C32A], a                                 ; $4D49: $EA $2A $C3
    call Call_001_4E7F                            ; $4D4C: $CD $7F $4E
    jr nc, jr_001_4D7D                            ; $4D4F: $30 $2C

    ld a, [$D7E9]                                 ; $4D51: $FA $E9 $D7
    ld b, a                                       ; $4D54: $47
    ld a, [$D7A9]                                 ; $4D55: $FA $A9 $D7
    cp b                                          ; $4D58: $B8
    jr z, jr_001_4D75                             ; $4D59: $28 $1A

    jr c, jr_001_4D69                             ; $4D5B: $38 $0C

    ld a, $00                                     ; $4D5D: $3E $00
    ld [$D7A8], a                                 ; $4D5F: $EA $A8 $D7
    ld a, $01                                     ; $4D62: $3E $01
    ld [$D7E8], a                                 ; $4D64: $EA $E8 $D7
    jr jr_001_4D7D                                ; $4D67: $18 $14

jr_001_4D69:
    ld a, $00                                     ; $4D69: $3E $00
    ld [$D7E8], a                                 ; $4D6B: $EA $E8 $D7
    ld a, $01                                     ; $4D6E: $3E $01
    ld [$D7A8], a                                 ; $4D70: $EA $A8 $D7
    jr jr_001_4D7D                                ; $4D73: $18 $08

jr_001_4D75:
    ld a, $01                                     ; $4D75: $3E $01
    ld [$D7A8], a                                 ; $4D77: $EA $A8 $D7
    ld [$D7E8], a                                 ; $4D7A: $EA $E8 $D7

Jump_001_4D7D:
jr_001_4D7D:
    ld a, [$D700]                                 ; $4D7D: $FA $00 $D7
    bit 7, a                                      ; $4D80: $CB $7F
    jp z, Jump_001_4DF2                           ; $4D82: $CA $F2 $4D

    ld a, [$D7C0]                                 ; $4D85: $FA $C0 $D7
    bit 7, a                                      ; $4D88: $CB $7F
    jp z, Jump_001_4DF2                           ; $4D8A: $CA $F2 $4D

    ld a, [$D71A]                                 ; $4D8D: $FA $1A $D7
    or a                                          ; $4D90: $B7
    jr z, jr_001_4DF2                             ; $4D91: $28 $5F

    ld de, $C333                                  ; $4D93: $11 $33 $C3
    call Call_001_4E68                            ; $4D96: $CD $68 $4E
    ld a, [$D704]                                 ; $4D99: $FA $04 $D7
    ld b, a                                       ; $4D9C: $47
    ld a, [$D706]                                 ; $4D9D: $FA $06 $D7
    ld c, a                                       ; $4DA0: $4F
    ld a, [$D702]                                 ; $4DA1: $FA $02 $D7
    ld [$C329], a                                 ; $4DA4: $EA $29 $C3
    ld a, [$D7DA]                                 ; $4DA7: $FA $DA $D7
    or a                                          ; $4DAA: $B7
    jr z, jr_001_4DF2                             ; $4DAB: $28 $45

    ld de, $C33D                                  ; $4DAD: $11 $3D $C3
    call Call_001_4E68                            ; $4DB0: $CD $68 $4E
    ld a, [$D7C4]                                 ; $4DB3: $FA $C4 $D7
    ld d, a                                       ; $4DB6: $57
    ld a, [$D7C6]                                 ; $4DB7: $FA $C6 $D7
    ld e, a                                       ; $4DBA: $5F
    ld a, [$D7C2]                                 ; $4DBB: $FA $C2 $D7
    ld [$C32A], a                                 ; $4DBE: $EA $2A $C3
    call Call_001_4E7F                            ; $4DC1: $CD $7F $4E
    jr nc, jr_001_4DF2                            ; $4DC4: $30 $2C

    ld a, [$D7E9]                                 ; $4DC6: $FA $E9 $D7
    ld b, a                                       ; $4DC9: $47
    ld a, [$D729]                                 ; $4DCA: $FA $29 $D7
    cp b                                          ; $4DCD: $B8
    jr z, jr_001_4DEA                             ; $4DCE: $28 $1A

    jr c, jr_001_4DDE                             ; $4DD0: $38 $0C

    ld a, $00                                     ; $4DD2: $3E $00
    ld [$D728], a                                 ; $4DD4: $EA $28 $D7
    ld a, $01                                     ; $4DD7: $3E $01
    ld [$D7E8], a                                 ; $4DD9: $EA $E8 $D7
    jr jr_001_4DF2                                ; $4DDC: $18 $14

jr_001_4DDE:
    ld a, $00                                     ; $4DDE: $3E $00
    ld [$D7E8], a                                 ; $4DE0: $EA $E8 $D7
    ld a, $01                                     ; $4DE3: $3E $01
    ld [$D728], a                                 ; $4DE5: $EA $28 $D7
    jr jr_001_4DF2                                ; $4DE8: $18 $08

jr_001_4DEA:
    ld a, $01                                     ; $4DEA: $3E $01
    ld [$D728], a                                 ; $4DEC: $EA $28 $D7
    ld [$D7E8], a                                 ; $4DEF: $EA $E8 $D7

Jump_001_4DF2:
jr_001_4DF2:
    ld a, [$D780]                                 ; $4DF2: $FA $80 $D7
    bit 7, a                                      ; $4DF5: $CB $7F
    jp z, Jump_001_4E67                           ; $4DF7: $CA $67 $4E

    ld a, [$D740]                                 ; $4DFA: $FA $40 $D7
    bit 7, a                                      ; $4DFD: $CB $7F
    jp z, Jump_001_4E67                           ; $4DFF: $CA $67 $4E

    ld a, [$D79A]                                 ; $4E02: $FA $9A $D7
    or a                                          ; $4E05: $B7
    jr z, jr_001_4E67                             ; $4E06: $28 $5F

    ld de, $C333                                  ; $4E08: $11 $33 $C3
    call Call_001_4E68                            ; $4E0B: $CD $68 $4E
    ld a, [$D784]                                 ; $4E0E: $FA $84 $D7
    ld b, a                                       ; $4E11: $47
    ld a, [$D786]                                 ; $4E12: $FA $86 $D7
    ld c, a                                       ; $4E15: $4F
    ld a, [$D782]                                 ; $4E16: $FA $82 $D7
    ld [$C329], a                                 ; $4E19: $EA $29 $C3
    ld a, [$D75A]                                 ; $4E1C: $FA $5A $D7
    or a                                          ; $4E1F: $B7
    jr z, jr_001_4E67                             ; $4E20: $28 $45

    ld de, $C33D                                  ; $4E22: $11 $3D $C3
    call Call_001_4E68                            ; $4E25: $CD $68 $4E
    ld a, [$D744]                                 ; $4E28: $FA $44 $D7
    ld d, a                                       ; $4E2B: $57
    ld a, [$D746]                                 ; $4E2C: $FA $46 $D7
    ld e, a                                       ; $4E2F: $5F
    ld a, [$D742]                                 ; $4E30: $FA $42 $D7
    ld [$C32A], a                                 ; $4E33: $EA $2A $C3
    call Call_001_4E7F                            ; $4E36: $CD $7F $4E
    jr nc, jr_001_4E67                            ; $4E39: $30 $2C

    ld a, [$D769]                                 ; $4E3B: $FA $69 $D7
    ld b, a                                       ; $4E3E: $47
    ld a, [$D7A9]                                 ; $4E3F: $FA $A9 $D7
    cp b                                          ; $4E42: $B8
    jr z, jr_001_4E5F                             ; $4E43: $28 $1A

    jr c, jr_001_4E53                             ; $4E45: $38 $0C

    ld a, $00                                     ; $4E47: $3E $00
    ld [$D7A8], a                                 ; $4E49: $EA $A8 $D7
    ld a, $01                                     ; $4E4C: $3E $01
    ld [$D768], a                                 ; $4E4E: $EA $68 $D7
    jr jr_001_4E67                                ; $4E51: $18 $14

jr_001_4E53:
    ld a, $00                                     ; $4E53: $3E $00
    ld [$D768], a                                 ; $4E55: $EA $68 $D7
    ld a, $01                                     ; $4E58: $3E $01
    ld [$D7A8], a                                 ; $4E5A: $EA $A8 $D7
    jr jr_001_4E67                                ; $4E5D: $18 $08

jr_001_4E5F:
    ld a, $01                                     ; $4E5F: $3E $01
    ld [$D7A8], a                                 ; $4E61: $EA $A8 $D7
    ld [$D768], a                                 ; $4E64: $EA $68 $D7

Jump_001_4E67:
jr_001_4E67:
    ret                                           ; $4E67: $C9


Call_001_4E68:
    ld h, $00                                     ; $4E68: $26 $00
    ld l, a                                       ; $4E6A: $6F
    add hl, hl                                    ; $4E6B: $29
    add hl, hl                                    ; $4E6C: $29
    push de                                       ; $4E6D: $D5
    ld de, $4ED9                                  ; $4E6E: $11 $D9 $4E
    add hl, de                                    ; $4E71: $19
    pop de                                        ; $4E72: $D1
    ld a, [hl+]                                   ; $4E73: $2A
    ld [de], a                                    ; $4E74: $12
    inc de                                        ; $4E75: $13
    ld a, [hl+]                                   ; $4E76: $2A
    ld [de], a                                    ; $4E77: $12
    inc de                                        ; $4E78: $13
    ld a, [hl+]                                   ; $4E79: $2A
    ld [de], a                                    ; $4E7A: $12
    inc de                                        ; $4E7B: $13
    ld a, [hl]                                    ; $4E7C: $7E
    ld [de], a                                    ; $4E7D: $12
    ret                                           ; $4E7E: $C9


Call_001_4E7F:
    ld a, [$C329]                                 ; $4E7F: $FA $29 $C3
    ld h, a                                       ; $4E82: $67
    ld a, [$C333]                                 ; $4E83: $FA $33 $C3
    bit 5, h                                      ; $4E86: $CB $6C
    jr z, jr_001_4E8C                             ; $4E88: $28 $02

    cpl                                           ; $4E8A: $2F
    inc a                                         ; $4E8B: $3C

jr_001_4E8C:
    add b                                         ; $4E8C: $80
    ld b, a                                       ; $4E8D: $47
    ld h, a                                       ; $4E8E: $67
    ld a, [$C32A]                                 ; $4E8F: $FA $2A $C3
    ld l, a                                       ; $4E92: $6F
    ld a, [$C33D]                                 ; $4E93: $FA $3D $C3
    bit 5, l                                      ; $4E96: $CB $6D
    jr z, jr_001_4E9C                             ; $4E98: $28 $02

    cpl                                           ; $4E9A: $2F
    inc a                                         ; $4E9B: $3C

jr_001_4E9C:
    add d                                         ; $4E9C: $82
    sub b                                         ; $4E9D: $90
    jp nc, Jump_001_4EA3                          ; $4E9E: $D2 $A3 $4E

    cpl                                           ; $4EA1: $2F
    inc a                                         ; $4EA2: $3C

Jump_001_4EA3:
    ld b, a                                       ; $4EA3: $47
    push bc                                       ; $4EA4: $C5
    ld a, [$C335]                                 ; $4EA5: $FA $35 $C3
    ld b, a                                       ; $4EA8: $47
    ld a, [$C33F]                                 ; $4EA9: $FA $3F $C3
    add b                                         ; $4EAC: $80
    pop bc                                        ; $4EAD: $C1
    sub b                                         ; $4EAE: $90
    jp c, Jump_001_4ED7                           ; $4EAF: $DA $D7 $4E

    ld b, a                                       ; $4EB2: $47
    ld a, [$C334]                                 ; $4EB3: $FA $34 $C3
    add c                                         ; $4EB6: $81
    ld c, a                                       ; $4EB7: $4F
    ld l, a                                       ; $4EB8: $6F
    ld a, [$C33E]                                 ; $4EB9: $FA $3E $C3
    add e                                         ; $4EBC: $83
    sub c                                         ; $4EBD: $91
    jp nc, Jump_001_4EC3                          ; $4EBE: $D2 $C3 $4E

    cpl                                           ; $4EC1: $2F
    inc a                                         ; $4EC2: $3C

Jump_001_4EC3:
    ld c, a                                       ; $4EC3: $4F
    push bc                                       ; $4EC4: $C5
    ld a, [$C336]                                 ; $4EC5: $FA $36 $C3
    ld b, a                                       ; $4EC8: $47
    ld a, [$C340]                                 ; $4EC9: $FA $40 $C3
    add b                                         ; $4ECC: $80
    pop bc                                        ; $4ECD: $C1
    sub c                                         ; $4ECE: $91
    jp c, Jump_001_4ED7                           ; $4ECF: $DA $D7 $4E

    ld c, a                                       ; $4ED2: $4F
    push hl                                       ; $4ED3: $E5
    pop de                                        ; $4ED4: $D1
    scf                                           ; $4ED5: $37
    ret                                           ; $4ED6: $C9


Jump_001_4ED7:
    or a                                          ; $4ED7: $B7
    ret                                           ; $4ED8: $C9


    nop                                           ; $4ED9: $00
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    ld [$F710], sp                                ; $4EDF: $08 $10 $F7
    nop                                           ; $4EE2: $00
    dec c                                         ; $4EE3: $0D
    add hl, bc                                    ; $4EE4: $09
    nop                                           ; $4EE5: $00
    nop                                           ; $4EE6: $00
    jr jr_001_4EFB                                ; $4EE7: $18 $12

    nop                                           ; $4EE9: $00
    nop                                           ; $4EEA: $00
    db $10                                        ; $4EEB: $10
    ld [de], a                                    ; $4EEC: $12
    nop                                           ; $4EED: $00
    nop                                           ; $4EEE: $00
    and b                                         ; $4EEF: $A0
    ld a, a                                       ; $4EF0: $7F
    rst RST_38                                    ; $4EF1: $FF
    ld bc, $0F0D                                  ; $4EF2: $01 $0D $0F
    nop                                           ; $4EF5: $00
    inc b                                         ; $4EF6: $04
    dec c                                         ; $4EF7: $0D
    dec bc                                        ; $4EF8: $0B
    nop                                           ; $4EF9: $00
    db $FC                                        ; $4EFA: $FC

jr_001_4EFB:
    ld [$F30C], sp                                ; $4EFB: $08 $0C $F3
    ld a, [$0711]                                 ; $4EFE: $FA $11 $07
    pop af                                        ; $4F01: $F1
    nop                                           ; $4F02: $00
    add hl, bc                                    ; $4F03: $09
    db $10                                        ; $4F04: $10
    db $EB                                        ; $4F05: $EB
    db $FC                                        ; $4F06: $FC
    db $10                                        ; $4F07: $10
    dec b                                         ; $4F08: $05
    nop                                           ; $4F09: $00
    rlca                                          ; $4F0A: $07
    ld [de], a                                    ; $4F0B: $12
    add hl, bc                                    ; $4F0C: $09
    nop                                           ; $4F0D: $00
    nop                                           ; $4F0E: $00
    dec c                                         ; $4F0F: $0D
    ld a, a                                       ; $4F10: $7F
    nop                                           ; $4F11: $00
    ld c, b                                       ; $4F12: $48
    ld [de], a                                    ; $4F13: $12
    add hl, bc                                    ; $4F14: $09
    nop                                           ; $4F15: $00
    ld c, b                                       ; $4F16: $48
    inc d                                         ; $4F17: $14
    inc c                                         ; $4F18: $0C
    di                                            ; $4F19: $F3
    db $ED                                        ; $4F1A: $ED
    dec c                                         ; $4F1B: $0D
    ld de, $EAF2                                  ; $4F1C: $11 $F2 $EA
    db $10                                        ; $4F1F: $10
    jr nz, @+$09                                  ; $4F20: $20 $07

    pop hl                                        ; $4F22: $E1
    ld de, $F00C                                  ; $4F23: $11 $0C $F0
    add hl, bc                                    ; $4F26: $09
    inc e                                         ; $4F27: $1C
    ld b, $F7                                     ; $4F28: $06 $F7
    or $0C                                        ; $4F2A: $F6 $0C
    ld de, $00F7                                  ; $4F2C: $11 $F7 $00
    rrca                                          ; $4F2F: $0F
    dec b                                         ; $4F30: $05
    rst RST_30                                    ; $4F31: $F7
    dec bc                                        ; $4F32: $0B
    dec c                                         ; $4F33: $0D
    ld b, $F7                                     ; $4F34: $06 $F7
    inc b                                         ; $4F36: $04
    rrca                                          ; $4F37: $0F
    ld a, [bc]                                    ; $4F38: $0A
    rst RST_30                                    ; $4F39: $F7
    cp $0D                                        ; $4F3A: $FE $0D
    dec c                                         ; $4F3C: $0D
    ldh a, [c]                                    ; $4F3D: $F2
    db $FD                                        ; $4F3E: $FD
    db $10                                        ; $4F3F: $10
    inc c                                         ; $4F40: $0C
    db $FC                                        ; $4F41: $FC
    push af                                       ; $4F42: $F5
    inc c                                         ; $4F43: $0C
    db $10                                        ; $4F44: $10
    rst RST_30                                    ; $4F45: $F7
    ldh a, [$FF0C]                                ; $4F46: $F0 $0C
    ld d, $00                                     ; $4F48: $16 $00
    ld [$0A08], sp                                ; $4F4A: $08 $08 $0A
    nop                                           ; $4F4D: $00
    ld b, $0C                                     ; $4F4E: $06 $0C
    dec bc                                        ; $4F50: $0B
    nop                                           ; $4F51: $00
    rlca                                          ; $4F52: $07
    inc c                                         ; $4F53: $0C
    add hl, bc                                    ; $4F54: $09
    nop                                           ; $4F55: $00
    nop                                           ; $4F56: $00
    ld [$F60C], sp                                ; $4F57: $08 $0C $F6
    ld b, $0C                                     ; $4F5A: $06 $0C
    dec bc                                        ; $4F5C: $0B
    or $04                                        ; $4F5D: $F6 $04
    dec c                                         ; $4F5F: $0D
    ld b, $EC                                     ; $4F60: $06 $EC
    db $FD                                        ; $4F62: $FD
    dec c                                         ; $4F63: $0D
    inc c                                         ; $4F64: $0C
    push af                                       ; $4F65: $F5
    ld [bc], a                                    ; $4F66: $02
    ld de, $F30E                                  ; $4F67: $11 $0E $F3
    ld [$070D], sp                                ; $4F6A: $08 $0D $07
    db $EC                                        ; $4F6D: $EC
    dec bc                                        ; $4F6E: $0B
    ld [de], a                                    ; $4F6F: $12
    ld b, $F9                                     ; $4F70: $06 $F9
    cp $0B                                        ; $4F72: $FE $0B
    inc d                                         ; $4F74: $14
    rst RST_30                                    ; $4F75: $F7
    ld b, $0D                                     ; $4F76: $06 $0D
    add hl, bc                                    ; $4F78: $09
    rst RST_30                                    ; $4F79: $F7
    ld hl, sp+$0D                                 ; $4F7A: $F8 $0D
    dec c                                         ; $4F7C: $0D
    rst RST_30                                    ; $4F7D: $F7
    ld b, $0D                                     ; $4F7E: $06 $0D
    add hl, bc                                    ; $4F80: $09
    rst RST_30                                    ; $4F81: $F7
    inc bc                                        ; $4F82: $03
    dec c                                         ; $4F83: $0D
    dec c                                         ; $4F84: $0D
    ldh a, [$FFFE]                                ; $4F85: $F0 $FE
    jr @+$08                                      ; $4F87: $18 $06

    di                                            ; $4F89: $F3
    rlca                                          ; $4F8A: $07
    ld [de], a                                    ; $4F8B: $12
    add hl, bc                                    ; $4F8C: $09
    push af                                       ; $4F8D: $F5
    ld a, [$0C0F]                                 ; $4F8E: $FA $0F $0C
    ldh a, [rSC]                                  ; $4F91: $F0 $02
    ld a, [de]                                    ; $4F93: $1A
    dec b                                         ; $4F94: $05
    ldh a, [rTAC]                                 ; $4F95: $F0 $07
    ld a, [de]                                    ; $4F97: $1A
    ld b, $F2                                     ; $4F98: $06 $F2
    ld a, [bc]                                    ; $4F9A: $0A
    inc de                                        ; $4F9B: $13
    ld b, $F5                                     ; $4F9C: $06 $F5
    rst RST_38                                    ; $4F9E: $FF
    rrca                                          ; $4F9F: $0F
    dec bc                                        ; $4FA0: $0B
    ei                                            ; $4FA1: $FB
    inc bc                                        ; $4FA2: $03
    dec bc                                        ; $4FA3: $0B
    inc c                                         ; $4FA4: $0C
    nop                                           ; $4FA5: $00
    ld hl, sp+$08                                 ; $4FA6: $F8 $08
    db $10                                        ; $4FA8: $10
    db $EC                                        ; $4FA9: $EC
    ei                                            ; $4FAA: $FB
    rra                                           ; $4FAB: $1F
    add hl, bc                                    ; $4FAC: $09
    ld [bc], a                                    ; $4FAD: $02
    ld a, [$1614]                                 ; $4FAE: $FA $14 $16
    ldh a, [$FFFC]                                ; $4FB1: $F0 $FC
    inc de                                        ; $4FB3: $13
    ld [$0300], sp                                ; $4FB4: $08 $00 $03
    ld [$F00D], sp                                ; $4FB7: $08 $0D $F0
    inc b                                         ; $4FBA: $04
    db $10                                        ; $4FBB: $10
    rlca                                          ; $4FBC: $07
    db $F4                                        ; $4FBD: $F4
    ld [$080E], sp                                ; $4FBE: $08 $0E $08
    ldh a, [$FFFA]                                ; $4FC1: $F0 $FA
    ld de, $F00A                                  ; $4FC3: $11 $0A $F0
    ld b, $12                                     ; $4FC6: $06 $12
    ld b, $F6                                     ; $4FC8: $06 $F6
    dec bc                                        ; $4FCA: $0B
    db $10                                        ; $4FCB: $10
    ld b, $F6                                     ; $4FCC: $06 $F6
    ld a, [bc]                                    ; $4FCE: $0A
    db $10                                        ; $4FCF: $10
    ld b, $F5                                     ; $4FD0: $06 $F5
    ei                                            ; $4FD2: $FB
    ld c, $0C                                     ; $4FD3: $0E $0C
    or $00                                        ; $4FD5: $F6 $00
    ld c, $08                                     ; $4FD7: $0E $08
    nop                                           ; $4FD9: $00
    ld b, $0E                                     ; $4FDA: $06 $0E
    ld c, $F3                                     ; $4FDC: $0E $F3
    db $F4                                        ; $4FDE: $F4
    ld de, $F00D                                  ; $4FDF: $11 $0D $F0
    ld [bc], a                                    ; $4FE2: $02
    inc de                                        ; $4FE3: $13
    dec bc                                        ; $4FE4: $0B
    ld hl, sp+$06                                 ; $4FE5: $F8 $06
    dec c                                         ; $4FE7: $0D
    ld a, [bc]                                    ; $4FE8: $0A
    ldh a, [c]                                    ; $4FE9: $F2
    ld hl, sp+$10                                 ; $4FEA: $F8 $10
    stop                                          ; $4FEC: $10 $00
    ld [$1312], a                                 ; $4FEE: $EA $12 $13
    or $FC                                        ; $4FF1: $F6 $FC
    rrca                                          ; $4FF3: $0F
    dec b                                         ; $4FF4: $05
    db $EC                                        ; $4FF5: $EC
    ld bc, $0610                                  ; $4FF6: $01 $10 $06
    db $F4                                        ; $4FF9: $F4
    ld hl, sp+$0E                                 ; $4FFA: $F8 $0E
    db $10                                        ; $4FFC: $10
    or $00                                        ; $4FFD: $F6 $00
    db $10                                        ; $4FFF: $10
    dec b                                         ; $5000: $05
    ld hl, sp+$04                                 ; $5001: $F8 $04
    dec c                                         ; $5003: $0D
    dec bc                                        ; $5004: $0B
    xor $08                                       ; $5005: $EE $08
    rrca                                          ; $5007: $0F
    ld b, $F4                                     ; $5008: $06 $F4
    ld sp, hl                                     ; $500A: $F9
    rrca                                          ; $500B: $0F
    ld de, $02F4                                  ; $500C: $11 $F4 $02
    rrca                                          ; $500F: $0F
    add hl, bc                                    ; $5010: $09
    db $FC                                        ; $5011: $FC
    pop af                                        ; $5012: $F1
    inc de                                        ; $5013: $13
    dec c                                         ; $5014: $0D
    db $F4                                        ; $5015: $F4
    ld hl, sp+$10                                 ; $5016: $F8 $10
    inc d                                         ; $5018: $14
    push af                                       ; $5019: $F5
    nop                                           ; $501A: $00
    dec c                                         ; $501B: $0D
    add hl, bc                                    ; $501C: $09
    or $FA                                        ; $501D: $F6 $FA
    db $10                                        ; $501F: $10
    dec bc                                        ; $5020: $0B
    rst RST_30                                    ; $5021: $F7
    ld [bc], a                                    ; $5022: $02
    dec c                                         ; $5023: $0D
    dec bc                                        ; $5024: $0B
    di                                            ; $5025: $F3
    inc b                                         ; $5026: $04
    db $10                                        ; $5027: $10
    ld [$05F3], sp                                ; $5028: $08 $F3 $05
    db $10                                        ; $502B: $10
    rrca                                          ; $502C: $0F
    push af                                       ; $502D: $F5
    cp $0F                                        ; $502E: $FE $0F
    db $10                                        ; $5030: $10
    ldh a, [c]                                    ; $5031: $F2
    inc b                                         ; $5032: $04
    db $10                                        ; $5033: $10
    inc b                                         ; $5034: $04
    db $ED                                        ; $5035: $ED
    inc b                                         ; $5036: $04
    db $10                                        ; $5037: $10
    inc b                                         ; $5038: $04
    ld a, [$0C05]                                 ; $5039: $FA $05 $0C
    dec c                                         ; $503C: $0D
    push af                                       ; $503D: $F5
    ld a, [bc]                                    ; $503E: $0A
    dec c                                         ; $503F: $0D
    rlca                                          ; $5040: $07
    ldh a, [c]                                    ; $5041: $F2
    db $FC                                        ; $5042: $FC
    db $10                                        ; $5043: $10
    ld b, $F5                                     ; $5044: $06 $F5
    rst RST_38                                    ; $5046: $FF
    db $10                                        ; $5047: $10
    rlca                                          ; $5048: $07
    ldh a, [$FFFB]                                ; $5049: $F0 $FB
    ld d, $08                                     ; $504B: $16 $08
    db $F4                                        ; $504D: $F4
    ld bc, $0510                                  ; $504E: $01 $10 $05
    xor $09                                       ; $5051: $EE $09
    ld d, $06                                     ; $5053: $16 $06
    di                                            ; $5055: $F3
    ld [bc], a                                    ; $5056: $02
    ld [de], a                                    ; $5057: $12
    dec c                                         ; $5058: $0D
    ldh a, [c]                                    ; $5059: $F2
    ld a, [$1010]                                 ; $505A: $FA $10 $10
    push af                                       ; $505D: $F5
    inc b                                         ; $505E: $04
    db $10                                        ; $505F: $10
    add hl, bc                                    ; $5060: $09
    ldh a, [$FFFE]                                ; $5061: $F0 $FE
    jr jr_001_506F                                ; $5063: $18 $0A

    ldh a, [rTIMA]                                ; $5065: $F0 $05
    ld a, [de]                                    ; $5067: $1A
    dec bc                                        ; $5068: $0B
    or $FF                                        ; $5069: $F6 $FF
    dec bc                                        ; $506B: $0B
    dec bc                                        ; $506C: $0B
    or $FD                                        ; $506D: $F6 $FD

jr_001_506F:
    ld c, $0C                                     ; $506F: $0E $0C
    db $EC                                        ; $5071: $EC
    dec c                                         ; $5072: $0D
    rla                                           ; $5073: $17
    inc b                                         ; $5074: $04
    db $F4                                        ; $5075: $F4
    ei                                            ; $5076: $FB
    db $10                                        ; $5077: $10
    ld b, $F7                                     ; $5078: $06 $F7
    rlca                                          ; $507A: $07
    ld a, [bc]                                    ; $507B: $0A
    ld [$00EE], sp                                ; $507C: $08 $EE $00
    inc de                                        ; $507F: $13
    ld [$FFF3], sp                                ; $5080: $08 $F3 $FF
    ld de, $EB06                                  ; $5083: $11 $06 $EB
    ld [$060D], sp                                ; $5086: $08 $0D $06
    push af                                       ; $5089: $F5
    ld a, [$0E0D]                                 ; $508A: $FA $0D $0E
    db $FC                                        ; $508D: $FC
    inc bc                                        ; $508E: $03
    dec c                                         ; $508F: $0D
    add hl, bc                                    ; $5090: $09
    rst RST_30                                    ; $5091: $F7
    inc bc                                        ; $5092: $03
    dec c                                         ; $5093: $0D
    add hl, bc                                    ; $5094: $09
    xor $F6                                       ; $5095: $EE $F6
    inc de                                        ; $5097: $13
    rrca                                          ; $5098: $0F
    rst RST_30                                    ; $5099: $F7
    db $FD                                        ; $509A: $FD
    db $10                                        ; $509B: $10
    ld a, [bc]                                    ; $509C: $0A
    or $FC                                        ; $509D: $F6 $FC
    db $10                                        ; $509F: $10
    db $10                                        ; $50A0: $10
    db $F4                                        ; $50A1: $F4
    ld b, $0D                                     ; $50A2: $06 $0D
    add hl, bc                                    ; $50A4: $09
    pop af                                        ; $50A5: $F1
    push af                                       ; $50A6: $F5
    ld de, $F205                                  ; $50A7: $11 $05 $F2
    db $FC                                        ; $50AA: $FC
    db $10                                        ; $50AB: $10
    dec b                                         ; $50AC: $05
    di                                            ; $50AD: $F3
    ei                                            ; $50AE: $FB
    inc de                                        ; $50AF: $13
    dec d                                         ; $50B0: $15
    db $F4                                        ; $50B1: $F4
    db $FD                                        ; $50B2: $FD
    ld de, $EB05                                  ; $50B3: $11 $05 $EB
    inc c                                         ; $50B6: $0C
    ld c, $06                                     ; $50B7: $0E $06
    di                                            ; $50B9: $F3
    cp $12                                        ; $50BA: $FE $12
    ld c, $F3                                     ; $50BC: $0E $F3
    jp hl                                         ; $50BE: $E9


    ld [de], a                                    ; $50BF: $12
    add hl, de                                    ; $50C0: $19
    ld [$13F7], a                                 ; $50C1: $EA $F7 $13
    dec c                                         ; $50C4: $0D
    db $F4                                        ; $50C5: $F4
    ld bc, $090D                                  ; $50C6: $01 $0D $09
    or $FC                                        ; $50C9: $F6 $FC
    dec c                                         ; $50CB: $0D
    ld a, [bc]                                    ; $50CC: $0A
    db $ED                                        ; $50CD: $ED
    inc bc                                        ; $50CE: $03
    db $10                                        ; $50CF: $10
    add hl, bc                                    ; $50D0: $09
    db $EC                                        ; $50D1: $EC
    nop                                           ; $50D2: $00
    ld de, $EC0B                                  ; $50D3: $11 $0B $EC
    rlca                                          ; $50D6: $07
    ld [de], a                                    ; $50D7: $12
    add hl, bc                                    ; $50D8: $09
    db $ED                                        ; $50D9: $ED
    add hl, bc                                    ; $50DA: $09
    ld de, $E905                                  ; $50DB: $11 $05 $E9
    ld [$0414], sp                                ; $50DE: $08 $14 $04
    db $EC                                        ; $50E1: $EC
    add hl, bc                                    ; $50E2: $09
    inc d                                         ; $50E3: $14
    rlca                                          ; $50E4: $07
    ld a, [$0EFA]                                 ; $50E5: $FA $FA $0E
    ld a, [bc]                                    ; $50E8: $0A
    xor $FA                                       ; $50E9: $EE $FA
    ld de, $F205                                  ; $50EB: $11 $05 $F2
    inc bc                                        ; $50EE: $03
    db $10                                        ; $50EF: $10
    ld a, [bc]                                    ; $50F0: $0A
    ldh a, [$FFFE]                                ; $50F1: $F0 $FE
    ld [de], a                                    ; $50F3: $12
    ld [de], a                                    ; $50F4: $12
    di                                            ; $50F5: $F3
    rst RST_38                                    ; $50F6: $FF
    ld de, $F605                                  ; $50F7: $11 $05 $F6
    add hl, bc                                    ; $50FA: $09
    db $10                                        ; $50FB: $10
    rlca                                          ; $50FC: $07
    ld hl, sp-$08                                 ; $50FD: $F8 $F8
    ld c, $12                                     ; $50FF: $0E $12
    di                                            ; $5101: $F3
    or $11                                        ; $5102: $F6 $11
    dec c                                         ; $5104: $0D
    xor $FD                                       ; $5105: $EE $FD
    db $10                                        ; $5107: $10
    inc c                                         ; $5108: $0C
    add sp, $06                                   ; $5109: $E8 $06
    db $10                                        ; $510B: $10
    ld b, $EC                                     ; $510C: $06 $EC
    ld [bc], a                                    ; $510E: $02
    inc d                                         ; $510F: $14
    ld [$0CED], sp                                ; $5110: $08 $ED $0C
    db $10                                        ; $5113: $10
    dec b                                         ; $5114: $05
    pop af                                        ; $5115: $F1
    inc c                                         ; $5116: $0C
    inc de                                        ; $5117: $13
    ld b, $EC                                     ; $5118: $06 $EC
    ld b, $14                                     ; $511A: $06 $14
    ld a, [bc]                                    ; $511C: $0A
    add sp, -$0C                                  ; $511D: $E8 $F4
    ld c, $08                                     ; $511F: $0E $08
    db $FC                                        ; $5121: $FC
    ldh a, [c]                                    ; $5122: $F2
    dec c                                         ; $5123: $0D
    dec c                                         ; $5124: $0D
    pop af                                        ; $5125: $F1
    rst RST_30                                    ; $5126: $F7
    ld [de], a                                    ; $5127: $12
    dec c                                         ; $5128: $0D
    db $ED                                        ; $5129: $ED
    ld a, [$0711]                                 ; $512A: $FA $11 $07
    ld [$0800], sp                                ; $512D: $08 $00 $08
    db $10                                        ; $5130: $10
    ld sp, hl                                     ; $5131: $F9
    cp $11                                        ; $5132: $FE $11
    rlca                                          ; $5134: $07
    push af                                       ; $5135: $F5
    db $FC                                        ; $5136: $FC
    ld de, $F10C                                  ; $5137: $11 $0C $F1
    nop                                           ; $513A: $00
    inc d                                         ; $513B: $14
    ld [$0CF5], sp                                ; $513C: $08 $F5 $0C
    db $10                                        ; $513F: $10
    ld b, $F5                                     ; $5140: $06 $F5
    cp $0E                                        ; $5142: $FE $0E
    inc c                                         ; $5144: $0C
    di                                            ; $5145: $F3
    ld bc, $080F                                  ; $5146: $01 $0F $08
    ldh a, [$FFF8]                                ; $5149: $F0 $F8
    rla                                           ; $514B: $17
    add hl, bc                                    ; $514C: $09
    rst RST_30                                    ; $514D: $F7
    db $F4                                        ; $514E: $F4
    ld c, $13                                     ; $514F: $0E $13
    ldh a, [rP1]                                  ; $5151: $F0 $00
    jr jr_001_515A                                ; $5153: $18 $05

    ldh a, [rTIMA]                                ; $5155: $F0 $05
    ld de, $F006                                  ; $5157: $11 $06 $F0

jr_001_515A:
    ei                                            ; $515A: $FB
    rla                                           ; $515B: $17
    add hl, bc                                    ; $515C: $09
    xor $07                                       ; $515D: $EE $07
    ld a, [de]                                    ; $515F: $1A
    ld b, $EE                                     ; $5160: $06 $EE
    ld a, [bc]                                    ; $5162: $0A
    ld [de], a                                    ; $5163: $12
    ld b, $F4                                     ; $5164: $06 $F4
    push af                                       ; $5166: $F5
    rrca                                          ; $5167: $0F
    ld de, $04F5                                  ; $5168: $11 $F5 $04
    rrca                                          ; $516B: $0F
    dec c                                         ; $516C: $0D
    di                                            ; $516D: $F3
    ld bc, $0B15                                  ; $516E: $01 $15 $0B
    cp $0A                                        ; $5171: $FE $0A
    inc d                                         ; $5173: $14
    dec bc                                        ; $5174: $0B
    db $EC                                        ; $5175: $EC
    ld hl, sp+$15                                 ; $5176: $F8 $15
    rlca                                          ; $5178: $07
    db $EB                                        ; $5179: $EB
    ld sp, hl                                     ; $517A: $F9
    dec d                                         ; $517B: $15
    ld b, $F2                                     ; $517C: $06 $F2
    rst RST_38                                    ; $517E: $FF
    ld [de], a                                    ; $517F: $12
    rlca                                          ; $5180: $07
    db $F4                                        ; $5181: $F4
    ld a, [bc]                                    ; $5182: $0A
    ld [de], a                                    ; $5183: $12
    ld b, $F2                                     ; $5184: $06 $F2
    ld [bc], a                                    ; $5186: $02
    dec d                                         ; $5187: $15
    rrca                                          ; $5188: $0F
    pop af                                        ; $5189: $F1
    ld hl, sp+$12                                 ; $518A: $F8 $12
    ld a, [bc]                                    ; $518C: $0A
    db $F4                                        ; $518D: $F4
    rst RST_38                                    ; $518E: $FF
    ld [de], a                                    ; $518F: $12
    add hl, bc                                    ; $5190: $09
    or $04                                        ; $5191: $F6 $04
    db $10                                        ; $5193: $10
    dec bc                                        ; $5194: $0B
    or $EC                                        ; $5195: $F6 $EC
    inc c                                         ; $5197: $0C
    ld e, $F5                                     ; $5198: $1E $F5
    ld [bc], a                                    ; $519A: $02
    ld [de], a                                    ; $519B: $12
    rlca                                          ; $519C: $07
    pop af                                        ; $519D: $F1
    rst RST_38                                    ; $519E: $FF
    ld [de], a                                    ; $519F: $12
    rlca                                          ; $51A0: $07
    ldh a, [c]                                    ; $51A1: $F2
    cp $14                                        ; $51A2: $FE $14
    ld [$09EE], sp                                ; $51A4: $08 $EE $09
    dec d                                         ; $51A7: $15
    ld b, $F0                                     ; $51A8: $06 $F0
    dec bc                                        ; $51AA: $0B
    dec d                                         ; $51AB: $15
    dec b                                         ; $51AC: $05
    ld hl, sp+$06                                 ; $51AD: $F8 $06
    ld [de], a                                    ; $51AF: $12
    ld [$01F2], sp                                ; $51B0: $08 $F2 $01
    ld de, $F009                                  ; $51B3: $11 $09 $F0
    nop                                           ; $51B6: $00
    db $10                                        ; $51B7: $10
    add hl, bc                                    ; $51B8: $09
    rst RST_30                                    ; $51B9: $F7
    db $FC                                        ; $51BA: $FC
    add hl, bc                                    ; $51BB: $09
    ld a, [bc]                                    ; $51BC: $0A
    ld hl, sp+$04                                 ; $51BD: $F8 $04
    ld de, $FC08                                  ; $51BF: $11 $08 $FC
    ld a, [$1014]                                 ; $51C2: $FA $14 $10
    db $FC                                        ; $51C5: $FC
    nop                                           ; $51C6: $00
    db $10                                        ; $51C7: $10
    db $10                                        ; $51C8: $10
    db $FC                                        ; $51C9: $FC
    ld b, $10                                     ; $51CA: $06 $10
    dec bc                                        ; $51CC: $0B
    nop                                           ; $51CD: $00
    inc bc                                        ; $51CE: $03
    ld [$000C], sp                                ; $51CF: $08 $0C $00
    inc b                                         ; $51D2: $04
    dec bc                                        ; $51D3: $0B
    dec bc                                        ; $51D4: $0B
    nop                                           ; $51D5: $00
    inc b                                         ; $51D6: $04
    ld a, [bc]                                    ; $51D7: $0A
    dec bc                                        ; $51D8: $0B
    nop                                           ; $51D9: $00
    inc b                                         ; $51DA: $04
    add hl, bc                                    ; $51DB: $09
    dec bc                                        ; $51DC: $0B
    nop                                           ; $51DD: $00
    db $FC                                        ; $51DE: $FC
    ld a, [bc]                                    ; $51DF: $0A
    ld d, $00                                     ; $51E0: $16 $00
    inc b                                         ; $51E2: $04
    add hl, bc                                    ; $51E3: $09
    dec bc                                        ; $51E4: $0B
    nop                                           ; $51E5: $00
    ld [$0809], sp                                ; $51E6: $08 $09 $08
    nop                                           ; $51E9: $00
    add hl, bc                                    ; $51EA: $09
    add hl, bc                                    ; $51EB: $09
    ld [$0800], sp                                ; $51EC: $08 $00 $08
    dec c                                         ; $51EF: $0D
    add hl, bc                                    ; $51F0: $09
    nop                                           ; $51F1: $00
    ld b, $1D                                     ; $51F2: $06 $1D
    ld a, [bc]                                    ; $51F4: $0A
    nop                                           ; $51F5: $00
    ld [bc], a                                    ; $51F6: $02
    inc c                                         ; $51F7: $0C
    ld c, $00                                     ; $51F8: $0E $00
    inc b                                         ; $51FA: $04
    dec c                                         ; $51FB: $0D
    dec bc                                        ; $51FC: $0B
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    ld a, [bc]                                    ; $51FF: $0A
    ld c, $00                                     ; $5200: $0E $00
    inc b                                         ; $5202: $04
    add hl, bc                                    ; $5203: $09
    dec bc                                        ; $5204: $0B
    nop                                           ; $5205: $00
    ld b, $0B                                     ; $5206: $06 $0B
    dec bc                                        ; $5208: $0B
    nop                                           ; $5209: $00
    dec b                                         ; $520A: $05
    ld a, [bc]                                    ; $520B: $0A
    ld a, [bc]                                    ; $520C: $0A
    nop                                           ; $520D: $00
    ld a, [bc]                                    ; $520E: $0A
    add hl, bc                                    ; $520F: $09
    rlca                                          ; $5210: $07
    nop                                           ; $5211: $00
    ld [$080F], sp                                ; $5212: $08 $0F $08
    nop                                           ; $5215: $00
    dec b                                         ; $5216: $05
    dec bc                                        ; $5217: $0B
    ld a, [bc]                                    ; $5218: $0A
    nop                                           ; $5219: $00
    dec b                                         ; $521A: $05
    ld a, [bc]                                    ; $521B: $0A
    ld a, [bc]                                    ; $521C: $0A
    nop                                           ; $521D: $00
    inc b                                         ; $521E: $04
    dec c                                         ; $521F: $0D
    dec c                                         ; $5220: $0D
    nop                                           ; $5221: $00
    ld [bc], a                                    ; $5222: $02
    ld [$0010], sp                                ; $5223: $08 $10 $00
    inc b                                         ; $5226: $04
    dec c                                         ; $5227: $0D
    dec bc                                        ; $5228: $0B
    nop                                           ; $5229: $00
    db $F4                                        ; $522A: $F4
    inc c                                         ; $522B: $0C
    ld e, $00                                     ; $522C: $1E $00
    add sp, $14                                   ; $522E: $E8 $14
    ld [de], a                                    ; $5230: $12
    nop                                           ; $5231: $00
    push af                                       ; $5232: $F5
    ld d, $1A                                     ; $5233: $16 $1A
    di                                            ; $5235: $F3
    ld a, [$0511]                                 ; $5236: $FA $11 $05
    di                                            ; $5239: $F3
    nop                                           ; $523A: $00
    inc d                                         ; $523B: $14
    ld b, $EA                                     ; $523C: $06 $EA
    nop                                           ; $523E: $00
    ld a, [de]                                    ; $523F: $1A
    rlca                                          ; $5240: $07
    or $00                                        ; $5241: $F6 $00
    inc de                                        ; $5243: $13
    ld b, $F8                                     ; $5244: $06 $F8
    ld a, [bc]                                    ; $5246: $0A
    inc d                                         ; $5247: $14
    ld b, $EE                                     ; $5248: $06 $EE
    db $FC                                        ; $524A: $FC
    db $10                                        ; $524B: $10
    ld [de], a                                    ; $524C: $12
    or $00                                        ; $524D: $F6 $00
    ld de, $F80B                                  ; $524F: $11 $0B $F8
    inc b                                         ; $5252: $04
    rrca                                          ; $5253: $0F
    ld a, [bc]                                    ; $5254: $0A
    or $FD                                        ; $5255: $F6 $FD
    rla                                           ; $5257: $17
    rlca                                          ; $5258: $07
    ldh a, [c]                                    ; $5259: $F2
    ei                                            ; $525A: $FB
    dec d                                         ; $525B: $15
    dec c                                         ; $525C: $0D
    db $EC                                        ; $525D: $EC
    ld a, [$0622]                                 ; $525E: $FA $22 $06
    ldh a, [c]                                    ; $5261: $F2
    or $0F                                        ; $5262: $F6 $0F
    ld d, $F2                                     ; $5264: $16 $F2
    rst RST_38                                    ; $5266: $FF
    ld de, $F506                                  ; $5267: $11 $06 $F5
    ei                                            ; $526A: $FB
    inc de                                        ; $526B: $13
    ld [$02F1], sp                                ; $526C: $08 $F1 $02
    ld de, $F205                                  ; $526F: $11 $05 $F2
    inc b                                         ; $5272: $04
    inc de                                        ; $5273: $13
    ld [$F6F7], sp                                ; $5274: $08 $F7 $F6
    rrca                                          ; $5277: $0F
    ld d, $09                                     ; $5278: $16 $09
    ld hl, sp+$0D                                 ; $527A: $F8 $0D
    dec c                                         ; $527C: $0D
    add hl, bc                                    ; $527D: $09
    inc bc                                        ; $527E: $03
    dec c                                         ; $527F: $0D
    dec c                                         ; $5280: $0D
    nop                                           ; $5281: $00
    inc b                                         ; $5282: $04
    ld [$EE0C], sp                                ; $5283: $08 $0C $EE
    ld b, $0C                                     ; $5286: $06 $0C
    rlca                                          ; $5288: $07
    or $FE                                        ; $5289: $F6 $FE
    inc c                                         ; $528B: $0C
    ld c, $EE                                     ; $528C: $0E $EE
    ld a, [$150D]                                 ; $528E: $FA $0D $15
    ld hl, sp+$06                                 ; $5291: $F8 $06
    ld c, $09                                     ; $5293: $0E $09
    ld hl, sp+$08                                 ; $5295: $F8 $08
    inc c                                         ; $5297: $0C
    ld [$FEFA], sp                                ; $5298: $08 $FA $FE
    ld a, [bc]                                    ; $529B: $0A
    inc c                                         ; $529C: $0C
    ldh a, [rSC]                                  ; $529D: $F0 $02
    ld d, $0A                                     ; $529F: $16 $0A
    ldh a, [$FF0A]                                ; $52A1: $F0 $0A
    inc d                                         ; $52A3: $14
    ld b, $FC                                     ; $52A4: $06 $FC
    ld [$0808], sp                                ; $52A6: $08 $08 $08
    ei                                            ; $52A9: $FB
    ld bc, $0F10                                  ; $52AA: $01 $10 $0F
    rst RST_30                                    ; $52AD: $F7
    nop                                           ; $52AE: $00
    inc de                                        ; $52AF: $13
    stop                                          ; $52B0: $10 $00
    nop                                           ; $52B2: $00
    and b                                         ; $52B3: $A0
    jr jr_001_52B6                                ; $52B4: $18 $00

jr_001_52B6:
    ldh a, [$FFA0]                                ; $52B6: $F0 $A0
    jr nz, jr_001_52BA                            ; $52B8: $20 $00

jr_001_52BA:
    ld hl, sp-$60                                 ; $52BA: $F8 $A0
    jr jr_001_52BE                                ; $52BC: $18 $00

jr_001_52BE:
    db $F4                                        ; $52BE: $F4
    and b                                         ; $52BF: $A0
    jr nz, jr_001_52C2                            ; $52C0: $20 $00

jr_001_52C2:
    ret nc                                        ; $52C2: $D0

    dec c                                         ; $52C3: $0D
    ld b, b                                       ; $52C4: $40
    nop                                           ; $52C5: $00
    nop                                           ; $52C6: $00
    nop                                           ; $52C7: $00
    nop                                           ; $52C8: $00
    nop                                           ; $52C9: $00
    nop                                           ; $52CA: $00
    nop                                           ; $52CB: $00
    nop                                           ; $52CC: $00
    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    nop                                           ; $52CF: $00
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    nop                                           ; $52D2: $00
    nop                                           ; $52D3: $00
    nop                                           ; $52D4: $00
    nop                                           ; $52D5: $00
    nop                                           ; $52D6: $00
    nop                                           ; $52D7: $00
    nop                                           ; $52D8: $00

Call_001_52D9:
    ld hl, $C039                                  ; $52D9: $21 $39 $C0
    res 7, [hl]                                   ; $52DC: $CB $BE
    res 6, [hl]                                   ; $52DE: $CB $B6
    ld a, [$C2C6]                                 ; $52E0: $FA $C6 $C2
    and $F0                                       ; $52E3: $E6 $F0
    cp $20                                        ; $52E5: $FE $20
    jr nz, jr_001_5303                            ; $52E7: $20 $1A

    ld hl, $C2D4                                  ; $52E9: $21 $D4 $C2
    ld a, [hl+]                                   ; $52EC: $2A
    cp $99                                        ; $52ED: $FE $99
    jr nz, jr_001_5318                            ; $52EF: $20 $27

    ld a, [hl]                                    ; $52F1: $7E
    cp $99                                        ; $52F2: $FE $99
    jr nz, jr_001_5318                            ; $52F4: $20 $22

    ld hl, $C039                                  ; $52F6: $21 $39 $C0
    set 7, [hl]                                   ; $52F9: $CB $FE
    set 6, [hl]                                   ; $52FB: $CB $F6
    call Call_001_5569                            ; $52FD: $CD $69 $55
    jp Jump_001_5381                              ; $5300: $C3 $81 $53


jr_001_5303:
    ld a, [$C2DD]                                 ; $5303: $FA $DD $C2
    or a                                          ; $5306: $B7
    jp nz, Jump_001_5318                          ; $5307: $C2 $18 $53

    ld hl, $C039                                  ; $530A: $21 $39 $C0
    set 7, [hl]                                   ; $530D: $CB $FE
    call Call_001_5569                            ; $530F: $CD $69 $55
    call Call_001_559E                            ; $5312: $CD $9E $55
    jp Jump_001_5381                              ; $5315: $C3 $81 $53


Jump_001_5318:
jr_001_5318:
    ld a, [$C2E9]                                 ; $5318: $FA $E9 $C2
    or a                                          ; $531B: $B7
    jp z, Jump_001_5369                           ; $531C: $CA $69 $53

    dec a                                         ; $531F: $3D
    ld [$C2E9], a                                 ; $5320: $EA $E9 $C2
    ld a, [$C2EA]                                 ; $5323: $FA $EA $C2

Jump_001_5326:
    or a                                          ; $5326: $B7
    jp z, Jump_001_534B                           ; $5327: $CA $4B $53

    push af                                       ; $532A: $F5
    ld a, $01                                     ; $532B: $3E $01
    ld [$C01D], a                                 ; $532D: $EA $1D $C0
    call Call_001_4093                            ; $5330: $CD $93 $40
    call Call_001_5EA0                            ; $5333: $CD $A0 $5E
    call Call_001_42A9                            ; $5336: $CD $A9 $42
    call Call_001_6491                            ; $5339: $CD $91 $64
    call Call_001_429E                            ; $533C: $CD $9E $42
    call Call_000_0452                            ; $533F: $CD $52 $04
    xor a                                         ; $5342: $AF
    ld [$C01D], a                                 ; $5343: $EA $1D $C0
    pop af                                        ; $5346: $F1
    dec a                                         ; $5347: $3D
    jp Jump_001_5326                              ; $5348: $C3 $26 $53


Jump_001_534B:
    call Call_001_4093                            ; $534B: $CD $93 $40
    call Call_001_5EA0                            ; $534E: $CD $A0 $5E
    call Call_001_42A9                            ; $5351: $CD $A9 $42
    call Call_001_47B7                            ; $5354: $CD $B7 $47
    call Call_001_6491                            ; $5357: $CD $91 $64
    call Call_001_584A                            ; $535A: $CD $4A $58
    call Call_000_2AC3                            ; $535D: $CD $C3 $2A
    call Call_001_429E                            ; $5360: $CD $9E $42
    call Call_000_0417                            ; $5363: $CD $17 $04
    jp Jump_001_5318                              ; $5366: $C3 $18 $53


Jump_001_5369:
    ld a, [$D960]                                 ; $5369: $FA $60 $D9
    or a                                          ; $536C: $B7
    jr z, jr_001_5376                             ; $536D: $28 $07

    ld a, [$DA60]                                 ; $536F: $FA $60 $DA
    or a                                          ; $5372: $B7
    jp nz, Jump_001_54F5                          ; $5373: $C2 $F5 $54

jr_001_5376:
    ld hl, $C039                                  ; $5376: $21 $39 $C0
    set 7, [hl]                                   ; $5379: $CB $FE
    call Call_001_5569                            ; $537B: $CD $69 $55
    call Call_001_55A9                            ; $537E: $CD $A9 $55

Jump_001_5381:
    call Call_001_558D                            ; $5381: $CD $8D $55
    ld a, [$C2C6]                                 ; $5384: $FA $C6 $C2
    and $F0                                       ; $5387: $E6 $F0
    cp $20                                        ; $5389: $FE $20
    jr nz, jr_001_53CA                            ; $538B: $20 $3D

    ld a, [$D960]                                 ; $538D: $FA $60 $D9
    ld hl, $DA60                                  ; $5390: $21 $60 $DA
    cp [hl]                                       ; $5393: $BE
    jr z, jr_001_539A                             ; $5394: $28 $04

    jr c, jr_001_53C7                             ; $5396: $38 $2F

    jr jr_001_53C4                                ; $5398: $18 $2A

jr_001_539A:
    ld a, [$C2D7]                                 ; $539A: $FA $D7 $C2
    ld hl, $C2DA                                  ; $539D: $21 $DA $C2
    cp [hl]                                       ; $53A0: $BE
    jr z, jr_001_53A7                             ; $53A1: $28 $04

    jr c, jr_001_53C4                             ; $53A3: $38 $1F

    jr jr_001_53C7                                ; $53A5: $18 $20

jr_001_53A7:
    ld a, [$C2D8]                                 ; $53A7: $FA $D8 $C2
    ld hl, $C2DB                                  ; $53AA: $21 $DB $C2
    cp [hl]                                       ; $53AD: $BE
    jr z, jr_001_53B4                             ; $53AE: $28 $04

    jr c, jr_001_53C4                             ; $53B0: $38 $12

    jr jr_001_53C7                                ; $53B2: $18 $13

jr_001_53B4:
    ld a, [$C2D9]                                 ; $53B4: $FA $D9 $C2
    ld hl, $C2DC                                  ; $53B7: $21 $DC $C2
    cp [hl]                                       ; $53BA: $BE
    jr z, jr_001_53C1                             ; $53BB: $28 $04

    jr c, jr_001_53C4                             ; $53BD: $38 $05

    jr jr_001_53C7                                ; $53BF: $18 $06

jr_001_53C1:
    jp Jump_001_53F1                              ; $53C1: $C3 $F1 $53


jr_001_53C4:
    jp Jump_001_53D5                              ; $53C4: $C3 $D5 $53


jr_001_53C7:
    jp Jump_001_53E3                              ; $53C7: $C3 $E3 $53


jr_001_53CA:
    ld a, [$D960]                                 ; $53CA: $FA $60 $D9
    ld hl, $DA60                                  ; $53CD: $21 $60 $DA
    cp [hl]                                       ; $53D0: $BE
    jr z, jr_001_53F1                             ; $53D1: $28 $1E

    jr c, jr_001_53E3                             ; $53D3: $38 $0E

Jump_001_53D5:
    ld bc, $D900                                  ; $53D5: $01 $00 $D9
    ld de, $DA00                                  ; $53D8: $11 $00 $DA
    call Call_001_54F7                            ; $53DB: $CD $F7 $54
    call Call_001_55C4                            ; $53DE: $CD $C4 $55
    jr jr_001_53F7                                ; $53E1: $18 $14

Jump_001_53E3:
jr_001_53E3:
    ld bc, $DA00                                  ; $53E3: $01 $00 $DA
    ld de, $D900                                  ; $53E6: $11 $00 $D9
    call Call_001_54F7                            ; $53E9: $CD $F7 $54
    call Call_001_5660                            ; $53EC: $CD $60 $56
    jr jr_001_53F7                                ; $53EF: $18 $06

Jump_001_53F1:
jr_001_53F1:
    call Call_001_5512                            ; $53F1: $CD $12 $55
    call Call_001_5786                            ; $53F4: $CD $86 $57

jr_001_53F7:
    ld b, $F0                                     ; $53F7: $06 $F0
    call Call_001_5815                            ; $53F9: $CD $15 $58
    xor a                                         ; $53FC: $AF
    ld [$C2C4], a                                 ; $53FD: $EA $C4 $C2
    ld a, [$C2C6]                                 ; $5400: $FA $C6 $C2
    bit 4, a                                      ; $5403: $CB $67
    jr nz, jr_001_5422                            ; $5405: $20 $1B

    ld a, [$C2D2]                                 ; $5407: $FA $D2 $C2
    cp $03                                        ; $540A: $FE $03
    jp z, Jump_001_5486                           ; $540C: $CA $86 $54

    ld a, [$D940]                                 ; $540F: $FA $40 $D9
    cp $02                                        ; $5412: $FE $02
    jp z, Jump_001_54A5                           ; $5414: $CA $A5 $54

    ld a, [$DA40]                                 ; $5417: $FA $40 $DA
    cp $02                                        ; $541A: $FE $02
    jp z, Jump_001_54C2                           ; $541C: $CA $C2 $54

    jp Jump_001_5480                              ; $541F: $C3 $80 $54


jr_001_5422:
    ld a, [$D936]                                 ; $5422: $FA $36 $D9
    ld hl, $DA36                                  ; $5425: $21 $36 $DA
    cp [hl]                                       ; $5428: $BE
    jp z, Jump_001_5445                           ; $5429: $CA $45 $54

    jp nc, Jump_001_543A                          ; $542C: $D2 $3A $54

    ld a, [$DA36]                                 ; $542F: $FA $36 $DA
    cp $03                                        ; $5432: $FE $03
    jp nc, Jump_001_54A5                          ; $5434: $D2 $A5 $54

    jp Jump_001_544F                              ; $5437: $C3 $4F $54


Jump_001_543A:
    ld a, [$D936]                                 ; $543A: $FA $36 $D9
    cp $03                                        ; $543D: $FE $03
    jp nc, Jump_001_54C2                          ; $543F: $D2 $C2 $54

    jp Jump_001_544F                              ; $5442: $C3 $4F $54


Jump_001_5445:
    cp $04                                        ; $5445: $FE $04
    jp z, Jump_001_5486                           ; $5447: $CA $86 $54

    cp $03                                        ; $544A: $FE $03
    jp z, Jump_001_5480                           ; $544C: $CA $80 $54

Jump_001_544F:
    ld a, [$DA36]                                 ; $544F: $FA $36 $DA
    ld hl, $DA37                                  ; $5452: $21 $37 $DA
    ld d, $00                                     ; $5455: $16 $00
    ld e, a                                       ; $5457: $5F
    add hl, de                                    ; $5458: $19
    ld a, [hl]                                    ; $5459: $7E
    ld b, a                                       ; $545A: $47
    ld a, [$D936]                                 ; $545B: $FA $36 $D9
    ld hl, $D937                                  ; $545E: $21 $37 $D9
    ld d, $00                                     ; $5461: $16 $00
    ld e, a                                       ; $5463: $5F
    add hl, de                                    ; $5464: $19
    ld a, [hl]                                    ; $5465: $7E
    cp b                                          ; $5466: $B8
    jp z, Jump_001_5478                           ; $5467: $CA $78 $54

    cp $FF                                        ; $546A: $FE $FF
    jp z, Jump_001_54C2                           ; $546C: $CA $C2 $54

    ld a, b                                       ; $546F: $78
    cp $FF                                        ; $5470: $FE $FF
    jp z, Jump_001_54A5                           ; $5472: $CA $A5 $54

    jp Jump_001_5480                              ; $5475: $C3 $80 $54


Jump_001_5478:
    cp $FF                                        ; $5478: $FE $FF
    jp z, Jump_001_5486                           ; $547A: $CA $86 $54

    jp Jump_001_5480                              ; $547D: $C3 $80 $54


Jump_001_5480:
    call Call_001_5525                            ; $5480: $CD $25 $55
    jp Jump_000_1D03                              ; $5483: $C3 $03 $1D


Jump_001_5486:
    xor a                                         ; $5486: $AF
    ld [$C2C4], a                                 ; $5487: $EA $C4 $C2
    ld a, [$C2C6]                                 ; $548A: $FA $C6 $C2
    bit 1, a                                      ; $548D: $CB $4F
    jp nz, Jump_001_54DF                          ; $548F: $C2 $DF $54

    ld a, [$C2C5]                                 ; $5492: $FA $C5 $C2
    or a                                          ; $5495: $B7
    jp nz, Jump_001_54DF                          ; $5496: $C2 $DF $54

    ld a, $01                                     ; $5499: $3E $01
    ld [$C2C4], a                                 ; $549B: $EA $C4 $C2
    ld a, [$C2D0]                                 ; $549E: $FA $D0 $C2
    or a                                          ; $54A1: $B7
    jp z, Jump_001_54C2                           ; $54A2: $CA $C2 $54

Jump_001_54A5:
    ld hl, $D936                                  ; $54A5: $21 $36 $D9
    ld a, [$C2C5]                                 ; $54A8: $FA $C5 $C2
    or a                                          ; $54AB: $B7
    jp nz, Jump_001_54B0                          ; $54AC: $C2 $B0 $54

    dec [hl]                                      ; $54AF: $35

Jump_001_54B0:
    ld a, [hl]                                    ; $54B0: $7E
    cp $03                                        ; $54B1: $FE $03
    jp nz, Jump_001_54B8                          ; $54B3: $C2 $B8 $54

    ld [hl], $02                                  ; $54B6: $36 $02

Jump_001_54B8:
    ld hl, $C2C5                                  ; $54B8: $21 $C5 $C2
    set 0, [hl]                                   ; $54BB: $CB $C6
    res 1, [hl]                                   ; $54BD: $CB $8E
    jp Jump_001_54DF                              ; $54BF: $C3 $DF $54


Jump_001_54C2:
    ld hl, $DA36                                  ; $54C2: $21 $36 $DA
    ld a, [$C2C5]                                 ; $54C5: $FA $C5 $C2
    or a                                          ; $54C8: $B7
    jp nz, Jump_001_54CD                          ; $54C9: $C2 $CD $54

    dec [hl]                                      ; $54CC: $35

Jump_001_54CD:
    ld a, [hl]                                    ; $54CD: $7E
    cp $03                                        ; $54CE: $FE $03
    jp nz, Jump_001_54D5                          ; $54D0: $C2 $D5 $54

    ld [hl], $02                                  ; $54D3: $36 $02

Jump_001_54D5:
    ld hl, $C2C5                                  ; $54D5: $21 $C5 $C2
    res 0, [hl]                                   ; $54D8: $CB $86
    set 1, [hl]                                   ; $54DA: $CB $CE
    jp Jump_001_54DF                              ; $54DC: $C3 $DF $54


Jump_001_54DF:
    xor a                                         ; $54DF: $AF
    call Call_000_135D                            ; $54E0: $CD $5D $13
    ld hl, $8000                                  ; $54E3: $21 $00 $80
    call Call_000_1336                            ; $54E6: $CD $36 $13
    call Call_000_0417                            ; $54E9: $CD $17 $04
    call Call_001_5525                            ; $54EC: $CD $25 $55
    ld b, $2C                                     ; $54EF: $06 $2C
    ld hl, $4E08                                  ; $54F1: $21 $08 $4E
    rst RST_00                                    ; $54F4: $C7

Jump_001_54F5:
    ret                                           ; $54F5: $C9


    ret                                           ; $54F6: $C9


Call_001_54F7:
    ld a, $20                                     ; $54F7: $3E $20
    ld hl, $003F                                  ; $54F9: $21 $3F $00
    add hl, bc                                    ; $54FC: $09
    ld [hl], a                                    ; $54FD: $77
    ld hl, $0060                                  ; $54FE: $21 $60 $00
    add hl, de                                    ; $5501: $19
    ld a, [hl]                                    ; $5502: $7E
    or a                                          ; $5503: $B7
    jr nz, jr_001_550A                            ; $5504: $20 $04

    ld a, $FF                                     ; $5506: $3E $FF

Jump_001_5508:
    jr jr_001_550C                                ; $5508: $18 $02

jr_001_550A:
    ld a, $22                                     ; $550A: $3E $22

jr_001_550C:
    ld hl, $003F                                  ; $550C: $21 $3F $00
    add hl, de                                    ; $550F: $19
    ld [hl], a                                    ; $5510: $77
    ret                                           ; $5511: $C9


Call_001_5512:
    ld a, [$D960]                                 ; $5512: $FA $60 $D9
    or a                                          ; $5515: $B7
    jr z, jr_001_551C                             ; $5516: $28 $04

    ld a, $22                                     ; $5518: $3E $22
    jr jr_001_551E                                ; $551A: $18 $02

jr_001_551C:
    ld a, $FF                                     ; $551C: $3E $FF

jr_001_551E:
    ld [$D93F], a                                 ; $551E: $EA $3F $D9
    ld [$DA3F], a                                 ; $5521: $EA $3F $DA
    ret                                           ; $5524: $C9


Call_001_5525:
    ld a, $FF                                     ; $5525: $3E $FF
    ld hl, $C037                                  ; $5527: $21 $37 $C0
    bit 7, [hl]                                   ; $552A: $CB $7E
    jr z, jr_001_5530                             ; $552C: $28 $02

    ld a, $00                                     ; $552E: $3E $00

jr_001_5530:
    ldh [rBGP], a                                 ; $5530: $E0 $47
    ldh [rOBP0], a                                ; $5532: $E0 $48
    ldh [rOBP1], a                                ; $5534: $E0 $49
    ldh [$FFEA], a                                ; $5536: $E0 $EA
    ldh [$FFEB], a                                ; $5538: $E0 $EB
    ldh [$FFEC], a                                ; $553A: $E0 $EC
    call Call_000_140C                            ; $553C: $CD $0C $14
    call Call_000_0417                            ; $553F: $CD $17 $04
    xor a                                         ; $5542: $AF
    ldh [rWY], a                                  ; $5543: $E0 $4A
    ldh [rWX], a                                  ; $5545: $E0 $4B
    ldh [rSTAT], a                                ; $5547: $E0 $41
    ld hl, $C03A                                  ; $5549: $21 $3A $C0
    res 1, [hl]                                   ; $554C: $CB $8E
    call Call_000_049D                            ; $554E: $CD $9D $04
    ld a, $02                                     ; $5551: $3E $02
    call Call_000_03EB                            ; $5553: $CD $EB $03
    ld a, $03                                     ; $5556: $3E $03
    call Call_000_03EB                            ; $5558: $CD $EB $03
    xor a                                         ; $555B: $AF
    ld hl, $FFAB                                  ; $555C: $21 $AB $FF
    ld b, $13                                     ; $555F: $06 $13

jr_001_5561:
    ld [hl+], a                                   ; $5561: $22
    dec b                                         ; $5562: $05
    jr nz, jr_001_5561                            ; $5563: $20 $FC

    call Call_000_0417                            ; $5565: $CD $17 $04
    ret                                           ; $5568: $C9


Call_001_5569:
jr_001_5569:
    call Call_001_558D                            ; $5569: $CD $8D $55
    xor a                                         ; $556C: $AF
    ld hl, $D700                                  ; $556D: $21 $00 $D7
    or [hl]                                       ; $5570: $B6
    ld hl, $D740                                  ; $5571: $21 $40 $D7
    or [hl]                                       ; $5574: $B6
    ld hl, $D780                                  ; $5575: $21 $80 $D7
    or [hl]                                       ; $5578: $B6
    ld hl, $D7C0                                  ; $5579: $21 $C0 $D7
    or [hl]                                       ; $557C: $B6
    and $80                                       ; $557D: $E6 $80
    jr nz, jr_001_5569                            ; $557F: $20 $E8

    ld b, $02                                     ; $5581: $06 $02
    call Call_001_57F3                            ; $5583: $CD $F3 $57
    ld b, $04                                     ; $5586: $06 $04
    ld hl, $5E42                                  ; $5588: $21 $42 $5E
    rst RST_08                                    ; $558B: $CF
    ret                                           ; $558C: $C9


Call_001_558D:
jr_001_558D:
    ld b, $01                                     ; $558D: $06 $01
    call Call_001_57F3                            ; $558F: $CD $F3 $57
    ld a, [$D920]                                 ; $5592: $FA $20 $D9
    ld hl, $DA20                                  ; $5595: $21 $20 $DA
    or [hl]                                       ; $5598: $B6
    and $42                                       ; $5599: $E6 $42
    jr nz, jr_001_558D                            ; $559B: $20 $F0

    ret                                           ; $559D: $C9


Call_001_559E:
    ld hl, $D712                                  ; $559E: $21 $12 $D7
    ld [hl], $E4                                  ; $55A1: $36 $E4
    inc hl                                        ; $55A3: $23
    ld [hl], $66                                  ; $55A4: $36 $66
    jp Jump_001_55B1                              ; $55A6: $C3 $B1 $55


Call_001_55A9:
    ld hl, $D712                                  ; $55A9: $21 $12 $D7
    ld [hl], $BE                                  ; $55AC: $36 $BE
    inc hl                                        ; $55AE: $23
    ld [hl], $66                                  ; $55AF: $36 $66

Jump_001_55B1:
    ld hl, $D700                                  ; $55B1: $21 $00 $D7
    set 7, [hl]                                   ; $55B4: $CB $FE
    ld hl, $D714                                  ; $55B6: $21 $14 $D7
    ld [hl], $00                                  ; $55B9: $36 $00
    call Call_000_0417                            ; $55BB: $CD $17 $04
    ld b, $78                                     ; $55BE: $06 $78
    call Call_001_5815                            ; $55C0: $CD $15 $58
    ret                                           ; $55C3: $C9


Call_001_55C4:
    ld hl, $D93A                                  ; $55C4: $21 $3A $D9
    inc [hl]                                      ; $55C7: $34
    ld hl, $DA3A                                  ; $55C8: $21 $3A $DA
    ld [hl], $00                                  ; $55CB: $36 $00
    ld a, [$C2C6]                                 ; $55CD: $FA $C6 $C2
    bit 4, a                                      ; $55D0: $CB $67
    jr nz, jr_001_55E1                            ; $55D2: $20 $0D

    ld hl, $D940                                  ; $55D4: $21 $40 $D9
    inc [hl]                                      ; $55D7: $34
    ld b, $05                                     ; $55D8: $06 $05
    ld hl, $410F                                  ; $55DA: $21 $0F $41
    rst RST_08                                    ; $55DD: $CF
    jp Jump_001_55EB                              ; $55DE: $C3 $EB $55


jr_001_55E1:
    ld hl, $DA36                                  ; $55E1: $21 $36 $DA
    inc [hl]                                      ; $55E4: $34
    ld b, $05                                     ; $55E5: $06 $05
    ld hl, $4256                                  ; $55E7: $21 $56 $42
    rst RST_08                                    ; $55EA: $CF

Jump_001_55EB:
    ld a, [$C2C6]                                 ; $55EB: $FA $C6 $C2
    bit 1, a                                      ; $55EE: $CB $4F
    jp nz, Jump_001_55FD                          ; $55F0: $C2 $FD $55

    ld a, [$C2D0]                                 ; $55F3: $FA $D0 $C2
    or a                                          ; $55F6: $B7
    jp z, Jump_001_5628                           ; $55F7: $CA $28 $56

    jp Jump_001_561D                              ; $55FA: $C3 $1D $56


Jump_001_55FD:
    ld a, [$C037]                                 ; $55FD: $FA $37 $C0
    bit 7, a                                      ; $5600: $CB $7F
    jp z, Jump_001_5608                           ; $5602: $CA $08 $56

    jp Jump_001_5633                              ; $5605: $C3 $33 $56


Jump_001_5608:
    ld a, [$C2C6]                                 ; $5608: $FA $C6 $C2
    bit 0, a                                      ; $560B: $CB $47
    jp nz, Jump_001_5633                          ; $560D: $C2 $33 $56

    ld a, [$C037]                                 ; $5610: $FA $37 $C0
    bit 5, a                                      ; $5613: $CB $6F
    jr nz, jr_001_561A                            ; $5615: $20 $03

    jp Jump_001_5628                              ; $5617: $C3 $28 $56


jr_001_561A:
    jp Jump_001_561D                              ; $561A: $C3 $1D $56


Jump_001_561D:
    ld hl, $C2C2                                  ; $561D: $21 $C2 $C2
    ld [hl], $C2                                  ; $5620: $36 $C2
    ld de, $6826                                  ; $5622: $11 $26 $68
    jp Jump_001_5646                              ; $5625: $C3 $46 $56


Jump_001_5628:
    ld hl, $C2C2                                  ; $5628: $21 $C2 $C2
    ld [hl], $C1                                  ; $562B: $36 $C1
    ld de, $67DC                                  ; $562D: $11 $DC $67
    jp Jump_001_5646                              ; $5630: $C3 $46 $56


Jump_001_5633:
    ld hl, $C2C2                                  ; $5633: $21 $C2 $C2
    ld [hl], $C1                                  ; $5636: $36 $C1
    ld de, $6760                                  ; $5638: $11 $60 $67
    jp Jump_001_5646                              ; $563B: $C3 $46 $56


    ld hl, $C2C2                                  ; $563E: $21 $C2 $C2
    ld [hl], $C2                                  ; $5641: $36 $C2
    ld de, $679E                                  ; $5643: $11 $9E $67

Jump_001_5646:
    ld bc, $D900                                  ; $5646: $01 $00 $D9
    call Call_001_56FC                            ; $5649: $CD $FC $56
    ld bc, $D900                                  ; $564C: $01 $00 $D9
    call Call_001_5751                            ; $564F: $CD $51 $57
    ld bc, $D900                                  ; $5652: $01 $00 $D9
    call Call_001_5727                            ; $5655: $CD $27 $57
    ld hl, $C2C5                                  ; $5658: $21 $C5 $C2
    set 0, [hl]                                   ; $565B: $CB $C6
    res 1, [hl]                                   ; $565D: $CB $8E
    ret                                           ; $565F: $C9


Call_001_5660:
    ld hl, $DA3A                                  ; $5660: $21 $3A $DA
    inc [hl]                                      ; $5663: $34
    ld hl, $D93A                                  ; $5664: $21 $3A $D9
    ld [hl], $00                                  ; $5667: $36 $00
    ld a, [$C2C6]                                 ; $5669: $FA $C6 $C2
    bit 4, a                                      ; $566C: $CB $67
    jr nz, jr_001_567D                            ; $566E: $20 $0D

    ld hl, $DA40                                  ; $5670: $21 $40 $DA
    inc [hl]                                      ; $5673: $34
    ld b, $05                                     ; $5674: $06 $05
    ld hl, $4163                                  ; $5676: $21 $63 $41
    rst RST_08                                    ; $5679: $CF
    jp Jump_001_5687                              ; $567A: $C3 $87 $56


jr_001_567D:
    ld hl, $D936                                  ; $567D: $21 $36 $D9
    inc [hl]                                      ; $5680: $34
    ld b, $05                                     ; $5681: $06 $05
    ld hl, $419B                                  ; $5683: $21 $9B $41
    rst RST_08                                    ; $5686: $CF

Jump_001_5687:
    ld a, [$C2C6]                                 ; $5687: $FA $C6 $C2
    bit 1, a                                      ; $568A: $CB $4F
    jp nz, Jump_001_5699                          ; $568C: $C2 $99 $56

    ld a, [$C2D0]                                 ; $568F: $FA $D0 $C2
    or a                                          ; $5692: $B7
    jp nz, Jump_001_56C4                          ; $5693: $C2 $C4 $56

    jp Jump_001_56B9                              ; $5696: $C3 $B9 $56


Jump_001_5699:
    ld a, [$C037]                                 ; $5699: $FA $37 $C0
    bit 7, a                                      ; $569C: $CB $7F
    jp z, Jump_001_56A4                           ; $569E: $CA $A4 $56

    jp Jump_001_56DA                              ; $56A1: $C3 $DA $56


Jump_001_56A4:
    ld a, [$C2C6]                                 ; $56A4: $FA $C6 $C2
    bit 0, a                                      ; $56A7: $CB $47
    jp nz, Jump_001_56DA                          ; $56A9: $C2 $DA $56

    ld a, [$C037]                                 ; $56AC: $FA $37 $C0
    bit 5, a                                      ; $56AF: $CB $6F
    jr nz, jr_001_56B6                            ; $56B1: $20 $03

    jp Jump_001_56B9                              ; $56B3: $C3 $B9 $56


jr_001_56B6:
    jp Jump_001_56C4                              ; $56B6: $C3 $C4 $56


Jump_001_56B9:
    ld hl, $C2C2                                  ; $56B9: $21 $C2 $C2
    ld [hl], $C1                                  ; $56BC: $36 $C1
    ld de, $6826                                  ; $56BE: $11 $26 $68
    jp Jump_001_56E2                              ; $56C1: $C3 $E2 $56


Jump_001_56C4:
    ld hl, $C2C2                                  ; $56C4: $21 $C2 $C2
    ld [hl], $C2                                  ; $56C7: $36 $C2
    ld de, $67DC                                  ; $56C9: $11 $DC $67
    jp Jump_001_56E2                              ; $56CC: $C3 $E2 $56


    ld hl, $C2C2                                  ; $56CF: $21 $C2 $C2
    ld [hl], $C1                                  ; $56D2: $36 $C1
    ld de, $6760                                  ; $56D4: $11 $60 $67
    jp Jump_001_56E2                              ; $56D7: $C3 $E2 $56


Jump_001_56DA:
    ld hl, $C2C2                                  ; $56DA: $21 $C2 $C2
    ld [hl], $C2                                  ; $56DD: $36 $C2
    ld de, $679E                                  ; $56DF: $11 $9E $67

Jump_001_56E2:
    ld bc, $DA00                                  ; $56E2: $01 $00 $DA
    call Call_001_56FC                            ; $56E5: $CD $FC $56
    ld bc, $DA00                                  ; $56E8: $01 $00 $DA
    call Call_001_5751                            ; $56EB: $CD $51 $57
    ld bc, $DA00                                  ; $56EE: $01 $00 $DA
    call Call_001_5727                            ; $56F1: $CD $27 $57
    ld hl, $C2C5                                  ; $56F4: $21 $C5 $C2
    res 0, [hl]                                   ; $56F7: $CB $86
    set 1, [hl]                                   ; $56F9: $CB $CE
    ret                                           ; $56FB: $C9


Call_001_56FC:
    ld a, [$C2C6]                                 ; $56FC: $FA $C6 $C2
    and $F0                                       ; $56FF: $E6 $F0
    cp $20                                        ; $5701: $FE $20
    jr nz, jr_001_570A                            ; $5703: $20 $05

    ld hl, $D700                                  ; $5705: $21 $00 $D7
    ld [hl], $00                                  ; $5708: $36 $00

jr_001_570A:
    ld hl, $D706                                  ; $570A: $21 $06 $D7
    ld a, [hl]                                    ; $570D: $7E
    sub $10                                       ; $570E: $D6 $10
    ld [hl], a                                    ; $5710: $77
    ld hl, $D740                                  ; $5711: $21 $40 $D7
    ld [hl], $80                                  ; $5714: $36 $80
    ld hl, $D754                                  ; $5716: $21 $54 $D7
    ld [hl], $00                                  ; $5719: $36 $00
    ld hl, $D752                                  ; $571B: $21 $52 $D7
    ld [hl], e                                    ; $571E: $73
    inc hl                                        ; $571F: $23
    ld [hl], d                                    ; $5720: $72
    ld b, $3C                                     ; $5721: $06 $3C
    call Call_001_5815                            ; $5723: $CD $15 $58
    ret                                           ; $5726: $C9


Call_001_5727:
    ld a, [$C2C6]                                 ; $5727: $FA $C6 $C2
    bit 4, a                                      ; $572A: $CB $67
    jr z, jr_001_5750                             ; $572C: $28 $22

    ld a, [$C2DD]                                 ; $572E: $FA $DD $C2
    srl a                                         ; $5731: $CB $3F
    srl a                                         ; $5733: $CB $3F
    srl a                                         ; $5735: $CB $3F
    srl a                                         ; $5737: $CB $3F
    add $04                                       ; $5739: $C6 $04
    ld h, a                                       ; $573B: $67
    push hl                                       ; $573C: $E5
    ld hl, $0060                                  ; $573D: $21 $60 $00
    add hl, bc                                    ; $5740: $09
    ld a, [hl]                                    ; $5741: $7E
    pop hl                                        ; $5742: $E1
    add h                                         ; $5743: $84
    cp $36                                        ; $5744: $FE $36
    jp c, Jump_001_574B                           ; $5746: $DA $4B $57

    ld a, $36                                     ; $5749: $3E $36

Jump_001_574B:
    ld hl, $0060                                  ; $574B: $21 $60 $00
    add hl, bc                                    ; $574E: $09
    ld [hl], a                                    ; $574F: $77

jr_001_5750:
    ret                                           ; $5750: $C9


Call_001_5751:
    ld a, [$C2C6]                                 ; $5751: $FA $C6 $C2
    and $F0                                       ; $5754: $E6 $F0
    cp $20                                        ; $5756: $FE $20
    ret z                                         ; $5758: $C8

    ld hl, $0060                                  ; $5759: $21 $60 $00
    add hl, bc                                    ; $575C: $09
    ld a, [hl]                                    ; $575D: $7E
    cp $36                                        ; $575E: $FE $36
    jr nz, jr_001_5785                            ; $5760: $20 $23

    ld hl, $D700                                  ; $5762: $21 $00 $D7
    ld [hl], $00                                  ; $5765: $36 $00
    ld hl, $D746                                  ; $5767: $21 $46 $D7
    ld a, [hl]                                    ; $576A: $7E
    sub $10                                       ; $576B: $D6 $10
    ld [hl], a                                    ; $576D: $77
    ld hl, $D780                                  ; $576E: $21 $80 $D7
    ld [hl], $80                                  ; $5771: $36 $80
    ld hl, $D794                                  ; $5773: $21 $94 $D7
    ld [hl], $00                                  ; $5776: $36 $00
    ld hl, $D792                                  ; $5778: $21 $92 $D7
    ld [hl], $7C                                  ; $577B: $36 $7C
    inc hl                                        ; $577D: $23
    ld [hl], $68                                  ; $577E: $36 $68
    ld b, $3C                                     ; $5780: $06 $3C
    call Call_001_5815                            ; $5782: $CD $15 $58

jr_001_5785:
    ret                                           ; $5785: $C9


Call_001_5786:
    ld hl, $D93A                                  ; $5786: $21 $3A $D9
    ld [hl], $00                                  ; $5789: $36 $00
    ld hl, $DA3A                                  ; $578B: $21 $3A $DA
    ld [hl], $00                                  ; $578E: $36 $00
    ld hl, $C2C5                                  ; $5790: $21 $C5 $C2
    res 0, [hl]                                   ; $5793: $CB $86
    res 1, [hl]                                   ; $5795: $CB $8E
    ld a, [$C2C6]                                 ; $5797: $FA $C6 $C2
    bit 4, a                                      ; $579A: $CB $67
    jr z, jr_001_57C1                             ; $579C: $28 $23

    ld hl, $D936                                  ; $579E: $21 $36 $D9
    inc [hl]                                      ; $57A1: $34
    ld hl, $DA36                                  ; $57A2: $21 $36 $DA
    inc [hl]                                      ; $57A5: $34
    ld a, [$D936]                                 ; $57A6: $FA $36 $D9
    ld hl, $DA36                                  ; $57A9: $21 $36 $DA
    cp [hl]                                       ; $57AC: $BE
    jp nz, Jump_001_57B5                          ; $57AD: $C2 $B5 $57

    cp $03                                        ; $57B0: $FE $03
    jp z, Jump_001_57C1                           ; $57B2: $CA $C1 $57

Jump_001_57B5:
    ld b, $05                                     ; $57B5: $06 $05
    ld hl, $419B                                  ; $57B7: $21 $9B $41
    rst RST_08                                    ; $57BA: $CF
    ld b, $05                                     ; $57BB: $06 $05
    ld hl, $4256                                  ; $57BD: $21 $56 $42
    rst RST_08                                    ; $57C0: $CF

Jump_001_57C1:
jr_001_57C1:
    ld hl, $C2C2                                  ; $57C1: $21 $C2 $C2
    ld [hl], $C3                                  ; $57C4: $36 $C3
    ld a, [$C2C6]                                 ; $57C6: $FA $C6 $C2
    and $F0                                       ; $57C9: $E6 $F0
    cp $20                                        ; $57CB: $FE $20
    jr nz, jr_001_57D4                            ; $57CD: $20 $05

    ld hl, $D700                                  ; $57CF: $21 $00 $D7
    ld [hl], $00                                  ; $57D2: $36 $00

jr_001_57D4:
    ld hl, $D706                                  ; $57D4: $21 $06 $D7
    ld a, [hl]                                    ; $57D7: $7E
    sub $10                                       ; $57D8: $D6 $10
    ld [hl], a                                    ; $57DA: $77
    ld hl, $D740                                  ; $57DB: $21 $40 $D7
    ld [hl], $80                                  ; $57DE: $36 $80
    ld hl, $D754                                  ; $57E0: $21 $54 $D7
    ld [hl], $00                                  ; $57E3: $36 $00
    ld hl, $D752                                  ; $57E5: $21 $52 $D7
    ld [hl], $2E                                  ; $57E8: $36 $2E
    inc hl                                        ; $57EA: $23
    ld [hl], $67                                  ; $57EB: $36 $67
    ld b, $3C                                     ; $57ED: $06 $3C
    call Call_001_5815                            ; $57EF: $CD $15 $58
    ret                                           ; $57F2: $C9


Call_001_57F3:
Jump_001_57F3:
    push bc                                       ; $57F3: $C5
    call Call_001_4093                            ; $57F4: $CD $93 $40
    call Call_001_5EA0                            ; $57F7: $CD $A0 $5E
    call Call_001_42A9                            ; $57FA: $CD $A9 $42
    call Call_001_47B7                            ; $57FD: $CD $B7 $47
    call Call_001_6491                            ; $5800: $CD $91 $64
    call Call_001_584A                            ; $5803: $CD $4A $58
    call Call_000_2AC3                            ; $5806: $CD $C3 $2A
    call Call_001_429E                            ; $5809: $CD $9E $42
    call Call_000_0417                            ; $580C: $CD $17 $04
    pop bc                                        ; $580F: $C1
    dec b                                         ; $5810: $05
    jp nz, Jump_001_57F3                          ; $5811: $C2 $F3 $57

    ret                                           ; $5814: $C9


Call_001_5815:
Jump_001_5815:
    push bc                                       ; $5815: $C5
    ldh a, [$FF99]                                ; $5816: $F0 $99
    ld hl, $FFAC                                  ; $5818: $21 $AC $FF
    or [hl]                                       ; $581B: $B6
    and $80                                       ; $581C: $E6 $80
    jp nz, Jump_001_5848                          ; $581E: $C2 $48 $58

    ld b, $04                                     ; $5821: $06 $04
    ld hl, $5E8C                                  ; $5823: $21 $8C $5E
    rst RST_08                                    ; $5826: $CF
    call Call_001_4093                            ; $5827: $CD $93 $40
    call Call_001_5EA0                            ; $582A: $CD $A0 $5E
    call Call_001_42A9                            ; $582D: $CD $A9 $42
    call Call_001_47B7                            ; $5830: $CD $B7 $47
    call Call_001_6491                            ; $5833: $CD $91 $64
    call Call_001_584A                            ; $5836: $CD $4A $58
    call Call_000_2AC3                            ; $5839: $CD $C3 $2A
    call Call_001_429E                            ; $583C: $CD $9E $42
    call Call_000_0417                            ; $583F: $CD $17 $04
    pop bc                                        ; $5842: $C1
    dec b                                         ; $5843: $05
    jp nz, Jump_001_5815                          ; $5844: $C2 $15 $58

    ret                                           ; $5847: $C9


Jump_001_5848:
    pop bc                                        ; $5848: $C1
    ret                                           ; $5849: $C9


Call_001_584A:
    ld a, [$DA32]                                 ; $584A: $FA $32 $DA
    or a                                          ; $584D: $B7
    jp nz, Jump_001_5975                          ; $584E: $C2 $75 $59

    ld a, [$D931]                                 ; $5851: $FA $31 $D9
    or a                                          ; $5854: $B7
    jr z, jr_001_5860                             ; $5855: $28 $09

    xor a                                         ; $5857: $AF
    ld [$D931], a                                 ; $5858: $EA $31 $D9
    ld a, $01                                     ; $585B: $3E $01
    ld [$D932], a                                 ; $585D: $EA $32 $D9

jr_001_5860:
    ld a, [$D932]                                 ; $5860: $FA $32 $D9
    cp $00                                        ; $5863: $FE $00
    jp z, Jump_001_5975                           ; $5865: $CA $75 $59

    cp $01                                        ; $5868: $FE $01
    jp z, Jump_001_5951                           ; $586A: $CA $51 $59

    cp $02                                        ; $586D: $FE $02
    jp z, Jump_001_5941                           ; $586F: $CA $41 $59

    cp $03                                        ; $5872: $FE $03
    jp z, Jump_001_589E                           ; $5874: $CA $9E $58

    ld a, [$DA31]                                 ; $5877: $FA $31 $DA
    or a                                          ; $587A: $B7
    jr nz, jr_001_5891                            ; $587B: $20 $14

    ld a, [$C2C2]                                 ; $587D: $FA $C2 $C2
    bit 5, a                                      ; $5880: $CB $6F
    jp nz, Jump_001_5D50                          ; $5882: $C2 $50 $5D

    ld a, $00                                     ; $5885: $3E $00
    ld [$C2E0], a                                 ; $5887: $EA $E0 $C2
    ld a, $03                                     ; $588A: $3E $03
    ld [$C2C2], a                                 ; $588C: $EA $C2 $C2
    jr jr_001_5891                                ; $588F: $18 $00

jr_001_5891:
    ld a, $00                                     ; $5891: $3E $00
    ld [$D932], a                                 ; $5893: $EA $32 $D9
    ld a, [$C2EC]                                 ; $5896: $FA $EC $C2
    ldh [$FFEB], a                                ; $5899: $E0 $EB
    jp Jump_001_5975                              ; $589B: $C3 $75 $59


Jump_001_589E:
    ld hl, $D933                                  ; $589E: $21 $33 $D9
    dec [hl]                                      ; $58A1: $35
    jr nz, jr_001_58BC                            ; $58A2: $20 $18

    ld a, [$DA31]                                 ; $58A4: $FA $31 $DA
    or a                                          ; $58A7: $B7
    jr nz, jr_001_5891                            ; $58A8: $20 $E7

    ld a, $04                                     ; $58AA: $3E $04
    ld [$D932], a                                 ; $58AC: $EA $32 $D9
    ld a, $C3                                     ; $58AF: $3E $C3
    ld [$C2C2], a                                 ; $58B1: $EA $C2 $C2
    ld a, [$C2EC]                                 ; $58B4: $FA $EC $C2
    ldh [$FFEB], a                                ; $58B7: $E0 $EB
    jp Jump_001_5D50                              ; $58B9: $C3 $50 $5D


jr_001_58BC:
    ld a, [$D93C]                                 ; $58BC: $FA $3C $D9
    cp $4C                                        ; $58BF: $FE $4C
    jr nc, jr_001_58F5                            ; $58C1: $30 $32

    ld a, [$C01A]                                 ; $58C3: $FA $1A $C0
    bit 2, a                                      ; $58C6: $CB $57
    jr nz, jr_001_58D2                            ; $58C8: $20 $08

    ld a, [$C2EC]                                 ; $58CA: $FA $EC $C2
    ldh [$FFEB], a                                ; $58CD: $E0 $EB
    jp Jump_001_5D50                              ; $58CF: $C3 $50 $5D


jr_001_58D2:
    ld a, [$D92E]                                 ; $58D2: $FA $2E $D9
    bit 1, a                                      ; $58D5: $CB $4F
    jr nz, jr_001_58E7                            ; $58D7: $20 $0E

    ld a, $D4                                     ; $58D9: $3E $D4
    ldh [$FFE4], a                                ; $58DB: $E0 $E4
    ld a, $70                                     ; $58DD: $3E $70
    ldh [$FFE2], a                                ; $58DF: $E0 $E2
    ld a, [$C2EF]                                 ; $58E1: $FA $EF $C2
    ldh [$FFEB], a                                ; $58E4: $E0 $EB
    ret                                           ; $58E6: $C9


jr_001_58E7:
    ld a, $54                                     ; $58E7: $3E $54
    ldh [$FFE4], a                                ; $58E9: $E0 $E4
    ld a, $70                                     ; $58EB: $3E $70
    ldh [$FFE2], a                                ; $58ED: $E0 $E2
    ld a, [$C2F0]                                 ; $58EF: $FA $F0 $C2
    ldh [$FFEB], a                                ; $58F2: $E0 $EB
    ret                                           ; $58F4: $C9


jr_001_58F5:
    ld a, [$D933]                                 ; $58F5: $FA $33 $D9
    cp $10                                        ; $58F8: $FE $10
    jr nc, jr_001_5900                            ; $58FA: $30 $04

    ld b, $00                                     ; $58FC: $06 $00
    jr jr_001_591C                                ; $58FE: $18 $1C

jr_001_5900:
    sub $10                                       ; $5900: $D6 $10
    bit 0, a                                      ; $5902: $CB $47
    jr nz, jr_001_5913                            ; $5904: $20 $0D

    cp $0C                                        ; $5906: $FE $0C
    jr c, jr_001_590E                             ; $5908: $38 $04

    ld b, $F4                                     ; $590A: $06 $F4
    jr jr_001_591C                                ; $590C: $18 $0E

jr_001_590E:
    cpl                                           ; $590E: $2F
    inc a                                         ; $590F: $3C
    ld b, a                                       ; $5910: $47
    jr jr_001_591C                                ; $5911: $18 $09

jr_001_5913:
    cp $0C                                        ; $5913: $FE $0C
    jr c, jr_001_591B                             ; $5915: $38 $04

    ld b, $0C                                     ; $5917: $06 $0C
    jr jr_001_591C                                ; $5919: $18 $01

jr_001_591B:
    ld b, a                                       ; $591B: $47

jr_001_591C:
    ld a, [$D92E]                                 ; $591C: $FA $2E $D9
    bit 1, a                                      ; $591F: $CB $4F
    jr nz, jr_001_5932                            ; $5921: $20 $0F

    ld a, $D4                                     ; $5923: $3E $D4
    add b                                         ; $5925: $80
    ldh [$FFE4], a                                ; $5926: $E0 $E4
    ld a, $70                                     ; $5928: $3E $70
    ldh [$FFE2], a                                ; $592A: $E0 $E2
    ld a, [$C2EF]                                 ; $592C: $FA $EF $C2
    ldh [$FFEB], a                                ; $592F: $E0 $EB
    ret                                           ; $5931: $C9


jr_001_5932:
    ld a, $54                                     ; $5932: $3E $54
    add b                                         ; $5934: $80
    ldh [$FFE4], a                                ; $5935: $E0 $E4
    ld a, $70                                     ; $5937: $3E $70
    ldh [$FFE2], a                                ; $5939: $E0 $E2
    ld a, [$C2F0]                                 ; $593B: $FA $F0 $C2
    ldh [$FFEB], a                                ; $593E: $E0 $EB
    ret                                           ; $5940: $C9


Jump_001_5941:
    ld a, [$C2C2]                                 ; $5941: $FA $C2 $C2
    bit 5, a                                      ; $5944: $CB $6F
    jp nz, Jump_001_5D50                          ; $5946: $C2 $50 $5D

    ld a, $03                                     ; $5949: $3E $03
    ld [$D932], a                                 ; $594B: $EA $32 $D9
    jp Jump_001_5D50                              ; $594E: $C3 $50 $5D


Jump_001_5951:
    ld a, $01                                     ; $5951: $3E $01
    ld [$C2E0], a                                 ; $5953: $EA $E0 $C2
    ld a, $C1                                     ; $5956: $3E $C1
    ld [$C2C2], a                                 ; $5958: $EA $C2 $C2
    ld a, $02                                     ; $595B: $3E $02
    ld [$D932], a                                 ; $595D: $EA $32 $D9
    ld a, $1E                                     ; $5960: $3E $1E
    ld [$D933], a                                 ; $5962: $EA $33 $D9
    ld a, [$D93C]                                 ; $5965: $FA $3C $D9
    cp $4C                                        ; $5968: $FE $4C
    jp c, Jump_001_5D50                           ; $596A: $DA $50 $5D

    ld a, $24                                     ; $596D: $3E $24
    ld [$D933], a                                 ; $596F: $EA $33 $D9
    jp Jump_001_5D50                              ; $5972: $C3 $50 $5D


Jump_001_5975:
    ld a, [$D932]                                 ; $5975: $FA $32 $D9
    or a                                          ; $5978: $B7
    jp nz, Jump_001_5AA0                          ; $5979: $C2 $A0 $5A

    ld a, [$DA31]                                 ; $597C: $FA $31 $DA
    or a                                          ; $597F: $B7
    jr z, jr_001_598B                             ; $5980: $28 $09

    xor a                                         ; $5982: $AF
    ld [$DA31], a                                 ; $5983: $EA $31 $DA
    ld a, $01                                     ; $5986: $3E $01
    ld [$DA32], a                                 ; $5988: $EA $32 $DA

jr_001_598B:
    ld a, [$DA32]                                 ; $598B: $FA $32 $DA
    cp $00                                        ; $598E: $FE $00
    jp z, Jump_001_5AA0                           ; $5990: $CA $A0 $5A

    cp $01                                        ; $5993: $FE $01
    jp z, Jump_001_5A7C                           ; $5995: $CA $7C $5A

    cp $02                                        ; $5998: $FE $02
    jp z, Jump_001_5A6C                           ; $599A: $CA $6C $5A

    cp $03                                        ; $599D: $FE $03
    jp z, Jump_001_59C9                           ; $599F: $CA $C9 $59

    ld a, [$D931]                                 ; $59A2: $FA $31 $D9
    or a                                          ; $59A5: $B7
    jr nz, jr_001_59BC                            ; $59A6: $20 $14

    ld a, [$C2C2]                                 ; $59A8: $FA $C2 $C2
    bit 5, a                                      ; $59AB: $CB $6F
    jp nz, Jump_001_5D50                          ; $59AD: $C2 $50 $5D

    ld a, $00                                     ; $59B0: $3E $00
    ld [$C2E0], a                                 ; $59B2: $EA $E0 $C2
    ld a, $03                                     ; $59B5: $3E $03
    ld [$C2C2], a                                 ; $59B7: $EA $C2 $C2
    jr jr_001_59BC                                ; $59BA: $18 $00

jr_001_59BC:
    ld a, $00                                     ; $59BC: $3E $00
    ld [$DA32], a                                 ; $59BE: $EA $32 $DA
    ld a, [$C2EC]                                 ; $59C1: $FA $EC $C2
    ldh [$FFEB], a                                ; $59C4: $E0 $EB
    jp Jump_001_5AA0                              ; $59C6: $C3 $A0 $5A


Jump_001_59C9:
    ld hl, $DA33                                  ; $59C9: $21 $33 $DA
    dec [hl]                                      ; $59CC: $35
    jr nz, jr_001_59E7                            ; $59CD: $20 $18

    ld a, [$D931]                                 ; $59CF: $FA $31 $D9
    or a                                          ; $59D2: $B7
    jr nz, jr_001_59BC                            ; $59D3: $20 $E7

    ld a, $04                                     ; $59D5: $3E $04
    ld [$DA32], a                                 ; $59D7: $EA $32 $DA
    ld a, $C3                                     ; $59DA: $3E $C3
    ld [$C2C2], a                                 ; $59DC: $EA $C2 $C2
    ld a, [$C2EC]                                 ; $59DF: $FA $EC $C2
    ldh [$FFEB], a                                ; $59E2: $E0 $EB
    jp Jump_001_5D50                              ; $59E4: $C3 $50 $5D


jr_001_59E7:
    ld a, [$DA3C]                                 ; $59E7: $FA $3C $DA
    cp $4C                                        ; $59EA: $FE $4C
    jr nc, jr_001_5A20                            ; $59EC: $30 $32

    ld a, [$C01A]                                 ; $59EE: $FA $1A $C0
    bit 2, a                                      ; $59F1: $CB $57
    jr nz, jr_001_59FD                            ; $59F3: $20 $08

    ld a, [$C2EC]                                 ; $59F5: $FA $EC $C2
    ldh [$FFEB], a                                ; $59F8: $E0 $EB
    jp Jump_001_5D50                              ; $59FA: $C3 $50 $5D


jr_001_59FD:
    ld a, [$DA2E]                                 ; $59FD: $FA $2E $DA
    bit 1, a                                      ; $5A00: $CB $4F
    jr nz, jr_001_5A12                            ; $5A02: $20 $0E

    ld a, $D4                                     ; $5A04: $3E $D4
    ldh [$FFE4], a                                ; $5A06: $E0 $E4
    ld a, $70                                     ; $5A08: $3E $70
    ldh [$FFE2], a                                ; $5A0A: $E0 $E2
    ld a, [$C2EF]                                 ; $5A0C: $FA $EF $C2
    ldh [$FFEB], a                                ; $5A0F: $E0 $EB
    ret                                           ; $5A11: $C9


jr_001_5A12:
    ld a, $54                                     ; $5A12: $3E $54
    ldh [$FFE4], a                                ; $5A14: $E0 $E4
    ld a, $70                                     ; $5A16: $3E $70
    ldh [$FFE2], a                                ; $5A18: $E0 $E2
    ld a, [$C2F0]                                 ; $5A1A: $FA $F0 $C2
    ldh [$FFEB], a                                ; $5A1D: $E0 $EB
    ret                                           ; $5A1F: $C9


jr_001_5A20:
    ld a, [$DA33]                                 ; $5A20: $FA $33 $DA
    cp $10                                        ; $5A23: $FE $10
    jr nc, jr_001_5A2B                            ; $5A25: $30 $04

    ld b, $00                                     ; $5A27: $06 $00
    jr jr_001_5A47                                ; $5A29: $18 $1C

jr_001_5A2B:
    sub $10                                       ; $5A2B: $D6 $10
    bit 0, a                                      ; $5A2D: $CB $47
    jr nz, jr_001_5A3E                            ; $5A2F: $20 $0D

    cp $0C                                        ; $5A31: $FE $0C
    jr c, jr_001_5A39                             ; $5A33: $38 $04

    ld b, $F4                                     ; $5A35: $06 $F4
    jr jr_001_5A47                                ; $5A37: $18 $0E

jr_001_5A39:
    cpl                                           ; $5A39: $2F
    inc a                                         ; $5A3A: $3C
    ld b, a                                       ; $5A3B: $47
    jr jr_001_5A47                                ; $5A3C: $18 $09

jr_001_5A3E:
    cp $0C                                        ; $5A3E: $FE $0C
    jr c, jr_001_5A46                             ; $5A40: $38 $04

    ld b, $0C                                     ; $5A42: $06 $0C
    jr jr_001_5A47                                ; $5A44: $18 $01

jr_001_5A46:
    ld b, a                                       ; $5A46: $47

jr_001_5A47:
    ld a, [$DA2E]                                 ; $5A47: $FA $2E $DA
    bit 1, a                                      ; $5A4A: $CB $4F
    jr nz, jr_001_5A5D                            ; $5A4C: $20 $0F

    ld a, $D4                                     ; $5A4E: $3E $D4
    add b                                         ; $5A50: $80
    ldh [$FFE4], a                                ; $5A51: $E0 $E4
    ld a, $70                                     ; $5A53: $3E $70
    ldh [$FFE2], a                                ; $5A55: $E0 $E2
    ld a, [$C2EF]                                 ; $5A57: $FA $EF $C2
    ldh [$FFEB], a                                ; $5A5A: $E0 $EB
    ret                                           ; $5A5C: $C9


jr_001_5A5D:
    ld a, $54                                     ; $5A5D: $3E $54
    add b                                         ; $5A5F: $80
    ldh [$FFE4], a                                ; $5A60: $E0 $E4
    ld a, $70                                     ; $5A62: $3E $70
    ldh [$FFE2], a                                ; $5A64: $E0 $E2
    ld a, [$C2F0]                                 ; $5A66: $FA $F0 $C2
    ldh [$FFEB], a                                ; $5A69: $E0 $EB
    ret                                           ; $5A6B: $C9


Jump_001_5A6C:
    ld a, [$C2C2]                                 ; $5A6C: $FA $C2 $C2
    bit 5, a                                      ; $5A6F: $CB $6F
    jp nz, Jump_001_5D50                          ; $5A71: $C2 $50 $5D

    ld a, $03                                     ; $5A74: $3E $03
    ld [$DA32], a                                 ; $5A76: $EA $32 $DA
    jp Jump_001_5D50                              ; $5A79: $C3 $50 $5D


Jump_001_5A7C:
    ld a, $01                                     ; $5A7C: $3E $01
    ld [$C2E0], a                                 ; $5A7E: $EA $E0 $C2
    ld a, $C2                                     ; $5A81: $3E $C2
    ld [$C2C2], a                                 ; $5A83: $EA $C2 $C2
    ld a, $02                                     ; $5A86: $3E $02
    ld [$DA32], a                                 ; $5A88: $EA $32 $DA
    ld a, $1E                                     ; $5A8B: $3E $1E
    ld [$DA33], a                                 ; $5A8D: $EA $33 $DA
    ld a, [$DA3C]                                 ; $5A90: $FA $3C $DA
    cp $4C                                        ; $5A93: $FE $4C
    jp c, Jump_001_5D50                           ; $5A95: $DA $50 $5D

    ld a, $24                                     ; $5A98: $3E $24
    ld [$DA33], a                                 ; $5A9A: $EA $33 $DA
    jp Jump_001_5D50                              ; $5A9D: $C3 $50 $5D


Jump_001_5AA0:
    ld a, [$D934]                                 ; $5AA0: $FA $34 $D9
    or a                                          ; $5AA3: $B7
    jr z, jr_001_5AA9                             ; $5AA4: $28 $03

    ld [$D935], a                                 ; $5AA6: $EA $35 $D9

jr_001_5AA9:
    ld a, [$D935]                                 ; $5AA9: $FA $35 $D9
    cp $00                                        ; $5AAC: $FE $00
    jp z, Jump_001_5BEC                           ; $5AAE: $CA $EC $5B

    cp $01                                        ; $5AB1: $FE $01
    jp z, Jump_001_5AC0                           ; $5AB3: $CA $C0 $5A

    cp $02                                        ; $5AB6: $FE $02
    jp z, Jump_001_5B24                           ; $5AB8: $CA $24 $5B

    cp $03                                        ; $5ABB: $FE $03
    jp z, Jump_001_5B88                           ; $5ABD: $CA $88 $5B

Jump_001_5AC0:
    ld a, [$D93C]                                 ; $5AC0: $FA $3C $D9
    cp $4A                                        ; $5AC3: $FE $4A
    jr nz, jr_001_5ACD                            ; $5AC5: $20 $06

    ld a, [$D934]                                 ; $5AC7: $FA $34 $D9
    or a                                          ; $5ACA: $B7
    jr nz, jr_001_5AE0                            ; $5ACB: $20 $13

jr_001_5ACD:
    xor a                                         ; $5ACD: $AF
    ld [$D934], a                                 ; $5ACE: $EA $34 $D9
    ld [$D935], a                                 ; $5AD1: $EA $35 $D9
    ld a, [$C2EC]                                 ; $5AD4: $FA $EC $C2
    ldh [$FFEB], a                                ; $5AD7: $E0 $EB
    ld a, $00                                     ; $5AD9: $3E $00
    ldh [$FFE9], a                                ; $5ADB: $E0 $E9
    jp Jump_001_5D50                              ; $5ADD: $C3 $50 $5D


jr_001_5AE0:
    ld a, [$C01A]                                 ; $5AE0: $FA $1A $C0
    bit 1, a                                      ; $5AE3: $CB $4F
    jr nz, jr_001_5AF3                            ; $5AE5: $20 $0C

    ld a, [$C2EC]                                 ; $5AE7: $FA $EC $C2
    ldh [$FFEB], a                                ; $5AEA: $E0 $EB
    ld a, $00                                     ; $5AEC: $3E $00
    ldh [$FFE9], a                                ; $5AEE: $E0 $E9
    jp Jump_001_5D50                              ; $5AF0: $C3 $50 $5D


jr_001_5AF3:
    ld a, $01                                     ; $5AF3: $3E $01
    ldh [$FFE9], a                                ; $5AF5: $E0 $E9
    ld a, $B5                                     ; $5AF7: $3E $B5
    call Call_000_1360                            ; $5AF9: $CD $60 $13
    ld a, [$D682]                                 ; $5AFC: $FA $82 $D6
    bit 5, a                                      ; $5AFF: $CB $6F
    jr z, jr_001_5B0C                             ; $5B01: $28 $09

    ld a, [$D68C]                                 ; $5B03: $FA $8C $D6
    cpl                                           ; $5B06: $2F
    inc a                                         ; $5B07: $3C
    sub $10                                       ; $5B08: $D6 $10
    jr jr_001_5B13                                ; $5B0A: $18 $07

jr_001_5B0C:
    ld a, [$D68C]                                 ; $5B0C: $FA $8C $D6
    cpl                                           ; $5B0F: $2F
    inc a                                         ; $5B10: $3C
    sub $30                                       ; $5B11: $D6 $30

jr_001_5B13:
    ldh [$FFE4], a                                ; $5B13: $E0 $E4
    ld a, [$D68D]                                 ; $5B15: $FA $8D $D6
    cpl                                           ; $5B18: $2F
    inc a                                         ; $5B19: $3C
    sub $9E                                       ; $5B1A: $D6 $9E
    ldh [$FFE2], a                                ; $5B1C: $E0 $E2
    ld a, [$C2EC]                                 ; $5B1E: $FA $EC $C2
    ldh [$FFEB], a                                ; $5B21: $E0 $EB
    ret                                           ; $5B23: $C9


Jump_001_5B24:
    ld a, [$D93C]                                 ; $5B24: $FA $3C $D9
    cp $4C                                        ; $5B27: $FE $4C
    jr nz, jr_001_5B31                            ; $5B29: $20 $06

    ld a, [$D934]                                 ; $5B2B: $FA $34 $D9
    or a                                          ; $5B2E: $B7
    jr nz, jr_001_5B44                            ; $5B2F: $20 $13

jr_001_5B31:
    xor a                                         ; $5B31: $AF
    ld [$D934], a                                 ; $5B32: $EA $34 $D9
    ld [$D935], a                                 ; $5B35: $EA $35 $D9
    ld a, [$C2EC]                                 ; $5B38: $FA $EC $C2
    ldh [$FFEB], a                                ; $5B3B: $E0 $EB
    ld a, $00                                     ; $5B3D: $3E $00
    ldh [$FFE9], a                                ; $5B3F: $E0 $E9
    jp Jump_001_5D50                              ; $5B41: $C3 $50 $5D


jr_001_5B44:
    ld a, [$C01A]                                 ; $5B44: $FA $1A $C0
    bit 1, a                                      ; $5B47: $CB $4F
    jr nz, jr_001_5B57                            ; $5B49: $20 $0C

    ld a, [$C2EC]                                 ; $5B4B: $FA $EC $C2
    ldh [$FFEB], a                                ; $5B4E: $E0 $EB
    ld a, $00                                     ; $5B50: $3E $00
    ldh [$FFE9], a                                ; $5B52: $E0 $E9
    jp Jump_001_5D50                              ; $5B54: $C3 $50 $5D


jr_001_5B57:
    ld a, $01                                     ; $5B57: $3E $01
    ldh [$FFE9], a                                ; $5B59: $E0 $E9
    ld a, $B5                                     ; $5B5B: $3E $B5
    call Call_000_1360                            ; $5B5D: $CD $60 $13
    ld a, [$D682]                                 ; $5B60: $FA $82 $D6
    bit 5, a                                      ; $5B63: $CB $6F
    jr z, jr_001_5B70                             ; $5B65: $28 $09

    ld a, [$D68C]                                 ; $5B67: $FA $8C $D6
    cpl                                           ; $5B6A: $2F
    inc a                                         ; $5B6B: $3C
    sub $F8                                       ; $5B6C: $D6 $F8
    jr jr_001_5B77                                ; $5B6E: $18 $07

jr_001_5B70:
    ld a, [$D68C]                                 ; $5B70: $FA $8C $D6
    cpl                                           ; $5B73: $2F
    inc a                                         ; $5B74: $3C
    sub $48                                       ; $5B75: $D6 $48

jr_001_5B77:
    ldh [$FFE4], a                                ; $5B77: $E0 $E4
    ld a, [$D68D]                                 ; $5B79: $FA $8D $D6
    cpl                                           ; $5B7C: $2F
    inc a                                         ; $5B7D: $3C
    sub $2C                                       ; $5B7E: $D6 $2C
    ldh [$FFE2], a                                ; $5B80: $E0 $E2
    ld a, [$C2EC]                                 ; $5B82: $FA $EC $C2
    ldh [$FFEB], a                                ; $5B85: $E0 $EB
    ret                                           ; $5B87: $C9


Jump_001_5B88:
    ld a, [$D93C]                                 ; $5B88: $FA $3C $D9
    cp $4C                                        ; $5B8B: $FE $4C
    jr nz, jr_001_5B95                            ; $5B8D: $20 $06

    ld a, [$D934]                                 ; $5B8F: $FA $34 $D9
    or a                                          ; $5B92: $B7
    jr nz, jr_001_5BA8                            ; $5B93: $20 $13

jr_001_5B95:
    xor a                                         ; $5B95: $AF
    ld [$D934], a                                 ; $5B96: $EA $34 $D9
    ld [$D935], a                                 ; $5B99: $EA $35 $D9
    ld a, [$C2EC]                                 ; $5B9C: $FA $EC $C2
    ldh [$FFEB], a                                ; $5B9F: $E0 $EB
    ld a, $00                                     ; $5BA1: $3E $00
    ldh [$FFE9], a                                ; $5BA3: $E0 $E9
    jp Jump_001_5D50                              ; $5BA5: $C3 $50 $5D


jr_001_5BA8:
    ld a, [$C01A]                                 ; $5BA8: $FA $1A $C0
    bit 1, a                                      ; $5BAB: $CB $4F
    jr nz, jr_001_5BBB                            ; $5BAD: $20 $0C

    ld a, [$C2EC]                                 ; $5BAF: $FA $EC $C2
    ldh [$FFEB], a                                ; $5BB2: $E0 $EB
    ld a, $00                                     ; $5BB4: $3E $00
    ldh [$FFE9], a                                ; $5BB6: $E0 $E9
    jp Jump_001_5D50                              ; $5BB8: $C3 $50 $5D


jr_001_5BBB:
    ld a, $01                                     ; $5BBB: $3E $01
    ldh [$FFE9], a                                ; $5BBD: $E0 $E9
    ld a, $B5                                     ; $5BBF: $3E $B5
    call Call_000_1360                            ; $5BC1: $CD $60 $13
    ld a, [$D682]                                 ; $5BC4: $FA $82 $D6
    bit 5, a                                      ; $5BC7: $CB $6F
    jr z, jr_001_5BD4                             ; $5BC9: $28 $09

    ld a, [$D68C]                                 ; $5BCB: $FA $8C $D6
    cpl                                           ; $5BCE: $2F
    inc a                                         ; $5BCF: $3C
    sub $1C                                       ; $5BD0: $D6 $1C
    jr jr_001_5BDB                                ; $5BD2: $18 $07

jr_001_5BD4:
    ld a, [$D68C]                                 ; $5BD4: $FA $8C $D6
    cpl                                           ; $5BD7: $2F
    inc a                                         ; $5BD8: $3C
    sub $24                                       ; $5BD9: $D6 $24

jr_001_5BDB:
    ldh [$FFE4], a                                ; $5BDB: $E0 $E4
    ld a, [$D68D]                                 ; $5BDD: $FA $8D $D6
    cpl                                           ; $5BE0: $2F
    inc a                                         ; $5BE1: $3C
    sub $94                                       ; $5BE2: $D6 $94
    ldh [$FFE2], a                                ; $5BE4: $E0 $E2
    ld a, [$C2EC]                                 ; $5BE6: $FA $EC $C2
    ldh [$FFEB], a                                ; $5BE9: $E0 $EB
    ret                                           ; $5BEB: $C9


Jump_001_5BEC:
    ld a, [$DA34]                                 ; $5BEC: $FA $34 $DA
    or a                                          ; $5BEF: $B7
    jr z, jr_001_5BF5                             ; $5BF0: $28 $03

    ld [$DA35], a                                 ; $5BF2: $EA $35 $DA

jr_001_5BF5:
    ld a, [$DA35]                                 ; $5BF5: $FA $35 $DA
    cp $00                                        ; $5BF8: $FE $00
    jp z, Jump_001_5D38                           ; $5BFA: $CA $38 $5D

    cp $01                                        ; $5BFD: $FE $01
    jp z, Jump_001_5C0C                           ; $5BFF: $CA $0C $5C

    cp $02                                        ; $5C02: $FE $02
    jp z, Jump_001_5C70                           ; $5C04: $CA $70 $5C

    cp $03                                        ; $5C07: $FE $03
    jp z, Jump_001_5CD4                           ; $5C09: $CA $D4 $5C

Jump_001_5C0C:
    ld a, [$DA3C]                                 ; $5C0C: $FA $3C $DA
    cp $4A                                        ; $5C0F: $FE $4A
    jr nz, jr_001_5C19                            ; $5C11: $20 $06

    ld a, [$DA34]                                 ; $5C13: $FA $34 $DA
    or a                                          ; $5C16: $B7
    jr nz, jr_001_5C2C                            ; $5C17: $20 $13

jr_001_5C19:
    xor a                                         ; $5C19: $AF
    ld [$DA34], a                                 ; $5C1A: $EA $34 $DA
    ld [$DA35], a                                 ; $5C1D: $EA $35 $DA
    ld a, [$C2EC]                                 ; $5C20: $FA $EC $C2
    ldh [$FFEB], a                                ; $5C23: $E0 $EB
    ld a, $00                                     ; $5C25: $3E $00
    ldh [$FFE9], a                                ; $5C27: $E0 $E9
    jp Jump_001_5D50                              ; $5C29: $C3 $50 $5D


jr_001_5C2C:
    ld a, [$C01A]                                 ; $5C2C: $FA $1A $C0
    bit 1, a                                      ; $5C2F: $CB $4F
    jr nz, jr_001_5C3F                            ; $5C31: $20 $0C

    ld a, [$C2EC]                                 ; $5C33: $FA $EC $C2
    ldh [$FFEB], a                                ; $5C36: $E0 $EB
    ld a, $00                                     ; $5C38: $3E $00
    ldh [$FFE9], a                                ; $5C3A: $E0 $E9
    jp Jump_001_5D50                              ; $5C3C: $C3 $50 $5D


jr_001_5C3F:
    ld a, $01                                     ; $5C3F: $3E $01
    ldh [$FFE9], a                                ; $5C41: $E0 $E9
    ld a, $B5                                     ; $5C43: $3E $B5
    call Call_000_1360                            ; $5C45: $CD $60 $13
    ld a, [$D6C2]                                 ; $5C48: $FA $C2 $D6
    bit 5, a                                      ; $5C4B: $CB $6F
    jr z, jr_001_5C58                             ; $5C4D: $28 $09

    ld a, [$D6CC]                                 ; $5C4F: $FA $CC $D6
    cpl                                           ; $5C52: $2F
    inc a                                         ; $5C53: $3C
    sub $10                                       ; $5C54: $D6 $10
    jr jr_001_5C5F                                ; $5C56: $18 $07

jr_001_5C58:
    ld a, [$D6CC]                                 ; $5C58: $FA $CC $D6
    cpl                                           ; $5C5B: $2F
    inc a                                         ; $5C5C: $3C
    sub $30                                       ; $5C5D: $D6 $30

jr_001_5C5F:
    ldh [$FFE4], a                                ; $5C5F: $E0 $E4
    ld a, [$D6CD]                                 ; $5C61: $FA $CD $D6
    cpl                                           ; $5C64: $2F
    inc a                                         ; $5C65: $3C
    sub $9E                                       ; $5C66: $D6 $9E
    ldh [$FFE2], a                                ; $5C68: $E0 $E2
    ld a, [$C2EC]                                 ; $5C6A: $FA $EC $C2
    ldh [$FFEB], a                                ; $5C6D: $E0 $EB
    ret                                           ; $5C6F: $C9


Jump_001_5C70:
    ld a, [$DA3C]                                 ; $5C70: $FA $3C $DA
    cp $4C                                        ; $5C73: $FE $4C
    jr nz, jr_001_5C7D                            ; $5C75: $20 $06

    ld a, [$DA34]                                 ; $5C77: $FA $34 $DA
    or a                                          ; $5C7A: $B7
    jr nz, jr_001_5C90                            ; $5C7B: $20 $13

jr_001_5C7D:
    xor a                                         ; $5C7D: $AF
    ld [$DA34], a                                 ; $5C7E: $EA $34 $DA
    ld [$DA35], a                                 ; $5C81: $EA $35 $DA
    ld a, [$C2EC]                                 ; $5C84: $FA $EC $C2
    ldh [$FFEB], a                                ; $5C87: $E0 $EB
    ld a, $00                                     ; $5C89: $3E $00
    ldh [$FFE9], a                                ; $5C8B: $E0 $E9
    jp Jump_001_5D50                              ; $5C8D: $C3 $50 $5D


jr_001_5C90:
    ld a, [$C01A]                                 ; $5C90: $FA $1A $C0
    bit 1, a                                      ; $5C93: $CB $4F
    jr nz, jr_001_5CA3                            ; $5C95: $20 $0C

    ld a, [$C2EC]                                 ; $5C97: $FA $EC $C2
    ldh [$FFEB], a                                ; $5C9A: $E0 $EB
    ld a, $00                                     ; $5C9C: $3E $00
    ldh [$FFE9], a                                ; $5C9E: $E0 $E9
    jp Jump_001_5D50                              ; $5CA0: $C3 $50 $5D


jr_001_5CA3:
    ld a, $01                                     ; $5CA3: $3E $01
    ldh [$FFE9], a                                ; $5CA5: $E0 $E9
    ld a, $B5                                     ; $5CA7: $3E $B5
    call Call_000_1360                            ; $5CA9: $CD $60 $13
    ld a, [$D6C2]                                 ; $5CAC: $FA $C2 $D6
    bit 5, a                                      ; $5CAF: $CB $6F
    jr z, jr_001_5CBC                             ; $5CB1: $28 $09

    ld a, [$D6CC]                                 ; $5CB3: $FA $CC $D6
    cpl                                           ; $5CB6: $2F
    inc a                                         ; $5CB7: $3C
    sub $F8                                       ; $5CB8: $D6 $F8
    jr jr_001_5CC3                                ; $5CBA: $18 $07

jr_001_5CBC:
    ld a, [$D6CC]                                 ; $5CBC: $FA $CC $D6
    cpl                                           ; $5CBF: $2F
    inc a                                         ; $5CC0: $3C
    sub $48                                       ; $5CC1: $D6 $48

jr_001_5CC3:
    ldh [$FFE4], a                                ; $5CC3: $E0 $E4
    ld a, [$D6CD]                                 ; $5CC5: $FA $CD $D6
    cpl                                           ; $5CC8: $2F
    inc a                                         ; $5CC9: $3C
    sub $2C                                       ; $5CCA: $D6 $2C
    ldh [$FFE2], a                                ; $5CCC: $E0 $E2
    ld a, [$C2EC]                                 ; $5CCE: $FA $EC $C2
    ldh [$FFEB], a                                ; $5CD1: $E0 $EB
    ret                                           ; $5CD3: $C9


Jump_001_5CD4:
    ld a, [$DA3C]                                 ; $5CD4: $FA $3C $DA
    cp $4C                                        ; $5CD7: $FE $4C
    jr nz, jr_001_5CE1                            ; $5CD9: $20 $06

    ld a, [$DA34]                                 ; $5CDB: $FA $34 $DA
    or a                                          ; $5CDE: $B7
    jr nz, jr_001_5CF4                            ; $5CDF: $20 $13

jr_001_5CE1:
    xor a                                         ; $5CE1: $AF
    ld [$DA34], a                                 ; $5CE2: $EA $34 $DA
    ld [$DA35], a                                 ; $5CE5: $EA $35 $DA
    ld a, [$C2EC]                                 ; $5CE8: $FA $EC $C2
    ldh [$FFEB], a                                ; $5CEB: $E0 $EB
    ld a, $00                                     ; $5CED: $3E $00
    ldh [$FFE9], a                                ; $5CEF: $E0 $E9
    jp Jump_001_5D50                              ; $5CF1: $C3 $50 $5D


jr_001_5CF4:
    ld a, [$C01A]                                 ; $5CF4: $FA $1A $C0
    bit 1, a                                      ; $5CF7: $CB $4F
    jr nz, jr_001_5D07                            ; $5CF9: $20 $0C

    ld a, [$C2EC]                                 ; $5CFB: $FA $EC $C2
    ldh [$FFEB], a                                ; $5CFE: $E0 $EB
    ld a, $00                                     ; $5D00: $3E $00
    ldh [$FFE9], a                                ; $5D02: $E0 $E9
    jp Jump_001_5D50                              ; $5D04: $C3 $50 $5D


jr_001_5D07:
    ld a, $01                                     ; $5D07: $3E $01
    ldh [$FFE9], a                                ; $5D09: $E0 $E9
    ld a, $B5                                     ; $5D0B: $3E $B5
    call Call_000_1360                            ; $5D0D: $CD $60 $13
    ld a, [$D6C2]                                 ; $5D10: $FA $C2 $D6
    bit 5, a                                      ; $5D13: $CB $6F
    jr z, jr_001_5D20                             ; $5D15: $28 $09

    ld a, [$D6CC]                                 ; $5D17: $FA $CC $D6
    cpl                                           ; $5D1A: $2F
    inc a                                         ; $5D1B: $3C
    sub $1C                                       ; $5D1C: $D6 $1C
    jr jr_001_5D27                                ; $5D1E: $18 $07

jr_001_5D20:
    ld a, [$D6CC]                                 ; $5D20: $FA $CC $D6
    cpl                                           ; $5D23: $2F
    inc a                                         ; $5D24: $3C
    sub $24                                       ; $5D25: $D6 $24

jr_001_5D27:
    ldh [$FFE4], a                                ; $5D27: $E0 $E4
    ld a, [$D6CD]                                 ; $5D29: $FA $CD $D6
    cpl                                           ; $5D2C: $2F
    inc a                                         ; $5D2D: $3C
    sub $94                                       ; $5D2E: $D6 $94
    ldh [$FFE2], a                                ; $5D30: $E0 $E2
    ld a, [$C2EC]                                 ; $5D32: $FA $EC $C2
    ldh [$FFEB], a                                ; $5D35: $E0 $EB
    ret                                           ; $5D37: $C9


Jump_001_5D38:
    ld a, [$C2EB]                                 ; $5D38: $FA $EB $C2
    cp $FF                                        ; $5D3B: $FE $FF
    jr z, jr_001_5D4C                             ; $5D3D: $28 $0D

    cp $01                                        ; $5D3F: $FE $01
    jr nz, jr_001_5D4C                            ; $5D41: $20 $09

    ld a, $01                                     ; $5D43: $3E $01
    ldh [$FFE9], a                                ; $5D45: $E0 $E9
    ld a, $F0                                     ; $5D47: $3E $F0
    ldh [$FFE2], a                                ; $5D49: $E0 $E2
    ret                                           ; $5D4B: $C9


jr_001_5D4C:
    ld a, $00                                     ; $5D4C: $3E $00
    ldh [$FFE9], a                                ; $5D4E: $E0 $E9

Jump_001_5D50:
    ld hl, $C2C2                                  ; $5D50: $21 $C2 $C2
    res 5, [hl]                                   ; $5D53: $CB $AE
    ld a, [hl]                                    ; $5D55: $7E
    and $03                                       ; $5D56: $E6 $03
    cp $03                                        ; $5D58: $FE $03
    jr z, jr_001_5D64                             ; $5D5A: $28 $08

    cp $01                                        ; $5D5C: $FE $01
    jr z, jr_001_5D77                             ; $5D5E: $28 $17

    cp $02                                        ; $5D60: $FE $02
    jr z, jr_001_5D7F                             ; $5D62: $28 $1B

jr_001_5D64:
    ld h, $00                                     ; $5D64: $26 $00
    ld b, $00                                     ; $5D66: $06 $00
    ld a, [$D6C4]                                 ; $5D68: $FA $C4 $D6
    ld c, a                                       ; $5D6B: $4F
    ld a, [$D684]                                 ; $5D6C: $FA $84 $D6
    ld l, a                                       ; $5D6F: $6F
    add hl, bc                                    ; $5D70: $09
    srl h                                         ; $5D71: $CB $3C
    rr l                                          ; $5D73: $CB $1D
    jr jr_001_5D85                                ; $5D75: $18 $0E

jr_001_5D77:
    ld h, $00                                     ; $5D77: $26 $00
    ld a, [$D684]                                 ; $5D79: $FA $84 $D6
    ld l, a                                       ; $5D7C: $6F
    jr jr_001_5D85                                ; $5D7D: $18 $06

jr_001_5D7F:
    ld h, $00                                     ; $5D7F: $26 $00
    ld a, [$D6C4]                                 ; $5D81: $FA $C4 $D6
    ld l, a                                       ; $5D84: $6F

jr_001_5D85:
    ld a, [$C2C2]                                 ; $5D85: $FA $C2 $C2
    bit 6, a                                      ; $5D88: $CB $77
    jr nz, jr_001_5D9D                            ; $5D8A: $20 $11

    ld a, l                                       ; $5D8C: $7D
    cp $50                                        ; $5D8D: $FE $50
    jr c, jr_001_5D97                             ; $5D8F: $38 $06

    cp $B0                                        ; $5D91: $FE $B0
    jr nc, jr_001_5D9B                            ; $5D93: $30 $06

    jr jr_001_5D9D                                ; $5D95: $18 $06

jr_001_5D97:
    ld l, $50                                     ; $5D97: $2E $50
    jr jr_001_5D9D                                ; $5D99: $18 $02

jr_001_5D9B:
    ld l, $B0                                     ; $5D9B: $2E $B0

jr_001_5D9D:
    ld a, [$C2AA]                                 ; $5D9D: $FA $AA $C2
    add $50                                       ; $5DA0: $C6 $50
    sub l                                         ; $5DA2: $95
    jp z, Jump_001_5E36                           ; $5DA3: $CA $36 $5E

    jr c, jr_001_5DF3                             ; $5DA6: $38 $4B

    ld hl, $C2C2                                  ; $5DA8: $21 $C2 $C2
    set 5, [hl]                                   ; $5DAB: $CB $EE
    ld b, a                                       ; $5DAD: $47
    ld c, $00                                     ; $5DAE: $0E $00
    srl b                                         ; $5DB0: $CB $38
    rr c                                          ; $5DB2: $CB $19
    ld a, [$D932]                                 ; $5DB4: $FA $32 $D9
    ld hl, $DA32                                  ; $5DB7: $21 $32 $DA
    or [hl]                                       ; $5DBA: $B6
    jr nz, jr_001_5DC5                            ; $5DBB: $20 $08

    srl b                                         ; $5DBD: $CB $38
    rr c                                          ; $5DBF: $CB $19
    srl b                                         ; $5DC1: $CB $38
    rr c                                          ; $5DC3: $CB $19

jr_001_5DC5:
    ld a, b                                       ; $5DC5: $78
    cpl                                           ; $5DC6: $2F
    ld b, a                                       ; $5DC7: $47
    ld a, c                                       ; $5DC8: $79
    cpl                                           ; $5DC9: $2F
    ld c, a                                       ; $5DCA: $4F
    inc c                                         ; $5DCB: $0C
    jr nz, jr_001_5DCF                            ; $5DCC: $20 $01

    inc b                                         ; $5DCE: $04

jr_001_5DCF:
    ld a, [$C2AA]                                 ; $5DCF: $FA $AA $C2
    ld h, a                                       ; $5DD2: $67
    ld a, [$C2AB]                                 ; $5DD3: $FA $AB $C2
    ld l, a                                       ; $5DD6: $6F
    add hl, bc                                    ; $5DD7: $09
    ld a, [$C2C2]                                 ; $5DD8: $FA $C2 $C2
    bit 6, a                                      ; $5DDB: $CB $77
    jr nz, jr_001_5DE0                            ; $5DDD: $20 $01

    ld a, h                                       ; $5DDF: $7C

jr_001_5DE0:
    ld a, h                                       ; $5DE0: $7C
    ld [$C2AA], a                                 ; $5DE1: $EA $AA $C2
    ld a, l                                       ; $5DE4: $7D
    ld [$C2AB], a                                 ; $5DE5: $EA $AB $C2
    jr jr_001_5E36                                ; $5DE8: $18 $4C

    xor a                                         ; $5DEA: $AF
    ld [$C2AA], a                                 ; $5DEB: $EA $AA $C2
    ld [$C2AB], a                                 ; $5DEE: $EA $AB $C2
    jr jr_001_5E36                                ; $5DF1: $18 $43

jr_001_5DF3:
    ld hl, $C2C2                                  ; $5DF3: $21 $C2 $C2
    set 5, [hl]                                   ; $5DF6: $CB $EE
    cpl                                           ; $5DF8: $2F
    inc a                                         ; $5DF9: $3C
    ld b, a                                       ; $5DFA: $47
    ld c, $00                                     ; $5DFB: $0E $00
    srl b                                         ; $5DFD: $CB $38
    rr c                                          ; $5DFF: $CB $19
    ld a, [$D932]                                 ; $5E01: $FA $32 $D9
    ld hl, $DA32                                  ; $5E04: $21 $32 $DA
    or [hl]                                       ; $5E07: $B6
    jr nz, jr_001_5E12                            ; $5E08: $20 $08

    srl b                                         ; $5E0A: $CB $38
    rr c                                          ; $5E0C: $CB $19
    srl b                                         ; $5E0E: $CB $38
    rr c                                          ; $5E10: $CB $19

jr_001_5E12:
    ld a, [$C2AA]                                 ; $5E12: $FA $AA $C2
    ld h, a                                       ; $5E15: $67
    ld a, [$C2AB]                                 ; $5E16: $FA $AB $C2
    ld l, a                                       ; $5E19: $6F
    add hl, bc                                    ; $5E1A: $09
    ld a, [$C2C2]                                 ; $5E1B: $FA $C2 $C2
    bit 6, a                                      ; $5E1E: $CB $77
    jr nz, jr_001_5E23                            ; $5E20: $20 $01

    ld a, h                                       ; $5E22: $7C

jr_001_5E23:
    ld a, h                                       ; $5E23: $7C
    ld [$C2AA], a                                 ; $5E24: $EA $AA $C2
    ld a, l                                       ; $5E27: $7D
    ld [$C2AB], a                                 ; $5E28: $EA $AB $C2
    jr jr_001_5E36                                ; $5E2B: $18 $09

    ld a, $60                                     ; $5E2D: $3E $60
    ld [$C2AA], a                                 ; $5E2F: $EA $AA $C2
    xor a                                         ; $5E32: $AF
    ld [$C2AB], a                                 ; $5E33: $EA $AB $C2

Jump_001_5E36:
jr_001_5E36:
    ld a, [$C2AA]                                 ; $5E36: $FA $AA $C2
    ldh [$FFE4], a                                ; $5E39: $E0 $E4
    ld a, [$D686]                                 ; $5E3B: $FA $86 $D6
    ld b, a                                       ; $5E3E: $47
    ld a, $88                                     ; $5E3F: $3E $88
    sub b                                         ; $5E41: $90
    swap a                                        ; $5E42: $CB $37
    and $0F                                       ; $5E44: $E6 $0F
    ld h, a                                       ; $5E46: $67
    ld a, [$D6C6]                                 ; $5E47: $FA $C6 $D6
    ld b, a                                       ; $5E4A: $47
    ld a, $88                                     ; $5E4B: $3E $88
    sub b                                         ; $5E4D: $90
    swap a                                        ; $5E4E: $CB $37
    and $0F                                       ; $5E50: $E6 $0F
    add h                                         ; $5E52: $84
    cp $08                                        ; $5E53: $FE $08
    jp c, Jump_001_5E5A                           ; $5E55: $DA $5A $5E

    ld a, $08                                     ; $5E58: $3E $08

Jump_001_5E5A:
    cpl                                           ; $5E5A: $2F
    inc a                                         ; $5E5B: $3C
    add $08                                       ; $5E5C: $C6 $08
    ldh [$FFE2], a                                ; $5E5E: $E0 $E2
    add $38                                       ; $5E60: $C6 $38
    ld [$C2AC], a                                 ; $5E62: $EA $AC $C2
    ld a, [$C2B0]                                 ; $5E65: $FA $B0 $C2
    or a                                          ; $5E68: $B7
    jr z, jr_001_5E9F                             ; $5E69: $28 $34

    ld hl, $C01A                                  ; $5E6B: $21 $1A $C0
    bit 1, [hl]                                   ; $5E6E: $CB $4E
    jr z, jr_001_5E7B                             ; $5E70: $28 $09

    ld hl, $C2B0                                  ; $5E72: $21 $B0 $C2
    dec [hl]                                      ; $5E75: $35
    ld [$C2AF], a                                 ; $5E76: $EA $AF $C2
    jr jr_001_5E7F                                ; $5E79: $18 $04

jr_001_5E7B:
    xor a                                         ; $5E7B: $AF
    ld [$C2AF], a                                 ; $5E7C: $EA $AF $C2

jr_001_5E7F:
    ld a, [$C2AF]                                 ; $5E7F: $FA $AF $C2
    or a                                          ; $5E82: $B7
    jr z, jr_001_5E9F                             ; $5E83: $28 $1A

    ld b, a                                       ; $5E85: $47
    ldh a, [$FFE2]                                ; $5E86: $F0 $E2
    add $F8                                       ; $5E88: $C6 $F8
    cpl                                           ; $5E8A: $2F
    inc a                                         ; $5E8B: $3C
    add b                                         ; $5E8C: $80
    cp $08                                        ; $5E8D: $FE $08
    jr c, jr_001_5E93                             ; $5E8F: $38 $02

    ld a, $08                                     ; $5E91: $3E $08

jr_001_5E93:
    ld b, a                                       ; $5E93: $47
    cpl                                           ; $5E94: $2F
    inc a                                         ; $5E95: $3C
    add $08                                       ; $5E96: $C6 $08
    ldh [$FFE2], a                                ; $5E98: $E0 $E2
    add $38                                       ; $5E9A: $C6 $38
    ld [$C2AC], a                                 ; $5E9C: $EA $AC $C2

jr_001_5E9F:
    ret                                           ; $5E9F: $C9


Call_001_5EA0:
    call Call_001_5EB0                            ; $5EA0: $CD $B0 $5E
    call Call_001_5F44                            ; $5EA3: $CD $44 $5F
    call Call_001_623B                            ; $5EA6: $CD $3B $62
    call Call_001_62A9                            ; $5EA9: $CD $A9 $62
    call $6402                                    ; $5EAC: $CD $02 $64
    ret                                           ; $5EAF: $C9


Call_001_5EB0:
    ld a, [$D960]                                 ; $5EB0: $FA $60 $D9
    ld b, a                                       ; $5EB3: $47
    ld a, [$D961]                                 ; $5EB4: $FA $61 $D9
    cp b                                          ; $5EB7: $B8
    jp z, Jump_001_5EE6                           ; $5EB8: $CA $E6 $5E

    jr c, jr_001_5ED3                             ; $5EBB: $38 $16

    ld hl, $9820                                  ; $5EBD: $21 $20 $98
    ld bc, $4000                                  ; $5EC0: $01 $00 $40
    ld de, $4007                                  ; $5EC3: $11 $07 $40
    ld a, [$D961]                                 ; $5EC6: $FA $61 $D9
    dec a                                         ; $5EC9: $3D
    ld [$D961], a                                 ; $5ECA: $EA $61 $D9
    call Call_001_5F1B                            ; $5ECD: $CD $1B $5F
    jp Jump_001_5EE6                              ; $5ED0: $C3 $E6 $5E


jr_001_5ED3:
    ld hl, $9820                                  ; $5ED3: $21 $20 $98
    ld bc, $4001                                  ; $5ED6: $01 $01 $40
    ld de, $4007                                  ; $5ED9: $11 $07 $40
    inc a                                         ; $5EDC: $3C
    ld [$D961], a                                 ; $5EDD: $EA $61 $D9
    dec a                                         ; $5EE0: $3D
    call Call_001_5F1B                            ; $5EE1: $CD $1B $5F
    jr jr_001_5EE6                                ; $5EE4: $18 $00

Jump_001_5EE6:
jr_001_5EE6:
    ld a, [$DA60]                                 ; $5EE6: $FA $60 $DA
    ld b, a                                       ; $5EE9: $47
    ld a, [$DA61]                                 ; $5EEA: $FA $61 $DA
    cp b                                          ; $5EED: $B8
    jp z, Jump_001_5F1A                           ; $5EEE: $CA $1A $5F

    jr c, jr_001_5F09                             ; $5EF1: $38 $16

    ld hl, $982B                                  ; $5EF3: $21 $2B $98
    ld bc, $4022                                  ; $5EF6: $01 $22 $40
    ld de, $4029                                  ; $5EF9: $11 $29 $40
    ld a, [$DA61]                                 ; $5EFC: $FA $61 $DA
    dec a                                         ; $5EFF: $3D
    ld [$DA61], a                                 ; $5F00: $EA $61 $DA
    call Call_001_5F1B                            ; $5F03: $CD $1B $5F
    jp Jump_001_5F1A                              ; $5F06: $C3 $1A $5F


jr_001_5F09:
    ld hl, $982B                                  ; $5F09: $21 $2B $98
    ld bc, $4023                                  ; $5F0C: $01 $23 $40
    ld de, $4029                                  ; $5F0F: $11 $29 $40
    inc a                                         ; $5F12: $3C
    ld [$DA61], a                                 ; $5F13: $EA $61 $DA
    dec a                                         ; $5F16: $3D
    call Call_001_5F1B                            ; $5F17: $CD $1B $5F

Jump_001_5F1A:
    ret                                           ; $5F1A: $C9


Call_001_5F1B:
    push af                                       ; $5F1B: $F5
    push af                                       ; $5F1C: $F5
    cp $12                                        ; $5F1D: $FE $12
    jr c, jr_001_5F29                             ; $5F1F: $38 $08

    inc c                                         ; $5F21: $0C
    inc c                                         ; $5F22: $0C
    cp $24                                        ; $5F23: $FE $24
    jr c, jr_001_5F29                             ; $5F25: $38 $02

    inc c                                         ; $5F27: $0C
    inc c                                         ; $5F28: $0C

jr_001_5F29:
    and $01                                       ; $5F29: $E6 $01
    add c                                         ; $5F2B: $81
    ld c, a                                       ; $5F2C: $4F
    ld a, [bc]                                    ; $5F2D: $0A
    pop bc                                        ; $5F2E: $C1
    push af                                       ; $5F2F: $F5
    ld a, b                                       ; $5F30: $78
    srl a                                         ; $5F31: $CB $3F
    add e                                         ; $5F33: $83
    ld e, a                                       ; $5F34: $5F
    ld a, [de]                                    ; $5F35: $1A
    add l                                         ; $5F36: $85
    ld l, a                                       ; $5F37: $6F
    di                                            ; $5F38: $F3

jr_001_5F39:
    ldh a, [rSTAT]                                ; $5F39: $F0 $41
    bit 1, a                                      ; $5F3B: $CB $4F
    jr nz, jr_001_5F39                            ; $5F3D: $20 $FA

    pop af                                        ; $5F3F: $F1
    ld [hl], a                                    ; $5F40: $77
    ei                                            ; $5F41: $FB
    pop af                                        ; $5F42: $F1
    ret                                           ; $5F43: $C9


Call_001_5F44:
    ld a, [$D965]                                 ; $5F44: $FA $65 $D9
    cp $01                                        ; $5F47: $FE $01
    jp z, Jump_001_5FA9                           ; $5F49: $CA $A9 $5F

    cp $02                                        ; $5F4C: $FE $02
    jp z, Jump_001_5FDA                           ; $5F4E: $CA $DA $5F

    ld a, [$D962]                                 ; $5F51: $FA $62 $D9
    ld b, a                                       ; $5F54: $47
    ld a, [$D963]                                 ; $5F55: $FA $63 $D9
    cp b                                          ; $5F58: $B8
    jp z, Jump_001_605C                           ; $5F59: $CA $5C $60

    jr c, jr_001_5F83                             ; $5F5C: $38 $25

    ld hl, $9BE1                                  ; $5F5E: $21 $E1 $9B
    ld bc, $4044                                  ; $5F61: $01 $44 $40
    ld de, $404A                                  ; $5F64: $11 $4A $40
    dec a                                         ; $5F67: $3D
    ld [$D963], a                                 ; $5F68: $EA $63 $D9
    call Call_001_6175                            ; $5F6B: $CD $75 $61
    cp $0F                                        ; $5F6E: $FE $0F
    jp nz, Jump_001_605C                          ; $5F70: $C2 $5C $60

    ld hl, $9BC4                                  ; $5F73: $21 $C4 $9B
    ld a, $00                                     ; $5F76: $3E $00
    call Call_001_61FA                            ; $5F78: $CD $FA $61
    ld a, $00                                     ; $5F7B: $3E $00
    ld [$D965], a                                 ; $5F7D: $EA $65 $D9
    jp Jump_001_605C                              ; $5F80: $C3 $5C $60


jr_001_5F83:
    ld hl, $9BE1                                  ; $5F83: $21 $E1 $9B
    ld bc, $4045                                  ; $5F86: $01 $45 $40
    ld de, $404A                                  ; $5F89: $11 $4A $40
    inc a                                         ; $5F8C: $3C
    ld [$D963], a                                 ; $5F8D: $EA $63 $D9
    dec a                                         ; $5F90: $3D
    call Call_001_6175                            ; $5F91: $CD $75 $61
    cp $0F                                        ; $5F94: $FE $0F
    jp nz, Jump_001_605C                          ; $5F96: $C2 $5C $60

    ld hl, $9BC5                                  ; $5F99: $21 $C5 $9B
    ld a, $01                                     ; $5F9C: $3E $01
    call Call_001_61FA                            ; $5F9E: $CD $FA $61
    ld a, $01                                     ; $5FA1: $3E $01
    ld [$D965], a                                 ; $5FA3: $EA $65 $D9
    jp Jump_001_605C                              ; $5FA6: $C3 $5C $60


Jump_001_5FA9:
    ld a, [$D962]                                 ; $5FA9: $FA $62 $D9
    cp $10                                        ; $5FAC: $FE $10
    jr nz, jr_001_5FD2                            ; $5FAE: $20 $22

    ld a, [$D930]                                 ; $5FB0: $FA $30 $D9
    cp $01                                        ; $5FB3: $FE $01
    jp nz, Jump_001_605C                          ; $5FB5: $C2 $5C $60

    ld a, $02                                     ; $5FB8: $3E $02
    ld [$D965], a                                 ; $5FBA: $EA $65 $D9
    ld a, $01                                     ; $5FBD: $3E $01
    ld [$D96A], a                                 ; $5FBF: $EA $6A $D9
    ld a, $FA                                     ; $5FC2: $3E $FA
    ld [$D96B], a                                 ; $5FC4: $EA $6B $D9
    ld hl, $D966                                  ; $5FC7: $21 $66 $D9
    ld [hl], $09                                  ; $5FCA: $36 $09
    inc hl                                        ; $5FCC: $23
    ld [hl], $99                                  ; $5FCD: $36 $99
    jp Jump_001_605C                              ; $5FCF: $C3 $5C $60


jr_001_5FD2:
    ld a, $00                                     ; $5FD2: $3E $00
    ld [$D965], a                                 ; $5FD4: $EA $65 $D9
    jp Jump_001_605C                              ; $5FD7: $C3 $5C $60


Jump_001_5FDA:
    ld a, [$D96A]                                 ; $5FDA: $FA $6A $D9
    cp $01                                        ; $5FDD: $FE $01
    jr z, jr_001_6022                             ; $5FDF: $28 $41

    cp $FF                                        ; $5FE1: $FE $FF
    jr z, jr_001_6043                             ; $5FE3: $28 $5E

    ld de, $D966                                  ; $5FE5: $11 $66 $D9
    ld hl, $D968                                  ; $5FE8: $21 $68 $D9
    ld a, [de]                                    ; $5FEB: $1A
    cp [hl]                                       ; $5FEC: $BE
    jr nz, jr_001_5FF5                            ; $5FED: $20 $06

    inc de                                        ; $5FEF: $13
    inc hl                                        ; $5FF0: $23
    ld a, [de]                                    ; $5FF1: $1A
    cp [hl]                                       ; $5FF2: $BE
    jr z, jr_001_605C                             ; $5FF3: $28 $67

jr_001_5FF5:
    ld de, $D966                                  ; $5FF5: $11 $66 $D9
    ld hl, $9BC0                                  ; $5FF8: $21 $C0 $9B
    call Call_001_6192                            ; $5FFB: $CD $92 $61
    ld de, $D966                                  ; $5FFE: $11 $66 $D9
    ld hl, $D968                                  ; $6001: $21 $68 $D9
    ld a, [de]                                    ; $6004: $1A
    ld b, a                                       ; $6005: $47
    inc de                                        ; $6006: $13
    ld [hl+], a                                   ; $6007: $22
    ld a, [de]                                    ; $6008: $1A
    inc de                                        ; $6009: $13
    ld [hl+], a                                   ; $600A: $22
    or b                                          ; $600B: $B0
    jr nz, jr_001_605C                            ; $600C: $20 $4E

    ld a, $FF                                     ; $600E: $3E $FF
    ld [$D96A], a                                 ; $6010: $EA $6A $D9
    ld a, $02                                     ; $6013: $3E $02
    ld [$D96B], a                                 ; $6015: $EA $6B $D9
    ld a, $00                                     ; $6018: $3E $00
    ld [$D962], a                                 ; $601A: $EA $62 $D9
    ld [$D930], a                                 ; $601D: $EA $30 $D9
    jr jr_001_605C                                ; $6020: $18 $3A

jr_001_6022:
    ld hl, $D96A                                  ; $6022: $21 $6A $D9
    call Call_001_61C6                            ; $6025: $CD $C6 $61
    ld a, [$D96B]                                 ; $6028: $FA $6B $D9
    inc a                                         ; $602B: $3C
    ld [$D96B], a                                 ; $602C: $EA $6B $D9
    cp $04                                        ; $602F: $FE $04
    jr nz, jr_001_605C                            ; $6031: $20 $29

    ld a, $00                                     ; $6033: $3E $00
    ld [$D96A], a                                 ; $6035: $EA $6A $D9
    ld de, $D966                                  ; $6038: $11 $66 $D9
    ld hl, $9BC0                                  ; $603B: $21 $C0 $9B
    call Call_001_6192                            ; $603E: $CD $92 $61
    jr jr_001_605C                                ; $6041: $18 $19

jr_001_6043:
    ld hl, $D96A                                  ; $6043: $21 $6A $D9
    call Call_001_61C6                            ; $6046: $CD $C6 $61
    ld a, [$D96B]                                 ; $6049: $FA $6B $D9
    dec a                                         ; $604C: $3D
    ld [$D96B], a                                 ; $604D: $EA $6B $D9
    cp $F9                                        ; $6050: $FE $F9
    jr nz, jr_001_605C                            ; $6052: $20 $08

    ld a, $00                                     ; $6054: $3E $00
    ld [$D96A], a                                 ; $6056: $EA $6A $D9
    ld [$D965], a                                 ; $6059: $EA $65 $D9

Jump_001_605C:
jr_001_605C:
    ld a, [$DA65]                                 ; $605C: $FA $65 $DA
    cp $01                                        ; $605F: $FE $01
    jp z, Jump_001_60C1                           ; $6061: $CA $C1 $60

    cp $02                                        ; $6064: $FE $02
    jp z, Jump_001_60F2                           ; $6066: $CA $F2 $60

    ld a, [$DA62]                                 ; $6069: $FA $62 $DA
    ld b, a                                       ; $606C: $47
    ld a, [$DA63]                                 ; $606D: $FA $63 $DA
    cp b                                          ; $6070: $B8
    jp z, Jump_001_6174                           ; $6071: $CA $74 $61

    jr c, jr_001_609B                             ; $6074: $38 $25

    ld hl, $9BEB                                  ; $6076: $21 $EB $9B
    ld bc, $4047                                  ; $6079: $01 $47 $40
    ld de, $4052                                  ; $607C: $11 $52 $40
    dec a                                         ; $607F: $3D
    ld [$DA63], a                                 ; $6080: $EA $63 $DA
    call Call_001_6175                            ; $6083: $CD $75 $61
    cp $0F                                        ; $6086: $FE $0F
    jp nz, Jump_001_6174                          ; $6088: $C2 $74 $61

    ld hl, $9BCB                                  ; $608B: $21 $CB $9B
    ld a, $00                                     ; $608E: $3E $00
    call Call_001_61FA                            ; $6090: $CD $FA $61
    ld a, $00                                     ; $6093: $3E $00
    ld [$DA65], a                                 ; $6095: $EA $65 $DA
    jp Jump_001_6174                              ; $6098: $C3 $74 $61


jr_001_609B:
    ld hl, $9BEB                                  ; $609B: $21 $EB $9B
    ld bc, $4048                                  ; $609E: $01 $48 $40
    ld de, $4052                                  ; $60A1: $11 $52 $40
    inc a                                         ; $60A4: $3C
    ld [$DA63], a                                 ; $60A5: $EA $63 $DA
    dec a                                         ; $60A8: $3D
    call Call_001_6175                            ; $60A9: $CD $75 $61
    cp $0F                                        ; $60AC: $FE $0F
    jp nz, Jump_001_6174                          ; $60AE: $C2 $74 $61

    ld hl, $9BCB                                  ; $60B1: $21 $CB $9B
    ld a, $01                                     ; $60B4: $3E $01
    call Call_001_61FA                            ; $60B6: $CD $FA $61
    ld a, $01                                     ; $60B9: $3E $01
    ld [$DA65], a                                 ; $60BB: $EA $65 $DA
    jp Jump_001_6174                              ; $60BE: $C3 $74 $61


Jump_001_60C1:
    ld a, [$DA62]                                 ; $60C1: $FA $62 $DA
    cp $10                                        ; $60C4: $FE $10
    jr nz, jr_001_60EA                            ; $60C6: $20 $22

    ld a, [$DA30]                                 ; $60C8: $FA $30 $DA
    cp $01                                        ; $60CB: $FE $01
    jp nz, Jump_001_6174                          ; $60CD: $C2 $74 $61

    ld a, $02                                     ; $60D0: $3E $02
    ld [$DA65], a                                 ; $60D2: $EA $65 $DA
    ld a, $01                                     ; $60D5: $3E $01
    ld [$DA6A], a                                 ; $60D7: $EA $6A $DA
    ld a, $13                                     ; $60DA: $3E $13
    ld [$DA6B], a                                 ; $60DC: $EA $6B $DA
    ld hl, $DA66                                  ; $60DF: $21 $66 $DA
    ld [hl], $09                                  ; $60E2: $36 $09
    inc hl                                        ; $60E4: $23
    ld [hl], $99                                  ; $60E5: $36 $99
    jp Jump_001_6174                              ; $60E7: $C3 $74 $61


jr_001_60EA:
    ld a, $00                                     ; $60EA: $3E $00
    ld [$DA65], a                                 ; $60EC: $EA $65 $DA
    jp Jump_001_6174                              ; $60EF: $C3 $74 $61


Jump_001_60F2:
    ld a, [$DA6A]                                 ; $60F2: $FA $6A $DA
    cp $01                                        ; $60F5: $FE $01
    jr z, jr_001_613A                             ; $60F7: $28 $41

    cp $FF                                        ; $60F9: $FE $FF
    jr z, jr_001_615B                             ; $60FB: $28 $5E

    ld de, $DA66                                  ; $60FD: $11 $66 $DA
    ld hl, $DA68                                  ; $6100: $21 $68 $DA
    ld a, [de]                                    ; $6103: $1A
    cp [hl]                                       ; $6104: $BE
    jr nz, jr_001_610D                            ; $6105: $20 $06

    inc de                                        ; $6107: $13
    inc hl                                        ; $6108: $23
    ld a, [de]                                    ; $6109: $1A
    cp [hl]                                       ; $610A: $BE
    jr z, jr_001_6174                             ; $610B: $28 $67

jr_001_610D:
    ld de, $DA66                                  ; $610D: $11 $66 $DA
    ld hl, $9BD1                                  ; $6110: $21 $D1 $9B
    call Call_001_6192                            ; $6113: $CD $92 $61
    ld de, $DA66                                  ; $6116: $11 $66 $DA
    ld hl, $DA68                                  ; $6119: $21 $68 $DA
    ld a, [de]                                    ; $611C: $1A
    ld b, a                                       ; $611D: $47
    inc de                                        ; $611E: $13
    ld [hl+], a                                   ; $611F: $22
    ld a, [de]                                    ; $6120: $1A
    inc de                                        ; $6121: $13
    ld [hl+], a                                   ; $6122: $22
    or b                                          ; $6123: $B0
    jr nz, jr_001_6174                            ; $6124: $20 $4E

    ld a, $FF                                     ; $6126: $3E $FF
    ld [$DA6A], a                                 ; $6128: $EA $6A $DA
    ld a, $0B                                     ; $612B: $3E $0B
    ld [$DA6B], a                                 ; $612D: $EA $6B $DA
    ld a, $00                                     ; $6130: $3E $00
    ld [$DA62], a                                 ; $6132: $EA $62 $DA
    ld [$DA30], a                                 ; $6135: $EA $30 $DA
    jr jr_001_6174                                ; $6138: $18 $3A

jr_001_613A:
    ld hl, $DA6A                                  ; $613A: $21 $6A $DA
    call Call_001_61C6                            ; $613D: $CD $C6 $61
    ld a, [$DA6B]                                 ; $6140: $FA $6B $DA
    dec a                                         ; $6143: $3D
    ld [$DA6B], a                                 ; $6144: $EA $6B $DA
    cp $09                                        ; $6147: $FE $09
    jr nz, jr_001_6174                            ; $6149: $20 $29

    ld a, $00                                     ; $614B: $3E $00
    ld [$DA6A], a                                 ; $614D: $EA $6A $DA
    ld de, $DA66                                  ; $6150: $11 $66 $DA
    ld hl, $9BD1                                  ; $6153: $21 $D1 $9B
    call Call_001_6192                            ; $6156: $CD $92 $61
    jr jr_001_6174                                ; $6159: $18 $19

jr_001_615B:
    ld hl, $DA6A                                  ; $615B: $21 $6A $DA
    call Call_001_61C6                            ; $615E: $CD $C6 $61
    ld a, [$DA6B]                                 ; $6161: $FA $6B $DA
    inc a                                         ; $6164: $3C
    ld [$DA6B], a                                 ; $6165: $EA $6B $DA
    cp $14                                        ; $6168: $FE $14
    jr nz, jr_001_6174                            ; $616A: $20 $08

    ld a, $00                                     ; $616C: $3E $00
    ld [$DA6A], a                                 ; $616E: $EA $6A $DA
    ld [$DA65], a                                 ; $6171: $EA $65 $DA

Jump_001_6174:
jr_001_6174:
    ret                                           ; $6174: $C9


Call_001_6175:
    push af                                       ; $6175: $F5
    push af                                       ; $6176: $F5
    and $01                                       ; $6177: $E6 $01
    add c                                         ; $6179: $81
    ld c, a                                       ; $617A: $4F
    ld a, [bc]                                    ; $617B: $0A
    pop bc                                        ; $617C: $C1
    push af                                       ; $617D: $F5
    ld a, b                                       ; $617E: $78
    srl a                                         ; $617F: $CB $3F
    add e                                         ; $6181: $83
    ld e, a                                       ; $6182: $5F
    ld a, [de]                                    ; $6183: $1A
    add l                                         ; $6184: $85
    ld l, a                                       ; $6185: $6F
    di                                            ; $6186: $F3

jr_001_6187:
    ldh a, [rSTAT]                                ; $6187: $F0 $41
    bit 1, a                                      ; $6189: $CB $4F
    jr nz, jr_001_6187                            ; $618B: $20 $FA

    pop af                                        ; $618D: $F1
    ld [hl], a                                    ; $618E: $77
    ei                                            ; $618F: $FB
    pop af                                        ; $6190: $F1
    ret                                           ; $6191: $C9


Call_001_6192:
    ld a, [de]                                    ; $6192: $1A
    and $0F                                       ; $6193: $E6 $0F
    add $EE                                       ; $6195: $C6 $EE
    push af                                       ; $6197: $F5
    di                                            ; $6198: $F3

jr_001_6199:
    ldh a, [rSTAT]                                ; $6199: $F0 $41
    bit 1, a                                      ; $619B: $CB $4F
    jr nz, jr_001_6199                            ; $619D: $20 $FA

    pop af                                        ; $619F: $F1
    ld [hl+], a                                   ; $61A0: $22
    ei                                            ; $61A1: $FB
    inc de                                        ; $61A2: $13
    ld a, [de]                                    ; $61A3: $1A
    swap a                                        ; $61A4: $CB $37
    and $0F                                       ; $61A6: $E6 $0F
    add $EE                                       ; $61A8: $C6 $EE
    push af                                       ; $61AA: $F5
    di                                            ; $61AB: $F3

jr_001_61AC:
    ldh a, [rSTAT]                                ; $61AC: $F0 $41
    bit 1, a                                      ; $61AE: $CB $4F
    jr nz, jr_001_61AC                            ; $61B0: $20 $FA

    pop af                                        ; $61B2: $F1
    ld [hl+], a                                   ; $61B3: $22
    ei                                            ; $61B4: $FB
    ld a, [de]                                    ; $61B5: $1A
    and $0F                                       ; $61B6: $E6 $0F
    add $EE                                       ; $61B8: $C6 $EE
    push af                                       ; $61BA: $F5
    di                                            ; $61BB: $F3

jr_001_61BC:
    ldh a, [rSTAT]                                ; $61BC: $F0 $41
    bit 1, a                                      ; $61BE: $CB $4F
    jr nz, jr_001_61BC                            ; $61C0: $20 $FA

    pop af                                        ; $61C2: $F1
    ld [hl+], a                                   ; $61C3: $22
    ei                                            ; $61C4: $FB
    ret                                           ; $61C5: $C9


Call_001_61C6:
    inc hl                                        ; $61C6: $23
    ld a, [hl]                                    ; $61C7: $7E
    ld hl, $9BC0                                  ; $61C8: $21 $C0 $9B
    ld d, $00                                     ; $61CB: $16 $00
    ld e, a                                       ; $61CD: $5F
    bit 7, a                                      ; $61CE: $CB $7F
    jr z, jr_001_61D4                             ; $61D0: $28 $02

    ld d, $FF                                     ; $61D2: $16 $FF

jr_001_61D4:
    add hl, de                                    ; $61D4: $19
    ld de, $61F3                                  ; $61D5: $11 $F3 $61
    ld b, $07                                     ; $61D8: $06 $07

jr_001_61DA:
    ld a, l                                       ; $61DA: $7D
    cp $C0                                        ; $61DB: $FE $C0
    jr c, jr_001_61ED                             ; $61DD: $38 $0E

    cp $E0                                        ; $61DF: $FE $E0
    jr nc, jr_001_61ED                            ; $61E1: $30 $0A

    di                                            ; $61E3: $F3

jr_001_61E4:
    ldh a, [rSTAT]                                ; $61E4: $F0 $41
    bit 1, a                                      ; $61E6: $CB $4F
    jr nz, jr_001_61E4                            ; $61E8: $20 $FA

    ld a, [de]                                    ; $61EA: $1A
    ld [hl], a                                    ; $61EB: $77
    ei                                            ; $61EC: $FB

jr_001_61ED:
    inc de                                        ; $61ED: $13
    inc hl                                        ; $61EE: $23
    dec b                                         ; $61EF: $05
    jr nz, jr_001_61DA                            ; $61F0: $20 $E8

    ret                                           ; $61F2: $C9


    nop                                           ; $61F3: $00
    ei                                            ; $61F4: $FB
    db $FC                                        ; $61F5: $FC
    db $FD                                        ; $61F6: $FD
    cp $FF                                        ; $61F7: $FE $FF
    nop                                           ; $61F9: $00

Call_001_61FA:
    push hl                                       ; $61FA: $E5
    ld de, $6219                                  ; $61FB: $11 $19 $62
    ld h, $00                                     ; $61FE: $26 $00
    add a                                         ; $6200: $87
    ld l, a                                       ; $6201: $6F
    add hl, de                                    ; $6202: $19
    ld e, [hl]                                    ; $6203: $5E
    inc hl                                        ; $6204: $23
    ld d, [hl]                                    ; $6205: $56
    pop hl                                        ; $6206: $E1
    ld a, [de]                                    ; $6207: $1A
    inc de                                        ; $6208: $13
    ld b, a                                       ; $6209: $47

jr_001_620A:
    di                                            ; $620A: $F3

jr_001_620B:
    ldh a, [rSTAT]                                ; $620B: $F0 $41
    bit 1, a                                      ; $620D: $CB $4F
    jr nz, jr_001_620B                            ; $620F: $20 $FA

    ld a, [de]                                    ; $6211: $1A
    ld [hl+], a                                   ; $6212: $22
    ei                                            ; $6213: $FB
    inc de                                        ; $6214: $13
    dec b                                         ; $6215: $05
    jr nz, jr_001_620A                            ; $6216: $20 $F2

    ret                                           ; $6218: $C9


    ld hl, $2762                                  ; $6219: $21 $62 $27
    ld h, d                                       ; $621C: $62
    inc l                                         ; $621D: $2C
    ld h, d                                       ; $621E: $62
    ld [hl-], a                                   ; $621F: $32
    ld h, d                                       ; $6220: $62
    dec b                                         ; $6221: $05
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    inc b                                         ; $6227: $04
    ld hl, sp-$07                                 ; $6228: $F8 $F9
    ld a, [$05FA]                                 ; $622A: $FA $FA $05
    ei                                            ; $622D: $FB
    db $FC                                        ; $622E: $FC
    db $FD                                        ; $622F: $FD
    cp $FF                                        ; $6230: $FE $FF
    ld [$0000], sp                                ; $6232: $08 $00 $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623A: $00

Call_001_623B:
    ld a, [$D95E]                                 ; $623B: $FA $5E $D9
    ld b, a                                       ; $623E: $47
    ld a, [$D95F]                                 ; $623F: $FA $5F $D9
    cp b                                          ; $6242: $B8
    jp z, Jump_001_6269                           ; $6243: $CA $69 $62

    jr c, jr_001_625A                             ; $6246: $38 $12

    ld hl, $9840                                  ; $6248: $21 $40 $98
    ld b, $00                                     ; $624B: $06 $00
    ld de, $405A                                  ; $624D: $11 $5A $40
    dec a                                         ; $6250: $3D
    ld [$D95F], a                                 ; $6251: $EA $5F $D9
    call Call_001_6298                            ; $6254: $CD $98 $62
    jp Jump_001_6269                              ; $6257: $C3 $69 $62


jr_001_625A:
    ld hl, $9840                                  ; $625A: $21 $40 $98
    ld b, $DA                                     ; $625D: $06 $DA
    ld de, $405A                                  ; $625F: $11 $5A $40
    call Call_001_6298                            ; $6262: $CD $98 $62
    inc a                                         ; $6265: $3C
    ld [$D95F], a                                 ; $6266: $EA $5F $D9

Jump_001_6269:
    ld a, [$DA5E]                                 ; $6269: $FA $5E $DA
    ld b, a                                       ; $626C: $47
    ld a, [$DA5F]                                 ; $626D: $FA $5F $DA
    cp b                                          ; $6270: $B8
    jp z, Jump_001_6297                           ; $6271: $CA $97 $62

    jr c, jr_001_6288                             ; $6274: $38 $12

    ld hl, $984E                                  ; $6276: $21 $4E $98
    ld b, $00                                     ; $6279: $06 $00
    ld de, $4060                                  ; $627B: $11 $60 $40
    dec a                                         ; $627E: $3D
    ld [$DA5F], a                                 ; $627F: $EA $5F $DA
    call Call_001_6298                            ; $6282: $CD $98 $62
    jp Jump_001_6297                              ; $6285: $C3 $97 $62


jr_001_6288:
    ld hl, $984E                                  ; $6288: $21 $4E $98
    ld b, $DA                                     ; $628B: $06 $DA
    ld de, $4060                                  ; $628D: $11 $60 $40
    call Call_001_6298                            ; $6290: $CD $98 $62
    inc a                                         ; $6293: $3C
    ld [$DA5F], a                                 ; $6294: $EA $5F $DA

Jump_001_6297:
    ret                                           ; $6297: $C9


Call_001_6298:
    push af                                       ; $6298: $F5
    add e                                         ; $6299: $83
    ld e, a                                       ; $629A: $5F
    ld a, [de]                                    ; $629B: $1A
    add l                                         ; $629C: $85
    ld l, a                                       ; $629D: $6F
    di                                            ; $629E: $F3

jr_001_629F:
    ldh a, [rSTAT]                                ; $629F: $F0 $41
    bit 1, a                                      ; $62A1: $CB $4F
    jr nz, jr_001_629F                            ; $62A3: $20 $FA

    ld [hl], b                                    ; $62A5: $70
    ei                                            ; $62A6: $FB
    pop af                                        ; $62A7: $F1
    ret                                           ; $62A8: $C9


Call_001_62A9:
    ld a, [$C2DD]                                 ; $62A9: $FA $DD $C2
    or a                                          ; $62AC: $B7
    jp z, Jump_001_6340                           ; $62AD: $CA $40 $63

    cp $FF                                        ; $62B0: $FE $FF
    jp nz, Jump_001_62BB                          ; $62B2: $C2 $BB $62

    call Call_001_6341                            ; $62B5: $CD $41 $63
    jp Jump_001_6340                              ; $62B8: $C3 $40 $63


Jump_001_62BB:
    ld a, [$D960]                                 ; $62BB: $FA $60 $D9
    or a                                          ; $62BE: $B7
    jp z, Jump_001_6317                           ; $62BF: $CA $17 $63

    ld a, [$DA60]                                 ; $62C2: $FA $60 $DA
    or a                                          ; $62C5: $B7
    jp z, Jump_001_6317                           ; $62C6: $CA $17 $63

    ld hl, $C039                                  ; $62C9: $21 $39 $C0
    bit 7, [hl]                                   ; $62CC: $CB $7E
    jp nz, Jump_001_6340                          ; $62CE: $C2 $40 $63

    ld hl, $C2DE                                  ; $62D1: $21 $DE $C2
    dec [hl]                                      ; $62D4: $35
    jp z, Jump_001_6306                           ; $62D5: $CA $06 $63

    ld a, [$C2DD]                                 ; $62D8: $FA $DD $C2
    cp $11                                        ; $62DB: $FE $11
    jp c, Jump_001_62E3                           ; $62DD: $DA $E3 $62

    jp Jump_001_6340                              ; $62E0: $C3 $40 $63


Jump_001_62E3:
    ld a, [$C01A]                                 ; $62E3: $FA $1A $C0
    bit 2, a                                      ; $62E6: $CB $57
    jp nz, Jump_001_6303                          ; $62E8: $C2 $03 $63

    ld hl, $9829                                  ; $62EB: $21 $29 $98
    di                                            ; $62EE: $F3

jr_001_62EF:
    ldh a, [rSTAT]                                ; $62EF: $F0 $41
    bit 1, a                                      ; $62F1: $CB $4F
    jr nz, jr_001_62EF                            ; $62F3: $20 $FA

    xor a                                         ; $62F5: $AF
    ld [hl+], a                                   ; $62F6: $22

jr_001_62F7:
    ldh a, [rSTAT]                                ; $62F7: $F0 $41
    bit 1, a                                      ; $62F9: $CB $4F
    jr nz, jr_001_62F7                            ; $62FB: $20 $FA

    xor a                                         ; $62FD: $AF
    ld [hl], a                                    ; $62FE: $77
    ei                                            ; $62FF: $FB
    jp Jump_001_6340                              ; $6300: $C3 $40 $63


Jump_001_6303:
    jp Jump_001_6317                              ; $6303: $C3 $17 $63


Jump_001_6306:
    ld a, [$C2DD]                                 ; $6306: $FA $DD $C2
    sub $01                                       ; $6309: $D6 $01
    daa                                           ; $630B: $27
    ld [$C2DD], a                                 ; $630C: $EA $DD $C2
    ld a, $3C                                     ; $630F: $3E $3C
    ld [$C2DE], a                                 ; $6311: $EA $DE $C2
    jp Jump_001_6317                              ; $6314: $C3 $17 $63


Jump_001_6317:
    ld hl, $9829                                  ; $6317: $21 $29 $98
    ld a, [$C2DD]                                 ; $631A: $FA $DD $C2
    swap a                                        ; $631D: $CB $37
    and $0F                                       ; $631F: $E6 $0F
    add $EE                                       ; $6321: $C6 $EE
    ld e, a                                       ; $6323: $5F
    di                                            ; $6324: $F3

jr_001_6325:
    ldh a, [rSTAT]                                ; $6325: $F0 $41
    bit 1, a                                      ; $6327: $CB $4F
    jr nz, jr_001_6325                            ; $6329: $20 $FA

    ld a, e                                       ; $632B: $7B
    ld [hl+], a                                   ; $632C: $22
    ei                                            ; $632D: $FB
    ld a, [$C2DD]                                 ; $632E: $FA $DD $C2
    and $0F                                       ; $6331: $E6 $0F
    add $EE                                       ; $6333: $C6 $EE
    ld e, a                                       ; $6335: $5F
    di                                            ; $6336: $F3

jr_001_6337:
    ldh a, [rSTAT]                                ; $6337: $F0 $41
    bit 1, a                                      ; $6339: $CB $4F
    jr nz, jr_001_6337                            ; $633B: $20 $FA

    ld a, e                                       ; $633D: $7B
    ld [hl], a                                    ; $633E: $77
    ei                                            ; $633F: $FB

Jump_001_6340:
    ret                                           ; $6340: $C9


Call_001_6341:
    ld a, [$C2C6]                                 ; $6341: $FA $C6 $C2
    and $F0                                       ; $6344: $E6 $F0
    cp $20                                        ; $6346: $FE $20
    ret nz                                        ; $6348: $C0

    ld hl, $C039                                  ; $6349: $21 $39 $C0
    bit 7, [hl]                                   ; $634C: $CB $7E
    jp z, Jump_001_6359                           ; $634E: $CA $59 $63

    ld hl, $C2D4                                  ; $6351: $21 $D4 $C2
    ld a, [hl+]                                   ; $6354: $2A
    or [hl]                                       ; $6355: $B6
    inc hl                                        ; $6356: $23
    or [hl]                                       ; $6357: $B6
    ret z                                         ; $6358: $C8

Jump_001_6359:
    ld hl, $C2D4                                  ; $6359: $21 $D4 $C2
    ld a, [hl+]                                   ; $635C: $2A
    cp $99                                        ; $635D: $FE $99
    jr nz, jr_001_6366                            ; $635F: $20 $05

    ld a, [hl]                                    ; $6361: $7E
    cp $99                                        ; $6362: $FE $99
    jr z, jr_001_6382                             ; $6364: $28 $1C

jr_001_6366:
    ld b, $03                                     ; $6366: $06 $03
    ld hl, $C2D6                                  ; $6368: $21 $D6 $C2
    ld de, $6401                                  ; $636B: $11 $01 $64
    ld c, $00                                     ; $636E: $0E $00

jr_001_6370:
    ld a, [de]                                    ; $6370: $1A
    add c                                         ; $6371: $81
    add [hl]                                      ; $6372: $86
    daa                                           ; $6373: $27
    ld [hl], a                                    ; $6374: $77
    jr nc, jr_001_637B                            ; $6375: $30 $04

    ld c, $01                                     ; $6377: $0E $01
    jr jr_001_637D                                ; $6379: $18 $02

jr_001_637B:
    ld c, $00                                     ; $637B: $0E $00

jr_001_637D:
    dec de                                        ; $637D: $1B
    dec hl                                        ; $637E: $2B
    dec b                                         ; $637F: $05
    jr nz, jr_001_6370                            ; $6380: $20 $EE

jr_001_6382:
    ld a, [$D99C]                                 ; $6382: $FA $9C $D9
    or a                                          ; $6385: $B7
    jr nz, jr_001_63C0                            ; $6386: $20 $38

    ld hl, $C2D4                                  ; $6388: $21 $D4 $C2
    ld de, $C2D7                                  ; $638B: $11 $D7 $C2
    ld b, $03                                     ; $638E: $06 $03

jr_001_6390:
    ld a, [hl+]                                   ; $6390: $2A
    ld [de], a                                    ; $6391: $12
    inc de                                        ; $6392: $13
    dec b                                         ; $6393: $05
    jr nz, jr_001_6390                            ; $6394: $20 $FA

    ld hl, $C2D4                                  ; $6396: $21 $D4 $C2
    ld a, [hl]                                    ; $6399: $7E
    swap a                                        ; $639A: $CB $37
    and $0F                                       ; $639C: $E6 $0F
    sla a                                         ; $639E: $CB $27
    ld [$CF03], a                                 ; $63A0: $EA $03 $CF
    ld a, [hl]                                    ; $63A3: $7E
    and $0F                                       ; $63A4: $E6 $0F
    sla a                                         ; $63A6: $CB $27
    ld [$CF06], a                                 ; $63A8: $EA $06 $CF
    ld hl, $C2D5                                  ; $63AB: $21 $D5 $C2
    ld a, [hl]                                    ; $63AE: $7E
    swap a                                        ; $63AF: $CB $37
    and $0F                                       ; $63B1: $E6 $0F
    sla a                                         ; $63B3: $CB $27
    ld [$CF0C], a                                 ; $63B5: $EA $0C $CF
    ld a, [hl]                                    ; $63B8: $7E
    and $0F                                       ; $63B9: $E6 $0F
    sla a                                         ; $63BB: $CB $27
    ld [$CF0F], a                                 ; $63BD: $EA $0F $CF

jr_001_63C0:
    ld a, [$DA9C]                                 ; $63C0: $FA $9C $DA
    or a                                          ; $63C3: $B7
    jr nz, jr_001_63FE                            ; $63C4: $20 $38

    ld hl, $C2D4                                  ; $63C6: $21 $D4 $C2
    ld de, $C2DA                                  ; $63C9: $11 $DA $C2
    ld b, $03                                     ; $63CC: $06 $03

jr_001_63CE:
    ld a, [hl+]                                   ; $63CE: $2A
    ld [de], a                                    ; $63CF: $12
    inc de                                        ; $63D0: $13
    dec b                                         ; $63D1: $05
    jr nz, jr_001_63CE                            ; $63D2: $20 $FA

    ld hl, $C2D4                                  ; $63D4: $21 $D4 $C2
    ld a, [hl]                                    ; $63D7: $7E
    swap a                                        ; $63D8: $CB $37
    and $0F                                       ; $63DA: $E6 $0F
    sla a                                         ; $63DC: $CB $27
    ld [$D143], a                                 ; $63DE: $EA $43 $D1
    ld a, [hl]                                    ; $63E1: $7E
    and $0F                                       ; $63E2: $E6 $0F
    sla a                                         ; $63E4: $CB $27
    ld [$D146], a                                 ; $63E6: $EA $46 $D1
    ld hl, $C2D5                                  ; $63E9: $21 $D5 $C2
    ld a, [hl]                                    ; $63EC: $7E
    swap a                                        ; $63ED: $CB $37
    and $0F                                       ; $63EF: $E6 $0F
    sla a                                         ; $63F1: $CB $27
    ld [$D14C], a                                 ; $63F3: $EA $4C $D1
    ld a, [hl]                                    ; $63F6: $7E
    and $0F                                       ; $63F7: $E6 $0F
    sla a                                         ; $63F9: $CB $27
    ld [$D14F], a                                 ; $63FB: $EA $4F $D1

jr_001_63FE:
    ret                                           ; $63FE: $C9


    nop                                           ; $63FF: $00
    ld bc, $2167                                  ; $6400: $01 $67 $21
    ld l, e                                       ; $6403: $6B
    sbc b                                         ; $6404: $98
    ld a, [$D942]                                 ; $6405: $FA $42 $D9
    ld b, a                                       ; $6408: $47
    ld a, [$D941]                                 ; $6409: $FA $41 $D9
    cp b                                          ; $640C: $B8
    jp z, Jump_001_6419                           ; $640D: $CA $19 $64

    ld [$D942], a                                 ; $6410: $EA $42 $D9
    call Call_001_6441                            ; $6413: $CD $41 $64
    jp Jump_001_6421                              ; $6416: $C3 $21 $64


Jump_001_6419:
    cp $02                                        ; $6419: $FE $02
    jp nc, Jump_001_6421                          ; $641B: $D2 $21 $64

    call Call_001_647D                            ; $641E: $CD $7D $64

Jump_001_6421:
    ld hl, $9865                                  ; $6421: $21 $65 $98
    ld a, [$DA42]                                 ; $6424: $FA $42 $DA
    ld b, a                                       ; $6427: $47
    ld a, [$DA41]                                 ; $6428: $FA $41 $DA
    cp b                                          ; $642B: $B8
    jp z, Jump_001_6438                           ; $642C: $CA $38 $64

    ld [$DA42], a                                 ; $642F: $EA $42 $DA
    call Call_001_6441                            ; $6432: $CD $41 $64
    jp Jump_001_6440                              ; $6435: $C3 $40 $64


Jump_001_6438:
    cp $02                                        ; $6438: $FE $02
    jp nc, Jump_001_6440                          ; $643A: $D2 $40 $64

    call Call_001_647D                            ; $643D: $CD $7D $64

Jump_001_6440:
    ret                                           ; $6440: $C9


Call_001_6441:
    cp $02                                        ; $6441: $FE $02
    jp c, Jump_001_647C                           ; $6443: $DA $7C $64

    push af                                       ; $6446: $F5
    swap a                                        ; $6447: $CB $37
    and $0F                                       ; $6449: $E6 $0F
    add $EE                                       ; $644B: $C6 $EE
    ld e, a                                       ; $644D: $5F
    di                                            ; $644E: $F3

jr_001_644F:
    ldh a, [rSTAT]                                ; $644F: $F0 $41
    bit 1, a                                      ; $6451: $CB $4F
    jr nz, jr_001_644F                            ; $6453: $20 $FA

    ld a, e                                       ; $6455: $7B
    ld [hl+], a                                   ; $6456: $22
    ei                                            ; $6457: $FB
    pop af                                        ; $6458: $F1
    and $0F                                       ; $6459: $E6 $0F
    add $EE                                       ; $645B: $C6 $EE
    ld e, a                                       ; $645D: $5F
    di                                            ; $645E: $F3

jr_001_645F:
    ldh a, [rSTAT]                                ; $645F: $F0 $41
    bit 1, a                                      ; $6461: $CB $4F
    jr nz, jr_001_645F                            ; $6463: $20 $FA

    ld a, e                                       ; $6465: $7B
    ld [hl+], a                                   ; $6466: $22
    ei                                            ; $6467: $FB
    ld de, $657A                                  ; $6468: $11 $7A $65
    ld b, $02                                     ; $646B: $06 $02

Jump_001_646D:
    di                                            ; $646D: $F3

jr_001_646E:
    ldh a, [rSTAT]                                ; $646E: $F0 $41
    bit 1, a                                      ; $6470: $CB $4F
    jr nz, jr_001_646E                            ; $6472: $20 $FA

    ld a, [de]                                    ; $6474: $1A
    ld [hl+], a                                   ; $6475: $22
    ei                                            ; $6476: $FB
    inc de                                        ; $6477: $13
    dec b                                         ; $6478: $05
    jp nz, Jump_001_646D                          ; $6479: $C2 $6D $64

Jump_001_647C:
    ret                                           ; $647C: $C9


Call_001_647D:
    ld a, $00                                     ; $647D: $3E $00
    ld b, $04                                     ; $647F: $06 $04

Jump_001_6481:
    push af                                       ; $6481: $F5
    di                                            ; $6482: $F3

jr_001_6483:
    ldh a, [rSTAT]                                ; $6483: $F0 $41
    bit 1, a                                      ; $6485: $CB $4F
    jr nz, jr_001_6483                            ; $6487: $20 $FA

    pop af                                        ; $6489: $F1
    ld [hl+], a                                   ; $648A: $22
    ei                                            ; $648B: $FB
    dec b                                         ; $648C: $05
    jp nz, Jump_001_6481                          ; $648D: $C2 $81 $64

    ret                                           ; $6490: $C9


Call_001_6491:
    call Call_001_649E                            ; $6491: $CD $9E $64
    call Call_001_651E                            ; $6494: $CD $1E $65
    call Call_001_64DE                            ; $6497: $CD $DE $64
    call Call_001_654C                            ; $649A: $CD $4C $65
    ret                                           ; $649D: $C9


Call_001_649E:
    ld d, $00                                     ; $649E: $16 $00
    ld a, [$D95B]                                 ; $64A0: $FA $5B $D9
    ld e, a                                       ; $64A3: $5F
    ld a, [$D954]                                 ; $64A4: $FA $54 $D9
    and $0F                                       ; $64A7: $E6 $0F
    ld hl, $D681                                  ; $64A9: $21 $81 $D6
    bit 3, [hl]                                   ; $64AC: $CB $5E
    jr z, jr_001_64BB                             ; $64AE: $28 $0B

    ld b, a                                       ; $64B0: $47
    and $03                                       ; $64B1: $E6 $03
    jr z, jr_001_64BA                             ; $64B3: $28 $05

    ld a, b                                       ; $64B5: $78
    xor $03                                       ; $64B6: $EE $03
    jr jr_001_64BB                                ; $64B8: $18 $01

jr_001_64BA:
    ld a, b                                       ; $64BA: $78

jr_001_64BB:
    ld hl, $D910                                  ; $64BB: $21 $10 $D9
    add hl, de                                    ; $64BE: $19
    cp [hl]                                       ; $64BF: $BE
    jr z, jr_001_64D7                             ; $64C0: $28 $15

    inc e                                         ; $64C2: $1C
    inc e                                         ; $64C3: $1C
    push af                                       ; $64C4: $F5
    ld a, e                                       ; $64C5: $7B
    and $0F                                       ; $64C6: $E6 $0F
    ld e, a                                       ; $64C8: $5F
    pop af                                        ; $64C9: $F1
    ld hl, $D910                                  ; $64CA: $21 $10 $D9
    add hl, de                                    ; $64CD: $19
    ld [hl], a                                    ; $64CE: $77
    inc hl                                        ; $64CF: $23
    ld [hl], $01                                  ; $64D0: $36 $01
    ld a, e                                       ; $64D2: $7B
    ld [$D95B], a                                 ; $64D3: $EA $5B $D9
    ret                                           ; $64D6: $C9


jr_001_64D7:
    inc hl                                        ; $64D7: $23
    ld a, [hl]                                    ; $64D8: $7E
    cp $FF                                        ; $64D9: $FE $FF
    ret z                                         ; $64DB: $C8

    inc [hl]                                      ; $64DC: $34
    ret                                           ; $64DD: $C9


Call_001_64DE:
    ld d, $00                                     ; $64DE: $16 $00
    ld a, [$DA5B]                                 ; $64E0: $FA $5B $DA
    ld e, a                                       ; $64E3: $5F
    ld a, [$DA54]                                 ; $64E4: $FA $54 $DA
    and $0F                                       ; $64E7: $E6 $0F
    ld hl, $D6C1                                  ; $64E9: $21 $C1 $D6
    bit 3, [hl]                                   ; $64EC: $CB $5E
    jr z, jr_001_64FB                             ; $64EE: $28 $0B

    ld b, a                                       ; $64F0: $47
    and $03                                       ; $64F1: $E6 $03
    jr z, jr_001_64FA                             ; $64F3: $28 $05

    ld a, b                                       ; $64F5: $78
    xor $03                                       ; $64F6: $EE $03
    jr jr_001_64FB                                ; $64F8: $18 $01

jr_001_64FA:
    ld a, b                                       ; $64FA: $78

jr_001_64FB:
    ld hl, $DA10                                  ; $64FB: $21 $10 $DA
    add hl, de                                    ; $64FE: $19
    cp [hl]                                       ; $64FF: $BE
    jr z, jr_001_6517                             ; $6500: $28 $15

    inc e                                         ; $6502: $1C
    inc e                                         ; $6503: $1C
    push af                                       ; $6504: $F5
    ld a, e                                       ; $6505: $7B
    and $0F                                       ; $6506: $E6 $0F
    ld e, a                                       ; $6508: $5F
    pop af                                        ; $6509: $F1
    ld hl, $DA10                                  ; $650A: $21 $10 $DA
    add hl, de                                    ; $650D: $19
    ld [hl], a                                    ; $650E: $77
    inc hl                                        ; $650F: $23
    ld [hl], $01                                  ; $6510: $36 $01
    ld a, e                                       ; $6512: $7B
    ld [$DA5B], a                                 ; $6513: $EA $5B $DA
    ret                                           ; $6516: $C9


jr_001_6517:
    inc hl                                        ; $6517: $23
    ld a, [hl]                                    ; $6518: $7E
    cp $FF                                        ; $6519: $FE $FF
    ret z                                         ; $651B: $C8

    inc [hl]                                      ; $651C: $34
    ret                                           ; $651D: $C9


Call_001_651E:
    ld d, $00                                     ; $651E: $16 $00
    ld a, [$D95C]                                 ; $6520: $FA $5C $D9
    ld e, a                                       ; $6523: $5F
    ld a, [$D954]                                 ; $6524: $FA $54 $D9
    and $30                                       ; $6527: $E6 $30
    ld hl, $D900                                  ; $6529: $21 $00 $D9
    add hl, de                                    ; $652C: $19
    cp [hl]                                       ; $652D: $BE
    jr z, jr_001_6545                             ; $652E: $28 $15

    inc e                                         ; $6530: $1C
    inc e                                         ; $6531: $1C
    push af                                       ; $6532: $F5
    ld a, e                                       ; $6533: $7B
    and $0F                                       ; $6534: $E6 $0F
    ld e, a                                       ; $6536: $5F
    pop af                                        ; $6537: $F1
    ld hl, $D900                                  ; $6538: $21 $00 $D9
    add hl, de                                    ; $653B: $19
    ld [hl], a                                    ; $653C: $77
    inc hl                                        ; $653D: $23
    ld [hl], $01                                  ; $653E: $36 $01
    ld a, e                                       ; $6540: $7B
    ld [$D95C], a                                 ; $6541: $EA $5C $D9
    ret                                           ; $6544: $C9


jr_001_6545:
    inc hl                                        ; $6545: $23
    ld a, [hl]                                    ; $6546: $7E
    cp $FF                                        ; $6547: $FE $FF
    ret z                                         ; $6549: $C8

    inc [hl]                                      ; $654A: $34
    ret                                           ; $654B: $C9


Call_001_654C:
    ld d, $00                                     ; $654C: $16 $00
    ld a, [$DA5C]                                 ; $654E: $FA $5C $DA
    ld e, a                                       ; $6551: $5F
    ld a, [$DA54]                                 ; $6552: $FA $54 $DA
    and $30                                       ; $6555: $E6 $30
    ld hl, $DA00                                  ; $6557: $21 $00 $DA
    add hl, de                                    ; $655A: $19
    cp [hl]                                       ; $655B: $BE
    jr z, jr_001_6573                             ; $655C: $28 $15

    inc e                                         ; $655E: $1C
    inc e                                         ; $655F: $1C
    push af                                       ; $6560: $F5
    ld a, e                                       ; $6561: $7B
    and $0F                                       ; $6562: $E6 $0F
    ld e, a                                       ; $6564: $5F
    pop af                                        ; $6565: $F1
    ld hl, $DA00                                  ; $6566: $21 $00 $DA
    add hl, de                                    ; $6569: $19
    ld [hl], a                                    ; $656A: $77
    inc hl                                        ; $656B: $23
    ld [hl], $01                                  ; $656C: $36 $01
    ld a, e                                       ; $656E: $7B
    ld [$DA5C], a                                 ; $656F: $EA $5C $DA
    ret                                           ; $6572: $C9


jr_001_6573:
    inc hl                                        ; $6573: $23
    ld a, [hl]                                    ; $6574: $7E
    cp $FF                                        ; $6575: $FE $FF
    ret z                                         ; $6577: $C8

    inc [hl]                                      ; $6578: $34
    ret                                           ; $6579: $C9


    db $DB                                        ; $657A: $DB
    call c, Call_001_40CE                         ; $657B: $DC $CE $40
    ld d, l                                       ; $657E: $55
    nop                                           ; $657F: $00
    nop                                           ; $6580: $00
    inc bc                                        ; $6581: $03
    ld [$100F], sp                                ; $6582: $08 $0F $10
    ld e, $10                                     ; $6585: $1E $10
    nop                                           ; $6587: $00
    inc a                                         ; $6588: $3C
    inc de                                        ; $6589: $13
    ld a, h                                       ; $658A: $7C
    inc hl                                        ; $658B: $23
    add b                                         ; $658C: $80
    ld a, a                                       ; $658D: $7F
    sbc [hl]                                      ; $658E: $9E
    ld l, a                                       ; $658F: $6F
    ld [de], a                                    ; $6590: $12
    cp h                                          ; $6591: $BC
    ld c, a                                       ; $6592: $4F
    ld hl, sp+$58                                 ; $6593: $F8 $58
    ld b, b                                       ; $6595: $40
    ccf                                           ; $6596: $3F
    ld e, b                                       ; $6597: $58
    rra                                           ; $6598: $1F
    cp d                                          ; $6599: $BA
    nop                                           ; $659A: $00
    rlca                                          ; $659B: $07
    nop                                           ; $659C: $00
    pop de                                        ; $659D: $D1
    inc b                                         ; $659E: $04
    rst RST_38                                    ; $659F: $FF
    add hl, bc                                    ; $65A0: $09
    db $FC                                        ; $65A1: $FC
    and h                                         ; $65A2: $A4
    ld l, b                                       ; $65A3: $68
    ldh a, [$FF90]                                ; $65A4: $F0 $90
    rst RST_30                                    ; $65A6: $F7
    inc e                                         ; $65A7: $1C
    ld [$F90E], sp                                ; $65A8: $08 $0E $F9
    daa                                           ; $65AB: $27
    ld a, $F3                                     ; $65AC: $3E $F3
    ld a, [hl+]                                   ; $65AE: $2A
    ei                                            ; $65AF: $FB
    dec a                                         ; $65B0: $3D
    jr @+$7A                                      ; $65B1: $18 $78

    jr c, jr_001_65EF                             ; $65B3: $38 $3A

    adc a                                         ; $65B5: $8F
    ld hl, sp-$57                                 ; $65B6: $F8 $A9
    ret                                           ; $65B8: $C9


    inc bc                                        ; $65B9: $03
    add b                                         ; $65BA: $80

jr_001_65BB:
    inc l                                         ; $65BB: $2C
    ldh [$FFF9], a                                ; $65BC: $E0 $F9
    ld [$1080], sp                                ; $65BE: $08 $80 $10
    add b                                         ; $65C1: $80
    jr jr_001_6634                                ; $65C2: $18 $70

    ret nz                                        ; $65C4: $C0

    add hl, hl                                    ; $65C5: $29
    ld l, l                                       ; $65C6: $6D
    ld a, $C9                                     ; $65C7: $3E $C9
    jr c, jr_001_65BB                             ; $65C9: $38 $F0

    add hl, sp                                    ; $65CB: $39
    adc $0C                                       ; $65CC: $CE $0C
    ld [$CE00], sp                                ; $65CE: $08 $00 $CE
    inc b                                         ; $65D1: $04
    rst RST_20                                    ; $65D2: $E7
    ld b, d                                       ; $65D3: $42

jr_001_65D4:
    halt                                          ; $65D4: $76
    inc hl                                        ; $65D5: $23
    ld a, e                                       ; $65D6: $7B
    ld sp, $3F01                                  ; $65D7: $31 $01 $3F
    add hl, de                                    ; $65DA: $19
    rst RST_30                                    ; $65DB: $F7
    dec e                                         ; $65DC: $1D
    ld a, [$786F]                                 ; $65DD: $FA $6F $78
    jr nc, jr_001_661B                            ; $65E0: $30 $39

jr_001_65E2:
    inc [hl]                                      ; $65E2: $34
    rra                                           ; $65E3: $1F
    or d                                          ; $65E4: $B2
    rlca                                          ; $65E5: $07
    nop                                           ; $65E6: $00
    add sp, $7F                                   ; $65E7: $E8 $7F
    rrca                                          ; $65E9: $0F
    ld d, l                                       ; $65EA: $55
    ldh [$FF08], a                                ; $65EB: $E0 $08
    ret nz                                        ; $65ED: $C0

    dec bc                                        ; $65EE: $0B

jr_001_65EF:
    rst RST_38                                    ; $65EF: $FF
    add hl, bc                                    ; $65F0: $09
    ld b, b                                       ; $65F1: $40
    ld a, [bc]                                    ; $65F2: $0A
    call Call_000_0EC0                            ; $65F3: $CD $C0 $0E
    rlca                                          ; $65F6: $07
    cp $0F                                        ; $65F7: $FE $0F
    add hl, bc                                    ; $65F9: $09
    inc bc                                        ; $65FA: $03
    dec bc                                        ; $65FB: $0B
    reti                                          ; $65FC: $D9


    adc b                                         ; $65FD: $88
    add hl, bc                                    ; $65FE: $09
    ld [bc], a                                    ; $65FF: $02
    ld a, [bc]                                    ; $6600: $0A
    rst RST_38                                    ; $6601: $FF
    add sp, $7F                                   ; $6602: $E8 $7F
    rrca                                          ; $6604: $0F
    rst RST_20                                    ; $6605: $E7
    rrca                                          ; $6606: $0F
    rrca                                          ; $6607: $0F
    dec c                                         ; $6608: $0D
    rlca                                          ; $6609: $07
    cp $0F                                        ; $660A: $FE $0F
    rrca                                          ; $660C: $0F
    rrca                                          ; $660D: $0F
    xor d                                         ; $660E: $AA
    dec c                                         ; $660F: $0D
    nop                                           ; $6610: $00
    inc b                                         ; $6611: $04
    adc h                                         ; $6612: $8C
    ld [$08CC], sp                                ; $6613: $08 $CC $08
    call c, Call_000_0801                         ; $6616: $DC $01 $08
    db $FC                                        ; $6619: $FC
    ld c, b                                       ; $661A: $48

jr_001_661B:
    db $EC                                        ; $661B: $EC
    ld e, b                                       ; $661C: $58
    db $ED                                        ; $661D: $ED
    ld a, b                                       ; $661E: $78
    add hl, bc                                    ; $661F: $09
    ld h, $EA                                     ; $6620: $26 $EA
    ld a, l                                       ; $6622: $7D
    add hl, bc                                    ; $6623: $09
    add sp, $7F                                   ; $6624: $E8 $7F
    dec c                                         ; $6626: $0D
    db $EB                                        ; $6627: $EB
    jr nz, jr_001_65D4                            ; $6628: $20 $AA

    ld [$0821], sp                                ; $662A: $08 $21 $08
    ld h, e                                       ; $662D: $63
    ld [$086B], sp                                ; $662E: $08 $6B $08
    xor a                                         ; $6631: $AF
    inc b                                         ; $6632: $04
    ld b, d                                       ; $6633: $42

jr_001_6634:
    and a                                         ; $6634: $A7
    ld c, d                                       ; $6635: $4A
    daa                                           ; $6636: $27
    adc $09                                       ; $6637: $CE $09
    rla                                           ; $6639: $17
    xor $9B                                       ; $663A: $EE $9B
    add hl, bc                                    ; $663C: $09
    rlca                                          ; $663D: $07
    cp $0D                                        ; $663E: $FE $0D
    and b                                         ; $6640: $A0
    rst RST_38                                    ; $6641: $FF
    rrca                                          ; $6642: $0F
    rrca                                          ; $6643: $0F
    ld [$0E0F], a                                 ; $6644: $EA $0F $0E
    ld [bc], a                                    ; $6647: $02
    inc h                                         ; $6648: $24
    ld a, [bc]                                    ; $6649: $0A
    ld h, [hl]                                    ; $664A: $66
    ld a, [bc]                                    ; $664B: $0A
    and l                                         ; $664C: $A5
    ld l, c                                       ; $664D: $69
    ld b, d                                       ; $664E: $42
    add hl, bc                                    ; $664F: $09
    ld c, b                                       ; $6650: $48
    jp $1809                                      ; $6651: $C3 $09 $18


    rst RST_20                                    ; $6654: $E7
    add hl, bc                                    ; $6655: $09
    xor b                                         ; $6656: $A8
    rst RST_38                                    ; $6657: $FF
    rlca                                          ; $6658: $07
    db $10                                        ; $6659: $10
    jr c, jr_001_666C                             ; $665A: $38 $10

    ldh a, [$FF3F]                                ; $665C: $F0 $3F
    ret nz                                        ; $665E: $C0

    xor d                                         ; $665F: $AA
    jr c, jr_001_65E2                             ; $6660: $38 $80

    ld [$28E0], sp                                ; $6662: $08 $E0 $28
    ld a, b                                       ; $6665: $78
    ld [$40FD], sp                                ; $6666: $08 $FD $40
    ld h, a                                       ; $6669: $67
    jr nc, jr_001_66D2                            ; $666A: $30 $66

jr_001_666C:
    cp $CD                                        ; $666C: $FE $CD
    cp h                                          ; $666E: $BC
    res 7, b                                      ; $666F: $CB $B8
    ld d, e                                       ; $6671: $53
    rst RST_10                                    ; $6672: $D7
    ld [$08CF], sp                                ; $6673: $08 $CF $08
    rst RST_28                                    ; $6676: $EF
    db $10                                        ; $6677: $10
    ld a, [$AA08]                                 ; $6678: $FA $08 $AA
    inc b                                         ; $667B: $04

jr_001_667C:
    inc bc                                        ; $667C: $03
    ld [$1007], sp                                ; $667D: $08 $07 $10
    rrca                                          ; $6680: $0F
    db $10                                        ; $6681: $10
    rra                                           ; $6682: $1F
    inc b                                         ; $6683: $04
    inc c                                         ; $6684: $0C
    ld a, $18                                     ; $6685: $3E $18
    ld l, [hl]                                    ; $6687: $6E
    inc a                                         ; $6688: $3C
    ldh a, [$FF78]                                ; $6689: $F0 $78
    adc a                                         ; $668B: $8F
    ld e, b                                       ; $668C: $58
    ld hl, sp+$08                                 ; $668D: $F8 $08

jr_001_668F:
    ld a, [$0868]                                 ; $668F: $FA $68 $08
    dec b                                         ; $6692: $05
    cp $41                                        ; $6693: $FE $41
    xor a                                         ; $6695: $AF
    add sp, -$40                                  ; $6696: $E8 $C0
    ld [$C801], sp                                ; $6698: $08 $01 $C8
    add hl, bc                                    ; $669B: $09
    ret nc                                        ; $669C: $D0

    db $10                                        ; $669D: $10
    cp c                                          ; $669E: $B9
    add hl, bc                                    ; $669F: $09
    ld b, $10                                     ; $66A0: $06 $10
    add hl, bc                                    ; $66A2: $09
    ldh a, [rTAC]                                 ; $66A3: $F0 $07
    dec c                                         ; $66A5: $0D
    ld [$1940], sp                                ; $66A6: $08 $40 $19
    ret nz                                        ; $66A9: $C0

    dec de                                        ; $66AA: $1B
    ld c, $36                                     ; $66AB: $0E $36
    inc e                                         ; $66AD: $1C
    inc a                                         ; $66AE: $3C
    jr jr_001_66CA                                ; $66AF: $18 $19

    jr c, jr_001_66C3                             ; $66B1: $38 $10

    jr nc, @-$46                                  ; $66B3: $30 $B8

    inc b                                         ; $66B5: $04
    rst RST_38                                    ; $66B6: $FF
    ld [bc], a                                    ; $66B7: $02
    ld [$8648], sp                                ; $66B8: $08 $48 $86
    ld a, [bc]                                    ; $66BB: $0A
    adc [hl]                                      ; $66BC: $8E
    ei                                            ; $66BD: $FB
    dec bc                                        ; $66BE: $0B
    adc a                                         ; $66BF: $8F
    ld sp, hl                                     ; $66C0: $F9
    db $DB                                        ; $66C1: $DB
    ld l, d                                       ; $66C2: $6A

jr_001_66C3:
    ld [hl], l                                    ; $66C3: $75
    add hl, bc                                    ; $66C4: $09
    jr nc, jr_001_667C                            ; $66C5: $30 $B5

    jr nc, @-$48                                  ; $66C7: $30 $B6

    add hl, bc                                    ; $66C9: $09

jr_001_66CA:
    cp c                                          ; $66CA: $B9
    inc bc                                        ; $66CB: $03
    sub $B8                                       ; $66CC: $D6 $B8
    rst RST_10                                    ; $66CE: $D7
    sbc b                                         ; $66CF: $98
    rst RST_20                                    ; $66D0: $E7
    ret nz                                        ; $66D1: $C0

jr_001_66D2:
    ret z                                         ; $66D2: $C8

    ld [$7F53], sp                                ; $66D3: $08 $53 $7F
    add hl, bc                                    ; $66D6: $09
    pop bc                                        ; $66D7: $C1
    ld a, [bc]                                    ; $66D8: $0A
    bit 7, [hl]                                   ; $66D9: $CB $7E
    ret z                                         ; $66DB: $C8

    ld [$C8A4], sp                                ; $66DC: $08 $A4 $C8
    ld l, [hl]                                    ; $66DF: $6E
    add hl, bc                                    ; $66E0: $09
    cp $4D                                        ; $66E1: $FE $4D
    add hl, bc                                    ; $66E3: $09
    sbc $0D                                       ; $66E4: $DE $0D
    ld [de], a                                    ; $66E6: $12
    adc $05                                       ; $66E7: $CE $05
    adc [hl]                                      ; $66E9: $8E
    add hl, bc                                    ; $66EA: $09
    ld bc, $080E                                  ; $66EB: $01 $0E $08
    nop                                           ; $66EE: $00
    ret nc                                        ; $66EF: $D0

    ld [bc], a                                    ; $66F0: $02
    ld hl, $1006                                  ; $66F1: $21 $06 $10
    add hl, de                                    ; $66F4: $19
    rlca                                          ; $66F5: $07
    daa                                           ; $66F6: $27
    rra                                           ; $66F7: $1F
    ld [$3E4F], sp                                ; $66F8: $08 $4F $3E
    sbc [hl]                                      ; $66FB: $9E
    ld a, h                                       ; $66FC: $7C
    dec bc                                        ; $66FD: $0B
    adc a                                         ; $66FE: $8F
    ld a, [hl]                                    ; $66FF: $7E
    ld b, a                                       ; $6700: $47
    ld l, $3F                                     ; $6701: $2E $3F
    inc hl                                        ; $6703: $23
    ld l, b                                       ; $6704: $68
    jr jr_001_668F                                ; $6705: $18 $88

    xor c                                         ; $6707: $A9
    ret                                           ; $6708: $C9


    db $FC                                        ; $6709: $FC
    sub a                                         ; $670A: $97
    ld [$F804], sp                                ; $670B: $08 $04 $F8
    nop                                           ; $670E: $00
    ret nz                                        ; $670F: $C0

    nop                                           ; $6710: $00
    jr z, @+$09                                   ; $6711: $28 $07

    cp d                                          ; $6713: $BA
    ld bc, $0880                                  ; $6714: $01 $80 $08
    ld l, b                                       ; $6717: $68
    db $10                                        ; $6718: $10
    ldh a, [rNR10]                                ; $6719: $F0 $10
    ld a, $AA                                     ; $671B: $3E $AA
    db $10                                        ; $671D: $10
    pop bc                                        ; $671E: $C1
    db $10                                        ; $671F: $10
    ccf                                           ; $6720: $3F
    ld l, d                                       ; $6721: $6A
    ld bc, $1F08                                  ; $6722: $01 $08 $1F
    db $EB                                        ; $6725: $EB
    ld [$0939], sp                                ; $6726: $08 $39 $09
    ld a, a                                       ; $6729: $7F
    ld a, [bc]                                    ; $672A: $0A
    rst RST_38                                    ; $672B: $FF
    ld c, $49                                     ; $672C: $0E $49

jr_001_672E:
    db $ED                                        ; $672E: $ED
    adc e                                         ; $672F: $8B
    add hl, bc                                    ; $6730: $09
    ret                                           ; $6731: $C9


    rrca                                          ; $6732: $0F
    ld [$0601], sp                                ; $6733: $08 $01 $06
    ld [$0455], sp                                ; $6736: $08 $55 $04
    ld [$0820], sp                                ; $6739: $08 $20 $08
    ld h, [hl]                                    ; $673C: $66
    ld [$2A63], sp                                ; $673D: $08 $63 $2A
    ld d, a                                       ; $6740: $57
    sub e                                         ; $6741: $93
    ld [$08C0], sp                                ; $6742: $08 $C0 $08
    ld [hl], b                                    ; $6745: $70
    jp z, $59B9                                   ; $6746: $CA $B9 $59

    ld l, d                                       ; $6749: $6A
    inc a                                         ; $674A: $3C
    ld a, [$60D9]                                 ; $674B: $FA $D9 $60
    ld [$0818], sp                                ; $674E: $08 $18 $08
    ld [$08B5], sp                                ; $6751: $08 $B5 $08
    inc b                                         ; $6754: $04
    ld [$0203], sp                                ; $6755: $08 $03 $02
    ld [$0884], sp                                ; $6758: $08 $84 $08
    ld e, e                                       ; $675B: $5B
    inc c                                         ; $675C: $0C
    ld a, d                                       ; $675D: $7A
    ld bc, $016E                                  ; $675E: $01 $6E $01
    jr nz, @+$4E                                  ; $6761: $20 $4C

    rlca                                          ; $6763: $07
    rst RST_10                                    ; $6764: $D7
    ld l, b                                       ; $6765: $68
    nop                                           ; $6766: $00
    ld h, b                                       ; $6767: $60
    nop                                           ; $6768: $00
    ld b, b                                       ; $6769: $40
    nop                                           ; $676A: $00
    jr nc, jr_001_6785                            ; $676B: $30 $18

    push de                                       ; $676D: $D5
    ld b, c                                       ; $676E: $41
    ret c                                         ; $676F: $D8

    ld b, e                                       ; $6770: $43
    db $F4                                        ; $6771: $F4
    inc b                                         ; $6772: $04
    ld [$0809], sp                                ; $6773: $08 $09 $08
    rst RST_20                                    ; $6776: $E7
    add c                                         ; $6777: $81
    adc c                                         ; $6778: $89
    ld [$1210], sp                                ; $6779: $08 $10 $12
    ld [hl], b                                    ; $677C: $70
    ld [$DA60], sp                                ; $677D: $08 $60 $DA
    nop                                           ; $6780: $00
    or b                                          ; $6781: $B0
    dec [hl]                                      ; $6782: $35
    jr z, jr_001_672E                             ; $6783: $28 $A9

jr_001_6785:
    dec b                                         ; $6785: $05
    jr nc, jr_001_6795                            ; $6786: $30 $0D

    ld [$07CA], a                                 ; $6788: $EA $CA $07
    ld [bc], a                                    ; $678B: $02
    inc c                                         ; $678C: $0C
    nop                                           ; $678D: $00

jr_001_678E:
    ld [$0308], sp                                ; $678E: $08 $08 $03
    and b                                         ; $6791: $A0
    jr z, jr_001_679B                             ; $6792: $28 $07

    db $10                                        ; $6794: $10

jr_001_6795:
    ld c, h                                       ; $6795: $4C
    rst RST_00                                    ; $6796: $C7
    sbc h                                         ; $6797: $9C
    adc e                                         ; $6798: $8B
    ld a, $00                                     ; $6799: $3E $00

jr_001_679B:
    rla                                           ; $679B: $17

jr_001_679C:
    inc a                                         ; $679C: $3C
    rra                                           ; $679D: $1F
    ld a, [hl]                                    ; $679E: $7E
    ccf                                           ; $679F: $3F
    db $F4                                        ; $67A0: $F4
    ld e, a                                       ; $67A1: $5F
    ld [hl], b                                    ; $67A2: $70
    and l                                         ; $67A3: $A5
    jr jr_001_678E                                ; $67A4: $18 $E8

    add hl, de                                    ; $67A6: $19
    cpl                                           ; $67A7: $2F
    ld e, h                                       ; $67A8: $5C
    jr z, @+$3D                                   ; $67A9: $28 $3B

    ld l, b                                       ; $67AB: $68
    sbc $88                                       ; $67AC: $DE $88
    ld [$2A76], sp                                ; $67AE: $08 $76 $2A
    db $10                                        ; $67B1: $10
    ld [$0F00], sp                                ; $67B2: $08 $00 $0F
    ei                                            ; $67B5: $FB
    ld [hl], b                                    ; $67B6: $70
    db $10                                        ; $67B7: $10
    ldh [rNR23], a                                ; $67B8: $E0 $18
    nop                                           ; $67BA: $00
    rlca                                          ; $67BB: $07
    add hl, bc                                    ; $67BC: $09
    nop                                           ; $67BD: $00
    ld a, [hl-]                                   ; $67BE: $3A
    inc bc                                        ; $67BF: $03
    dec bc                                        ; $67C0: $0B
    ld a, [de]                                    ; $67C1: $1A
    add hl, bc                                    ; $67C2: $09
    nop                                           ; $67C3: $00
    ld bc, $0209                                  ; $67C4: $01 $09 $02
    sub a                                         ; $67C7: $97
    ld [$1824], sp                                ; $67C8: $08 $24 $18
    add hl, bc                                    ; $67CB: $09
    inc a                                         ; $67CC: $3C
    inc c                                         ; $67CD: $0C
    ld c, e                                       ; $67CE: $4B
    dec c                                         ; $67CF: $0D
    call c, Call_000_0B7F                         ; $67D0: $DC $7F $0B
    nop                                           ; $67D3: $00
    rlca                                          ; $67D4: $07
    rlca                                          ; $67D5: $07
    inc b                                         ; $67D6: $04
    add hl, bc                                    ; $67D7: $09
    ld [$19A9], sp                                ; $67D8: $08 $A9 $19
    inc hl                                        ; $67DB: $23
    ld [$105E], sp                                ; $67DC: $08 $5E $10
    jr nz, jr_001_6800                            ; $67DF: $20 $1F

    adc a                                         ; $67E1: $8F
    call nc, $0107                                ; $67E2: $D4 $07 $01
    ldh a, [$FF08]                                ; $67E5: $F0 $08
    sbc [hl]                                      ; $67E7: $9E
    db $10                                        ; $67E8: $10
    pop af                                        ; $67E9: $F1
    ld c, $1E                                     ; $67EA: $0E $1E
    add b                                         ; $67EC: $80
    rst RST_38                                    ; $67ED: $FF
    ld a, $08                                     ; $67EE: $3E $08
    ld bc, $0840                                  ; $67F0: $01 $40 $08
    inc c                                         ; $67F3: $0C
    ret nz                                        ; $67F4: $C0

    ld l, b                                       ; $67F5: $68
    ld d, b                                       ; $67F6: $50
    inc b                                         ; $67F7: $04
    ccf                                           ; $67F8: $3F
    ld [bc], a                                    ; $67F9: $02
    rst RST_00                                    ; $67FA: $C7
    ld a, [hl-]                                   ; $67FB: $3A
    ld a, e                                       ; $67FC: $7B
    xor a                                         ; $67FD: $AF
    ld c, b                                       ; $67FE: $48
    rra                                           ; $67FF: $1F

jr_001_6800:
    ld [$8A6F], sp                                ; $6800: $08 $6F $8A
    ld bc, $0878                                  ; $6803: $01 $78 $08
    ld b, c                                       ; $6806: $41
    ld e, $08                                     ; $6807: $1E $08
    ld a, h                                       ; $6809: $7C
    rst RST_28                                    ; $680A: $EF
    ld hl, sp-$61                                 ; $680B: $F8 $9F
    ldh [$FF80], a                                ; $680D: $E0 $80
    ld d, h                                       ; $680F: $54
    add $C0                                       ; $6810: $C6 $C0
    call z, $4308                                 ; $6812: $CC $08 $43
    ld [$7F87], sp                                ; $6815: $08 $87 $7F
    ld l, d                                       ; $6818: $6A
    ld c, a                                       ; $6819: $4F
    jr jr_001_679C                                ; $681A: $18 $80

    ld e, h                                       ; $681C: $5C
    add b                                         ; $681D: $80
    ld e, b                                       ; $681E: $58
    jr @+$72                                      ; $681F: $18 $70

    nop                                           ; $6821: $00
    ld a, [hl]                                    ; $6822: $7E
    ld hl, $83F4                                  ; $6823: $21 $F4 $83
    jr z, @+$09                                   ; $6826: $28 $07

    ld de, $020F                                  ; $6828: $11 $0F $02
    dec d                                         ; $682B: $15
    dec bc                                        ; $682C: $0B
    add hl, hl                                    ; $682D: $29
    ld d, $17                                     ; $682E: $16 $17
    ld a, [bc]                                    ; $6830: $0A
    nop                                           ; $6831: $00

jr_001_6832:
    nop                                           ; $6832: $00
    dec [hl]                                      ; $6833: $35
    ld bc, $0802                                  ; $6834: $01 $02 $08
    jr jr_001_6832                                ; $6837: $18 $F9

    or b                                          ; $6839: $B0
    rst RST_00                                    ; $683A: $C7
    ld hl, sp+$55                                 ; $683B: $F8 $55
    adc a                                         ; $683D: $8F
    jr @-$60                                      ; $683E: $18 $9E

    jr jr_001_687E                                ; $6840: $18 $3C

    jr jr_001_687D                                ; $6842: $18 $39

    ld [$7900], sp                                ; $6844: $08 $00 $79
    rst RST_30                                    ; $6847: $F7
    di                                            ; $6848: $F3
    adc $EF                                       ; $6849: $CE $EF
    sbc h                                         ; $684B: $9C
    rst RST_18                                    ; $684C: $DF
    jr c, @+$04                                   ; $684D: $38 $02

    ld e, h                                       ; $684F: $5C
    jr nc, jr_001_68C3                            ; $6850: $30 $71

    jr nz, @-$1D                                  ; $6852: $20 $E1

    ld b, b                                       ; $6854: $40
    db $10                                        ; $6855: $10
    ret nz                                        ; $6856: $C0

    ld a, l                                       ; $6857: $7D
    ldh [$FF08], a                                ; $6858: $E0 $08
    nop                                           ; $685A: $00
    ld hl, sp+$70                                 ; $685B: $F8 $70
    ret z                                         ; $685D: $C8

    cp h                                          ; $685E: $BC
    ld [$7E02], sp                                ; $685F: $08 $02 $7E
    cp a                                          ; $6862: $BF
    cp $2F                                        ; $6863: $FE $2F
    ccf                                           ; $6865: $3F
    rrca                                          ; $6866: $0F
    nop                                           ; $6867: $00
    rlca                                          ; $6868: $07
    jp z, $0009                                   ; $6869: $CA $09 $00

    inc bc                                        ; $686C: $03
    dec b                                         ; $686D: $05
    ld [$0A04], sp                                ; $686E: $08 $04 $0A
    ld b, $E0                                     ; $6871: $06 $E0
    ld a, [bc]                                    ; $6873: $0A
    ld e, c                                       ; $6874: $59
    dec bc                                        ; $6875: $0B
    ld [bc], a                                    ; $6876: $02
    ld [de], a                                    ; $6877: $12
    jr nc, @+$38                                  ; $6878: $30 $36

    jr jr_001_687D                                ; $687A: $18 $01

    inc a                                         ; $687C: $3C

jr_001_687D:
    inc c                                         ; $687D: $0C

jr_001_687E:
    ld e, a                                       ; $687E: $5F

jr_001_687F:
    inc e                                         ; $687F: $1C
    ld e, [hl]                                    ; $6880: $5E
    ld c, b                                       ; $6881: $48
    ld a, a                                       ; $6882: $7F
    ld c, b                                       ; $6883: $48
    ld e, c                                       ; $6884: $59
    dec [hl]                                      ; $6885: $35
    ld l, b                                       ; $6886: $68
    and e                                         ; $6887: $A3
    ld hl, sp-$70                                 ; $6888: $F8 $90
    dec bc                                        ; $688A: $0B
    rrca                                          ; $688B: $0F
    and b                                         ; $688C: $A0
    db $D3                                        ; $688D: $D3
    db $10                                        ; $688E: $10
    ld [$4817], sp                                ; $688F: $08 $17 $48
    ld a, [bc]                                    ; $6892: $0A
    nop                                           ; $6893: $00
    ld bc, $B620                                  ; $6894: $01 $20 $B6
    ld de, $B040                                  ; $6897: $11 $40 $B0
    ret c                                         ; $689A: $D8

    ld l, h                                       ; $689B: $6C
    ld sp, hl                                     ; $689C: $F9
    ret z                                         ; $689D: $C8

    ld a, [$380A]                                 ; $689E: $FA $0A $38
    ld a, d                                       ; $68A1: $7A
    ld [de], a                                    ; $68A2: $12
    cp $48                                        ; $68A3: $FE $48
    xor h                                         ; $68A5: $AC
    ld l, b                                       ; $68A6: $68
    push bc                                       ; $68A7: $C5
    ld b, $A0                                     ; $68A8: $06 $A0
    ldh [$FFD0], a                                ; $68AA: $E0 $D0
    ldh a, [$FFC0]                                ; $68AC: $F0 $C0
    db $10                                        ; $68AE: $10
    ld [$BDE8], sp                                ; $68AF: $08 $E8 $BD
    ld c, b                                       ; $68B2: $48
    ld d, b                                       ; $68B3: $50
    ld a, [$1A20]                                 ; $68B4: $FA $20 $1A
    ld [bc], a                                    ; $68B7: $02
    rlca                                          ; $68B8: $07
    ld [$1F52], sp                                ; $68B9: $08 $52 $1F
    db $10                                        ; $68BC: $10
    inc a                                         ; $68BD: $3C
    db $10                                        ; $68BE: $10
    ld [hl], b                                    ; $68BF: $70
    ccf                                           ; $68C0: $3F
    ret nc                                        ; $68C1: $D0

    ld a, a                                       ; $68C2: $7F

jr_001_68C3:
    rst RST_38                                    ; $68C3: $FF
    cp b                                          ; $68C4: $B8
    ld a, [bc]                                    ; $68C5: $0A
    add hl, hl                                    ; $68C6: $29
    ld c, c                                       ; $68C7: $49
    ld l, c                                       ; $68C8: $69
    adc c                                         ; $68C9: $89
    xor c                                         ; $68CA: $A9
    rlca                                          ; $68CB: $07
    ld l, a                                       ; $68CC: $6F
    rst RST_38                                    ; $68CD: $FF
    add hl, bc                                    ; $68CE: $09
    nop                                           ; $68CF: $00
    add c                                         ; $68D0: $81
    ld [hl+], a                                   ; $68D1: $22
    rrca                                          ; $68D2: $0F
    add hl, bc                                    ; $68D3: $09
    ld l, c                                       ; $68D4: $69
    ld [$F702], a                                 ; $68D5: $EA $02 $F7
    ld [bc], a                                    ; $68D8: $02
    inc bc                                        ; $68D9: $03
    ld [$100F], sp                                ; $68DA: $08 $0F $10
    ld e, $2F                                     ; $68DD: $1E $2F
    rlca                                          ; $68DF: $07
    inc a                                         ; $68E0: $3C
    jr nz, jr_001_691B                            ; $68E1: $20 $38

    ld a, [bc]                                    ; $68E3: $0A
    add hl, hl                                    ; $68E4: $29
    ld c, c                                       ; $68E5: $49
    ld l, c                                       ; $68E6: $69
    ld [$0789], a                                 ; $68E7: $EA $89 $07
    db $EB                                        ; $68EA: $EB
    ld c, $10                                     ; $68EB: $0E $10
    jr jr_001_687F                                ; $68ED: $18 $90

    jr nc, jr_001_6903                            ; $68EF: $30 $12

    rra                                           ; $68F1: $1F
    ld h, b                                       ; $68F2: $60
    ccf                                           ; $68F3: $3F
    add hl, bc                                    ; $68F4: $09
    ret nz                                        ; $68F5: $C0

    ld a, a                                       ; $68F6: $7F
    dec bc                                        ; $68F7: $0B
    ldh [$FFB7], a                                ; $68F8: $E0 $B7
    ld [$08F1], sp                                ; $68FA: $08 $F1 $08
    nop                                           ; $68FD: $00
    ld a, $00                                     ; $68FE: $3E $00
    cp $01                                        ; $6900: $FE $01
    ld b, d                                       ; $6902: $42

jr_001_6903:
    db $FC                                        ; $6903: $FC
    add hl, bc                                    ; $6904: $09
    ldh a, [rNR32]                                ; $6905: $F0 $1C
    ld hl, sp+$0C                                 ; $6907: $F8 $0C
    inc c                                         ; $6909: $0C
    ld [$48A2], sp                                ; $690A: $08 $A2 $48
    jr jr_001_6917                                ; $690D: $18 $08

    db $10                                        ; $690F: $10
    ldh [$FF30], a                                ; $6910: $E0 $30
    ld [$5A60], sp                                ; $6912: $08 $60 $5A
    ret nz                                        ; $6915: $C0

    nop                                           ; $6916: $00

jr_001_6917:
    add b                                         ; $6917: $80
    nop                                           ; $6918: $00
    db $EC                                        ; $6919: $EC
    inc bc                                        ; $691A: $03

jr_001_691B:
    ld [$E10F], sp                                ; $691B: $08 $0F $E1
    db $10                                        ; $691E: $10
    add sp, $10                                   ; $691F: $E8 $10
    jr c, jr_001_6942                             ; $6921: $38 $1F

    ld [hl], b                                    ; $6923: $70
    ccf                                           ; $6924: $3F
    add hl, bc                                    ; $6925: $09
    xor e                                         ; $6926: $AB
    or b                                          ; $6927: $B0
    ld a, a                                       ; $6928: $7F
    dec c                                         ; $6929: $0D
    ldh a, [$FF08]                                ; $692A: $F0 $08
    rst RST_38                                    ; $692C: $FF
    ld e, b                                       ; $692D: $58
    db $10                                        ; $692E: $10
    add sp, -$78                                  ; $692F: $E8 $88
    db $10                                        ; $6931: $10
    db $FC                                        ; $6932: $FC
    ld a, [hl]                                    ; $6933: $7E
    ld [$78FE], sp                                ; $6934: $08 $FE $78
    ld b, $4A                                     ; $6937: $06 $4A
    db $FC                                        ; $6939: $FC
    dec c                                         ; $693A: $0D
    inc c                                         ; $693B: $0C
    ld hl, sp+$09                                 ; $693C: $F8 $09
    inc e                                         ; $693E: $1C
    ld [$9D18], sp                                ; $693F: $08 $18 $9D

jr_001_6942:
    ldh a, [$FF30]                                ; $6942: $F0 $30
    ldh [rNR10], a                                ; $6944: $E0 $10
    ld [$C000], sp                                ; $6946: $08 $00 $C0
    nop                                           ; $6949: $00
    push de                                       ; $694A: $D5
    db $FC                                        ; $694B: $FC
    dec b                                         ; $694C: $05
    ld bc, $0708                                  ; $694D: $01 $08 $07

jr_001_6950:
    ld [$080F], sp                                ; $6950: $08 $0F $08
    rlca                                          ; $6953: $07
    add hl, bc                                    ; $6954: $09
    ld b, $1B                                     ; $6955: $06 $1B
    inc b                                         ; $6957: $04
    rra                                           ; $6958: $1F
    jr z, jr_001_6964                             ; $6959: $28 $09

    ld c, c                                       ; $695B: $49
    push af                                       ; $695C: $F5
    add hl, bc                                    ; $695D: $09
    ld a, c                                       ; $695E: $79
    sbc c                                         ; $695F: $99
    ld bc, $0840                                  ; $6960: $01 $40 $08
    and b                                         ; $6963: $A0

jr_001_6964:
    db $10                                        ; $6964: $10
    jp z, Jump_000_000B                           ; $6965: $CA $0B $00

    add b                                         ; $6968: $80
    ldh [rOBP0], a                                ; $6969: $E0 $48
    ldh a, [$FF0A]                                ; $696B: $F0 $0A
    ld hl, sp-$05                                 ; $696D: $F8 $FB
    inc c                                         ; $696F: $0C
    ld c, e                                       ; $6970: $4B
    ld a, c                                       ; $6971: $79
    sub b                                         ; $6972: $90
    ld [$0A01], sp                                ; $6973: $08 $01 $0A
    rlca                                          ; $6976: $07
    and b                                         ; $6977: $A0
    rlca                                          ; $6978: $07
    ld [hl], b                                    ; $6979: $70
    ld [$103E], sp                                ; $697A: $08 $3E $10
    rra                                           ; $697D: $1F
    ld c, $0D                                     ; $697E: $0E $0D
    ld a, [de]                                    ; $6980: $1A
    rlca                                          ; $6981: $07
    ld b, $03                                     ; $6982: $06 $03
    nop                                           ; $6984: $00
    ldh [$FF80], a                                ; $6985: $E0 $80
    ld e, b                                       ; $6987: $58
    ret nz                                        ; $6988: $C0

    add b                                         ; $6989: $80
    db $10                                        ; $698A: $10
    ldh [rLCDC], a                                ; $698B: $E0 $40
    ldh a, [$FF60]                                ; $698D: $F0 $60
    ld a, b                                       ; $698F: $78
    jr nc, jr_001_69FE                            ; $6990: $30 $6C

    nop                                           ; $6992: $00
    jr c, @+$38                                   ; $6993: $38 $36

jr_001_6995:
    inc e                                         ; $6995: $1C
    inc sp                                        ; $6996: $33
    ld e, $19                                     ; $6997: $1E $19
    rrca                                          ; $6999: $0F
    jr jr_001_6950                                ; $699A: $18 $B4

    ld [$C80C], sp                                ; $699C: $08 $0C $C8
    add hl, bc                                    ; $699F: $09
    add $D0                                       ; $69A0: $C6 $D0
    cp $C3                                        ; $69A2: $FE $C3
    ld l, $3F                                     ; $69A4: $2E $3F
    di                                            ; $69A6: $F3
    ld d, b                                       ; $69A7: $50
    rst RST_38                                    ; $69A8: $FF
    ldh a, [rTAC]                                 ; $69A9: $F0 $07
    ld b, $80                                     ; $69AB: $06 $80
    xor b                                         ; $69AD: $A8
    ld [$10C0], sp                                ; $69AE: $08 $C0 $10
    ld h, b                                       ; $69B1: $60
    db $10                                        ; $69B2: $10
    jr nc, jr_001_6995                            ; $69B3: $30 $E0

    jr jr_001_69B7                                ; $69B5: $18 $00

jr_001_69B7:
    ldh a, [$FF0C]                                ; $69B7: $F0 $0C
    ld hl, sp+$06                                 ; $69B9: $F8 $06
    db $FC                                        ; $69BB: $FC
    inc bc                                        ; $69BC: $03
    cp $3F                                        ; $69BD: $FE $3F
    sub a                                         ; $69BF: $97
    ld a, b                                       ; $69C0: $78
    rra                                           ; $69C1: $1F
    rlca                                          ; $69C2: $07
    nop                                           ; $69C3: $00
    ld bc, $F700                                  ; $69C4: $01 $00 $F7
    ld b, $D7                                     ; $69C7: $06 $D7
    cp b                                          ; $69C9: $B8
    ld [$100F], sp                                ; $69CA: $08 $0F $10
    ld a, $10                                     ; $69CD: $3E $10
    ld c, e                                       ; $69CF: $4B
    bit 5, b                                      ; $69D0: $CB $68
    rst RST_38                                    ; $69D2: $FF
    add hl, bc                                    ; $69D3: $09
    nop                                           ; $69D4: $00
    add b                                         ; $69D5: $80
    ld [$7FE0], sp                                ; $69D6: $08 $E0 $7F
    ld a, b                                       ; $69D9: $78
    inc e                                         ; $69DA: $1C
    rra                                           ; $69DB: $1F
    ld e, $07                                     ; $69DC: $1E $07
    nop                                           ; $69DE: $00
    add b                                         ; $69DF: $80
    db $DD                                        ; $69E0: $DD
    ld hl, sp+$3F                                 ; $69E1: $F8 $3F
    db $EB                                        ; $69E3: $EB
    ld a, b                                       ; $69E4: $78

jr_001_69E5:
    sbc d                                         ; $69E5: $9A
    pop bc                                        ; $69E6: $C1
    add e                                         ; $69E7: $83
    ld [$B8C0], sp                                ; $69E8: $08 $C0 $B8
    ld c, b                                       ; $69EB: $48
    cp [hl]                                       ; $69EC: $BE
    ld e, b                                       ; $69ED: $58
    ldh a, [rWY]                                  ; $69EE: $F0 $4A
    dec c                                         ; $69F0: $0D
    sbc c                                         ; $69F1: $99
    cp l                                          ; $69F2: $BD
    rrca                                          ; $69F3: $0F
    add c                                         ; $69F4: $81
    cp a                                          ; $69F5: $BF
    ld l, d                                       ; $69F6: $6A

jr_001_69F7:
    ld b, b                                       ; $69F7: $40
    ld l, a                                       ; $69F8: $6F
    rrca                                          ; $69F9: $0F
    rrca                                          ; $69FA: $0F
    ld a, [bc]                                    ; $69FB: $0A
    add sp, $10                                   ; $69FC: $E8 $10

jr_001_69FE:
    ld d, b                                       ; $69FE: $50
    ret nz                                        ; $69FF: $C0

    db $10                                        ; $6A00: $10
    ld h, b                                       ; $6A01: $60
    db $10                                        ; $6A02: $10
    jr nc, jr_001_69E5                            ; $6A03: $30 $E0

    jr jr_001_69F7                                ; $6A05: $18 $F0

    ld bc, $F80C                                  ; $6A07: $01 $0C $F8
    ld b, $FC                                     ; $6A0A: $06 $FC
    inc bc                                        ; $6A0C: $03
    cp $01                                        ; $6A0D: $FE $01
    rst RST_08                                    ; $6A0F: $CF
    rst RST_38                                    ; $6A10: $FF
    rst RST_38                                    ; $6A11: $FF
    rst RST_38                                    ; $6A12: $FF
    cp $70                                        ; $6A13: $FE $70
    rlca                                          ; $6A15: $07
    rlca                                          ; $6A16: $07
    rlca                                          ; $6A17: $07
    ld [bc], a                                    ; $6A18: $02
    ld [hl], l                                    ; $6A19: $75
    ld bc, $F808                                  ; $6A1A: $01 $08 $F8
    db $10                                        ; $6A1D: $10
    rlca                                          ; $6A1E: $07
    db $10                                        ; $6A1F: $10
    inc c                                         ; $6A20: $0C
    db $10                                        ; $6A21: $10
    inc b                                         ; $6A22: $04
    jr @+$11                                      ; $6A23: $18 $0F

    jr nc, jr_001_6A46                            ; $6A25: $30 $1F

    jr nz, jr_001_6A31                            ; $6A27: $20 $08

    ld h, b                                       ; $6A29: $60
    ccf                                           ; $6A2A: $3F
    ld c, a                                       ; $6A2B: $4F
    ld b, b                                       ; $6A2C: $40
    ld [$7FC0], sp                                ; $6A2D: $08 $C0 $7F
    cp e                                          ; $6A30: $BB

jr_001_6A31:
    sub b                                         ; $6A31: $90
    ld [$A880], sp                                ; $6A32: $08 $80 $A8
    db $10                                        ; $6A35: $10
    inc a                                         ; $6A36: $3C
    db $10                                        ; $6A37: $10
    ldh a, [rBCPS]                                ; $6A38: $F0 $68
    pop bc                                        ; $6A3A: $C1
    rst RST_38                                    ; $6A3B: $FF
    add e                                         ; $6A3C: $83
    cp l                                          ; $6A3D: $BD
    ld [$0804], sp                                ; $6A3E: $08 $04 $08
    ld h, b                                       ; $6A41: $60
    rrca                                          ; $6A42: $0F
    inc c                                         ; $6A43: $0C
    rlca                                          ; $6A44: $07
    db $10                                        ; $6A45: $10

jr_001_6A46:
    rlca                                          ; $6A46: $07
    ld a, a                                       ; $6A47: $7F
    ld b, $FE                                     ; $6A48: $06 $FE
    ld a, b                                       ; $6A4A: $78
    adc a                                         ; $6A4B: $8F
    pop hl                                        ; $6A4C: $E1
    ld c, b                                       ; $6A4D: $48
    ld bc, $E167                                  ; $6A4E: $01 $67 $E1
    ld b, b                                       ; $6A51: $40
    ld l, b                                       ; $6A52: $68
    db $FC                                        ; $6A53: $FC
    rra                                           ; $6A54: $1F
    jr z, @+$4B                                   ; $6A55: $28 $49

    xor c                                         ; $6A57: $A9
    ld d, l                                       ; $6A58: $55
    inc bc                                        ; $6A59: $03
    ld c, d                                       ; $6A5A: $4A
    rrca                                          ; $6A5B: $0F
    db $FC                                        ; $6A5C: $FC
    ldh [rNR10], a                                ; $6A5D: $E0 $10
    add b                                         ; $6A5F: $80
    ld [$01AF], sp                                ; $6A60: $08 $AF $01
    ld hl, sp+$08                                 ; $6A63: $F8 $08
    ldh a, [rLCDC]                                ; $6A65: $F0 $40
    nop                                           ; $6A67: $00
    ld b, b                                       ; $6A68: $40
    ld c, c                                       ; $6A69: $49
    ei                                            ; $6A6A: $FB
    add c                                         ; $6A6B: $81
    ret nz                                        ; $6A6C: $C0

    ld d, b                                       ; $6A6D: $50
    nop                                           ; $6A6E: $00
    ld c, h                                       ; $6A6F: $4C
    ret nz                                        ; $6A70: $C0

    adc c                                         ; $6A71: $89
    db $10                                        ; $6A72: $10
    ld b, l                                       ; $6A73: $45
    inc a                                         ; $6A74: $3C
    db $10                                        ; $6A75: $10
    ld c, $FC                                     ; $6A76: $0E $FC
    ld bc, $0338                                  ; $6A78: $01 $38 $03
    db $10                                        ; $6A7B: $10
    ld b, b                                       ; $6A7C: $40
    ld b, $10                                     ; $6A7D: $06 $10
    inc c                                         ; $6A7F: $0C
    rlca                                          ; $6A80: $07
    jr jr_001_6A92                                ; $6A81: $18 $0F

    ld [hl-], a                                   ; $6A83: $32
    dec e                                         ; $6A84: $1D
    nop                                           ; $6A85: $00
    dec [hl]                                      ; $6A86: $35
    ld a, [de]                                    ; $6A87: $1A
    ld a, l                                       ; $6A88: $7D
    ld [hl+], a                                   ; $6A89: $22
    ld h, l                                       ; $6A8A: $65
    ld a, [hl-]                                   ; $6A8B: $3A
    add $79                                       ; $6A8C: $C6 $79
    db $10                                        ; $6A8E: $10
    call nz, $C27B                                ; $6A8F: $C4 $7B $C2

jr_001_6A92:
    ld b, b                                       ; $6A92: $40
    ld h, d                                       ; $6A93: $62
    dec a                                         ; $6A94: $3D
    ld h, c                                       ; $6A95: $61
    ld a, $0D                                     ; $6A96: $3E $0D
    ccf                                           ; $6A98: $3F
    db $10                                        ; $6A99: $10
    jr nc, jr_001_6ABB                            ; $6A9A: $30 $1F

    ldh a, [rDIV]                                 ; $6A9C: $F0 $04
    ld bc, $5508                                  ; $6A9E: $01 $08 $55
    rlca                                          ; $6AA1: $07
    db $10                                        ; $6AA2: $10
    ld e, $10                                     ; $6AA3: $1E $10
    jr c, @+$6A                                   ; $6AA5: $38 $68

    ldh [$FF90], a                                ; $6AA7: $E0 $90
    ccf                                           ; $6AA9: $3F
    ret nz                                        ; $6AAA: $C0

    rst RST_38                                    ; $6AAB: $FF
    ld d, b                                       ; $6AAC: $50
    rrca                                          ; $6AAD: $0F
    dec c                                         ; $6AAE: $0D
    ld [bc], a                                    ; $6AAF: $02
    or b                                          ; $6AB0: $B0
    ld sp, $E098                                  ; $6AB1: $31 $98 $E0
    add [hl]                                      ; $6AB4: $86
    ld hl, sp-$1E                                 ; $6AB5: $F8 $E2
    jr nc, jr_001_6ABC                            ; $6AB7: $30 $03

    cp $07                                        ; $6AB9: $FE $07

jr_001_6ABB:
    cp [hl]                                       ; $6ABB: $BE

jr_001_6ABC:
    jr c, jr_001_6ACD                             ; $6ABC: $38 $0F

    adc $58                                       ; $6ABE: $CE $58
    ld [$FE58], sp                                ; $6AC0: $08 $58 $FE
    ret nz                                        ; $6AC3: $C0

    cp a                                          ; $6AC4: $BF
    ld [$2A80], sp                                ; $6AC5: $08 $80 $2A
    ldh a, [$FF39]                                ; $6AC8: $F0 $39
    jr nc, jr_001_6B05                            ; $6ACA: $30 $39

    sub d                                         ; $6ACC: $92

jr_001_6ACD:
    add a                                         ; $6ACD: $87
    nop                                           ; $6ACE: $00
    rrca                                          ; $6ACF: $0F
    db $FC                                        ; $6AD0: $FC
    inc a                                         ; $6AD1: $3C
    ldh a, [rP1]                                  ; $6AD2: $F0 $00
    ld h, b                                       ; $6AD4: $60
    ld c, e                                       ; $6AD5: $4B
    dec a                                         ; $6AD6: $3D
    rlca                                          ; $6AD7: $07
    cp $FB                                        ; $6AD8: $FE $FB
    rlca                                          ; $6ADA: $07
    rlca                                          ; $6ADB: $07
    rlca                                          ; $6ADC: $07
    ldh [$FF08], a                                ; $6ADD: $E0 $08
    ld b, b                                       ; $6ADF: $40
    ret nz                                        ; $6AE0: $C0

    ld [$07F8], sp                                ; $6AE1: $08 $F8 $07
    add h                                         ; $6AE4: $84
    ld a, e                                       ; $6AE5: $7B
    ld a, b                                       ; $6AE6: $78
    add a                                         ; $6AE7: $87
    nop                                           ; $6AE8: $00
    ld c, b                                       ; $6AE9: $48
    or a                                          ; $6AEA: $B7
    ld [hl], h                                    ; $6AEB: $74
    adc e                                         ; $6AEC: $8B
    xor b                                         ; $6AED: $A8
    ld d, a                                       ; $6AEE: $57
    ld d, b                                       ; $6AEF: $50
    xor a                                         ; $6AF0: $AF
    ld sp, $CF30                                  ; $6AF1: $31 $30 $CF
    ld [hl], b                                    ; $6AF4: $70
    add b                                         ; $6AF5: $80
    ccf                                           ; $6AF6: $3F
    rst RST_00                                    ; $6AF7: $C7
    pop af                                        ; $6AF8: $F1
    db $10                                        ; $6AF9: $10
    adc l                                         ; $6AFA: $8D

jr_001_6AFB:
    add b                                         ; $6AFB: $80
    db $FC                                        ; $6AFC: $FC
    inc bc                                        ; $6AFD: $03
    rst RST_38                                    ; $6AFE: $FF
    ret nc                                        ; $6AFF: $D0

    ld a, [bc]                                    ; $6B00: $0A
    ld bc, $FC2C                                  ; $6B01: $01 $2C $FC
    rrca                                          ; $6B04: $0F

jr_001_6B05:
    ret c                                         ; $6B05: $D8

    ld [$F0A9], sp                                ; $6B06: $08 $A9 $F0
    jr nz, jr_001_6AFB                            ; $6B09: $20 $F0

    rst RST_08                                    ; $6B0B: $CF
    ld [hl], a                                    ; $6B0C: $77
    ret nz                                        ; $6B0D: $C0

    ld hl, sp+$42                                 ; $6B0E: $F8 $42
    jr nc, jr_001_6B82                            ; $6B10: $30 $70

    jr nc, @-$6C                                  ; $6B12: $30 $92

    nop                                           ; $6B14: $00
    ld c, e                                       ; $6B15: $4B
    ld e, $80                                     ; $6B16: $1E $80
    ld a, b                                       ; $6B18: $78
    ldh [rP1], a                                  ; $6B19: $E0 $00
    add b                                         ; $6B1B: $80
    add hl, de                                    ; $6B1C: $19

jr_001_6B1D:
    add hl, sp                                    ; $6B1D: $39
    cp l                                          ; $6B1E: $BD
    ret nz                                        ; $6B1F: $C0

    cp $69                                        ; $6B20: $FE $69
    adc c                                         ; $6B22: $89
    or b                                          ; $6B23: $B0
    xor b                                         ; $6B24: $A8
    inc a                                         ; $6B25: $3C
    db $10                                        ; $6B26: $10
    ccf                                           ; $6B27: $3F
    rrca                                          ; $6B28: $0F
    db $FC                                        ; $6B29: $FC
    ld c, e                                       ; $6B2A: $4B
    ld bc, $0830                                  ; $6B2B: $01 $30 $08
    and b                                         ; $6B2E: $A0
    cp b                                          ; $6B2F: $B8
    rst RST_38                                    ; $6B30: $FF
    ld h, b                                       ; $6B31: $60
    jr jr_001_6B1D                                ; $6B32: $18 $E9

    nop                                           ; $6B34: $00
    ld e, d                                       ; $6B35: $5A
    rlca                                          ; $6B36: $07
    ld e, c                                       ; $6B37: $59
    ld a, c                                       ; $6B38: $79
    jp c, Jump_000_0599                           ; $6B39: $DA $99 $05

    ret nz                                        ; $6B3C: $C0

    ld e, c                                       ; $6B3D: $59
    ld [$0801], sp                                ; $6B3E: $08 $01 $08
    inc bc                                        ; $6B41: $03
    and b                                         ; $6B42: $A0
    db $10                                        ; $6B43: $10
    ld b, $10                                     ; $6B44: $06 $10
    inc c                                         ; $6B46: $0C
    rlca                                          ; $6B47: $07
    jr jr_001_6B59                                ; $6B48: $18 $0F

    scf                                           ; $6B4A: $37
    inc bc                                        ; $6B4B: $03
    ld e, $2E                                     ; $6B4C: $1E $2E
    db $10                                        ; $6B4E: $10
    ld [hl], b                                    ; $6B4F: $70
    jr nz, jr_001_6BB2                            ; $6B50: $20 $60

    sbc $07                                       ; $6B52: $DE $07
    db $EB                                        ; $6B54: $EB
    cp c                                          ; $6B55: $B9
    reti                                          ; $6B56: $D9


    nop                                           ; $6B57: $00
    ld [bc], a                                    ; $6B58: $02

jr_001_6B59:
    ld [$E001], sp                                ; $6B59: $08 $01 $E0
    db $10                                        ; $6B5C: $10
    ld bc, $1F78                                  ; $6B5D: $01 $78 $1F
    ldh [$FF7F], a                                ; $6B60: $E0 $7F
    ret nz                                        ; $6B62: $C0

    rst RST_38                                    ; $6B63: $FF
    add b                                         ; $6B64: $80
    ld [$90DF], sp                                ; $6B65: $08 $DF $90
    ld a, [bc]                                    ; $6B68: $0A
    cp $08                                        ; $6B69: $FE $08
    nop                                           ; $6B6B: $00
    adc b                                         ; $6B6C: $88
    add b                                         ; $6B6D: $80
    jr nc, @+$01                                  ; $6B6E: $30 $FF

    sbc e                                         ; $6B70: $9B
    ld l, e                                       ; $6B71: $6B
    dec bc                                        ; $6B72: $0B
    cp c                                          ; $6B73: $B9
    add sp, $4D                                   ; $6B74: $E8 $4D
    rlca                                          ; $6B76: $07
    ld b, $41                                     ; $6B77: $06 $41
    ld bc, $0788                                  ; $6B79: $01 $88 $07
    cp $1E                                        ; $6B7C: $FE $1E
    ld hl, sp+$3F                                 ; $6B7E: $F8 $3F
    ldh [$FF7D], a                                ; $6B80: $E0 $7D

jr_001_6B82:
    inc bc                                        ; $6B82: $03
    db $ED                                        ; $6B83: $ED
    rst RST_38                                    ; $6B84: $FF
    rlca                                          ; $6B85: $07
    nop                                           ; $6B86: $00
    ret nz                                        ; $6B87: $C0

    add b                                         ; $6B88: $80
    nop                                           ; $6B89: $00
    add sp, $2A                                   ; $6B8A: $E8 $2A
    add hl, de                                    ; $6B8C: $19

jr_001_6B8D:
    add hl, sp                                    ; $6B8D: $39
    ld a, b                                       ; $6B8E: $78
    db $10                                        ; $6B8F: $10
    ld e, $F8                                     ; $6B90: $1E $F8
    inc bc                                        ; $6B92: $03
    ld [hl], l                                    ; $6B93: $75
    db $FC                                        ; $6B94: $FC
    cp a                                          ; $6B95: $BF
    rlca                                          ; $6B96: $07
    ld bc, $0807                                  ; $6B97: $01 $07 $08
    rra                                           ; $6B9A: $1F
    db $10                                        ; $6B9B: $10
    ld c, c                                       ; $6B9C: $49
    jr nc, @+$12                                  ; $6B9D: $30 $10

    ld h, b                                       ; $6B9F: $60
    ccf                                           ; $6BA0: $3F
    add hl, bc                                    ; $6BA1: $09
    ret nz                                        ; $6BA2: $C0

    ld a, a                                       ; $6BA3: $7F
    rrca                                          ; $6BA4: $0F
    ei                                            ; $6BA5: $FB
    ld l, e                                       ; $6BA6: $6B
    sbc c                                         ; $6BA7: $99
    cp c                                          ; $6BA8: $B9
    reti                                          ; $6BA9: $D9


    ld bc, $09FF                                  ; $6BAA: $01 $FF $09
    ld [de], a                                    ; $6BAD: $12
    ld a, [$0F0F]                                 ; $6BAE: $FA $0F $0F
    or h                                          ; $6BB1: $B4

jr_001_6BB2:
    jp nz, $FE01                                  ; $6BB2: $C2 $01 $FE

    ld b, c                                       ; $6BB5: $41
    ld hl, sp+$57                                 ; $6BB6: $F8 $57
    rrca                                          ; $6BB8: $0F
    db $10                                        ; $6BB9: $10
    ccf                                           ; $6BBA: $3F
    ld [$BF03], sp                                ; $6BBB: $08 $03 $BF
    ld a, [bc]                                    ; $6BBE: $0A
    ld e, c                                       ; $6BBF: $59
    ld a, [$9979]                                 ; $6BC0: $FA $79 $99
    cp c                                          ; $6BC3: $B9
    reti                                          ; $6BC4: $D9


    inc bc                                        ; $6BC5: $03
    add b                                         ; $6BC6: $80
    ld [$B2C0], sp                                ; $6BC7: $08 $C0 $B2
    ld [$10F0], sp                                ; $6BCA: $08 $F0 $10
    ld h, b                                       ; $6BCD: $60
    ldh [$FFFC], a                                ; $6BCE: $E0 $FC
    jr nz, jr_001_6C50                            ; $6BD0: $20 $7E

    rst RST_38                                    ; $6BD2: $FF
    jr nz, jr_001_6B8D                            ; $6BD3: $20 $B8

    jr nz, jr_001_6BF0                            ; $6BD5: $20 $19

    add hl, sp                                    ; $6BD7: $39
    ld e, c                                       ; $6BD8: $59
    ld a, c                                       ; $6BD9: $79
    sbc c                                         ; $6BDA: $99
    push de                                       ; $6BDB: $D5
    cp c                                          ; $6BDC: $B9
    rlca                                          ; $6BDD: $07
    rlca                                          ; $6BDE: $07
    ld [$101F], sp                                ; $6BDF: $08 $1F $10
    jr nc, jr_001_6BF4                            ; $6BE2: $30 $10

    ld a, a                                       ; $6BE4: $7F
    ld h, b                                       ; $6BE5: $60
    ldh [rIF], a                                  ; $6BE6: $E0 $0F
    ld e, c                                       ; $6BE8: $59
    ld a, c                                       ; $6BE9: $79
    sbc c                                         ; $6BEA: $99
    rlca                                          ; $6BEB: $07
    ld bc, $FF6F                                  ; $6BEC: $01 $6F $FF
    add hl, bc                                    ; $6BEF: $09

jr_001_6BF0:
    nop                                           ; $6BF0: $00
    inc bc                                        ; $6BF1: $03
    ld [hl+], a                                   ; $6BF2: $22
    rrca                                          ; $6BF3: $0F

jr_001_6BF4:
    ld e, c                                       ; $6BF4: $59
    ld [bc], a                                    ; $6BF5: $02
    push de                                       ; $6BF6: $D5
    rst RST_20                                    ; $6BF7: $E7
    ld [bc], a                                    ; $6BF8: $02
    ret nz                                        ; $6BF9: $C0

    ld [$08F0], sp                                ; $6BFA: $08 $F0 $08
    ld hl, sp+$20                                 ; $6BFD: $F8 $20
    rla                                           ; $6BFF: $17
    db $FC                                        ; $6C00: $FC
    ldh [$FF7E], a                                ; $6C01: $E0 $7E
    jr nc, @+$41                                  ; $6C03: $30 $3F

    jr nc, jr_001_6C20                            ; $6C05: $30 $19

    add hl, sp                                    ; $6C07: $39
    push af                                       ; $6C08: $F5
    ld e, c                                       ; $6C09: $59
    ld a, c                                       ; $6C0A: $79
    sbc c                                         ; $6C0B: $99
    inc bc                                        ; $6C0C: $03
    rlca                                          ; $6C0D: $07
    ld [$101F], sp                                ; $6C0E: $08 $1F $10
    ld d, [hl]                                    ; $6C11: $56
    jr c, jr_001_6C24                             ; $6C12: $38 $10

    ld h, b                                       ; $6C14: $60
    or b                                          ; $6C15: $B0
    ld b, b                                       ; $6C16: $40
    ld [$7F78], sp                                ; $6C17: $08 $78 $7F
    rst RST_30                                    ; $6C1A: $F7
    rrca                                          ; $6C1B: $0F
    rrca                                          ; $6C1C: $0F
    inc c                                         ; $6C1D: $0C
    ld hl, sp-$10                                 ; $6C1E: $F8 $F0

jr_001_6C20:
    db $10                                        ; $6C20: $10
    ld hl, sp+$10                                 ; $6C21: $F8 $10
    inc de                                        ; $6C23: $13

jr_001_6C24:
    inc c                                         ; $6C24: $0C
    ld hl, sp+$04                                 ; $6C25: $F8 $04
    ld [$FC06], sp                                ; $6C27: $08 $06 $FC
    rrca                                          ; $6C2A: $0F
    rrca                                          ; $6C2B: $0F
    push de                                       ; $6C2C: $D5
    dec bc                                        ; $6C2D: $0B
    ldh [$FF7F], a                                ; $6C2E: $E0 $7F
    add hl, bc                                    ; $6C30: $09
    ret nc                                        ; $6C31: $D0

    ld a, [bc]                                    ; $6C32: $0A
    ldh a, [$FF09]                                ; $6C33: $F0 $09
    jr z, jr_001_6C76                             ; $6C35: $28 $3F

    ld hl, sp+$08                                 ; $6C37: $F8 $08
    ld a, b                                       ; $6C39: $78
    ld [$1F7C], sp                                ; $6C3A: $08 $7C $1F
    ld a, $D5                                     ; $6C3D: $3E $D5
    ld [$0F00], sp                                ; $6C3F: $08 $00 $0F
    ld [$1007], sp                                ; $6C42: $08 $07 $10
    inc bc                                        ; $6C45: $03
    db $10                                        ; $6C46: $10
    ld e, c                                       ; $6C47: $59
    ld bc, $0010                                  ; $6C48: $01 $10 $00
    db $10                                        ; $6C4B: $10
    ld [$FC06], sp                                ; $6C4C: $08 $06 $FC
    add hl, bc                                    ; $6C4F: $09

jr_001_6C50:
    ld e, [hl]                                    ; $6C50: $5E
    ld d, $0A                                     ; $6C51: $16 $0A
    ld e, $09                                     ; $6C53: $1E $09
    ldh a, [$FFC8]                                ; $6C55: $F0 $C8
    ld [$DD3C], sp                                ; $6C57: $08 $3C $DD
    ld [$F0F8], sp                                ; $6C5A: $08 $F8 $F0
    db $10                                        ; $6C5D: $10
    ld [$E000], sp                                ; $6C5E: $08 $00 $E0
    ld [$C05F], sp                                ; $6C61: $08 $5F $C0
    db $10                                        ; $6C64: $10
    add b                                         ; $6C65: $80
    db $10                                        ; $6C66: $10
    ret c                                         ; $6C67: $D8

    db $10                                        ; $6C68: $10
    ld [$5501], sp                                ; $6C69: $08 $01 $55
    rlca                                          ; $6C6C: $07
    ld [$100F], sp                                ; $6C6D: $08 $0F $10
    jr jr_001_6C82                                ; $6C70: $18 $10

    db $10                                        ; $6C72: $10
    ld [$3035], sp                                ; $6C73: $08 $35 $30

jr_001_6C76:
    rra                                           ; $6C76: $1F
    rrca                                          ; $6C77: $0F
    rrca                                          ; $6C78: $0F

jr_001_6C79:
    jr c, @+$0C                                   ; $6C79: $38 $0A

    inc a                                         ; $6C7B: $3C
    cp b                                          ; $6C7C: $B8
    ld e, a                                       ; $6C7D: $5F
    ret nz                                        ; $6C7E: $C0

    ld hl, sp-$20                                 ; $6C7F: $F8 $E0
    db $10                                        ; $6C81: $10

jr_001_6C82:
    ld e, b                                       ; $6C82: $58
    db $10                                        ; $6C83: $10
    ld hl, sp+$08                                 ; $6C84: $F8 $08
    dec a                                         ; $6C86: $3D
    jr jr_001_6C79                                ; $6C87: $18 $F0

    rrca                                          ; $6C89: $0F
    rrca                                          ; $6C8A: $0F
    add sp, $0A                                   ; $6C8B: $E8 $0A
    ld a, b                                       ; $6C8D: $78
    cp b                                          ; $6C8E: $B8
    ld a, [bc]                                    ; $6C8F: $0A
    ld a, $0F                                     ; $6C90: $3E $0F
    rra                                           ; $6C92: $1F
    rlca                                          ; $6C93: $07
    ld [$2003], sp                                ; $6C94: $08 $03 $20
    ld bc, $20BF                                  ; $6C97: $01 $BF $20
    nop                                           ; $6C9A: $00
    jr nz, jr_001_6CA5                            ; $6C9B: $20 $08

    jr nz, jr_001_6CA7                            ; $6C9D: $20 $08

    rlca                                          ; $6C9F: $07
    rlca                                          ; $6CA0: $07
    add l                                         ; $6CA1: $85
    ld bc, $E0F8                                  ; $6CA2: $01 $F8 $E0

jr_001_6CA5:
    ldh a, [$FFC0]                                ; $6CA5: $F0 $C0

jr_001_6CA7:
    ld [$2080], sp                                ; $6CA7: $08 $80 $20
    rst RST_38                                    ; $6CAA: $FF
    jr c, jr_001_6CCD                             ; $6CAB: $38 $20

jr_001_6CAD:
    ld [$9720], sp                                ; $6CAD: $08 $20 $97
    rlca                                          ; $6CB0: $07
    inc b                                         ; $6CB1: $04
    ret z                                         ; $6CB2: $C8

    ld a, c                                       ; $6CB3: $79
    ccf                                           ; $6CB4: $3F
    rrca                                          ; $6CB5: $0F
    rrca                                          ; $6CB6: $0F
    rrca                                          ; $6CB7: $0F
    dec c                                         ; $6CB8: $0D
    nop                                           ; $6CB9: $00
    rst RST_38                                    ; $6CBA: $FF
    rrca                                          ; $6CBB: $0F
    ldh [rIF], a                                  ; $6CBC: $E0 $0F
    rrca                                          ; $6CBE: $0F
    dec c                                         ; $6CBF: $0D
    cp c                                          ; $6CC0: $B9
    ld b, b                                       ; $6CC1: $40
    add hl, bc                                    ; $6CC2: $09
    ret nz                                        ; $6CC3: $C0

    nop                                           ; $6CC4: $00
    and b                                         ; $6CC5: $A0

jr_001_6CC6:
    ld b, b                                       ; $6CC6: $40
    add hl, bc                                    ; $6CC7: $09
    or b                                          ; $6CC8: $B0
    ld h, b                                       ; $6CC9: $60
    add hl, bc                                    ; $6CCA: $09
    ld [bc], a                                    ; $6CCB: $02
    cp b                                          ; $6CCC: $B8

jr_001_6CCD:
    ld [hl], b                                    ; $6CCD: $70
    cp h                                          ; $6CCE: $BC
    ld a, b                                       ; $6CCF: $78
    cp a                                          ; $6CD0: $BF
    ld a, h                                       ; $6CD1: $7C
    ld [$247F], sp                                ; $6CD2: $08 $7F $24
    ld e, a                                       ; $6CD5: $5F
    ccf                                           ; $6CD6: $3F
    add hl, bc                                    ; $6CD7: $09
    cpl                                           ; $6CD8: $2F
    rra                                           ; $6CD9: $1F
    add hl, bc                                    ; $6CDA: $09
    rla                                           ; $6CDB: $17
    rrca                                          ; $6CDC: $0F
    dec a                                         ; $6CDD: $3D
    ld [$0007], sp                                ; $6CDE: $08 $07 $00
    add sp, -$50                                  ; $6CE1: $E8 $B0
    ld [$1090], sp                                ; $6CE3: $08 $90 $10
    ld d, h                                       ; $6CE6: $54
    ret z                                         ; $6CE7: $C8

    ret z                                         ; $6CE8: $C8

    db $E4                                        ; $6CE9: $E4

jr_001_6CEA:
    ret z                                         ; $6CEA: $C8

    ldh a, [c]                                    ; $6CEB: $F2
    ldh [$FFF9], a                                ; $6CEC: $E0 $F9
    sbc $02                                       ; $6CEE: $DE $02
    db $FC                                        ; $6CF0: $FC
    rst RST_28                                    ; $6CF1: $EF
    cp $F1                                        ; $6CF2: $FE $F1
    db $FD                                        ; $6CF4: $FD

jr_001_6CF5:
    ld hl, sp+$00                                 ; $6CF5: $F8 $00
    ldh a, [$FF9D]                                ; $6CF7: $F0 $9D
    add hl, bc                                    ; $6CF9: $09
    db $10                                        ; $6CFA: $10
    ldh [rNR10], a                                ; $6CFB: $E0 $10
    cp b                                          ; $6CFD: $B8
    dec b                                         ; $6CFE: $05
    add b                                         ; $6CFF: $80
    ld [$4040], sp                                ; $6D00: $08 $40 $40
    db $10                                        ; $6D03: $10
    jr nz, jr_001_6CC6                            ; $6D04: $20 $C0

    sub b                                         ; $6D06: $90
    ld h, b                                       ; $6D07: $60
    ld c, b                                       ; $6D08: $48
    jr nc, jr_001_6D68                            ; $6D09: $30 $5D

    jr z, jr_001_6CAD                             ; $6D0B: $28 $A0

    jr jr_001_6CAD                                ; $6D0D: $18 $9E

    rlca                                          ; $6D0F: $07
    dec b                                         ; $6D10: $05
    ld bc, $4008                                  ; $6D11: $01 $08 $40
    ld [bc], a                                    ; $6D14: $02
    db $10                                        ; $6D15: $10
    inc b                                         ; $6D16: $04
    inc bc                                        ; $6D17: $03
    add hl, bc                                    ; $6D18: $09
    rlca                                          ; $6D19: $07
    inc de                                        ; $6D1A: $13
    rrca                                          ; $6D1B: $0F
    ccf                                           ; $6D1C: $3F
    rla                                           ; $6D1D: $17
    ld c, $10                                     ; $6D1E: $0E $10
    ld c, b                                       ; $6D20: $48
    ld l, c                                       ; $6D21: $69
    add hl, bc                                    ; $6D22: $09
    ld h, b                                       ; $6D23: $60
    db $10                                        ; $6D24: $10
    push de                                       ; $6D25: $D5
    ld h, b                                       ; $6D26: $60
    db $10                                        ; $6D27: $10
    rra                                           ; $6D28: $1F
    db $10                                        ; $6D29: $10
    ld a, a                                       ; $6D2A: $7F
    db $10                                        ; $6D2B: $10
    add b                                         ; $6D2C: $80
    db $10                                        ; $6D2D: $10
    ld b, c                                       ; $6D2E: $41
    rst RST_38                                    ; $6D2F: $FF
    ld e, b                                       ; $6D30: $58
    sub b                                         ; $6D31: $90
    ld h, b                                       ; $6D32: $60
    jr nz, jr_001_6CF5                            ; $6D33: $20 $C0

    ld [hl], b                                    ; $6D35: $70
    ld [$FC22], sp                                ; $6D36: $08 $22 $FC

jr_001_6D39:
    ret nc                                        ; $6D39: $D0

    ld c, b                                       ; $6D3A: $48
    cp h                                          ; $6D3B: $BC
    db $FD                                        ; $6D3C: $FD
    ld a, [hl]                                    ; $6D3D: $7E
    ld [$A1FE], sp                                ; $6D3E: $08 $FE $A1
    rrca                                          ; $6D41: $0F
    ld a, [$E480]                                 ; $6D42: $FA $80 $E4
    ld hl, sp-$68                                 ; $6D45: $F8 $98
    ldh [$FFD0], a                                ; $6D47: $E0 $D0
    ld a, l                                       ; $6D49: $7D
    add b                                         ; $6D4A: $80
    nop                                           ; $6D4B: $00
    ld hl, sp+$07                                 ; $6D4C: $F8 $07
    rlca                                          ; $6D4E: $07
    dec b                                         ; $6D4F: $05
    ld c, $08                                     ; $6D50: $0E $08
    nop                                           ; $6D52: $00
    ld [de], a                                    ; $6D53: $12
    inc c                                         ; $6D54: $0C
    inc h                                         ; $6D55: $24
    jr jr_001_6DA0                                ; $6D56: $18 $48

    jr nc, jr_001_6CEA                            ; $6D58: $30 $90

    ld h, b                                       ; $6D5A: $60
    jp nz, Jump_001_4810                          ; $6D5B: $C2 $10 $48

    jr z, jr_001_6D70                             ; $6D5E: $28 $10

    inc d                                         ; $6D60: $14
    ld [$0969], sp                                ; $6D61: $08 $69 $09
    nop                                           ; $6D64: $00
    ld b, $C8                                     ; $6D65: $06 $C8
    rlca                                          ; $6D67: $07

jr_001_6D68:
    or h                                          ; $6D68: $B4
    ld b, e                                       ; $6D69: $43
    ld c, l                                       ; $6D6A: $4D
    inc sp                                        ; $6D6B: $33
    ld b, b                                       ; $6D6C: $40
    ld c, c                                       ; $6D6D: $49
    ccf                                           ; $6D6E: $3F
    ld a, b                                       ; $6D6F: $78

jr_001_6D70:
    rra                                           ; $6D70: $1F
    daa                                           ; $6D71: $27
    ld [$2F57], sp                                ; $6D72: $08 $57 $2F
    jr nc, @-$16                                  ; $6D75: $30 $E8

    jr jr_001_6D39                                ; $6D77: $18 $C0

    inc b                                         ; $6D79: $04
    ld h, b                                       ; $6D7A: $60
    ld [$2050], sp                                ; $6D7B: $08 $50 $20
    xor b                                         ; $6D7E: $A8
    ld [bc], a                                    ; $6D7F: $02
    db $10                                        ; $6D80: $10
    ld h, h                                       ; $6D81: $64
    sbc b                                         ; $6D82: $98
    ld [bc], a                                    ; $6D83: $02
    db $FC                                        ; $6D84: $FC
    jp z, $F508                                   ; $6D85: $CA $08 $F5

    ld l, $FE                                     ; $6D88: $2E $FE
    ld a, a                                       ; $6D8A: $7F
    ld [$02FF], sp                                ; $6D8B: $08 $FF $02
    call $C005                                    ; $6D8E: $CD $05 $C0
    sub d                                         ; $6D91: $92
    ld [$40E0], sp                                ; $6D92: $08 $E0 $40
    dec bc                                        ; $6D95: $0B
    ldh a, [$FF60]                                ; $6D96: $F0 $60
    dec c                                         ; $6D98: $0D
    ld hl, sp+$48                                 ; $6D99: $F8 $48
    ld [hl], b                                    ; $6D9B: $70
    dec c                                         ; $6D9C: $0D
    call c, $0D78                                 ; $6D9D: $DC $78 $0D

jr_001_6DA0:
    dec de                                        ; $6DA0: $1B
    rrca                                          ; $6DA1: $0F
    add hl, de                                    ; $6DA2: $19
    xor c                                         ; $6DA3: $A9
    ld c, $18                                     ; $6DA4: $0E $18
    ld a, [bc]                                    ; $6DA6: $0A
    sbc b                                         ; $6DA7: $98
    ld [$8FFC], sp                                ; $6DA8: $08 $FC $8F
    ld [$EF48], sp                                ; $6DAB: $08 $48 $EF
    ld [$7CF7], sp                                ; $6DAE: $08 $F7 $7C
    ld [$FB3E], sp                                ; $6DB1: $08 $3E $FB

jr_001_6DB4:
    ld e, $89                                     ; $6DB4: $1E $89
    ld [$FF8E], sp                                ; $6DB6: $08 $8E $FF
    add a                                         ; $6DB9: $87

jr_001_6DBA:
    ld [$80C0], sp                                ; $6DBA: $08 $C0 $80
    dec c                                         ; $6DBD: $0D
    ld l, l                                       ; $6DBE: $6D
    ldh [rNR10], a                                ; $6DBF: $E0 $10
    dec c                                         ; $6DC1: $0D
    ld [hl], b                                    ; $6DC2: $70
    db $10                                        ; $6DC3: $10
    add hl, bc                                    ; $6DC4: $09
    jr nc, @+$0A                                  ; $6DC5: $30 $08

    inc h                                         ; $6DC7: $24
    jr c, jr_001_6DBA                             ; $6DC8: $38 $F0

    add hl, bc                                    ; $6DCA: $09
    inc e                                         ; $6DCB: $1C
    ld hl, sp+$09                                 ; $6DCC: $F8 $09
    ld c, $FC                                     ; $6DCE: $0E $FC
    dec d                                         ; $6DD0: $15
    jr @+$01                                      ; $6DD1: $18 $FF

    ld [$0408], sp                                ; $6DD3: $08 $08 $04
    ld [$0E00], sp                                ; $6DD6: $08 $00 $0E
    ld b, e                                       ; $6DD9: $43
    add b                                         ; $6DDA: $80
    ld [$7FC0], sp                                ; $6DDB: $08 $C0 $7F
    ld h, b                                       ; $6DDE: $60
    ccf                                           ; $6DDF: $3F
    ret nc                                        ; $6DE0: $D0

    jr jr_001_6DB4                                ; $6DE1: $18 $D1

    add hl, sp                                    ; $6DE3: $39
    ld e, e                                       ; $6DE4: $5B
    ldh [$FF38], a                                ; $6DE5: $E0 $38
    ld a, b                                       ; $6DE7: $78
    rra                                           ; $6DE8: $1F
    ld [hl], c                                    ; $6DE9: $71
    jr nz, jr_001_6E3E                            ; $6DEA: $20 $52

    add hl, sp                                    ; $6DEC: $39
    ld [hl], b                                    ; $6DED: $70
    add hl, de                                    ; $6DEE: $19
    ld [$F80D], sp                                ; $6DEF: $08 $0D $F8
    add hl, bc                                    ; $6DF2: $09
    rlca                                          ; $6DF3: $07
    rrca                                          ; $6DF4: $0F
    db $FC                                        ; $6DF5: $FC
    inc bc                                        ; $6DF6: $03
    cp $01                                        ; $6DF7: $FE $01
    cp d                                          ; $6DF9: $BA
    rrca                                          ; $6DFA: $0F
    ld c, $02                                     ; $6DFB: $0E $02
    ld b, b                                       ; $6DFD: $40
    ld h, b                                       ; $6DFE: $60
    ld [$2070], sp                                ; $6DFF: $08 $70 $20
    jr c, @+$12                                   ; $6E02: $38 $10

    inc a                                         ; $6E04: $3C
    jr @+$03                                      ; $6E05: $18 $01

    ld e, $0C                                     ; $6E07: $1E $0C
    rra                                           ; $6E09: $1F
    ld c, $0F                                     ; $6E0A: $0E $0F
    rlca                                          ; $6E0C: $07
    dec c                                         ; $6E0D: $0D
    ld [$0620], sp                                ; $6E0E: $08 $20 $06
    inc bc                                        ; $6E11: $03
    add hl, bc                                    ; $6E12: $09
    jp $F301                                      ; $6E13: $C3 $01 $F3


    ld b, c                                       ; $6E16: $41
    ld a, l                                       ; $6E17: $7D
    inc bc                                        ; $6E18: $03
    jr nc, jr_001_6E5A                            ; $6E19: $30 $3F

    inc e                                         ; $6E1B: $1C
    sbc $7B                                       ; $6E1C: $DE $7B
    ld h, [hl]                                    ; $6E1E: $66
    jr nz, jr_001_6E51                            ; $6E1F: $20 $30

    rst RST_38                                    ; $6E21: $FF
    or b                                          ; $6E22: $B0
    ret nc                                        ; $6E23: $D0

    or b                                          ; $6E24: $B0
    ret nc                                        ; $6E25: $D0

    xor d                                         ; $6E26: $AA
    nop                                           ; $6E27: $00
    sbc b                                         ; $6E28: $98
    nop                                           ; $6E29: $00
    ld d, c                                       ; $6E2A: $51
    nop                                           ; $6E2B: $00
    ld bc, $08E0                                  ; $6E2C: $01 $E0 $08
    rst RST_38                                    ; $6E2F: $FF
    ld h, b                                       ; $6E30: $60
    ld a, a                                       ; $6E31: $7F
    adc b                                         ; $6E32: $88
    ld [hl], l                                    ; $6E33: $75
    ld e, $78                                     ; $6E34: $1E $78
    nop                                           ; $6E36: $00
    ld l, h                                       ; $6E37: $6C
    add b                                         ; $6E38: $80
    ld [$10C0], sp                                ; $6E39: $08 $C0 $10
    or $0B                                        ; $6E3C: $F6 $0B

jr_001_6E3E:
    xor b                                         ; $6E3E: $A8
    db $10                                        ; $6E3F: $10

jr_001_6E40:
    dec bc                                        ; $6E40: $0B
    ld [hl], b                                    ; $6E41: $70
    db $10                                        ; $6E42: $10
    add hl, bc                                    ; $6E43: $09
    jr c, @+$24                                   ; $6E44: $38 $22

    ldh a, [rNR23]                                ; $6E46: $F0 $18
    ld [$F81C], sp                                ; $6E48: $08 $1C $F8
    inc c                                         ; $6E4B: $0C
    ld [$0706], sp                                ; $6E4C: $08 $06 $07
    db $FC                                        ; $6E4F: $FC
    inc bc                                        ; $6E50: $03

jr_001_6E51:
    cp $01                                        ; $6E51: $FE $01
    rst RST_38                                    ; $6E53: $FF
    ldh a, [rP1]                                  ; $6E54: $F0 $00
    jr jr_001_6E40                                ; $6E56: $18 $E8

    ld a, [bc]                                    ; $6E58: $0A
    ld c, b                                       ; $6E59: $48

jr_001_6E5A:
    db $10                                        ; $6E5A: $10
    ld h, e                                       ; $6E5B: $63
    ld [$2173], sp                                ; $6E5C: $08 $73 $21
    ld a, $42                                     ; $6E5F: $3E $42
    inc de                                        ; $6E61: $13
    ld [$1E1B], sp                                ; $6E62: $08 $1B $1E
    rrca                                          ; $6E65: $0F
    ld a, [de]                                    ; $6E66: $1A

jr_001_6E67:
    ld [$8278], sp                                ; $6E67: $08 $78 $82
    ld [$377C], sp                                ; $6E6A: $08 $7C $37
    inc a                                         ; $6E6D: $3C
    rra                                           ; $6E6E: $1F
    jr nc, jr_001_6E79                            ; $6E6F: $30 $08

    jr jr_001_6E67                                ; $6E71: $18 $F4

    jr c, @+$0B                                   ; $6E73: $38 $09

    ld sp, hl                                     ; $6E75: $F9
    dec b                                         ; $6E76: $05
    ld b, $08                                     ; $6E77: $06 $08

jr_001_6E79:
    dec bc                                        ; $6E79: $0B
    inc b                                         ; $6E7A: $04
    sub e                                         ; $6E7B: $93
    ld h, b                                       ; $6E7C: $60
    ld bc, $1039                                  ; $6E7D: $01 $39 $10
    ld a, c                                       ; $6E80: $79
    ccf                                           ; $6E81: $3F
    add hl, de                                    ; $6E82: $19
    add hl, sp                                    ; $6E83: $39
    db $F4                                        ; $6E84: $F4
    ld e, c                                       ; $6E85: $59
    ld a, c                                       ; $6E86: $79
    rlca                                          ; $6E87: $07
    db $DB                                        ; $6E88: $DB
    ld a, [bc]                                    ; $6E89: $0A
    ld a, b                                       ; $6E8A: $78
    ld [de], a                                    ; $6E8B: $12
    inc c                                         ; $6E8C: $0C
    ld c, a                                       ; $6E8D: $4F
    cp $28                                        ; $6E8E: $FE $28
    ld a, [hl]                                    ; $6E90: $7E
    db $FC                                        ; $6E91: $FC
    rrca                                          ; $6E92: $0F
    ld e, c                                       ; $6E93: $59
    ld a, c                                       ; $6E94: $79
    sbc c                                         ; $6E95: $99
    add sp, -$47                                  ; $6E96: $E8 $B9
    rlca                                          ; $6E98: $07
    rlca                                          ; $6E99: $07
    ld [hl], e                                    ; $6E9A: $73
    ld [$72ED], sp                                ; $6E9B: $08 $ED $72
    rst RST_00                                    ; $6E9E: $C7
    nop                                           ; $6E9F: $00
    ld a, h                                       ; $6EA0: $7C
    rst RST_08                                    ; $6EA1: $CF
    ccf                                           ; $6EA2: $3F
    ld a, a                                       ; $6EA3: $7F
    rrca                                          ; $6EA4: $0F
    rra                                           ; $6EA5: $1F
    inc bc                                        ; $6EA6: $03
    rla                                           ; $6EA7: $17
    ld l, $08                                     ; $6EA8: $2E $08
    dec d                                         ; $6EAA: $15
    ld [$9A18], sp                                ; $6EAB: $08 $18 $9A
    ld b, b                                       ; $6EAE: $40
    ld [$01C5], sp                                ; $6EAF: $08 $C5 $01
    ld [bc], a                                    ; $6EB2: $02
    ld sp, hl                                     ; $6EB3: $F9
    add $EE                                       ; $6EB4: $C6 $EE
    ldh a, [$FFDE]                                ; $6EB6: $F0 $DE
    db $FC                                        ; $6EB8: $FC
    ld [$3C02], sp                                ; $6EB9: $08 $02 $3C
    ld a, [hl]                                    ; $6EBC: $7E
    inc c                                         ; $6EBD: $0C
    inc l                                         ; $6EBE: $2C
    db $10                                        ; $6EBF: $10
    jr z, jr_001_6ECC                             ; $6EC0: $28 $0A

    jr nc, @-$08                                  ; $6EC2: $30 $F6

    cp d                                          ; $6EC4: $BA
    dec b                                         ; $6EC5: $05
    sub b                                         ; $6EC6: $90
    ld [$A95A], sp                                ; $6EC7: $08 $5A $A9
    jr @+$01                                      ; $6ECA: $18 $FF

jr_001_6ECC:
    cp [hl]                                       ; $6ECC: $BE
    db $10                                        ; $6ECD: $10
    jp $1808                                      ; $6ECE: $C3 $08 $18


    sub a                                         ; $6ED1: $97
    rlca                                          ; $6ED2: $07
    inc b                                         ; $6ED3: $04
    ret nz                                        ; $6ED4: $C0

    add b                                         ; $6ED5: $80
    ld [$40E0], sp                                ; $6ED6: $08 $E0 $40
    ldh a, [$FF60]                                ; $6ED9: $F0 $60
    ld a, b                                       ; $6EDB: $78
    jr nc, @+$6E                                  ; $6EDC: $30 $6C

    nop                                           ; $6EDE: $00
    jr c, jr_001_6F47                             ; $6EDF: $38 $66

    inc a                                         ; $6EE1: $3C
    inc sp                                        ; $6EE2: $33
    ld e, $B1                                     ; $6EE3: $1E $B1
    rra                                           ; $6EE5: $1F
    ret c                                         ; $6EE6: $D8

    inc b                                         ; $6EE7: $04
    rrca                                          ; $6EE8: $0F
    ld hl, sp+$4F                                 ; $6EE9: $F8 $4F
    db $FC                                        ; $6EEB: $FC
    ld [hl], a                                    ; $6EEC: $77
    ld l, b                                       ; $6EED: $68
    ccf                                           ; $6EEE: $3F
    ld h, d                                       ; $6EEF: $62
    push af                                       ; $6EF0: $F5
    ld [$5890], sp                                ; $6EF1: $08 $90 $58
    add hl, bc                                    ; $6EF4: $09
    jr @+$6A                                      ; $6EF5: $18 $68

    add b                                         ; $6EF7: $80
    ld hl, sp+$41                                 ; $6EF8: $F8 $41
    call z, $CE08                                 ; $6EFA: $CC $08 $CE
    inc b                                         ; $6EFD: $04
    xor $44                                       ; $6EFE: $EE $44
    rst RST_38                                    ; $6F00: $FF
    ldh a, [rNR41]                                ; $6F01: $F0 $20
    db $DD                                        ; $6F03: $DD
    or a                                          ; $6F04: $B7
    xor b                                         ; $6F05: $A8
    ei                                            ; $6F06: $FB
    ld b, $FD                                     ; $6F07: $06 $FD
    inc bc                                        ; $6F09: $03
    cp $7D                                        ; $6F0A: $FE $7D

jr_001_6F0C:
    ld bc, $8050                                  ; $6F0C: $01 $50 $80
    dec c                                         ; $6F0F: $0D
    inc b                                         ; $6F10: $04
    ld sp, hl                                     ; $6F11: $F9
    ret nz                                        ; $6F12: $C0

    ld [$E028], sp                                ; $6F13: $08 $28 $E0
    ld b, b                                       ; $6F16: $40
    add hl, bc                                    ; $6F17: $09
    or b                                          ; $6F18: $B0
    db $10                                        ; $6F19: $10
    jr jr_001_6F0C                                ; $6F1A: $18 $F0

    adc [hl]                                      ; $6F1C: $8E
    ld [hl], b                                    ; $6F1D: $70
    ld a, b                                       ; $6F1E: $78
    jr nz, jr_001_6F91                            ; $6F1F: $20 $70

    ld de, $F81E                                  ; $6F21: $11 $1E $F8
    rlca                                          ; $6F24: $07
    cp $F4                                        ; $6F25: $FE $F4
    db $DD                                        ; $6F27: $DD
    rlca                                          ; $6F28: $07
    rlca                                          ; $6F29: $07
    ld bc, $0838                                  ; $6F2A: $01 $38 $08
    ld c, h                                       ; $6F2D: $4C
    jr nc, jr_001_6F30                            ; $6F2E: $30 $00

jr_001_6F30:
    or [hl]                                       ; $6F30: $B6
    ld c, b                                       ; $6F31: $48
    db $ED                                        ; $6F32: $ED
    ld b, [hl]                                    ; $6F33: $46
    ld l, h                                       ; $6F34: $6C
    rlca                                          ; $6F35: $07
    rrca                                          ; $6F36: $0F
    ld b, $4F                                     ; $6F37: $06 $4F
    ld e, $58                                     ; $6F39: $1E $58
    inc [hl]                                      ; $6F3B: $34
    jr jr_001_6FB7                                ; $6F3C: $18 $79

    rlca                                          ; $6F3E: $07
    rlca                                          ; $6F3F: $07
    dec b                                         ; $6F40: $05
    ld e, e                                       ; $6F41: $5B
    jp c, $6F08                                   ; $6F42: $DA $08 $6F

    stop                                          ; $6F45: $10 $00

jr_001_6F47:
    dec h                                         ; $6F47: $25
    ld a, [de]                                    ; $6F48: $1A
    jr c, jr_001_6F9F                             ; $6F49: $38 $54

    inc bc                                        ; $6F4B: $03
    ld [$100F], sp                                ; $6F4C: $08 $0F $10
    inc e                                         ; $6F4F: $1C
    db $10                                        ; $6F50: $10
    inc [hl]                                      ; $6F51: $34
    rra                                           ; $6F52: $1F
    ld de, $3F62                                  ; $6F53: $11 $62 $3F
    ld [hl], d                                    ; $6F56: $72
    ld [$7FD5], sp                                ; $6F57: $08 $D5 $7F
    jp Jump_001_5508                              ; $6F5A: $C3 $08 $55


    db $E3                                        ; $6F5D: $E3
    ld [$08CD], sp                                ; $6F5E: $08 $CD $08
    ld h, b                                       ; $6F61: $60
    ld c, b                                       ; $6F62: $48
    ld l, d                                       ; $6F63: $6A
    ld [$367D], sp                                ; $6F64: $08 $7D $36
    adc b                                         ; $6F67: $88
    xor c                                         ; $6F68: $A9
    ret                                           ; $6F69: $C9


    jp hl                                         ; $6F6A: $E9


    ld bc, $0818                                  ; $6F6B: $01 $18 $08
    adc c                                         ; $6F6E: $89
    ld c, b                                       ; $6F6F: $48
    ld [$040E], sp                                ; $6F70: $08 $0E $04
    ld e, b                                       ; $6F73: $58
    ld b, $07                                     ; $6F74: $06 $07
    ld h, b                                       ; $6F76: $60
    jp nz, Jump_000_0810                          ; $6F77: $C2 $10 $08

    ld h, e                                       ; $6F7A: $63
    ld bc, $217B                                  ; $6F7B: $01 $7B $21
    ret nc                                        ; $6F7E: $D0

    add hl, de                                    ; $6F7F: $19
    call nc, $70D0                                ; $6F80: $D4 $D0 $70
    dec c                                         ; $6F83: $0D
    ld h, b                                       ; $6F84: $60
    db $EC                                        ; $6F85: $EC
    ld [$67FE], sp                                ; $6F86: $08 $FE $67
    inc de                                        ; $6F89: $13
    ld a, [hl]                                    ; $6F8A: $7E
    dec sp                                        ; $6F8B: $3B
    jr nc, @+$52                                  ; $6F8C: $30 $50

    add sp, $7F                                   ; $6F8E: $E8 $7F
    rrca                                          ; $6F90: $0F

jr_001_6F91:
    add hl, bc                                    ; $6F91: $09
    dec d                                         ; $6F92: $15
    ldh [rIE], a                                  ; $6F93: $E0 $FF
    ld h, b                                       ; $6F95: $60
    ld [$0A20], sp                                ; $6F96: $08 $20 $0A
    add b                                         ; $6F99: $80
    ld a, [bc]                                    ; $6F9A: $0A
    ld a, h                                       ; $6F9B: $7C
    nop                                           ; $6F9C: $00
    ld c, $DF                                     ; $6F9D: $0E $DF

jr_001_6F9F:
    rrca                                          ; $6F9F: $0F
    rrca                                          ; $6FA0: $0F
    rrca                                          ; $6FA1: $0F
    nop                                           ; $6FA2: $00
    rst RST_38                                    ; $6FA3: $FF
    di                                            ; $6FA4: $F3
    rrca                                          ; $6FA5: $0F
    rrca                                          ; $6FA6: $0F
    rrca                                          ; $6FA7: $0F
    dec c                                         ; $6FA8: $0D
    inc d                                         ; $6FA9: $14
    ld [$0F0F], sp                                ; $6FAA: $08 $0F $0F
    push bc                                       ; $6FAD: $C5
    rrca                                          ; $6FAE: $0F
    dec c                                         ; $6FAF: $0D
    rlca                                          ; $6FB0: $07
    nop                                           ; $6FB1: $00
    rrca                                          ; $6FB2: $0F
    db $10                                        ; $6FB3: $10
    rra                                           ; $6FB4: $1F
    db $10                                        ; $6FB5: $10
    add c                                         ; $6FB6: $81

jr_001_6FB7:
    add hl, bc                                    ; $6FB7: $09
    ccf                                           ; $6FB8: $3F
    jr @+$3E                                      ; $6FB9: $18 $3C

    rla                                           ; $6FBB: $17
    halt                                          ; $6FBC: $76
    add hl, hl                                    ; $6FBD: $29
    add hl, bc                                    ; $6FBE: $09
    nop                                           ; $6FBF: $00
    ld a, d                                       ; $6FC0: $7A
    dec l                                         ; $6FC1: $2D
    ld sp, hl                                     ; $6FC2: $F9
    ld [hl], a                                    ; $6FC3: $77
    db $FC                                        ; $6FC4: $FC
    ld a, e                                       ; $6FC5: $7B
    db $FD                                        ; $6FC6: $FD
    ld h, d                                       ; $6FC7: $62
    dec bc                                        ; $6FC8: $0B
    rst RST_30                                    ; $6FC9: $F7
    ld l, b                                       ; $6FCA: $68
    ei                                            ; $6FCB: $FB
    ld [hl], l                                    ; $6FCC: $75
    nop                                           ; $6FCD: $00
    ld a, [hl+]                                   ; $6FCE: $2A
    xor b                                         ; $6FCF: $A8
    add sp, $3C                                   ; $6FD0: $E8 $3C
    rst RST_20                                    ; $6FD2: $E7
    ld a, [hl]                                    ; $6FD3: $7E
    rrca                                          ; $6FD4: $0F
    rrca                                          ; $6FD5: $0F
    rrca                                          ; $6FD6: $0F
    dec c                                         ; $6FD7: $0D
    dec b                                         ; $6FD8: $05
    nop                                           ; $6FD9: $00
    ld h, [hl]                                    ; $6FDA: $66
    rrca                                          ; $6FDB: $0F
    db $10                                        ; $6FDC: $10
    ld [$1E07], sp                                ; $6FDD: $08 $07 $1E
    db $10                                        ; $6FE0: $10
    add hl, bc                                    ; $6FE1: $09
    inc [hl]                                      ; $6FE2: $34
    inc h                                         ; $6FE3: $24
    rra                                           ; $6FE4: $1F
    ld sp, $600A                                  ; $6FE5: $31 $0A $60
    ccf                                           ; $6FE8: $3F
    dec bc                                        ; $6FE9: $0B
    ret nz                                        ; $6FEA: $C0

    ld a, a                                       ; $6FEB: $7F
    db $F4                                        ; $6FEC: $F4
    rrca                                          ; $6FED: $0F
    ldh a, [rTAC]                                 ; $6FEE: $F0 $07
    nop                                           ; $6FF0: $00
    jr nc, jr_001_6FFB                            ; $6FF1: $30 $08

    ld [hl], b                                    ; $6FF3: $70
    jr nz, jr_001_7008                            ; $6FF4: $20 $12

    ldh [rLCDC], a                                ; $6FF6: $E0 $40
    pop af                                        ; $6FF8: $F1
    db $10                                        ; $6FF9: $10
    rst RST_20                                    ; $6FFA: $E7

jr_001_6FFB:
    pop bc                                        ; $6FFB: $C1
    and b                                         ; $6FFC: $A0
    rst RST_00                                    ; $6FFD: $C7
    add b                                         ; $6FFE: $80
    ld [$FEDE], sp                                ; $6FFF: $08 $DE $FE
    cp h                                          ; $7002: $BC
    adc $FC                                       ; $7003: $CE $FC
    adc l                                         ; $7005: $8D
    ld hl, sp+$25                                 ; $7006: $F8 $25

jr_001_7008:
    rra                                           ; $7008: $1F
    ld sp, hl                                     ; $7009: $F9
    ld [$3FFF], sp                                ; $700A: $08 $FF $3F
    ld [$0833], sp                                ; $700D: $08 $33 $08
    ld a, d                                       ; $7010: $7A
    ld c, a                                       ; $7011: $4F
    ld [$F039], sp                                ; $7012: $08 $39 $F0
    ld [$0803], sp                                ; $7015: $08 $03 $08
    rrca                                          ; $7018: $0F
    rst RST_38                                    ; $7019: $FF
    ld a, [bc]                                    ; $701A: $0A
    add hl, hl                                    ; $701B: $29
    ld c, c                                       ; $701C: $49
    ld l, c                                       ; $701D: $69
    adc c                                         ; $701E: $89
    xor c                                         ; $701F: $A9
    ret                                           ; $7020: $C9


    add hl, sp                                    ; $7021: $39
    ld l, [hl]                                    ; $7022: $6E
    ret nz                                        ; $7023: $C0

    ld h, b                                       ; $7024: $60
    ld [$0080], sp                                ; $7025: $08 $80 $00
    jr @+$05                                      ; $7028: $18 $03

    ld h, b                                       ; $702A: $60
    sub a                                         ; $702B: $97
    ld [$40E0], sp                                ; $702C: $08 $E0 $40
    ld e, e                                       ; $702F: $5B
    ldh a, [$FFF1]                                ; $7030: $F0 $F1
    db $10                                        ; $7032: $10
    ld [$FE5F], sp                                ; $7033: $08 $5F $FE
    nop                                           ; $7036: $00
    ld hl, sp+$00                                 ; $7037: $F8 $00
    ld [hl], b                                    ; $7039: $70
    nop                                           ; $703A: $00

jr_001_703B:
    ld [hl], b                                    ; $703B: $70
    ld a, c                                       ; $703C: $79
    push de                                       ; $703D: $D5
    call nc, $0104                                ; $703E: $D4 $04 $01
    ld [$1003], sp                                ; $7041: $08 $03 $10
    ld b, $10                                     ; $7044: $06 $10
    ld de, $070C                                  ; $7046: $11 $0C $07
    dec de                                        ; $7049: $1B
    db $10                                        ; $704A: $10
    inc a                                         ; $704B: $3C
    db $10                                        ; $704C: $10
    jr nc, jr_001_70CB                            ; $704D: $30 $7C

    ld a, [hl]                                    ; $704F: $7E
    ld [bc], a                                    ; $7050: $02
    db $10                                        ; $7051: $10
    ld [hl], b                                    ; $7052: $70
    ld a, [hl-]                                   ; $7053: $3A
    add hl, de                                    ; $7054: $19
    sub b                                         ; $7055: $90
    ld b, b                                       ; $7056: $40
    ld c, $20                                     ; $7057: $0E $20
    inc b                                         ; $7059: $04
    ld e, $A9                                     ; $705A: $1E $A9
    jr jr_001_70CA                                ; $705C: $18 $6C

    jr c, jr_001_703B                             ; $705E: $38 $DB

    ld [hl], b                                    ; $7060: $70
    inc c                                         ; $7061: $0C
    sbc a                                         ; $7062: $9F
    di                                            ; $7063: $F3
    inc e                                         ; $7064: $1C
    rst RST_38                                    ; $7065: $FF
    add b                                         ; $7066: $80
    ld [$1FE0], sp                                ; $7067: $08 $E0 $1F
    inc d                                         ; $706A: $14
    ld b, c                                       ; $706B: $41
    ccf                                           ; $706C: $3F
    ld hl, $4018                                  ; $706D: $21 $18 $40
    jr @-$7E                                      ; $7070: $18 $80

    ld a, a                                       ; $7072: $7F
    reti                                          ; $7073: $D9


    ld sp, hl                                     ; $7074: $F9

jr_001_7075:
    dec b                                         ; $7075: $05
    rlca                                          ; $7076: $07
    ld [$0670], sp                                ; $7077: $08 $70 $06
    ld a, [hl]                                    ; $707A: $7E
    ret nc                                        ; $707B: $D0

    inc b                                         ; $707C: $04
    db $EC                                        ; $707D: $EC
    ld a, b                                       ; $707E: $78
    sbc b                                         ; $707F: $98
    ldh a, [$FF30]                                ; $7080: $F0 $30
    ldh [$FF63], a                                ; $7082: $E0 $63
    ret nz                                        ; $7084: $C0

    ld [de], a                                    ; $7085: $12
    rst RST_18                                    ; $7086: $DF
    add e                                         ; $7087: $83
    db $FD                                        ; $7088: $FD
    ld [hl], b                                    ; $7089: $70
    db $E3                                        ; $708A: $E3
    cp $80                                        ; $708B: $FE $80
    db $FC                                        ; $708D: $FC
    dec l                                         ; $708E: $2D
    inc c                                         ; $708F: $0C
    ld hl, sp-$37                                 ; $7090: $F8 $C9
    ld h, b                                       ; $7092: $60
    ld [$4080], sp                                ; $7093: $08 $80 $40
    add b                                         ; $7096: $80
    ld a, a                                       ; $7097: $7F
    add b                                         ; $7098: $80
    nop                                           ; $7099: $00
    ld b, c                                       ; $709A: $41
    inc b                                         ; $709B: $04
    sub b                                         ; $709C: $90
    add hl, bc                                    ; $709D: $09
    sbc b                                         ; $709E: $98
    nop                                           ; $709F: $00
    push af                                       ; $70A0: $F5
    add b                                         ; $70A1: $80
    nop                                           ; $70A2: $00
    ld c, d                                       ; $70A3: $4A
    add hl, de                                    ; $70A4: $19
    cp $10                                        ; $70A5: $FE $10
    rra                                           ; $70A7: $1F
    db $10                                        ; $70A8: $10
    dec b                                         ; $70A9: $05
    add hl, de                                    ; $70AA: $19
    and $F7                                       ; $70AB: $E6 $F7
    ld [$4818], sp                                ; $70AD: $08 $18 $48
    inc bc                                        ; $70B0: $03
    ld [$0C4C], sp                                ; $70B1: $08 $4C $0C
    db $10                                        ; $70B4: $10
    db $10                                        ; $70B5: $10
    rrca                                          ; $70B6: $0F
    ld l, b                                       ; $70B7: $68
    jr z, @+$04                                   ; $70B8: $28 $02

    ld bc, $09FF                                  ; $70BA: $01 $FF $09
    add hl, hl                                    ; $70BD: $29
    ld c, c                                       ; $70BE: $49
    ld l, c                                       ; $70BF: $69
    adc c                                         ; $70C0: $89
    xor c                                         ; $70C1: $A9
    ret                                           ; $70C2: $C9


    jp hl                                         ; $70C3: $E9


    ld hl, $709F                                  ; $70C4: $21 $9F $70
    ld a, b                                       ; $70C7: $78
    rst RST_38                                    ; $70C8: $FF
    add b                                         ; $70C9: $80

jr_001_70CA:
    ld a, a                                       ; $70CA: $7F

jr_001_70CB:
    rlca                                          ; $70CB: $07
    jr jr_001_7075                                ; $70CC: $18 $A7

    sub b                                         ; $70CE: $90
    ld hl, sp+$19                                 ; $70CF: $F8 $19
    ret nz                                        ; $70D1: $C0

    ccf                                           ; $70D2: $3F
    sub b                                         ; $70D3: $90
    jr jr_001_70DF                                ; $70D4: $18 $09

    cp $29                                        ; $70D6: $FE $29
    ld l, l                                       ; $70D8: $6D
    xor c                                         ; $70D9: $A9

jr_001_70DA:
    ret                                           ; $70DA: $C9


    jp hl                                         ; $70DB: $E9


    ld a, b                                       ; $70DC: $78
    ld b, $01                                     ; $70DD: $06 $01

jr_001_70DF:
    cp a                                          ; $70DF: $BF
    ld [$0803], sp                                ; $70E0: $08 $03 $08
    sbc b                                         ; $70E3: $98
    ld [$08B8], sp                                ; $70E4: $08 $B8 $08
    sbc b                                         ; $70E7: $98
    cp a                                          ; $70E8: $BF
    ld a, [bc]                                    ; $70E9: $0A
    ccf                                           ; $70EA: $3F
    inc c                                         ; $70EB: $0C
    ldh a, [$FF0C]                                ; $70EC: $F0 $0C
    xor c                                         ; $70EE: $A9
    ld a, c                                       ; $70EF: $79
    add hl, hl                                    ; $70F0: $29
    ld a, b                                       ; $70F1: $78
    rst RST_38                                    ; $70F2: $FF
    rrca                                          ; $70F3: $0F
    rrca                                          ; $70F4: $0F
    dec bc                                        ; $70F5: $0B
    ret nc                                        ; $70F6: $D0

    cp $07                                        ; $70F7: $FE $07
    db $FC                                        ; $70F9: $FC
    rst RST_30                                    ; $70FA: $F7
    ld [$0730], sp                                ; $70FB: $08 $30 $07
    nop                                           ; $70FE: $00
    ld bc, $8008                                  ; $70FF: $01 $08 $80
    ld [$71D5], sp                                ; $7102: $08 $D5 $71
    add hl, bc                                    ; $7105: $09
    rrca                                          ; $7106: $0F
    ld a, [bc]                                    ; $7107: $0A
    rra                                           ; $7108: $1F
    inc c                                         ; $7109: $0C
    ccf                                           ; $710A: $3F
    ld c, $6A                                     ; $710B: $0E $6A
    ld a, a                                       ; $710D: $7F
    rrca                                          ; $710E: $0F
    ld a, [bc]                                    ; $710F: $0A
    rst RST_38                                    ; $7110: $FF
    add hl, bc                                    ; $7111: $09
    ld bc, $0308                                  ; $7112: $01 $08 $03
    ld l, d                                       ; $7115: $6A
    cp $0F                                        ; $7116: $FE $0F
    ld [$7838], sp                                ; $7118: $08 $38 $78
    ld a, h                                       ; $711B: $7C
    db $10                                        ; $711C: $10
    ld l, [hl]                                    ; $711D: $6E
    ld hl, $C63C                                  ; $711E: $21 $3C $C6
    jr nz, jr_001_70DA                            ; $7121: $20 $B7

    ld c, [hl]                                    ; $7123: $4E
    xor e                                         ; $7124: $AB
    ld b, [hl]                                    ; $7125: $46
    rrca                                          ; $7126: $0F
    cp $09                                        ; $7127: $FE $09
    ld l, c                                       ; $7129: $69
    adc c                                         ; $712A: $89
    xor c                                         ; $712B: $A9
    ret                                           ; $712C: $C9


    jp hl                                         ; $712D: $E9


    inc bc                                        ; $712E: $03
    rrca                                          ; $712F: $0F
    xor h                                         ; $7130: $AC
    ld [$101F], sp                                ; $7131: $08 $1F $10
    jr nc, @+$12                                  ; $7134: $30 $10

    ld a, b                                       ; $7136: $78
    ld sp, $075F                                  ; $7137: $31 $5F $07
    jr nz, @-$26                                  ; $713A: $20 $D8

    ld h, b                                       ; $713C: $60
    or b                                          ; $713D: $B0
    ld b, b                                       ; $713E: $40
    rrca                                          ; $713F: $0F
    dec c                                         ; $7140: $0D
    ei                                            ; $7141: $FB
    ld d, h                                       ; $7142: $54
    ret nz                                        ; $7143: $C0

    ld [$10E0], sp                                ; $7144: $08 $E0 $10
    ld [hl], b                                    ; $7147: $70
    db $10                                        ; $7148: $10
    jr c, @-$0E                                   ; $7149: $38 $F0

    sbc l                                         ; $714B: $9D
    add hl, bc                                    ; $714C: $09
    sbc h                                         ; $714D: $9C
    ld a, b                                       ; $714E: $78
    rrca                                          ; $714F: $0F
    rrca                                          ; $7150: $0F
    ei                                            ; $7151: $FB
    ld bc, $4508                                  ; $7152: $01 $08 $45
    rlca                                          ; $7155: $07
    ld [$030F], sp                                ; $7156: $08 $0F $03
    inc e                                         ; $7159: $1C
    db $10                                        ; $715A: $10

jr_001_715B:
    jr jr_001_7165                                ; $715B: $18 $08

    rra                                           ; $715D: $1F
    jr c, @+$21                                   ; $715E: $38 $1F

    jr nc, jr_001_716A                            ; $7160: $30 $08

    add hl, de                                    ; $7162: $19
    add hl, sp                                    ; $7163: $39
    ld e, c                                       ; $7164: $59

jr_001_7165:
    ld a, c                                       ; $7165: $79
    db $EB                                        ; $7166: $EB
    sbc c                                         ; $7167: $99
    cp c                                          ; $7168: $B9
    dec b                                         ; $7169: $05

jr_001_716A:
    cp $08                                        ; $716A: $FE $08
    rst RST_38                                    ; $716C: $FF
    ld [de], a                                    ; $716D: $12
    rrca                                          ; $716E: $0F
    db $F4                                        ; $716F: $F4
    rrca                                          ; $7170: $0F
    sbc c                                         ; $7171: $99
    and c                                         ; $7172: $A1
    rlca                                          ; $7173: $07
    ret nz                                        ; $7174: $C0

    ld [$80F0], sp                                ; $7175: $08 $F0 $80
    inc sp                                        ; $7178: $33
    jr c, jr_001_715B                             ; $7179: $38 $E0

    nop                                           ; $717B: $00
    ld a, [de]                                    ; $717C: $1A
    inc c                                         ; $717D: $0C
    ld hl, sp+$3D                                 ; $717E: $F8 $3D

jr_001_7180:
    ld a, c                                       ; $7180: $79
    add sp, -$67                                  ; $7181: $E8 $99
    rlca                                          ; $7183: $07
    ld bc, $0803                                  ; $7184: $01 $03 $08
    rlca                                          ; $7187: $07
    ld bc, $E30E                                  ; $7188: $01 $0E $E3
    db $10                                        ; $718B: $10
    ret c                                         ; $718C: $D8

    ld [$0F1C], sp                                ; $718D: $08 $1C $0F
    jr jr_001_719A                                ; $7190: $18 $08

    add hl, de                                    ; $7192: $19
    ld a, [$5939]                                 ; $7193: $FA $39 $59
    ld a, c                                       ; $7196: $79
    sbc c                                         ; $7197: $99
    rlca                                          ; $7198: $07
    rst RST_38                                    ; $7199: $FF

jr_001_719A:
    add hl, bc                                    ; $719A: $09
    ld a, a                                       ; $719B: $7F
    ccf                                           ; $719C: $3F
    add e                                         ; $719D: $83
    cp $33                                        ; $719E: $FE $33
    rrca                                          ; $71A0: $0F
    add hl, bc                                    ; $71A1: $09
    ld a, c                                       ; $71A2: $79
    sbc c                                         ; $71A3: $99
    ld sp, $07A8                                  ; $71A4: $31 $A8 $07
    ldh [$FF08], a                                ; $71A7: $E0 $08
    ld hl, sp+$08                                 ; $71A9: $F8 $08
    db $FC                                        ; $71AB: $FC
    add b                                         ; $71AC: $80
    ld [hl], b                                    ; $71AD: $70
    cpl                                           ; $71AE: $2F
    ret nz                                        ; $71AF: $C0

    ld a, h                                       ; $71B0: $7C
    ld [$503E], sp                                ; $71B1: $08 $3E $50
    add hl, de                                    ; $71B4: $19
    add hl, sp                                    ; $71B5: $39
    ld e, c                                       ; $71B6: $59
    jp hl                                         ; $71B7: $E9


    ld a, c                                       ; $71B8: $79
    sbc c                                         ; $71B9: $99
    rlca                                          ; $71BA: $07
    rlca                                          ; $71BB: $07
    ld [$031F], sp                                ; $71BC: $08 $1F $03
    cp b                                          ; $71BF: $B8
    add hl, de                                    ; $71C0: $19
    rrca                                          ; $71C1: $0F
    ld a, b                                       ; $71C2: $78
    ccf                                           ; $71C3: $3F
    cp b                                          ; $71C4: $B8
    ld [$7FF0], sp                                ; $71C5: $08 $F0 $7F
    xor b                                         ; $71C8: $A8
    rst RST_38                                    ; $71C9: $FF
    ld [$3919], sp                                ; $71CA: $08 $19 $39
    ld e, c                                       ; $71CD: $59
    ld a, c                                       ; $71CE: $79
    sbc c                                         ; $71CF: $99
    cp c                                          ; $71D0: $B9
    dec b                                         ; $71D1: $05
    ld h, l                                       ; $71D2: $65
    ret nz                                        ; $71D3: $C0

    ld [$8098], sp                                ; $71D4: $08 $98 $80
    ld hl, sp-$40                                 ; $71D7: $F8 $C0
    inc a                                         ; $71D9: $3C
    db $10                                        ; $71DA: $10
    ld b, a                                       ; $71DB: $47
    inc e                                         ; $71DC: $1C
    ld [$FC1E], sp                                ; $71DD: $08 $1E $FC
    ld c, $08                                     ; $71E0: $0E $08
    add hl, de                                    ; $71E2: $19
    add hl, sp                                    ; $71E3: $39
    ld a, [$7959]                                 ; $71E4: $FA $59 $79
    sbc c                                         ; $71E7: $99
    cp c                                          ; $71E8: $B9
    ld bc, $0803                                  ; $71E9: $01 $03 $08
    rlca                                          ; $71EC: $07
    and b                                         ; $71ED: $A0
    db $10                                        ; $71EE: $10
    dec c                                         ; $71EF: $0D
    db $10                                        ; $71F0: $10
    dec de                                        ; $71F1: $1B
    rrca                                          ; $71F2: $0F
    ld [hl], $1F                                  ; $71F3: $36 $1F
    jr nc, jr_001_7180                            ; $71F5: $30 $89

    ld [$3F60], sp                                ; $71F7: $08 $60 $3F
    ld l, b                                       ; $71FA: $68
    ld [$7FC1], sp                                ; $71FB: $08 $C1 $7F
    xor b                                         ; $71FE: $A8
    or a                                          ; $71FF: $B7
    ld [$2870], sp                                ; $7200: $08 $70 $28
    ld e, c                                       ; $7203: $59
    ld a, [de]                                    ; $7204: $1A
    adc b                                         ; $7205: $88
    xor c                                         ; $7206: $A9
    nop                                           ; $7207: $00
    ld d, b                                       ; $7208: $50
    ld [bc], a                                    ; $7209: $02
    jp hl                                         ; $720A: $E9


    rst RST_38                                    ; $720B: $FF
    add hl, bc                                    ; $720C: $09
    inc a                                         ; $720D: $3C
    jp Jump_000_3BFC                              ; $720E: $C3 $FC $3B


    xor a                                         ; $7211: $AF
    ld [$3077], sp                                ; $7212: $08 $77 $30
    inc c                                         ; $7215: $0C
    ld [$08A8], sp                                ; $7216: $08 $A8 $08
    ret c                                         ; $7219: $D8

    xor l                                         ; $721A: $AD
    ld [$0880], sp                                ; $721B: $08 $80 $08
    ld bc, $B808                                  ; $721E: $01 $08 $B8
    cp $19                                        ; $7221: $FE $19
    ld e, e                                       ; $7223: $5B
    ld h, b                                       ; $7224: $60
    ld [$08F8], sp                                ; $7225: $08 $F8 $08
    nop                                           ; $7228: $00
    rrca                                          ; $7229: $0F
    jp hl                                         ; $722A: $E9


    ret nz                                        ; $722B: $C0

    cp l                                          ; $722C: $BD
    ld [$08F0], sp                                ; $722D: $08 $F0 $08
    sbc b                                         ; $7230: $98
    add hl, hl                                    ; $7231: $29
    db $10                                        ; $7232: $10
    ld [hl], b                                    ; $7233: $70
    ret nc                                        ; $7234: $D0

    ld e, e                                       ; $7235: $5B
    ldh [$FF08], a                                ; $7236: $E0 $08
    jr c, @+$12                                   ; $7238: $38 $10

    add hl, hl                                    ; $723A: $29
    ccf                                           ; $723B: $3F
    jr jr_001_7296                                ; $723C: $18 $58

    rst RST_38                                    ; $723E: $FF
    ld c, c                                       ; $723F: $49
    sbc d                                         ; $7240: $9A
    jr nz, @-$76                                  ; $7241: $20 $88

    jr @+$0A                                      ; $7243: $18 $08

    reti                                          ; $7245: $D9


    jr z, @-$2A                                   ; $7246: $28 $D4

    jp c, $2019                                   ; $7248: $DA $19 $20

    db $10                                        ; $724B: $10
    ld hl, $9108                                  ; $724C: $21 $08 $91
    ld h, b                                       ; $724F: $60

jr_001_7250:
    ld b, b                                       ; $7250: $40
    ld d, [hl]                                    ; $7251: $56
    jr nz, @-$55                                  ; $7252: $20 $A9

    rla                                           ; $7254: $17
    ld d, h                                       ; $7255: $54
    adc e                                         ; $7256: $8B
    ld d, d                                       ; $7257: $52
    adc l                                         ; $7258: $8D
    nop                                           ; $7259: $00
    dec [hl]                                      ; $725A: $35
    adc $99                                       ; $725B: $CE $99
    ld h, [hl]                                    ; $725D: $66
    ld l, [hl]                                    ; $725E: $6E
    ld de, $0815                                  ; $725F: $11 $15 $08
    ld h, l                                       ; $7262: $65
    ld d, $08                                     ; $7263: $16 $08
    jr nz, @+$10                                  ; $7265: $20 $0E

    rrca                                          ; $7267: $0F
    ret c                                         ; $7268: $D8

    ld a, h                                       ; $7269: $7C
    ld [$FC0C], sp                                ; $726A: $08 $0C $FC
    ld a, b                                       ; $726D: $78
    jr c, jr_001_7250                             ; $726E: $38 $E0

    nop                                           ; $7270: $00
    jr z, jr_001_72B3                             ; $7271: $28 $40

    add b                                         ; $7273: $80
    jr jr_001_7296                                ; $7274: $18 $20

    ret nz                                        ; $7276: $C0

    cp h                                          ; $7277: $BC
    ld [$9CB8], sp                                ; $7278: $08 $B8 $9C
    ld e, a                                       ; $727B: $5F
    add [hl]                                      ; $727C: $86
    ld d, e                                       ; $727D: $53
    rst RST_00                                    ; $727E: $C7
    ld e, b                                       ; $727F: $58
    ld a, [$0408]                                 ; $7280: $FA $08 $04
    ld hl, sp+$28                                 ; $7283: $F8 $28
    and b                                         ; $7285: $A0
    ld e, [hl]                                    ; $7286: $5E
    inc a                                         ; $7287: $3C
    jr z, @+$04                                   ; $7288: $28 $02

    ld [$0507], sp                                ; $728A: $08 $07 $05
    ld a, c                                       ; $728D: $79
    ld bc, $08BF                                  ; $728E: $01 $BF $08
    rlca                                          ; $7291: $07
    ld a, [de]                                    ; $7292: $1A
    inc bc                                        ; $7293: $03
    add hl, hl                                    ; $7294: $29
    rrca                                          ; $7295: $0F

jr_001_7296:
    add hl, bc                                    ; $7296: $09
    cp b                                          ; $7297: $B8
    rl b                                          ; $7298: $CB $10
    add hl, bc                                    ; $729A: $09
    inc b                                         ; $729B: $04
    inc bc                                        ; $729C: $03
    dec bc                                        ; $729D: $0B
    ld [$0BF0], sp                                ; $729E: $08 $F0 $0B
    dec a                                         ; $72A1: $3D
    db $10                                        ; $72A2: $10
    rrca                                          ; $72A3: $0F
    rrca                                          ; $72A4: $0F
    add hl, bc                                    ; $72A5: $09
    ldh [rP1], a                                  ; $72A6: $E0 $00
    add b                                         ; $72A8: $80
    ld [$4056], sp                                ; $72A9: $08 $56 $40
    db $10                                        ; $72AC: $10
    ret nz                                        ; $72AD: $C0

    jr jr_001_7250                                ; $72AE: $18 $A0

    jr nz, jr_001_72BB                            ; $72B0: $20 $09

    sub b                                         ; $72B2: $90

jr_001_72B3:
    ld l, [hl]                                    ; $72B3: $6E
    ld h, b                                       ; $72B4: $60
    dec bc                                        ; $72B5: $0B
    ld hl, sp-$10                                 ; $72B6: $F8 $F0
    rrca                                          ; $72B8: $0F
    dec bc                                        ; $72B9: $0B
    ld sp, hl                                     ; $72BA: $F9

jr_001_72BB:
    inc bc                                        ; $72BB: $03
    or b                                          ; $72BC: $B0
    ld [$1004], sp                                ; $72BD: $08 $04 $10
    jr c, jr_001_72C9                             ; $72C0: $38 $07

    db $10                                        ; $72C2: $10
    rrca                                          ; $72C3: $0F
    jr nz, jr_001_72CB                            ; $72C4: $20 $05

    rra                                           ; $72C6: $1F
    ld b, b                                       ; $72C7: $40
    ccf                                           ; $72C8: $3F

jr_001_72C9:
    add b                                         ; $72C9: $80
    ld a, a                                       ; $72CA: $7F

jr_001_72CB:
    ld h, b                                       ; $72CB: $60
    rst RST_38                                    ; $72CC: $FF
    rrca                                          ; $72CD: $0F
    db $EC                                        ; $72CE: $EC
    dec c                                         ; $72CF: $0D
    adc b                                         ; $72D0: $88
    db $10                                        ; $72D1: $10
    ld h, b                                       ; $72D2: $60
    db $10                                        ; $72D3: $10
    ret c                                         ; $72D4: $D8

    ldh [$FFC8], a                                ; $72D5: $E0 $C8
    dec c                                         ; $72D7: $0D
    jr nc, jr_001_730E                            ; $72D8: $30 $34

    ld [$480C], sp                                ; $72DA: $08 $0C $48
    dec b                                         ; $72DD: $05
    ld bc, $EA0A                                  ; $72DE: $01 $0A $EA
    rlca                                          ; $72E1: $07
    rlca                                          ; $72E2: $07
    dec b                                         ; $72E3: $05
    rlca                                          ; $72E4: $07
    ld [$1038], sp                                ; $72E5: $08 $38 $10
    ret nz                                        ; $72E8: $C0

    ld e, [hl]                                    ; $72E9: $5E
    ccf                                           ; $72EA: $3F
    jr nz, @+$01                                  ; $72EB: $20 $FF

    rrca                                          ; $72ED: $0F
    inc c                                         ; $72EE: $0C
    rlca                                          ; $72EF: $07
    ld [bc], a                                    ; $72F0: $02
    ldh a, [$FFA4]                                ; $72F1: $F0 $A4
    ld [$100E], sp                                ; $72F3: $08 $0E $10
    ld bc, $ABFE                                  ; $72F6: $01 $FE $AB
    rra                                           ; $72F9: $1F
    ldh [$FF3B], a                                ; $72FA: $E0 $3B
    ld h, b                                       ; $72FC: $60
    add b                                         ; $72FD: $80
    nop                                           ; $72FE: $00
    or a                                          ; $72FF: $B7
    ld b, $7F                                     ; $7300: $06 $7F
    ld [$F088], sp                                ; $7302: $08 $88 $F0
    ld de, $0FDA                                  ; $7305: $11 $DA $0F
    add hl, bc                                    ; $7308: $09
    ld bc, $02FE                                  ; $7309: $01 $FE $02
    db $FC                                        ; $730C: $FC
    rst RST_20                                    ; $730D: $E7

jr_001_730E:
    ld e, a                                       ; $730E: $5F
    rrca                                          ; $730F: $0F
    add hl, bc                                    ; $7310: $09
    add b                                         ; $7311: $80
    ld a, a                                       ; $7312: $7F
    nop                                           ; $7313: $00
    jr nz, @+$09                                  ; $7314: $20 $07

    sub e                                         ; $7316: $93
    ld bc, $F804                                  ; $7317: $01 $04 $F8
    add hl, bc                                    ; $731A: $09
    ld [$0FF0], sp                                ; $731B: $08 $F0 $0F
    dec bc                                        ; $731E: $0B
    add l                                         ; $731F: $85
    adc e                                         ; $7320: $8B
    ld [bc], a                                    ; $7321: $02
    db $FC                                        ; $7322: $FC
    ld bc, $D0FE                                  ; $7323: $01 $FE $D0
    rst RST_38                                    ; $7326: $FF
    inc c                                         ; $7327: $0C
    push af                                       ; $7328: $F5
    rlca                                          ; $7329: $07
    rlca                                          ; $732A: $07
    rlca                                          ; $732B: $07
    nop                                           ; $732C: $00
    add b                                         ; $732D: $80
    ld [$1060], sp                                ; $732E: $08 $60 $10
    ld a, [hl+]                                   ; $7331: $2A
    rra                                           ; $7332: $1F
    ldh [$FF39], a                                ; $7333: $E0 $39
    ld bc, $020A                                  ; $7335: $01 $0A $02
    db $10                                        ; $7338: $10
    inc b                                         ; $7339: $04
    ld bc, $0803                                  ; $733A: $01 $03 $08
    rlca                                          ; $733D: $07
    jr nc, jr_001_734F                            ; $733E: $30 $0F

    ret nz                                        ; $7340: $C0

    ccf                                           ; $7341: $3F
    ld d, b                                       ; $7342: $50
    ld a, [hl]                                    ; $7343: $7E
    rst RST_38                                    ; $7344: $FF
    rrca                                          ; $7345: $0F
    rrca                                          ; $7346: $0F
    rrca                                          ; $7347: $0F
    rrca                                          ; $7348: $0F
    rrca                                          ; $7349: $0F
    dec c                                         ; $734A: $0D
    nop                                           ; $734B: $00
    ld bc, $0000                                  ; $734C: $01 $00 $00

jr_001_734F:
    ld [hl+], a                                   ; $734F: $22
    ld bc, $0220                                  ; $7350: $01 $20 $02
    inc h                                         ; $7353: $24
    ld bc, $0460                                  ; $7354: $01 $60 $04
    inc h                                         ; $7357: $24
    ld bc, $06A0                                  ; $7358: $01 $A0 $06
    inc h                                         ; $735B: $24
    ld bc, $08E0                                  ; $735C: $01 $E0 $08
    ld [hl+], a                                   ; $735F: $22
    ld bc, $0000                                  ; $7360: $01 $00 $00
    ld [hl+], a                                   ; $7363: $22
    ld bc, $0220                                  ; $7364: $01 $20 $02
    inc h                                         ; $7367: $24
    ld bc, $0460                                  ; $7368: $01 $60 $04
    ld [hl+], a                                   ; $736B: $22
    ld bc, $0680                                  ; $736C: $01 $80 $06
    db $10                                        ; $736F: $10
    ld bc, $0780                                  ; $7370: $01 $80 $07
    inc h                                         ; $7373: $24
    inc a                                         ; $7374: $3C
    nop                                           ; $7375: $00
    inc a                                         ; $7376: $3C
    jr jr_001_73B5                                ; $7377: $18 $3C

    jr jr_001_73B7                                ; $7379: $18 $3C

    jr jr_001_73B9                                ; $737B: $18 $3C

    jr jr_001_73BB                                ; $737D: $18 $3C

    jr jr_001_73BD                                ; $737F: $18 $3C

    jr jr_001_73BF                                ; $7381: $18 $3C

    jr jr_001_73C1                                ; $7383: $18 $3C

    jr jr_001_73C3                                ; $7385: $18 $3C

    jr jr_001_73C5                                ; $7387: $18 $3C

    jr jr_001_73C7                                ; $7389: $18 $3C

    jr jr_001_73C9                                ; $738B: $18 $3C

    jr jr_001_73CB                                ; $738D: $18 $3C

    jr jr_001_73CD                                ; $738F: $18 $3C

    jr jr_001_73CF                                ; $7391: $18 $3C

    jr jr_001_73D1                                ; $7393: $18 $3C

    jr jr_001_73D3                                ; $7395: $18 $3C

    jr jr_001_73D5                                ; $7397: $18 $3C

    jr jr_001_73D7                                ; $7399: $18 $3C

    jr jr_001_73D9                                ; $739B: $18 $3C

    jr jr_001_73DB                                ; $739D: $18 $3C

    jr jr_001_73DD                                ; $739F: $18 $3C

    jr @+$3E                                      ; $73A1: $18 $3C

    jr @+$3E                                      ; $73A3: $18 $3C

    jr jr_001_73E3                                ; $73A5: $18 $3C

    jr @+$3E                                      ; $73A7: $18 $3C

    jr jr_001_73E7                                ; $73A9: $18 $3C

    jr @+$3E                                      ; $73AB: $18 $3C

    jr jr_001_73EB                                ; $73AD: $18 $3C

    jr @+$3E                                      ; $73AF: $18 $3C

    jr jr_001_73EF                                ; $73B1: $18 $3C

    jr @+$3E                                      ; $73B3: $18 $3C

jr_001_73B5:
    jr jr_001_73F3                                ; $73B5: $18 $3C

jr_001_73B7:
    jr @+$3E                                      ; $73B7: $18 $3C

jr_001_73B9:
    jr jr_001_73F7                                ; $73B9: $18 $3C

jr_001_73BB:
    jr jr_001_73F9                                ; $73BB: $18 $3C

jr_001_73BD:
    jr jr_001_73FB                                ; $73BD: $18 $3C

jr_001_73BF:
    jr jr_001_73FD                                ; $73BF: $18 $3C

jr_001_73C1:
    jr jr_001_73FF                                ; $73C1: $18 $3C

jr_001_73C3:
    nop                                           ; $73C3: $00
    nop                                           ; $73C4: $00

jr_001_73C5:
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00

jr_001_73C7:
    nop                                           ; $73C7: $00
    nop                                           ; $73C8: $00

jr_001_73C9:
    nop                                           ; $73C9: $00
    nop                                           ; $73CA: $00

jr_001_73CB:
    nop                                           ; $73CB: $00
    nop                                           ; $73CC: $00

jr_001_73CD:
    nop                                           ; $73CD: $00
    nop                                           ; $73CE: $00

jr_001_73CF:
    nop                                           ; $73CF: $00
    nop                                           ; $73D0: $00

jr_001_73D1:
    nop                                           ; $73D1: $00
    nop                                           ; $73D2: $00

jr_001_73D3:
    nop                                           ; $73D3: $00
    inc b                                         ; $73D4: $04

jr_001_73D5:
    nop                                           ; $73D5: $00
    ld a, [bc]                                    ; $73D6: $0A

jr_001_73D7:
    inc b                                         ; $73D7: $04
    ld a, [bc]                                    ; $73D8: $0A

jr_001_73D9:
    inc b                                         ; $73D9: $04
    add hl, bc                                    ; $73DA: $09

jr_001_73DB:
    ld b, $15                                     ; $73DB: $06 $15

jr_001_73DD:
    ld a, [bc]                                    ; $73DD: $0A
    ld d, $09                                     ; $73DE: $16 $09
    ld d, $09                                     ; $73E0: $16 $09
    rla                                           ; $73E2: $17

jr_001_73E3:
    ld [$0817], sp                                ; $73E3: $08 $17 $08
    rla                                           ; $73E6: $17

jr_001_73E7:
    ld [$0817], sp                                ; $73E7: $08 $17 $08
    rla                                           ; $73EA: $17

jr_001_73EB:
    ld [$0817], sp                                ; $73EB: $08 $17 $08
    rla                                           ; $73EE: $17

jr_001_73EF:
    ld [$0817], sp                                ; $73EF: $08 $17 $08
    rla                                           ; $73F2: $17

jr_001_73F3:
    ld [$0080], sp                                ; $73F3: $08 $80 $00
    add b                                         ; $73F6: $80

jr_001_73F7:
    nop                                           ; $73F7: $00
    ld b, e                                       ; $73F8: $43

jr_001_73F9:
    add b                                         ; $73F9: $80
    ld c, h                                       ; $73FA: $4C

jr_001_73FB:
    add e                                         ; $73FB: $83
    or e                                          ; $73FC: $B3

jr_001_73FD:
    ld c, h                                       ; $73FD: $4C
    adc a                                         ; $73FE: $8F

jr_001_73FF:
    ld [hl], b                                    ; $73FF: $70
    rst RST_18                                    ; $7400: $DF
    jr nz, @+$01                                  ; $7401: $20 $FF

    nop                                           ; $7403: $00
    rst RST_38                                    ; $7404: $FF
    nop                                           ; $7405: $00
    rst RST_38                                    ; $7406: $FF
    nop                                           ; $7407: $00
    rst RST_38                                    ; $7408: $FF
    nop                                           ; $7409: $00
    rst RST_38                                    ; $740A: $FF
    nop                                           ; $740B: $00
    rst RST_38                                    ; $740C: $FF
    nop                                           ; $740D: $00
    jp $E03C                                      ; $740E: $C3 $3C $E0


    rra                                           ; $7411: $1F
    ldh a, [rIF]                                  ; $7412: $F0 $0F
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    rst RST_38                                    ; $7418: $FF
    nop                                           ; $7419: $00
    nop                                           ; $741A: $00
    rst RST_38                                    ; $741B: $FF
    rst RST_38                                    ; $741C: $FF
    nop                                           ; $741D: $00
    rst RST_38                                    ; $741E: $FF
    nop                                           ; $741F: $00
    rst RST_38                                    ; $7420: $FF
    nop                                           ; $7421: $00
    rst RST_38                                    ; $7422: $FF
    nop                                           ; $7423: $00
    rst RST_38                                    ; $7424: $FF
    nop                                           ; $7425: $00
    rst RST_38                                    ; $7426: $FF
    nop                                           ; $7427: $00
    rst RST_38                                    ; $7428: $FF
    nop                                           ; $7429: $00
    rst RST_38                                    ; $742A: $FF
    nop                                           ; $742B: $00
    rst RST_38                                    ; $742C: $FF
    nop                                           ; $742D: $00
    rst RST_38                                    ; $742E: $FF
    nop                                           ; $742F: $00
    inc a                                         ; $7430: $3C
    jp $C33C                                      ; $7431: $C3 $3C $C3


    ld bc, $0100                                  ; $7434: $01 $00 $01
    nop                                           ; $7437: $00
    jp nz, $3201                                  ; $7438: $C2 $01 $32

    pop bc                                        ; $743B: $C1
    call $F132                                    ; $743C: $CD $32 $F1
    ld c, $FB                                     ; $743F: $0E $FB
    inc b                                         ; $7441: $04
    rst RST_38                                    ; $7442: $FF
    nop                                           ; $7443: $00
    rst RST_38                                    ; $7444: $FF
    nop                                           ; $7445: $00
    rst RST_38                                    ; $7446: $FF
    nop                                           ; $7447: $00
    rst RST_38                                    ; $7448: $FF
    nop                                           ; $7449: $00
    rst RST_38                                    ; $744A: $FF
    nop                                           ; $744B: $00
    rst RST_38                                    ; $744C: $FF
    nop                                           ; $744D: $00
    jp $073C                                      ; $744E: $C3 $3C $07


    ld hl, sp+$0F                                 ; $7451: $F8 $0F
    ldh a, [rNR41]                                ; $7453: $F0 $20
    nop                                           ; $7455: $00
    ld d, b                                       ; $7456: $50
    jr nz, jr_001_74A9                            ; $7457: $20 $50

    jr nz, jr_001_73EB                            ; $7459: $20 $90

    ld h, b                                       ; $745B: $60
    xor b                                         ; $745C: $A8
    ld d, b                                       ; $745D: $50
    ld l, b                                       ; $745E: $68
    sub b                                         ; $745F: $90
    ld l, b                                       ; $7460: $68
    sub b                                         ; $7461: $90
    add sp, $10                                   ; $7462: $E8 $10
    add sp, $10                                   ; $7464: $E8 $10
    add sp, $10                                   ; $7466: $E8 $10
    add sp, $10                                   ; $7468: $E8 $10
    add sp, $10                                   ; $746A: $E8 $10
    add sp, $10                                   ; $746C: $E8 $10
    add sp, $10                                   ; $746E: $E8 $10
    add sp, $10                                   ; $7470: $E8 $10
    add sp, $10                                   ; $7472: $E8 $10
    rla                                           ; $7474: $17
    ld [$0817], sp                                ; $7475: $08 $17 $08
    rla                                           ; $7478: $17
    ld [$040B], sp                                ; $7479: $08 $0B $04
    dec b                                         ; $747C: $05
    ld [bc], a                                    ; $747D: $02
    inc b                                         ; $747E: $04
    inc bc                                        ; $747F: $03
    dec b                                         ; $7480: $05
    ld [bc], a                                    ; $7481: $02
    dec b                                         ; $7482: $05
    ld [bc], a                                    ; $7483: $02
    dec b                                         ; $7484: $05
    ld [bc], a                                    ; $7485: $02
    ld [bc], a                                    ; $7486: $02
    ld bc, $0102                                  ; $7487: $01 $02 $01
    ld bc, $0000                                  ; $748A: $01 $00 $00
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00
    nop                                           ; $748F: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    ld a, b                                       ; $7494: $78
    add a                                         ; $7495: $87
    ld a, $C1                                     ; $7496: $3E $C1
    sbc a                                         ; $7498: $9F
    ld h, b                                       ; $7499: $60
    adc a                                         ; $749A: $8F
    ld [hl], b                                    ; $749B: $70
    xor a                                         ; $749C: $AF

jr_001_749D:
    ld d, b                                       ; $749D: $50
    or a                                          ; $749E: $B7
    ld c, b                                       ; $749F: $48
    scf                                           ; $74A0: $37
    ret z                                         ; $74A1: $C8

    or a                                          ; $74A2: $B7
    ld c, b                                       ; $74A3: $48
    ld d, a                                       ; $74A4: $57
    jr z, jr_001_74D6                             ; $74A5: $28 $2F

    db $10                                        ; $74A7: $10
    cpl                                           ; $74A8: $2F

jr_001_74A9:
    db $10                                        ; $74A9: $10
    ld l, $11                                     ; $74AA: $2E $11
    ld l, $11                                     ; $74AC: $2E $11
    ld l, $11                                     ; $74AE: $2E $11
    ld d, $09                                     ; $74B0: $16 $09
    ld d, $09                                     ; $74B2: $16 $09
    ld a, [hl]                                    ; $74B4: $7E
    add c                                         ; $74B5: $81
    ld a, [hl]                                    ; $74B6: $7E
    add c                                         ; $74B7: $81
    rst RST_38                                    ; $74B8: $FF
    nop                                           ; $74B9: $00
    rst RST_38                                    ; $74BA: $FF
    nop                                           ; $74BB: $00
    rst RST_38                                    ; $74BC: $FF
    nop                                           ; $74BD: $00
    rst RST_38                                    ; $74BE: $FF
    nop                                           ; $74BF: $00

jr_001_74C0:
    rst RST_38                                    ; $74C0: $FF
    nop                                           ; $74C1: $00
    rst RST_38                                    ; $74C2: $FF
    nop                                           ; $74C3: $00
    rst RST_38                                    ; $74C4: $FF
    nop                                           ; $74C5: $00
    rst RST_38                                    ; $74C6: $FF
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    rst RST_38                                    ; $74C9: $FF
    ld a, [hl]                                    ; $74CA: $7E
    add c                                         ; $74CB: $81
    add c                                         ; $74CC: $81
    nop                                           ; $74CD: $00
    add c                                         ; $74CE: $81
    nop                                           ; $74CF: $00
    add c                                         ; $74D0: $81
    nop                                           ; $74D1: $00
    add c                                         ; $74D2: $81
    nop                                           ; $74D3: $00
    ld e, $E1                                     ; $74D4: $1E $E1

jr_001_74D6:
    ld a, h                                       ; $74D6: $7C
    add e                                         ; $74D7: $83
    ld sp, hl                                     ; $74D8: $F9
    ld b, $F1                                     ; $74D9: $06 $F1
    ld c, $F5                                     ; $74DB: $0E $F5
    ld a, [bc]                                    ; $74DD: $0A
    db $ED                                        ; $74DE: $ED
    ld [de], a                                    ; $74DF: $12
    db $EC                                        ; $74E0: $EC
    inc de                                        ; $74E1: $13
    db $ED                                        ; $74E2: $ED
    ld [de], a                                    ; $74E3: $12
    ld [$F414], a                                 ; $74E4: $EA $14 $F4
    ld [$08F4], sp                                ; $74E7: $08 $F4 $08
    ld [hl], h                                    ; $74EA: $74
    adc b                                         ; $74EB: $88
    ld [hl], h                                    ; $74EC: $74
    adc b                                         ; $74ED: $88
    ld [hl], h                                    ; $74EE: $74
    adc b                                         ; $74EF: $88
    ld l, b                                       ; $74F0: $68
    sub b                                         ; $74F1: $90
    ld l, b                                       ; $74F2: $68
    sub b                                         ; $74F3: $90
    add sp, $10                                   ; $74F4: $E8 $10
    add sp, $10                                   ; $74F6: $E8 $10
    add sp, $10                                   ; $74F8: $E8 $10
    ret nc                                        ; $74FA: $D0

    jr nz, jr_001_749D                            ; $74FB: $20 $A0

    ld b, b                                       ; $74FD: $40
    jr nz, jr_001_74C0                            ; $74FE: $20 $C0

    and b                                         ; $7500: $A0
    ld b, b                                       ; $7501: $40
    and b                                         ; $7502: $A0
    ld b, b                                       ; $7503: $40
    and b                                         ; $7504: $A0
    ld b, b                                       ; $7505: $40
    ld b, b                                       ; $7506: $40
    add b                                         ; $7507: $80
    ld b, b                                       ; $7508: $40

jr_001_7509:
    add b                                         ; $7509: $80
    add b                                         ; $750A: $80
    nop                                           ; $750B: $00
    nop                                           ; $750C: $00
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    dec d                                         ; $7514: $15
    ld a, [bc]                                    ; $7515: $0A
    add hl, bc                                    ; $7516: $09
    ld b, $07                                     ; $7517: $06 $07
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752A: $00
    nop                                           ; $752B: $00
    nop                                           ; $752C: $00
    nop                                           ; $752D: $00
    nop                                           ; $752E: $00
    nop                                           ; $752F: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    xor b                                         ; $7534: $A8
    ld d, b                                       ; $7535: $50
    sub b                                         ; $7536: $90
    ld h, b                                       ; $7537: $60
    ldh [rP1], a                                  ; $7538: $E0 $00
    nop                                           ; $753A: $00
    nop                                           ; $753B: $00
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754A: $00
    nop                                           ; $754B: $00
    nop                                           ; $754C: $00
    nop                                           ; $754D: $00
    nop                                           ; $754E: $00
    nop                                           ; $754F: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    jr nc, jr_001_7556                            ; $7554: $30 $00

jr_001_7556:
    ld e, b                                       ; $7556: $58
    jr nz, @+$5A                                  ; $7557: $20 $58

    jr nz, jr_001_75A7                            ; $7559: $20 $4C

    jr nc, jr_001_7509                            ; $755B: $30 $AC

    ld d, b                                       ; $755D: $50
    or [hl]                                       ; $755E: $B6
    ld c, b                                       ; $755F: $48
    or [hl]                                       ; $7560: $B6
    ld c, b                                       ; $7561: $48
    cp e                                          ; $7562: $BB
    ld b, h                                       ; $7563: $44
    cp e                                          ; $7564: $BB
    ld b, h                                       ; $7565: $44
    cp l                                          ; $7566: $BD
    ld b, d                                       ; $7567: $42
    cp h                                          ; $7568: $BC
    ld b, e                                       ; $7569: $43
    cp [hl]                                       ; $756A: $BE
    ld b, c                                       ; $756B: $41
    cp a                                          ; $756C: $BF
    ld b, b                                       ; $756D: $40
    cp a                                          ; $756E: $BF
    ld b, b                                       ; $756F: $40
    cp a                                          ; $7570: $BF
    ld b, b                                       ; $7571: $40
    cp a                                          ; $7572: $BF
    ld b, b                                       ; $7573: $40
    rra                                           ; $7574: $1F
    nop                                           ; $7575: $00
    ldh [$FF1F], a                                ; $7576: $E0 $1F
    sbc a                                         ; $7578: $9F
    ld h, b                                       ; $7579: $60
    ld a, a                                       ; $757A: $7F
    add b                                         ; $757B: $80
    rst RST_38                                    ; $757C: $FF
    nop                                           ; $757D: $00
    rst RST_38                                    ; $757E: $FF
    nop                                           ; $757F: $00
    rst RST_38                                    ; $7580: $FF
    nop                                           ; $7581: $00

jr_001_7582:
    rst RST_38                                    ; $7582: $FF
    nop                                           ; $7583: $00
    rst RST_38                                    ; $7584: $FF
    nop                                           ; $7585: $00
    rst RST_38                                    ; $7586: $FF
    nop                                           ; $7587: $00
    rst RST_38                                    ; $7588: $FF
    nop                                           ; $7589: $00
    rra                                           ; $758A: $1F
    ldh [rTAC], a                                 ; $758B: $E0 $07
    ld hl, sp-$79                                 ; $758D: $F8 $87
    ld a, b                                       ; $758F: $78
    rst RST_08                                    ; $7590: $CF
    jr nc, jr_001_7582                            ; $7591: $30 $EF

    db $10                                        ; $7593: $10
    ld hl, sp+$00                                 ; $7594: $F8 $00
    ld b, $F8                                     ; $7596: $06 $F8
    ld sp, hl                                     ; $7598: $F9
    ld b, $FE                                     ; $7599: $06 $FE
    ld bc, $00FF                                  ; $759B: $01 $FF $00
    rst RST_38                                    ; $759E: $FF
    nop                                           ; $759F: $00
    rst RST_38                                    ; $75A0: $FF
    nop                                           ; $75A1: $00
    rst RST_38                                    ; $75A2: $FF
    nop                                           ; $75A3: $00
    rst RST_38                                    ; $75A4: $FF
    nop                                           ; $75A5: $00
    rst RST_38                                    ; $75A6: $FF

jr_001_75A7:
    nop                                           ; $75A7: $00
    rst RST_38                                    ; $75A8: $FF
    nop                                           ; $75A9: $00
    ld hl, sp+$07                                 ; $75AA: $F8 $07
    add b                                         ; $75AC: $80
    ld a, a                                       ; $75AD: $7F
    add c                                         ; $75AE: $81
    ld a, [hl]                                    ; $75AF: $7E
    jp $CF3C                                      ; $75B0: $C3 $3C $CF


    jr nc, jr_001_75BB                            ; $75B3: $30 $06

    nop                                           ; $75B5: $00
    dec bc                                        ; $75B6: $0B
    inc b                                         ; $75B7: $04
    dec bc                                        ; $75B8: $0B
    inc b                                         ; $75B9: $04
    inc de                                        ; $75BA: $13

jr_001_75BB:
    inc c                                         ; $75BB: $0C
    dec d                                         ; $75BC: $15
    ld a, [bc]                                    ; $75BD: $0A

jr_001_75BE:
    dec l                                         ; $75BE: $2D
    ld [de], a                                    ; $75BF: $12
    dec l                                         ; $75C0: $2D
    ld [de], a                                    ; $75C1: $12
    ld e, l                                       ; $75C2: $5D
    ld [hl+], a                                   ; $75C3: $22
    ld e, l                                       ; $75C4: $5D
    ld [hl+], a                                   ; $75C5: $22
    cp l                                          ; $75C6: $BD
    ld b, d                                       ; $75C7: $42
    dec a                                         ; $75C8: $3D
    jp nz, $827D                                  ; $75C9: $C2 $7D $82

    db $FD                                        ; $75CC: $FD
    ld [bc], a                                    ; $75CD: $02
    db $FD                                        ; $75CE: $FD
    ld [bc], a                                    ; $75CF: $02
    db $FD                                        ; $75D0: $FD
    ld [bc], a                                    ; $75D1: $02
    db $FD                                        ; $75D2: $FD
    ld [bc], a                                    ; $75D3: $02
    cp a                                          ; $75D4: $BF
    ld b, b                                       ; $75D5: $40
    cp a                                          ; $75D6: $BF
    ld b, b                                       ; $75D7: $40
    cp [hl]                                       ; $75D8: $BE
    ld b, c                                       ; $75D9: $41
    ld e, a                                       ; $75DA: $5F
    jr nz, @+$31                                  ; $75DB: $20 $2F

    db $10                                        ; $75DD: $10
    inc hl                                        ; $75DE: $23
    inc e                                         ; $75DF: $1C
    add hl, hl                                    ; $75E0: $29
    ld d, $2C                                     ; $75E1: $16 $2C
    inc de                                        ; $75E3: $13
    inc l                                         ; $75E4: $2C
    inc de                                        ; $75E5: $13
    dec d                                         ; $75E6: $15
    ld a, [bc]                                    ; $75E7: $0A
    dec d                                         ; $75E8: $15
    ld a, [bc]                                    ; $75E9: $0A
    add hl, bc                                    ; $75EA: $09
    ld b, $05                                     ; $75EB: $06 $05
    ld [bc], a                                    ; $75ED: $02
    ld [bc], a                                    ; $75EE: $02
    ld bc, $0001                                  ; $75EF: $01 $01 $00
    ld bc, $CF00                                  ; $75F2: $01 $00 $CF
    jr nc, jr_001_75BE                            ; $75F5: $30 $C7

    jr c, @+$59                                   ; $75F7: $38 $57

    xor b                                         ; $75F9: $A8
    ld e, e                                       ; $75FA: $5B
    and h                                         ; $75FB: $A4
    sbc e                                         ; $75FC: $9B
    ld h, h                                       ; $75FD: $64
    ld e, e                                       ; $75FE: $5B
    inc h                                         ; $75FF: $24
    dec hl                                        ; $7600: $2B

jr_001_7601:
    inc d                                         ; $7601: $14
    rla                                           ; $7602: $17
    ld [$0817], sp                                ; $7603: $08 $17 $08
    rla                                           ; $7606: $17
    ld [$0817], sp                                ; $7607: $08 $17 $08
    rla                                           ; $760A: $17
    ld [$040B], sp                                ; $760B: $08 $0B $04
    dec bc                                        ; $760E: $0B
    inc b                                         ; $760F: $04
    dec b                                         ; $7610: $05
    ld [bc], a                                    ; $7611: $02
    ld [bc], a                                    ; $7612: $02
    ld bc, $00FF                                  ; $7613: $01 $FF $00
    rst RST_38                                    ; $7616: $FF
    nop                                           ; $7617: $00
    rst RST_38                                    ; $7618: $FF
    nop                                           ; $7619: $00
    rst RST_38                                    ; $761A: $FF
    nop                                           ; $761B: $00
    rst RST_38                                    ; $761C: $FF
    nop                                           ; $761D: $00
    rst RST_38                                    ; $761E: $FF
    nop                                           ; $761F: $00
    rst RST_38                                    ; $7620: $FF
    nop                                           ; $7621: $00
    rst RST_38                                    ; $7622: $FF
    nop                                           ; $7623: $00
    add c                                         ; $7624: $81
    ld a, [hl]                                    ; $7625: $7E
    inc a                                         ; $7626: $3C

jr_001_7627:
    jp $8162                                      ; $7627: $C3 $62 $81


    ld h, d                                       ; $762A: $62
    add c                                         ; $762B: $81
    ld h, d                                       ; $762C: $62
    add c                                         ; $762D: $81
    ld h, d                                       ; $762E: $62
    add c                                         ; $762F: $81
    ld h, d                                       ; $7630: $62
    add c                                         ; $7631: $81
    ld h, d                                       ; $7632: $62
    add c                                         ; $7633: $81
    di                                            ; $7634: $F3
    inc c                                         ; $7635: $0C
    db $E3                                        ; $7636: $E3
    inc e                                         ; $7637: $1C
    ld [$DA15], a                                 ; $7638: $EA $15 $DA
    dec h                                         ; $763B: $25
    reti                                          ; $763C: $D9


    ld h, $DB                                     ; $763D: $26 $DB
    inc h                                         ; $763F: $24
    sub $28                                       ; $7640: $D6 $28
    db $EC                                        ; $7642: $EC
    db $10                                        ; $7643: $10
    db $EC                                        ; $7644: $EC
    db $10                                        ; $7645: $10
    db $EC                                        ; $7646: $EC
    db $10                                        ; $7647: $10
    db $EC                                        ; $7648: $EC
    db $10                                        ; $7649: $10
    db $EC                                        ; $764A: $EC
    db $10                                        ; $764B: $10
    ret c                                         ; $764C: $D8

    jr nz, jr_001_7627                            ; $764D: $20 $D8

    jr nz, jr_001_7601                            ; $764F: $20 $B0

    ld b, b                                       ; $7651: $40
    ld h, b                                       ; $7652: $60
    add b                                         ; $7653: $80
    db $FD                                        ; $7654: $FD
    ld [bc], a                                    ; $7655: $02
    db $FD                                        ; $7656: $FD
    ld [bc], a                                    ; $7657: $02
    ld a, l                                       ; $7658: $7D
    add d                                         ; $7659: $82
    ei                                            ; $765A: $FB
    inc b                                         ; $765B: $04
    or $08                                        ; $765C: $F6 $08
    add $38                                       ; $765E: $C6 $38
    sub [hl]                                      ; $7660: $96
    ld l, b                                       ; $7661: $68
    ld [hl], $C8                                  ; $7662: $36 $C8
    ld [hl], $C8                                  ; $7664: $36 $C8
    xor h                                         ; $7666: $AC
    ld d, b                                       ; $7667: $50
    xor h                                         ; $7668: $AC
    ld d, b                                       ; $7669: $50
    sbc b                                         ; $766A: $98
    ld h, b                                       ; $766B: $60
    or b                                          ; $766C: $B0
    ld b, b                                       ; $766D: $40
    ld h, b                                       ; $766E: $60
    add b                                         ; $766F: $80
    ret nz                                        ; $7670: $C0

    nop                                           ; $7671: $00
    ret nz                                        ; $7672: $C0

    nop                                           ; $7673: $00
    add b                                         ; $7674: $80
    nop                                           ; $7675: $00
    add b                                         ; $7676: $80
    nop                                           ; $7677: $00
    add b                                         ; $7678: $80
    nop                                           ; $7679: $00
    add b                                         ; $767A: $80
    nop                                           ; $767B: $00
    add b                                         ; $767C: $80
    nop                                           ; $767D: $00
    add b                                         ; $767E: $80
    nop                                           ; $767F: $00
    add b                                         ; $7680: $80
    nop                                           ; $7681: $00
    add b                                         ; $7682: $80
    nop                                           ; $7683: $00
    add b                                         ; $7684: $80
    nop                                           ; $7685: $00
    add b                                         ; $7686: $80
    nop                                           ; $7687: $00
    add b                                         ; $7688: $80
    nop                                           ; $7689: $00
    add b                                         ; $768A: $80
    nop                                           ; $768B: $00
    add b                                         ; $768C: $80
    nop                                           ; $768D: $00
    add b                                         ; $768E: $80
    nop                                           ; $768F: $00
    add b                                         ; $7690: $80
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    ld e, $00                                     ; $7694: $1E $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00
    nop                                           ; $76A4: $00
    nop                                           ; $76A5: $00
    nop                                           ; $76A6: $00
    nop                                           ; $76A7: $00
    nop                                           ; $76A8: $00
    nop                                           ; $76A9: $00
    nop                                           ; $76AA: $00
    nop                                           ; $76AB: $00
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    nop                                           ; $76AF: $00
    nop                                           ; $76B0: $00
    nop                                           ; $76B1: $00
    nop                                           ; $76B2: $00
    nop                                           ; $76B3: $00
    inc a                                         ; $76B4: $3C
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    nop                                           ; $76B7: $00
    nop                                           ; $76B8: $00
    nop                                           ; $76B9: $00
    nop                                           ; $76BA: $00
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    nop                                           ; $76BD: $00
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    nop                                           ; $76C0: $00
    nop                                           ; $76C1: $00
    nop                                           ; $76C2: $00
    nop                                           ; $76C3: $00
    nop                                           ; $76C4: $00
    nop                                           ; $76C5: $00
    nop                                           ; $76C6: $00
    nop                                           ; $76C7: $00
    nop                                           ; $76C8: $00
    nop                                           ; $76C9: $00
    nop                                           ; $76CA: $00
    nop                                           ; $76CB: $00
    nop                                           ; $76CC: $00
    nop                                           ; $76CD: $00
    nop                                           ; $76CE: $00
    nop                                           ; $76CF: $00
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    nop                                           ; $76D2: $00
    nop                                           ; $76D3: $00
    inc a                                         ; $76D4: $3C

jr_001_76D5:
    nop                                           ; $76D5: $00
    ld e, h                                       ; $76D6: $5C

jr_001_76D7:
    jr z, jr_001_7735                             ; $76D7: $28 $5C

    jr z, jr_001_7729                             ; $76D9: $28 $4E

    inc [hl]                                      ; $76DB: $34
    xor [hl]                                      ; $76DC: $AE
    ld d, h                                       ; $76DD: $54
    xor [hl]                                      ; $76DE: $AE
    ld d, h                                       ; $76DF: $54
    or a                                          ; $76E0: $B7
    ld c, d                                       ; $76E1: $4A
    or a                                          ; $76E2: $B7
    ld c, d                                       ; $76E3: $4A
    or a                                          ; $76E4: $B7
    ld c, b                                       ; $76E5: $48
    cp d                                          ; $76E6: $BA
    ld b, l                                       ; $76E7: $45
    cp c                                          ; $76E8: $B9
    ld b, [hl]                                    ; $76E9: $46
    cp l                                          ; $76EA: $BD
    ld b, d                                       ; $76EB: $42
    cp a                                          ; $76EC: $BF
    ld b, b                                       ; $76ED: $40
    cp a                                          ; $76EE: $BF
    ld b, b                                       ; $76EF: $40
    cp a                                          ; $76F0: $BF
    ld b, b                                       ; $76F1: $40
    cp a                                          ; $76F2: $BF
    ld b, b                                       ; $76F3: $40
    ld a, a                                       ; $76F4: $7F
    nop                                           ; $76F5: $00
    add b                                         ; $76F6: $80
    ld a, a                                       ; $76F7: $7F
    ld a, a                                       ; $76F8: $7F
    add b                                         ; $76F9: $80
    rst RST_38                                    ; $76FA: $FF
    nop                                           ; $76FB: $00
    rst RST_38                                    ; $76FC: $FF
    nop                                           ; $76FD: $00
    rst RST_38                                    ; $76FE: $FF
    nop                                           ; $76FF: $00
    rst RST_38                                    ; $7700: $FF
    nop                                           ; $7701: $00
    rst RST_38                                    ; $7702: $FF
    nop                                           ; $7703: $00
    rst RST_38                                    ; $7704: $FF
    nop                                           ; $7705: $00
    rst RST_38                                    ; $7706: $FF
    nop                                           ; $7707: $00
    rst RST_38                                    ; $7708: $FF
    nop                                           ; $7709: $00
    rst RST_38                                    ; $770A: $FF
    nop                                           ; $770B: $00

jr_001_770C:
    jr c, jr_001_76D5                             ; $770C: $38 $C7

    jr c, jr_001_76D7                             ; $770E: $38 $C7

    ld a, h                                       ; $7710: $7C
    add e                                         ; $7711: $83
    ld a, h                                       ; $7712: $7C
    add e                                         ; $7713: $83

jr_001_7714:
    ld bc, $0100                                  ; $7714: $01 $00 $01
    nop                                           ; $7717: $00
    ld [bc], a                                    ; $7718: $02
    ld bc, $0102                                  ; $7719: $01 $02 $01
    add l                                         ; $771C: $85
    ld [bc], a                                    ; $771D: $02
    ld h, l                                       ; $771E: $65

jr_001_771F:
    add d                                         ; $771F: $82
    sbc e                                         ; $7720: $9B

jr_001_7721:
    ld h, h                                       ; $7721: $64
    db $E3                                        ; $7722: $E3

jr_001_7723:
    inc e                                         ; $7723: $1C
    rst RST_30                                    ; $7724: $F7

jr_001_7725:
    ld [$00FF], sp                                ; $7725: $08 $FF $00
    rst RST_38                                    ; $7728: $FF

jr_001_7729:
    nop                                           ; $7729: $00
    rst RST_38                                    ; $772A: $FF

jr_001_772B:
    nop                                           ; $772B: $00
    rst RST_38                                    ; $772C: $FF

jr_001_772D:
    nop                                           ; $772D: $00
    rst RST_38                                    ; $772E: $FF

jr_001_772F:
    nop                                           ; $772F: $00
    rst RST_38                                    ; $7730: $FF
    nop                                           ; $7731: $00
    add a                                         ; $7732: $87
    ld a, b                                       ; $7733: $78
    ld [hl], b                                    ; $7734: $70

jr_001_7735:
    nop                                           ; $7735: $00
    cp b                                          ; $7736: $B8
    ld d, b                                       ; $7737: $50
    cp b                                          ; $7738: $B8
    ld d, b                                       ; $7739: $50
    jr c, jr_001_770C                             ; $773A: $38 $D0

    ld e, h                                       ; $773C: $5C
    xor b                                         ; $773D: $A8
    call c, $DC28                                 ; $773E: $DC $28 $DC
    jr z, jr_001_771F                             ; $7741: $28 $DC

    jr z, jr_001_7721                             ; $7743: $28 $DC

    jr z, jr_001_7723                             ; $7745: $28 $DC

    jr z, jr_001_7725                             ; $7747: $28 $DC

    jr z, @-$22                                   ; $7749: $28 $DC

    jr z, jr_001_7729                             ; $774B: $28 $DC

    jr z, jr_001_772B                             ; $774D: $28 $DC

    jr z, jr_001_772D                             ; $774F: $28 $DC

    jr z, jr_001_772F                             ; $7751: $28 $DC

    jr z, jr_001_7714                             ; $7753: $28 $BF

    ld b, b                                       ; $7755: $40
    cp a                                          ; $7756: $BF
    ld b, b                                       ; $7757: $40
    cp h                                          ; $7758: $BC
    ld b, e                                       ; $7759: $43
    ld e, h                                       ; $775A: $5C
    inc hl                                        ; $775B: $23
    ld l, $11                                     ; $775C: $2E $11
    ld h, $19                                     ; $775E: $26 $19
    daa                                           ; $7760: $27
    jr jr_001_778E                                ; $7761: $18 $2B

    inc d                                         ; $7763: $14
    add hl, hl                                    ; $7764: $29
    ld d, $2D                                     ; $7765: $16 $2D
    ld [de], a                                    ; $7767: $12
    ld d, $09                                     ; $7768: $16 $09
    ld d, $09                                     ; $776A: $16 $09
    ld a, [bc]                                    ; $776C: $0A
    dec b                                         ; $776D: $05
    ld a, [bc]                                    ; $776E: $0A
    dec b                                         ; $776F: $05
    inc b                                         ; $7770: $04
    inc bc                                        ; $7771: $03
    ld [bc], a                                    ; $7772: $02

jr_001_7773:
    ld bc, $00FF                                  ; $7773: $01 $FF $00
    rst RST_38                                    ; $7776: $FF
    nop                                           ; $7777: $00
    rst RST_38                                    ; $7778: $FF
    nop                                           ; $7779: $00
    rst RST_38                                    ; $777A: $FF
    nop                                           ; $777B: $00
    rst RST_38                                    ; $777C: $FF
    nop                                           ; $777D: $00
    rst RST_38                                    ; $777E: $FF
    nop                                           ; $777F: $00
    rst RST_38                                    ; $7780: $FF
    nop                                           ; $7781: $00
    rst RST_38                                    ; $7782: $FF
    nop                                           ; $7783: $00
    pop af                                        ; $7784: $F1
    ld c, $EC                                     ; $7785: $0E $EC
    inc de                                        ; $7787: $13
    xor $11                                       ; $7788: $EE $11
    xor $11                                       ; $778A: $EE $11
    ld l, [hl]                                    ; $778C: $6E
    sub c                                         ; $778D: $91

jr_001_778E:
    ld l, [hl]                                    ; $778E: $6E
    sub c                                         ; $778F: $91
    xor [hl]                                      ; $7790: $AE
    ld d, c                                       ; $7791: $51
    ld c, [hl]                                    ; $7792: $4E
    ld sp, $F00F                                  ; $7793: $31 $0F $F0
    rra                                           ; $7796: $1F
    ldh [$FF3C], a                                ; $7797: $E0 $3C
    jp Jump_000_06F9                              ; $7799: $C3 $F9 $06


    di                                            ; $779C: $F3
    inc c                                         ; $779D: $0C
    db $E3                                        ; $779E: $E3
    inc e                                         ; $779F: $1C
    ld [$DA15], a                                 ; $77A0: $EA $15 $DA
    dec h                                         ; $77A3: $25
    reti                                          ; $77A4: $D9


    ld h, $DB                                     ; $77A5: $26 $DB
    dec h                                         ; $77A7: $25
    rst RST_10                                    ; $77A8: $D7
    ld a, [hl+]                                   ; $77A9: $2A
    xor $14                                       ; $77AA: $EE $14
    xor $14                                       ; $77AC: $EE $14
    xor $14                                       ; $77AE: $EE $14
    xor $14                                       ; $77B0: $EE $14
    xor $14                                       ; $77B2: $EE $14
    call c, $DC28                                 ; $77B4: $DC $28 $DC
    jr z, @-$22                                   ; $77B7: $28 $DC

    jr z, jr_001_7773                             ; $77B9: $28 $B8

    ld d, b                                       ; $77BB: $50
    ld [hl], b                                    ; $77BC: $70
    and b                                         ; $77BD: $A0
    ld [hl], b                                    ; $77BE: $70
    and b                                         ; $77BF: $A0
    ld [hl], b                                    ; $77C0: $70
    and b                                         ; $77C1: $A0
    ld [hl], b                                    ; $77C2: $70
    and b                                         ; $77C3: $A0
    ld [hl], b                                    ; $77C4: $70
    and b                                         ; $77C5: $A0
    ldh [rLCDC], a                                ; $77C6: $E0 $40
    ldh [rLCDC], a                                ; $77C8: $E0 $40
    ret nz                                        ; $77CA: $C0

    add b                                         ; $77CB: $80
    add b                                         ; $77CC: $80
    nop                                           ; $77CD: $00
    nop                                           ; $77CE: $00
    nop                                           ; $77CF: $00
    nop                                           ; $77D0: $00
    nop                                           ; $77D1: $00
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    ld [bc], a                                    ; $77D4: $02
    ld bc, $0102                                  ; $77D5: $01 $02 $01
    ld [bc], a                                    ; $77D8: $02
    ld bc, $0001                                  ; $77D9: $01 $01 $00
    ld bc, $0000                                  ; $77DC: $01 $00 $00
    nop                                           ; $77DF: $00
    nop                                           ; $77E0: $00
    nop                                           ; $77E1: $00
    nop                                           ; $77E2: $00
    nop                                           ; $77E3: $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00
    nop                                           ; $77E7: $00
    nop                                           ; $77E8: $00
    nop                                           ; $77E9: $00
    nop                                           ; $77EA: $00
    nop                                           ; $77EB: $00
    nop                                           ; $77EC: $00
    nop                                           ; $77ED: $00
    nop                                           ; $77EE: $00
    nop                                           ; $77EF: $00
    nop                                           ; $77F0: $00
    nop                                           ; $77F1: $00
    nop                                           ; $77F2: $00
    nop                                           ; $77F3: $00
    call c, $DC28                                 ; $77F4: $DC $28 $DC
    jr z, @-$46                                   ; $77F7: $28 $B8

    ld d, b                                       ; $77F9: $50
    ld [hl], b                                    ; $77FA: $70
    and b                                         ; $77FB: $A0
    ldh [rP1], a                                  ; $77FC: $E0 $00
    nop                                           ; $77FE: $00
    nop                                           ; $77FF: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780A: $00
    nop                                           ; $780B: $00
    nop                                           ; $780C: $00
    nop                                           ; $780D: $00
    nop                                           ; $780E: $00
    nop                                           ; $780F: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    ccf                                           ; $7814: $3F
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782A: $00
    nop                                           ; $782B: $00
    nop                                           ; $782C: $00
    nop                                           ; $782D: $00
    nop                                           ; $782E: $00
    nop                                           ; $782F: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    ld a, $00                                     ; $7834: $3E $00
    ld e, [hl]                                    ; $7836: $5E
    inc l                                         ; $7837: $2C
    ld e, [hl]                                    ; $7838: $5E
    inc l                                         ; $7839: $2C
    ld c, a                                       ; $783A: $4F
    ld [hl], $AF                                  ; $783B: $36 $AF
    ld d, [hl]                                    ; $783D: $56
    xor a                                         ; $783E: $AF
    ld d, [hl]                                    ; $783F: $56
    or a                                          ; $7840: $B7
    ld c, e                                       ; $7841: $4B
    or a                                          ; $7842: $B7
    ld c, e                                       ; $7843: $4B
    or a                                          ; $7844: $B7
    ld c, b                                       ; $7845: $48
    cp d                                          ; $7846: $BA
    ld b, l                                       ; $7847: $45
    cp c                                          ; $7848: $B9
    ld b, [hl]                                    ; $7849: $46
    cp l                                          ; $784A: $BD
    ld b, d                                       ; $784B: $42
    cp a                                          ; $784C: $BF
    ld b, b                                       ; $784D: $40
    cp a                                          ; $784E: $BF
    ld b, b                                       ; $784F: $40
    cp a                                          ; $7850: $BF
    ld b, b                                       ; $7851: $40
    cp a                                          ; $7852: $BF
    ld b, b                                       ; $7853: $40
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785A: $00
    nop                                           ; $785B: $00
    nop                                           ; $785C: $00
    nop                                           ; $785D: $00
    nop                                           ; $785E: $00
    nop                                           ; $785F: $00
    add b                                         ; $7860: $80
    nop                                           ; $7861: $00
    ldh a, [rP1]                                  ; $7862: $F0 $00
    adc h                                         ; $7864: $8C
    ld [hl], b                                    ; $7865: $70
    ld [hl], e                                    ; $7866: $73
    adc h                                         ; $7867: $8C
    db $FC                                        ; $7868: $FC
    inc bc                                        ; $7869: $03
    cp $01                                        ; $786A: $FE $01
    rst RST_38                                    ; $786C: $FF
    nop                                           ; $786D: $00
    rst RST_38                                    ; $786E: $FF
    nop                                           ; $786F: $00
    rst RST_38                                    ; $7870: $FF
    nop                                           ; $7871: $00
    rst RST_38                                    ; $7872: $FF
    nop                                           ; $7873: $00
    rrca                                          ; $7874: $0F
    nop                                           ; $7875: $00
    rla                                           ; $7876: $17
    dec bc                                        ; $7877: $0B
    rla                                           ; $7878: $17
    dec bc                                        ; $7879: $0B
    daa                                           ; $787A: $27
    dec de                                        ; $787B: $1B
    dec hl                                        ; $787C: $2B
    dec d                                         ; $787D: $15
    ld e, e                                       ; $787E: $5B
    dec h                                         ; $787F: $25
    ld e, e                                       ; $7880: $5B
    dec h                                         ; $7881: $25
    cp e                                          ; $7882: $BB
    ld b, l                                       ; $7883: $45
    cp e                                          ; $7884: $BB
    ld b, l                                       ; $7885: $45
    ld a, e                                       ; $7886: $7B
    add l                                         ; $7887: $85
    ld a, e                                       ; $7888: $7B
    add l                                         ; $7889: $85
    ei                                            ; $788A: $FB
    dec b                                         ; $788B: $05
    ei                                            ; $788C: $FB
    dec b                                         ; $788D: $05
    ei                                            ; $788E: $FB
    dec b                                         ; $788F: $05
    ei                                            ; $7890: $FB
    dec b                                         ; $7891: $05
    ei                                            ; $7892: $FB
    dec b                                         ; $7893: $05
    add b                                         ; $7894: $80
    nop                                           ; $7895: $00
    add b                                         ; $7896: $80
    nop                                           ; $7897: $00
    add b                                         ; $7898: $80
    nop                                           ; $7899: $00
    ret nz                                        ; $789A: $C0

    add b                                         ; $789B: $80
    ret nz                                        ; $789C: $C0

    add b                                         ; $789D: $80
    ret nz                                        ; $789E: $C0

    add b                                         ; $789F: $80
    ret nz                                        ; $78A0: $C0

    add b                                         ; $78A1: $80
    ret nz                                        ; $78A2: $C0

    add b                                         ; $78A3: $80
    ret nz                                        ; $78A4: $C0

    add b                                         ; $78A5: $80
    ret nz                                        ; $78A6: $C0

    add b                                         ; $78A7: $80
    ret nz                                        ; $78A8: $C0

    add b                                         ; $78A9: $80
    ret nz                                        ; $78AA: $C0

    add b                                         ; $78AB: $80
    ret nz                                        ; $78AC: $C0

    add b                                         ; $78AD: $80
    ret nz                                        ; $78AE: $C0

    add b                                         ; $78AF: $80
    ret nz                                        ; $78B0: $C0

    add b                                         ; $78B1: $80
    ret nz                                        ; $78B2: $C0

    add b                                         ; $78B3: $80
    cp a                                          ; $78B4: $BF
    ld b, b                                       ; $78B5: $40
    cp a                                          ; $78B6: $BF
    ld b, b                                       ; $78B7: $40
    cp h                                          ; $78B8: $BC
    ld b, e                                       ; $78B9: $43
    ld e, h                                       ; $78BA: $5C
    inc hl                                        ; $78BB: $23
    ld l, $11                                     ; $78BC: $2E $11
    ld h, $19                                     ; $78BE: $26 $19
    daa                                           ; $78C0: $27
    jr @+$2D                                      ; $78C1: $18 $2B

    inc d                                         ; $78C3: $14
    dec l                                         ; $78C4: $2D
    ld [de], a                                    ; $78C5: $12
    dec l                                         ; $78C6: $2D
    ld [de], a                                    ; $78C7: $12
    ld d, $09                                     ; $78C8: $16 $09
    ld d, $09                                     ; $78CA: $16 $09
    ld a, [bc]                                    ; $78CC: $0A
    dec b                                         ; $78CD: $05
    ld a, [bc]                                    ; $78CE: $0A
    dec b                                         ; $78CF: $05
    inc b                                         ; $78D0: $04
    inc bc                                        ; $78D1: $03
    ld [bc], a                                    ; $78D2: $02
    ld bc, $00FF                                  ; $78D3: $01 $FF $00
    rst RST_38                                    ; $78D6: $FF
    nop                                           ; $78D7: $00
    ldh a, [rIF]                                  ; $78D8: $F0 $0F
    ld b, c                                       ; $78DA: $41
    cp [hl]                                       ; $78DB: $BE
    ld b, e                                       ; $78DC: $43
    cp h                                          ; $78DD: $BC
    ld b, a                                       ; $78DE: $47
    cp b                                          ; $78DF: $B8
    ld e, a                                       ; $78E0: $5F
    and b                                         ; $78E1: $A0
    cp $01                                        ; $78E2: $FE $01
    db $FC                                        ; $78E4: $FC
    inc bc                                        ; $78E5: $03
    db $FD                                        ; $78E6: $FD
    ld [bc], a                                    ; $78E7: $02
    ei                                            ; $78E8: $FB
    inc b                                         ; $78E9: $04
    ei                                            ; $78EA: $FB
    inc b                                         ; $78EB: $04
    ld a, [$F905]                                 ; $78EC: $FA $05 $F9
    ld b, $FB                                     ; $78EF: $06 $FB
    dec b                                         ; $78F1: $05
    ei                                            ; $78F2: $FB
    dec b                                         ; $78F3: $05
    ei                                            ; $78F4: $FB
    dec b                                         ; $78F5: $05
    ei                                            ; $78F6: $FB
    dec b                                         ; $78F7: $05
    ei                                            ; $78F8: $FB
    dec b                                         ; $78F9: $05
    rst RST_30                                    ; $78FA: $F7
    dec bc                                        ; $78FB: $0B
    rst RST_28                                    ; $78FC: $EF
    ld d, $8F                                     ; $78FD: $16 $8F
    halt                                          ; $78FF: $76
    cpl                                           ; $7900: $2F
    sub $6F                                       ; $7901: $D6 $6F
    sub [hl]                                      ; $7903: $96
    ld l, a                                       ; $7904: $6F
    sub [hl]                                      ; $7905: $96
    ld e, [hl]                                    ; $7906: $5E
    xor h                                         ; $7907: $AC
    inc a                                         ; $7908: $3C
    ret c                                         ; $7909: $D8

    ld a, b                                       ; $790A: $78
    or b                                          ; $790B: $B0
    ldh a, [$FF60]                                ; $790C: $F0 $60
    ldh [$FFC0], a                                ; $790E: $E0 $C0
    ret nz                                        ; $7910: $C0

    add b                                         ; $7911: $80
    ret nz                                        ; $7912: $C0

    add b                                         ; $7913: $80
    ret nz                                        ; $7914: $C0

    add b                                         ; $7915: $80
    ret nz                                        ; $7916: $C0

    add b                                         ; $7917: $80
    add b                                         ; $7918: $80
    nop                                           ; $7919: $00
    nop                                           ; $791A: $00
    nop                                           ; $791B: $00
    nop                                           ; $791C: $00
    nop                                           ; $791D: $00
    nop                                           ; $791E: $00
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792A: $00
    nop                                           ; $792B: $00
    nop                                           ; $792C: $00
    nop                                           ; $792D: $00
    nop                                           ; $792E: $00
    nop                                           ; $792F: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    cpl                                           ; $7934: $2F
    db $10                                        ; $7935: $10
    rla                                           ; $7936: $17
    ld [$0817], sp                                ; $7937: $08 $17 $08
    rla                                           ; $793A: $17
    ld [$040B], sp                                ; $793B: $08 $0B $04
    ld a, [bc]                                    ; $793E: $0A
    dec b                                         ; $793F: $05
    inc b                                         ; $7940: $04
    inc bc                                        ; $7941: $03
    rlca                                          ; $7942: $07
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00
    nop                                           ; $794F: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    cp h                                          ; $7954: $BC
    ld e, b                                       ; $7955: $58
    cp h                                          ; $7956: $BC
    ld e, b                                       ; $7957: $58
    ld a, b                                       ; $7958: $78
    or b                                          ; $7959: $B0
    ld a, b                                       ; $795A: $78
    or b                                          ; $795B: $B0
    ld a, b                                       ; $795C: $78
    or b                                          ; $795D: $B0
    ldh a, [$FF60]                                ; $795E: $F0 $60
    ldh a, [$FF60]                                ; $7960: $F0 $60
    ldh a, [rP1]                                  ; $7962: $F0 $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796A: $00
    nop                                           ; $796B: $00
    nop                                           ; $796C: $00
    nop                                           ; $796D: $00
    nop                                           ; $796E: $00
    nop                                           ; $796F: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    inc c                                         ; $7976: $0C
    nop                                           ; $7977: $00
    ld [de], a                                    ; $7978: $12
    inc c                                         ; $7979: $0C
    dec l                                         ; $797A: $2D
    ld [de], a                                    ; $797B: $12

jr_001_797C:
    ld l, $11                                     ; $797C: $2E $11
    ld e, a                                       ; $797E: $5F
    jr nz, jr_001_79C8                            ; $797F: $20 $47

    jr c, jr_001_79FC                             ; $7981: $38 $79

    ld b, $04                                     ; $7983: $06 $04
    inc bc                                        ; $7985: $03
    ld [bc], a                                    ; $7986: $02
    ld bc, $0304                                  ; $7987: $01 $04 $03
    inc b                                         ; $798A: $04
    inc bc                                        ; $798B: $03
    dec bc                                        ; $798C: $0B
    inc b                                         ; $798D: $04
    dec bc                                        ; $798E: $0B
    inc b                                         ; $798F: $04
    rla                                           ; $7990: $17
    ld [$0817], sp                                ; $7991: $08 $17 $08
    ld bc, $0600                                  ; $7994: $01 $00 $06
    ld bc, $0619                                  ; $7997: $01 $19 $06

jr_001_799A:
    daa                                           ; $799A: $27
    jr jr_001_797C                                ; $799B: $18 $DF

    jr nz, jr_001_79BE                            ; $799D: $20 $1F

    ldh [$FF8F], a                                ; $799F: $E0 $8F
    ld [hl], b                                    ; $79A1: $70
    xor a                                         ; $79A2: $AF
    ld d, b                                       ; $79A3: $50
    ld h, a                                       ; $79A4: $67
    sbc b                                         ; $79A5: $98
    rst RST_30                                    ; $79A6: $F7
    ld [$0CF3], sp                                ; $79A7: $08 $F3 $0C
    ld a, e                                       ; $79AA: $7B
    add h                                         ; $79AB: $84
    ccf                                           ; $79AC: $3F
    ret nz                                        ; $79AD: $C0

    sbc a                                         ; $79AE: $9F

jr_001_79AF:
    ld h, b                                       ; $79AF: $60
    rst RST_08                                    ; $79B0: $CF
    jr nc, jr_001_799A                            ; $79B1: $30 $E7

    jr @+$01                                      ; $79B3: $18 $FF

    nop                                           ; $79B5: $00
    nop                                           ; $79B6: $00
    rst RST_38                                    ; $79B7: $FF
    rst RST_38                                    ; $79B8: $FF
    nop                                           ; $79B9: $00
    rst RST_38                                    ; $79BA: $FF
    nop                                           ; $79BB: $00
    rst RST_38                                    ; $79BC: $FF
    nop                                           ; $79BD: $00

jr_001_79BE:
    rst RST_38                                    ; $79BE: $FF
    nop                                           ; $79BF: $00
    rst RST_38                                    ; $79C0: $FF
    nop                                           ; $79C1: $00
    rst RST_38                                    ; $79C2: $FF
    nop                                           ; $79C3: $00
    jp $FF3C                                      ; $79C4: $C3 $3C $FF


    nop                                           ; $79C7: $00

jr_001_79C8:
    jp $FF3C                                      ; $79C8: $C3 $3C $FF


    nop                                           ; $79CB: $00

jr_001_79CC:
    jp $FF3C                                      ; $79CC: $C3 $3C $FF


    nop                                           ; $79CF: $00
    jp $FF3C                                      ; $79D0: $C3 $3C $FF


    nop                                           ; $79D3: $00
    add b                                         ; $79D4: $80
    nop                                           ; $79D5: $00
    ld h, b                                       ; $79D6: $60
    add b                                         ; $79D7: $80

jr_001_79D8:
    sbc b                                         ; $79D8: $98
    ld h, b                                       ; $79D9: $60
    db $E4                                        ; $79DA: $E4
    jr jr_001_79D8                                ; $79DB: $18 $FB

    inc b                                         ; $79DD: $04
    ld hl, sp+$07                                 ; $79DE: $F8 $07
    pop af                                        ; $79E0: $F1
    ld c, $F5                                     ; $79E1: $0E $F5
    ld a, [bc]                                    ; $79E3: $0A
    and $19                                       ; $79E4: $E6 $19
    rst RST_28                                    ; $79E6: $EF
    db $10                                        ; $79E7: $10
    rst RST_08                                    ; $79E8: $CF
    jr nc, @-$20                                  ; $79E9: $30 $DE

    ld hl, $03FC                                  ; $79EB: $21 $FC $03
    ld sp, hl                                     ; $79EE: $F9
    ld b, $F3                                     ; $79EF: $06 $F3
    inc c                                         ; $79F1: $0C
    rst RST_20                                    ; $79F2: $E7
    jr jr_001_79F5                                ; $79F3: $18 $00

jr_001_79F5:
    nop                                           ; $79F5: $00
    jr nc, jr_001_79F8                            ; $79F6: $30 $00

jr_001_79F8:
    ld c, b                                       ; $79F8: $48

jr_001_79F9:
    jr nc, jr_001_79AF                            ; $79F9: $30 $B4

    ld c, b                                       ; $79FB: $48

jr_001_79FC:
    ld [hl], h                                    ; $79FC: $74
    adc b                                         ; $79FD: $88
    ld a, [$E204]                                 ; $79FE: $FA $04 $E2
    inc e                                         ; $7A01: $1C
    sbc [hl]                                      ; $7A02: $9E
    ld h, b                                       ; $7A03: $60
    jr nz, @-$3E                                  ; $7A04: $20 $C0

    ld b, b                                       ; $7A06: $40
    add b                                         ; $7A07: $80
    jr nz, @-$3E                                  ; $7A08: $20 $C0

    jr nz, jr_001_79CC                            ; $7A0A: $20 $C0

    ret nc                                        ; $7A0C: $D0

    jr nz, @-$2E                                  ; $7A0D: $20 $D0

    jr nz, jr_001_79F9                            ; $7A0F: $20 $E8

    db $10                                        ; $7A11: $10
    add sp, $10                                   ; $7A12: $E8 $10
    rla                                           ; $7A14: $17
    ld [$0817], sp                                ; $7A15: $08 $17 $08
    rla                                           ; $7A18: $17
    ld [$0817], sp                                ; $7A19: $08 $17 $08
    dec bc                                        ; $7A1C: $0B
    inc b                                         ; $7A1D: $04
    dec bc                                        ; $7A1E: $0B
    inc b                                         ; $7A1F: $04
    dec b                                         ; $7A20: $05
    ld [bc], a                                    ; $7A21: $02
    ld e, $01                                     ; $7A22: $1E $01
    db $10                                        ; $7A24: $10
    rrca                                          ; $7A25: $0F
    dec bc                                        ; $7A26: $0B
    inc b                                         ; $7A27: $04
    dec b                                         ; $7A28: $05
    ld [bc], a                                    ; $7A29: $02

jr_001_7A2A:
    ld [bc], a                                    ; $7A2A: $02
    ld bc, $0001                                  ; $7A2B: $01 $01 $00
    nop                                           ; $7A2E: $00
    nop                                           ; $7A2F: $00
    nop                                           ; $7A30: $00
    nop                                           ; $7A31: $00
    nop                                           ; $7A32: $00
    nop                                           ; $7A33: $00
    pop af                                        ; $7A34: $F1
    ld c, $FC                                     ; $7A35: $0E $FC
    inc bc                                        ; $7A37: $03
    rst RST_38                                    ; $7A38: $FF
    nop                                           ; $7A39: $00
    rst RST_38                                    ; $7A3A: $FF
    nop                                           ; $7A3B: $00
    rst RST_38                                    ; $7A3C: $FF
    nop                                           ; $7A3D: $00
    rst RST_38                                    ; $7A3E: $FF
    nop                                           ; $7A3F: $00
    rst RST_38                                    ; $7A40: $FF

jr_001_7A41:
    nop                                           ; $7A41: $00
    cp $01                                        ; $7A42: $FE $01
    add hl, sp                                    ; $7A44: $39
    add $87                                       ; $7A45: $C6 $87
    ld a, b                                       ; $7A47: $78
    rst RST_18                                    ; $7A48: $DF

jr_001_7A49:
    jr nz, jr_001_7A2A                            ; $7A49: $20 $DF

    jr nz, jr_001_7AAB                            ; $7A4B: $20 $5E

    and c                                         ; $7A4D: $A1
    sbc l                                         ; $7A4E: $9D
    ld h, d                                       ; $7A4F: $62
    ld e, l                                       ; $7A50: $5D
    ld [hl+], a                                   ; $7A51: $22
    inc hl                                        ; $7A52: $23
    inc e                                         ; $7A53: $1C
    rst RST_38                                    ; $7A54: $FF
    nop                                           ; $7A55: $00
    ld a, [hl]                                    ; $7A56: $7E
    add c                                         ; $7A57: $81
    inc a                                         ; $7A58: $3C
    jp $42BD                                      ; $7A59: $C3 $BD $42


    cp l                                          ; $7A5C: $BD
    ld b, d                                       ; $7A5D: $42
    cp l                                          ; $7A5E: $BD
    ld b, d                                       ; $7A5F: $42
    ld a, [hl]                                    ; $7A60: $7E
    add c                                         ; $7A61: $81
    rst RST_38                                    ; $7A62: $FF
    nop                                           ; $7A63: $00
    rst RST_38                                    ; $7A64: $FF
    nop                                           ; $7A65: $00
    rst RST_38                                    ; $7A66: $FF
    nop                                           ; $7A67: $00
    rst RST_38                                    ; $7A68: $FF
    nop                                           ; $7A69: $00
    rst RST_38                                    ; $7A6A: $FF
    nop                                           ; $7A6B: $00
    rst RST_38                                    ; $7A6C: $FF
    nop                                           ; $7A6D: $00
    ld a, [hl]                                    ; $7A6E: $7E

jr_001_7A6F:
    add c                                         ; $7A6F: $81
    ld a, [hl]                                    ; $7A70: $7E
    add c                                         ; $7A71: $81
    ld a, [hl]                                    ; $7A72: $7E
    add c                                         ; $7A73: $81
    adc a                                         ; $7A74: $8F
    ld [hl], b                                    ; $7A75: $70
    ccf                                           ; $7A76: $3F
    ret nz                                        ; $7A77: $C0

    rst RST_38                                    ; $7A78: $FF
    nop                                           ; $7A79: $00
    rst RST_38                                    ; $7A7A: $FF
    nop                                           ; $7A7B: $00
    rst RST_38                                    ; $7A7C: $FF
    nop                                           ; $7A7D: $00
    rst RST_38                                    ; $7A7E: $FF
    nop                                           ; $7A7F: $00
    rst RST_38                                    ; $7A80: $FF
    nop                                           ; $7A81: $00
    ld a, a                                       ; $7A82: $7F
    add b                                         ; $7A83: $80
    sbc h                                         ; $7A84: $9C
    ld h, e                                       ; $7A85: $63
    pop hl                                        ; $7A86: $E1
    ld e, $FB                                     ; $7A87: $1E $FB
    inc b                                         ; $7A89: $04
    ei                                            ; $7A8A: $FB
    inc b                                         ; $7A8B: $04
    ld a, d                                       ; $7A8C: $7A
    add l                                         ; $7A8D: $85
    cp c                                          ; $7A8E: $B9
    ld b, [hl]                                    ; $7A8F: $46
    cp d                                          ; $7A90: $BA
    ld b, h                                       ; $7A91: $44
    call nz, $E838                                ; $7A92: $C4 $38 $E8
    db $10                                        ; $7A95: $10
    add sp, $10                                   ; $7A96: $E8 $10
    add sp, $10                                   ; $7A98: $E8 $10
    add sp, $10                                   ; $7A9A: $E8 $10
    ret nc                                        ; $7A9C: $D0

    jr nz, jr_001_7A6F                            ; $7A9D: $20 $D0

    jr nz, jr_001_7A41                            ; $7A9F: $20 $A0

    ld b, b                                       ; $7AA1: $40
    ld a, b                                       ; $7AA2: $78
    add b                                         ; $7AA3: $80
    ld [$D0F0], sp                                ; $7AA4: $08 $F0 $D0
    jr nz, jr_001_7A49                            ; $7AA7: $20 $A0

    ld b, b                                       ; $7AA9: $40
    ld b, b                                       ; $7AAA: $40

jr_001_7AAB:
    add b                                         ; $7AAB: $80
    add b                                         ; $7AAC: $80
    nop                                           ; $7AAD: $00
    nop                                           ; $7AAE: $00
    nop                                           ; $7AAF: $00
    nop                                           ; $7AB0: $00
    nop                                           ; $7AB1: $00
    nop                                           ; $7AB2: $00
    nop                                           ; $7AB3: $00
    ld e, $00                                     ; $7AB4: $1E $00
    nop                                           ; $7AB6: $00
    nop                                           ; $7AB7: $00
    nop                                           ; $7AB8: $00
    nop                                           ; $7AB9: $00
    nop                                           ; $7ABA: $00
    nop                                           ; $7ABB: $00
    nop                                           ; $7ABC: $00
    nop                                           ; $7ABD: $00
    nop                                           ; $7ABE: $00
    nop                                           ; $7ABF: $00
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    nop                                           ; $7AC4: $00
    nop                                           ; $7AC5: $00
    nop                                           ; $7AC6: $00
    nop                                           ; $7AC7: $00
    nop                                           ; $7AC8: $00
    nop                                           ; $7AC9: $00
    nop                                           ; $7ACA: $00
    nop                                           ; $7ACB: $00
    nop                                           ; $7ACC: $00
    nop                                           ; $7ACD: $00
    nop                                           ; $7ACE: $00
    nop                                           ; $7ACF: $00
    nop                                           ; $7AD0: $00
    nop                                           ; $7AD1: $00
    nop                                           ; $7AD2: $00
    nop                                           ; $7AD3: $00
    cp l                                          ; $7AD4: $BD
    ld b, d                                       ; $7AD5: $42
    cp l                                          ; $7AD6: $BD
    ld b, d                                       ; $7AD7: $42
    cp l                                          ; $7AD8: $BD
    ld b, d                                       ; $7AD9: $42
    ld e, d                                       ; $7ADA: $5A
    inc h                                         ; $7ADB: $24
    ld e, d                                       ; $7ADC: $5A
    inc h                                         ; $7ADD: $24
    ld e, d                                       ; $7ADE: $5A
    inc h                                         ; $7ADF: $24
    inc h                                         ; $7AE0: $24
    jr jr_001_7AFB                                ; $7AE1: $18 $18

    nop                                           ; $7AE3: $00
    nop                                           ; $7AE4: $00
    nop                                           ; $7AE5: $00
    nop                                           ; $7AE6: $00
    nop                                           ; $7AE7: $00
    nop                                           ; $7AE8: $00
    nop                                           ; $7AE9: $00
    nop                                           ; $7AEA: $00
    nop                                           ; $7AEB: $00
    nop                                           ; $7AEC: $00
    nop                                           ; $7AED: $00
    nop                                           ; $7AEE: $00
    nop                                           ; $7AEF: $00
    nop                                           ; $7AF0: $00
    nop                                           ; $7AF1: $00
    nop                                           ; $7AF2: $00
    nop                                           ; $7AF3: $00
    ld a, b                                       ; $7AF4: $78
    nop                                           ; $7AF5: $00
    nop                                           ; $7AF6: $00
    nop                                           ; $7AF7: $00
    nop                                           ; $7AF8: $00
    nop                                           ; $7AF9: $00
    nop                                           ; $7AFA: $00

jr_001_7AFB:
    nop                                           ; $7AFB: $00
    nop                                           ; $7AFC: $00
    nop                                           ; $7AFD: $00
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    nop                                           ; $7B00: $00
    nop                                           ; $7B01: $00
    nop                                           ; $7B02: $00
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    nop                                           ; $7B05: $00
    nop                                           ; $7B06: $00
    nop                                           ; $7B07: $00
    nop                                           ; $7B08: $00
    nop                                           ; $7B09: $00
    nop                                           ; $7B0A: $00
    nop                                           ; $7B0B: $00
    nop                                           ; $7B0C: $00
    nop                                           ; $7B0D: $00
    nop                                           ; $7B0E: $00
    nop                                           ; $7B0F: $00
    nop                                           ; $7B10: $00
    nop                                           ; $7B11: $00
    nop                                           ; $7B12: $00
    nop                                           ; $7B13: $00
    nop                                           ; $7B14: $00
    nop                                           ; $7B15: $00
    rlca                                          ; $7B16: $07
    nop                                           ; $7B17: $00
    add hl, bc                                    ; $7B18: $09
    ld b, $16                                     ; $7B19: $06 $16
    add hl, bc                                    ; $7B1B: $09
    rla                                           ; $7B1C: $17
    ld [$102F], sp                                ; $7B1D: $08 $2F $10
    inc hl                                        ; $7B20: $23
    inc e                                         ; $7B21: $1C
    inc a                                         ; $7B22: $3C
    inc bc                                        ; $7B23: $03
    ld [bc], a                                    ; $7B24: $02
    ld bc, $0001                                  ; $7B25: $01 $01 $00
    ld [bc], a                                    ; $7B28: $02
    ld bc, $0102                                  ; $7B29: $01 $02 $01
    dec b                                         ; $7B2C: $05
    ld [bc], a                                    ; $7B2D: $02
    dec b                                         ; $7B2E: $05
    ld [bc], a                                    ; $7B2F: $02
    dec bc                                        ; $7B30: $0B
    inc b                                         ; $7B31: $04
    dec bc                                        ; $7B32: $0B
    inc b                                         ; $7B33: $04
    nop                                           ; $7B34: $00
    nop                                           ; $7B35: $00
    inc bc                                        ; $7B36: $03
    nop                                           ; $7B37: $00

jr_001_7B38:
    adc h                                         ; $7B38: $8C
    inc bc                                        ; $7B39: $03
    db $D3                                        ; $7B3A: $D3
    inc c                                         ; $7B3B: $0C
    ld l, a                                       ; $7B3C: $6F
    sub b                                         ; $7B3D: $90
    adc a                                         ; $7B3E: $8F
    ld [hl], b                                    ; $7B3F: $70
    rst RST_00                                    ; $7B40: $C7
    jr c, @-$27                                   ; $7B41: $38 $D7

    jr z, jr_001_7B78                             ; $7B43: $28 $33

    call z, $847B                                 ; $7B45: $CC $7B $84
    ld a, c                                       ; $7B48: $79
    add [hl]                                      ; $7B49: $86
    dec a                                         ; $7B4A: $3D
    jp nz, $609F                                  ; $7B4B: $C2 $9F $60

    rst RST_08                                    ; $7B4E: $CF
    jr nc, jr_001_7B38                            ; $7B4F: $30 $E7

    jr @-$0B                                      ; $7B51: $18 $F3

    inc c                                         ; $7B53: $0C
    rst RST_38                                    ; $7B54: $FF
    nop                                           ; $7B55: $00
    nop                                           ; $7B56: $00
    rst RST_38                                    ; $7B57: $FF
    rst RST_38                                    ; $7B58: $FF
    nop                                           ; $7B59: $00
    rst RST_38                                    ; $7B5A: $FF
    nop                                           ; $7B5B: $00
    rst RST_38                                    ; $7B5C: $FF
    nop                                           ; $7B5D: $00
    rst RST_38                                    ; $7B5E: $FF
    nop                                           ; $7B5F: $00
    rst RST_38                                    ; $7B60: $FF
    nop                                           ; $7B61: $00

jr_001_7B62:
    rst RST_38                                    ; $7B62: $FF
    nop                                           ; $7B63: $00
    add a                                         ; $7B64: $87
    ld a, b                                       ; $7B65: $78
    rst RST_38                                    ; $7B66: $FF
    nop                                           ; $7B67: $00
    add a                                         ; $7B68: $87
    ld a, b                                       ; $7B69: $78
    rst RST_38                                    ; $7B6A: $FF
    nop                                           ; $7B6B: $00
    add a                                         ; $7B6C: $87
    ld a, b                                       ; $7B6D: $78
    rst RST_38                                    ; $7B6E: $FF
    nop                                           ; $7B6F: $00
    add a                                         ; $7B70: $87
    ld a, b                                       ; $7B71: $78
    rst RST_38                                    ; $7B72: $FF

jr_001_7B73:
    nop                                           ; $7B73: $00
    ret nz                                        ; $7B74: $C0

    nop                                           ; $7B75: $00
    ldh a, [rP1]                                  ; $7B76: $F0 $00

jr_001_7B78:
    inc a                                         ; $7B78: $3C
    ret nz                                        ; $7B79: $C0

    rst RST_08                                    ; $7B7A: $CF
    jr nc, jr_001_7B73                            ; $7B7B: $30 $F6

    add hl, bc                                    ; $7B7D: $09
    pop af                                        ; $7B7E: $F1
    ld c, $E3                                     ; $7B7F: $0E $E3
    inc e                                         ; $7B81: $1C
    db $EB                                        ; $7B82: $EB
    inc d                                         ; $7B83: $14
    call z, $DE33                                 ; $7B84: $CC $33 $DE
    ld hl, $619E                                  ; $7B87: $21 $9E $61
    cp h                                          ; $7B8A: $BC

jr_001_7B8B:
    ld b, e                                       ; $7B8B: $43
    ld sp, hl                                     ; $7B8C: $F9
    ld b, $F3                                     ; $7B8D: $06 $F3
    inc c                                         ; $7B8F: $0C
    rst RST_20                                    ; $7B90: $E7
    jr jr_001_7B62                                ; $7B91: $18 $CF

    jr nc, jr_001_7B95                            ; $7B93: $30 $00

jr_001_7B95:
    nop                                           ; $7B95: $00
    ld [hl], b                                    ; $7B96: $70
    nop                                           ; $7B97: $00
    sbc b                                         ; $7B98: $98
    ld h, b                                       ; $7B99: $60
    ld l, h                                       ; $7B9A: $6C
    sub b                                         ; $7B9B: $90
    db $EC                                        ; $7B9C: $EC
    db $10                                        ; $7B9D: $10
    or $08                                        ; $7B9E: $F6 $08
    add $38                                       ; $7BA0: $C6 $38
    ld a, $C0                                     ; $7BA2: $3E $C0
    ld [hl], b                                    ; $7BA4: $70
    add b                                         ; $7BA5: $80
    ldh [rP1], a                                  ; $7BA6: $E0 $00
    ld h, b                                       ; $7BA8: $60
    add b                                         ; $7BA9: $80
    ld [hl], b                                    ; $7BAA: $70
    add b                                         ; $7BAB: $80
    or b                                          ; $7BAC: $B0
    ld b, b                                       ; $7BAD: $40
    cp b                                          ; $7BAE: $B8
    ld b, b                                       ; $7BAF: $40
    ret c                                         ; $7BB0: $D8

    jr nz, jr_001_7B8B                            ; $7BB1: $20 $D8

    jr nz, @+$0D                                  ; $7BB3: $20 $0B

    inc b                                         ; $7BB5: $04
    dec bc                                        ; $7BB6: $0B
    inc b                                         ; $7BB7: $04
    dec bc                                        ; $7BB8: $0B
    inc b                                         ; $7BB9: $04
    dec b                                         ; $7BBA: $05
    ld [bc], a                                    ; $7BBB: $02
    dec b                                         ; $7BBC: $05
    ld [bc], a                                    ; $7BBD: $02
    ld [bc], a                                    ; $7BBE: $02
    ld bc, $0102                                  ; $7BBF: $01 $02 $01
    rrca                                          ; $7BC2: $0F
    nop                                           ; $7BC3: $00
    ld [$0507], sp                                ; $7BC4: $08 $07 $05
    ld [bc], a                                    ; $7BC7: $02
    ld [bc], a                                    ; $7BC8: $02
    ld bc, $0001                                  ; $7BC9: $01 $01 $00
    nop                                           ; $7BCC: $00
    nop                                           ; $7BCD: $00
    nop                                           ; $7BCE: $00
    nop                                           ; $7BCF: $00
    nop                                           ; $7BD0: $00
    nop                                           ; $7BD1: $00
    nop                                           ; $7BD2: $00
    nop                                           ; $7BD3: $00
    ld hl, sp+$07                                 ; $7BD4: $F8 $07
    cp $01                                        ; $7BD6: $FE $01

jr_001_7BD8:
    rst RST_38                                    ; $7BD8: $FF
    nop                                           ; $7BD9: $00
    rst RST_38                                    ; $7BDA: $FF
    nop                                           ; $7BDB: $00
    rst RST_38                                    ; $7BDC: $FF
    nop                                           ; $7BDD: $00
    rst RST_38                                    ; $7BDE: $FF
    nop                                           ; $7BDF: $00
    rst RST_38                                    ; $7BE0: $FF
    nop                                           ; $7BE1: $00
    ld a, [hl]                                    ; $7BE2: $7E
    add c                                         ; $7BE3: $81
    add hl, de                                    ; $7BE4: $19
    and $C7                                       ; $7BE5: $E6 $C7
    jr c, jr_001_7BD8                             ; $7BE7: $38 $EF

    db $10                                        ; $7BE9: $10
    ld l, a                                       ; $7BEA: $6F
    sub b                                         ; $7BEB: $90
    xor [hl]                                      ; $7BEC: $AE

jr_001_7BED:
    ld d, c                                       ; $7BED: $51
    ld c, l                                       ; $7BEE: $4D
    ld [hl-], a                                   ; $7BEF: $32
    dec l                                         ; $7BF0: $2D
    ld [de], a                                    ; $7BF1: $12
    inc de                                        ; $7BF2: $13

jr_001_7BF3:
    inc c                                         ; $7BF3: $0C
    rst RST_38                                    ; $7BF4: $FF
    nop                                           ; $7BF5: $00
    ld a, h                                       ; $7BF6: $7C
    add e                                         ; $7BF7: $83
    add hl, sp                                    ; $7BF8: $39
    add $BB                                       ; $7BF9: $C6 $BB
    ld b, h                                       ; $7BFB: $44
    cp e                                          ; $7BFC: $BB
    ld b, h                                       ; $7BFD: $44
    cp e                                          ; $7BFE: $BB
    ld b, h                                       ; $7BFF: $44
    ld a, l                                       ; $7C00: $7D
    add d                                         ; $7C01: $82
    cp $01                                        ; $7C02: $FE $01
    rst RST_38                                    ; $7C04: $FF
    nop                                           ; $7C05: $00
    rst RST_38                                    ; $7C06: $FF
    nop                                           ; $7C07: $00
    rst RST_38                                    ; $7C08: $FF
    nop                                           ; $7C09: $00
    rst RST_38                                    ; $7C0A: $FF
    nop                                           ; $7C0B: $00
    cp $01                                        ; $7C0C: $FE $01
    ld a, l                                       ; $7C0E: $7D

jr_001_7C0F:
    add d                                         ; $7C0F: $82
    ld a, l                                       ; $7C10: $7D

jr_001_7C11:
    add d                                         ; $7C11: $82
    ld a, l                                       ; $7C12: $7D
    add d                                         ; $7C13: $82
    rra                                           ; $7C14: $1F
    ldh [$FF7F], a                                ; $7C15: $E0 $7F
    add b                                         ; $7C17: $80
    rst RST_38                                    ; $7C18: $FF
    nop                                           ; $7C19: $00
    rst RST_38                                    ; $7C1A: $FF
    nop                                           ; $7C1B: $00
    rst RST_38                                    ; $7C1C: $FF
    nop                                           ; $7C1D: $00
    rst RST_38                                    ; $7C1E: $FF
    nop                                           ; $7C1F: $00
    rst RST_38                                    ; $7C20: $FF
    nop                                           ; $7C21: $00
    cp $01                                        ; $7C22: $FE $01
    jr c, jr_001_7BED                             ; $7C24: $38 $C7

jr_001_7C26:
    jp $F73C                                      ; $7C26: $C3 $3C $F7


    ld [$09F6], sp                                ; $7C29: $08 $F6 $09
    push af                                       ; $7C2C: $F5
    ld a, [bc]                                    ; $7C2D: $0A
    ld [hl], e                                    ; $7C2E: $73
    adc h                                         ; $7C2F: $8C
    ld [hl], a                                    ; $7C30: $77
    adc b                                         ; $7C31: $88
    adc [hl]                                      ; $7C32: $8E
    ld [hl], b                                    ; $7C33: $70
    ret c                                         ; $7C34: $D8

    jr nz, jr_001_7C0F                            ; $7C35: $20 $D8

    jr nz, jr_001_7C11                            ; $7C37: $20 $D8

    jr nz, jr_001_7BF3                            ; $7C39: $20 $B8

    ld b, b                                       ; $7C3B: $40
    or b                                          ; $7C3C: $B0
    ld b, b                                       ; $7C3D: $40
    ld [hl], b                                    ; $7C3E: $70
    add b                                         ; $7C3F: $80
    ld h, b                                       ; $7C40: $60
    add b                                         ; $7C41: $80
    ld hl, sp+$00                                 ; $7C42: $F8 $00
    jr jr_001_7C26                                ; $7C44: $18 $E0

    cp b                                          ; $7C46: $B8
    ld b, b                                       ; $7C47: $40
    ld [hl], b                                    ; $7C48: $70
    add b                                         ; $7C49: $80
    ldh [rP1], a                                  ; $7C4A: $E0 $00
    ret nz                                        ; $7C4C: $C0

    nop                                           ; $7C4D: $00
    add b                                         ; $7C4E: $80
    nop                                           ; $7C4F: $00
    nop                                           ; $7C50: $00
    nop                                           ; $7C51: $00
    nop                                           ; $7C52: $00
    nop                                           ; $7C53: $00
    rrca                                          ; $7C54: $0F
    nop                                           ; $7C55: $00
    nop                                           ; $7C56: $00
    nop                                           ; $7C57: $00
    nop                                           ; $7C58: $00
    nop                                           ; $7C59: $00
    nop                                           ; $7C5A: $00
    nop                                           ; $7C5B: $00
    nop                                           ; $7C5C: $00
    nop                                           ; $7C5D: $00
    nop                                           ; $7C5E: $00
    nop                                           ; $7C5F: $00
    nop                                           ; $7C60: $00
    nop                                           ; $7C61: $00
    nop                                           ; $7C62: $00
    nop                                           ; $7C63: $00
    nop                                           ; $7C64: $00
    nop                                           ; $7C65: $00
    nop                                           ; $7C66: $00
    nop                                           ; $7C67: $00
    nop                                           ; $7C68: $00
    nop                                           ; $7C69: $00
    nop                                           ; $7C6A: $00
    nop                                           ; $7C6B: $00
    nop                                           ; $7C6C: $00
    nop                                           ; $7C6D: $00
    nop                                           ; $7C6E: $00
    nop                                           ; $7C6F: $00
    nop                                           ; $7C70: $00
    nop                                           ; $7C71: $00
    nop                                           ; $7C72: $00
    nop                                           ; $7C73: $00
    cp e                                          ; $7C74: $BB
    ld b, h                                       ; $7C75: $44
    cp e                                          ; $7C76: $BB
    ld b, h                                       ; $7C77: $44
    cp e                                          ; $7C78: $BB
    ld b, h                                       ; $7C79: $44
    ld d, a                                       ; $7C7A: $57
    jr z, jr_001_7CD4                             ; $7C7B: $28 $57

    jr z, jr_001_7CD5                             ; $7C7D: $28 $56

    jr z, jr_001_7CAF                             ; $7C7F: $28 $2E

    db $10                                        ; $7C81: $10
    inc e                                         ; $7C82: $1C
    nop                                           ; $7C83: $00
    nop                                           ; $7C84: $00
    nop                                           ; $7C85: $00
    nop                                           ; $7C86: $00
    nop                                           ; $7C87: $00
    nop                                           ; $7C88: $00
    nop                                           ; $7C89: $00
    nop                                           ; $7C8A: $00
    nop                                           ; $7C8B: $00
    nop                                           ; $7C8C: $00
    nop                                           ; $7C8D: $00
    nop                                           ; $7C8E: $00
    nop                                           ; $7C8F: $00
    nop                                           ; $7C90: $00
    nop                                           ; $7C91: $00
    nop                                           ; $7C92: $00
    nop                                           ; $7C93: $00
    db $FC                                        ; $7C94: $FC
    nop                                           ; $7C95: $00
    add b                                         ; $7C96: $80
    nop                                           ; $7C97: $00
    nop                                           ; $7C98: $00
    nop                                           ; $7C99: $00
    nop                                           ; $7C9A: $00
    nop                                           ; $7C9B: $00
    nop                                           ; $7C9C: $00
    nop                                           ; $7C9D: $00
    nop                                           ; $7C9E: $00
    nop                                           ; $7C9F: $00
    nop                                           ; $7CA0: $00
    nop                                           ; $7CA1: $00
    nop                                           ; $7CA2: $00
    nop                                           ; $7CA3: $00
    nop                                           ; $7CA4: $00
    nop                                           ; $7CA5: $00
    nop                                           ; $7CA6: $00
    nop                                           ; $7CA7: $00
    nop                                           ; $7CA8: $00
    nop                                           ; $7CA9: $00
    nop                                           ; $7CAA: $00
    nop                                           ; $7CAB: $00
    nop                                           ; $7CAC: $00
    nop                                           ; $7CAD: $00
    nop                                           ; $7CAE: $00

jr_001_7CAF:
    nop                                           ; $7CAF: $00

jr_001_7CB0:
    nop                                           ; $7CB0: $00
    nop                                           ; $7CB1: $00
    nop                                           ; $7CB2: $00
    nop                                           ; $7CB3: $00
    nop                                           ; $7CB4: $00
    nop                                           ; $7CB5: $00
    ld bc, $0200                                  ; $7CB6: $01 $00 $02
    ld bc, $0205                                  ; $7CB9: $01 $05 $02
    dec b                                         ; $7CBC: $05
    ld [bc], a                                    ; $7CBD: $02
    dec bc                                        ; $7CBE: $0B
    inc b                                         ; $7CBF: $04
    ld [$0F07], sp                                ; $7CC0: $08 $07 $0F
    nop                                           ; $7CC3: $00
    nop                                           ; $7CC4: $00
    nop                                           ; $7CC5: $00

jr_001_7CC6:
    nop                                           ; $7CC6: $00
    nop                                           ; $7CC7: $00
    ld bc, $0100                                  ; $7CC8: $01 $00 $01
    nop                                           ; $7CCB: $00

jr_001_7CCC:
    ld [bc], a                                    ; $7CCC: $02
    ld bc, $0102                                  ; $7CCD: $01 $02 $01
    dec b                                         ; $7CD0: $05
    ld [bc], a                                    ; $7CD1: $02
    dec b                                         ; $7CD2: $05
    ld [bc], a                                    ; $7CD3: $02

jr_001_7CD4:
    nop                                           ; $7CD4: $00

jr_001_7CD5:
    nop                                           ; $7CD5: $00
    db $E3                                        ; $7CD6: $E3
    nop                                           ; $7CD7: $00
    ld [hl], h                                    ; $7CD8: $74
    add e                                         ; $7CD9: $83
    cp e                                          ; $7CDA: $BB
    ld b, h                                       ; $7CDB: $44
    rst RST_10                                    ; $7CDC: $D7
    jr z, jr_001_7CC6                             ; $7CDD: $28 $E7

    jr jr_001_7CCC                                ; $7CDF: $18 $EB

    inc d                                         ; $7CE1: $14
    ld e, e                                       ; $7CE2: $5B
    and h                                         ; $7CE3: $A4
    sbc e                                         ; $7CE4: $9B
    ld h, h                                       ; $7CE5: $64

jr_001_7CE6:
    cp l                                          ; $7CE6: $BD
    ld b, d                                       ; $7CE7: $42
    dec a                                         ; $7CE8: $3D
    jp nz, $E01F                                  ; $7CE9: $C2 $1F $E0

    rst RST_18                                    ; $7CEC: $DF
    jr nz, @-$0F                                  ; $7CED: $20 $EF

    db $10                                        ; $7CEF: $10
    rst RST_20                                    ; $7CF0: $E7
    jr jr_001_7CE6                                ; $7CF1: $18 $F3

    inc c                                         ; $7CF3: $0C
    rst RST_38                                    ; $7CF4: $FF
    nop                                           ; $7CF5: $00
    ld bc, $FEFE                                  ; $7CF6: $01 $FE $FE
    ld bc, $00FF                                  ; $7CF9: $01 $FF $00
    rst RST_38                                    ; $7CFC: $FF
    nop                                           ; $7CFD: $00
    rst RST_38                                    ; $7CFE: $FF
    nop                                           ; $7CFF: $00
    rst RST_38                                    ; $7D00: $FF
    nop                                           ; $7D01: $00
    rst RST_38                                    ; $7D02: $FF
    nop                                           ; $7D03: $00
    rrca                                          ; $7D04: $0F
    ldh a, [rIE]                                  ; $7D05: $F0 $FF
    nop                                           ; $7D07: $00
    ld c, $F1                                     ; $7D08: $0E $F1
    cp $01                                        ; $7D0A: $FE $01
    rrca                                          ; $7D0C: $0F
    ldh a, [rIE]                                  ; $7D0D: $F0 $FF
    nop                                           ; $7D0F: $00
    rrca                                          ; $7D10: $0F
    ldh a, [rIE]                                  ; $7D11: $F0 $FF
    nop                                           ; $7D13: $00
    ret nz                                        ; $7D14: $C0

    nop                                           ; $7D15: $00
    pop af                                        ; $7D16: $F1
    ld b, b                                       ; $7D17: $40
    ld a, d                                       ; $7D18: $7A
    or c                                          ; $7D19: $B1
    cp l                                          ; $7D1A: $BD
    ld e, d                                       ; $7D1B: $5A
    db $DB                                        ; $7D1C: $DB
    inc h                                         ; $7D1D: $24
    rst RST_00                                    ; $7D1E: $C7
    jr c, jr_001_7CB0                             ; $7D1F: $38 $8F

    ld [hl], b                                    ; $7D21: $70
    xor h                                         ; $7D22: $AC
    ld d, e                                       ; $7D23: $53
    ld [hl], c                                    ; $7D24: $71
    adc [hl]                                      ; $7D25: $8E
    ld a, e                                       ; $7D26: $7B
    add h                                         ; $7D27: $84
    ld sp, hl                                     ; $7D28: $F9
    ld b, $F1                                     ; $7D29: $06 $F1
    ld c, $E6                                     ; $7D2B: $0E $E6
    add hl, de                                    ; $7D2D: $19
    adc $31                                       ; $7D2E: $CE $31
    sbc a                                         ; $7D30: $9F
    ld h, b                                       ; $7D31: $60
    ccf                                           ; $7D32: $3F
    ret nz                                        ; $7D33: $C0

    nop                                           ; $7D34: $00
    nop                                           ; $7D35: $00
    ldh [rP1], a                                  ; $7D36: $E0 $00
    ld [hl], b                                    ; $7D38: $70
    and b                                         ; $7D39: $A0
    cp b                                          ; $7D3A: $B8
    ld d, b                                       ; $7D3B: $50
    cp b                                          ; $7D3C: $B8
    ld d, b                                       ; $7D3D: $50
    call c, $1C28                                 ; $7D3E: $DC $28 $1C
    add sp, $7C                                   ; $7D41: $E8 $7C
    add b                                         ; $7D43: $80
    ldh a, [rP1]                                  ; $7D44: $F0 $00
    ret nz                                        ; $7D46: $C0

    nop                                           ; $7D47: $00
    ret nz                                        ; $7D48: $C0

    add b                                         ; $7D49: $80
    ldh [$FFC0], a                                ; $7D4A: $E0 $C0
    ldh [rLCDC], a                                ; $7D4C: $E0 $40
    ldh [rLCDC], a                                ; $7D4E: $E0 $40
    ld [hl], b                                    ; $7D50: $70
    and b                                         ; $7D51: $A0
    ld [hl], b                                    ; $7D52: $70
    and b                                         ; $7D53: $A0
    cp a                                          ; $7D54: $BF
    ld b, b                                       ; $7D55: $40
    cp a                                          ; $7D56: $BF
    ld b, b                                       ; $7D57: $40
    cp a                                          ; $7D58: $BF
    ld b, b                                       ; $7D59: $40
    ld e, a                                       ; $7D5A: $5F
    jr nz, @+$61                                  ; $7D5B: $20 $5F

    jr nz, @+$31                                  ; $7D5D: $20 $2F

    db $10                                        ; $7D5F: $10
    cpl                                           ; $7D60: $2F
    db $10                                        ; $7D61: $10

jr_001_7D62:
    ld [hl], a                                    ; $7D62: $77
    ld [$3C43], sp                                ; $7D63: $08 $43 $3C
    ld e, h                                       ; $7D66: $5C
    inc hl                                        ; $7D67: $23
    ld l, $11                                     ; $7D68: $2E $11
    ld d, $09                                     ; $7D6A: $16 $09
    ld a, [bc]                                    ; $7D6C: $0A
    dec b                                         ; $7D6D: $05

jr_001_7D6E:
    inc b                                         ; $7D6E: $04
    inc bc                                        ; $7D6F: $03

jr_001_7D70:
    ld [bc], a                                    ; $7D70: $02
    ld bc, $0001                                  ; $7D71: $01 $01 $00
    ccf                                           ; $7D74: $3F
    ret nz                                        ; $7D75: $C0

    sbc a                                         ; $7D76: $9F

jr_001_7D77:
    ld h, b                                       ; $7D77: $60
    adc $31                                       ; $7D78: $CE $31
    xor $11                                       ; $7D7A: $EE $11
    xor $11                                       ; $7D7C: $EE $11
    xor $11                                       ; $7D7E: $EE $11
    rst RST_18                                    ; $7D80: $DF

jr_001_7D81:
    jr nz, jr_001_7D62                            ; $7D81: $20 $DF

    jr nz, jr_001_7DC4                            ; $7D83: $20 $3F

    ret nz                                        ; $7D85: $C0

    rst RST_38                                    ; $7D86: $FF
    nop                                           ; $7D87: $00
    rst RST_38                                    ; $7D88: $FF
    nop                                           ; $7D89: $00
    rst RST_38                                    ; $7D8A: $FF
    nop                                           ; $7D8B: $00
    rst RST_18                                    ; $7D8C: $DF
    jr nz, jr_001_7D6E                            ; $7D8D: $20 $DF

    jr nz, jr_001_7D70                            ; $7D8F: $20 $DF

    jr nz, jr_001_7DC2                            ; $7D91: $20 $2F

    ret nc                                        ; $7D93: $D0

    rst RST_08                                    ; $7D94: $CF
    jr nc, jr_001_7DB6                            ; $7D95: $30 $1F

    ldh [$FF7F], a                                ; $7D97: $E0 $7F
    add b                                         ; $7D99: $80
    rst RST_38                                    ; $7D9A: $FF
    nop                                           ; $7D9B: $00
    rst RST_38                                    ; $7D9C: $FF
    nop                                           ; $7D9D: $00
    rst RST_38                                    ; $7D9E: $FF
    nop                                           ; $7D9F: $00
    ld a, a                                       ; $7DA0: $7F
    add b                                         ; $7DA1: $80
    cp a                                          ; $7DA2: $BF
    ld b, b                                       ; $7DA3: $40
    call c, $E123                                 ; $7DA4: $DC $23 $E1
    ld e, $FB                                     ; $7DA7: $1E $FB
    inc b                                         ; $7DA9: $04
    ei                                            ; $7DAA: $FB
    inc b                                         ; $7DAB: $04
    ld a, d                                       ; $7DAC: $7A
    add l                                         ; $7DAD: $85
    ld a, c                                       ; $7DAE: $79
    add [hl]                                      ; $7DAF: $86
    dec sp                                        ; $7DB0: $3B
    push bc                                       ; $7DB1: $C5
    ld b, a                                       ; $7DB2: $47
    cp d                                          ; $7DB3: $BA
    xor $14                                       ; $7DB4: $EE $14

jr_001_7DB6:
    xor $14                                       ; $7DB6: $EE $14
    xor $14                                       ; $7DB8: $EE $14
    call c, $DC28                                 ; $7DBA: $DC $28 $DC
    jr z, jr_001_7D77                             ; $7DBD: $28 $B8

    ld d, b                                       ; $7DBF: $50
    cp b                                          ; $7DC0: $B8
    ld d, b                                       ; $7DC1: $50

jr_001_7DC2:
    ld a, h                                       ; $7DC2: $7C
    add b                                         ; $7DC3: $80

jr_001_7DC4:
    inc e                                         ; $7DC4: $1C
    add sp, -$24                                  ; $7DC5: $E8 $DC
    jr z, jr_001_7D81                             ; $7DC7: $28 $B8

    ld d, b                                       ; $7DC9: $50
    ld [hl], b                                    ; $7DCA: $70
    and b                                         ; $7DCB: $A0
    ldh [rLCDC], a                                ; $7DCC: $E0 $40
    ret nz                                        ; $7DCE: $C0

    add b                                         ; $7DCF: $80
    add b                                         ; $7DD0: $80
    nop                                           ; $7DD1: $00
    nop                                           ; $7DD2: $00
    nop                                           ; $7DD3: $00
    xor $11                                       ; $7DD4: $EE $11
    ld l, $11                                     ; $7DD6: $2E $11
    ld d, $09                                     ; $7DD8: $16 $09
    dec d                                         ; $7DDA: $15
    ld a, [bc]                                    ; $7DDB: $0A
    dec d                                         ; $7DDC: $15
    ld a, [bc]                                    ; $7DDD: $0A
    dec c                                         ; $7DDE: $0D
    ld [bc], a                                    ; $7DDF: $02
    dec bc                                        ; $7DE0: $0B
    inc b                                         ; $7DE1: $04
    rlca                                          ; $7DE2: $07
    nop                                           ; $7DE3: $00
    nop                                           ; $7DE4: $00
    nop                                           ; $7DE5: $00
    nop                                           ; $7DE6: $00
    nop                                           ; $7DE7: $00
    nop                                           ; $7DE8: $00
    nop                                           ; $7DE9: $00
    nop                                           ; $7DEA: $00
    nop                                           ; $7DEB: $00
    nop                                           ; $7DEC: $00
    nop                                           ; $7DED: $00
    nop                                           ; $7DEE: $00
    nop                                           ; $7DEF: $00
    nop                                           ; $7DF0: $00
    nop                                           ; $7DF1: $00
    nop                                           ; $7DF2: $00
    nop                                           ; $7DF3: $00
    cp $00                                        ; $7DF4: $FE $00
    ldh a, [rNR41]                                ; $7DF6: $F0 $20
    ldh [rLCDC], a                                ; $7DF8: $E0 $40
    ldh [rLCDC], a                                ; $7DFA: $E0 $40
    ldh [rLCDC], a                                ; $7DFC: $E0 $40
    ret nz                                        ; $7DFE: $C0

    nop                                           ; $7DFF: $00
    ret nz                                        ; $7E00: $C0

    add b                                         ; $7E01: $80
    add b                                         ; $7E02: $80
    nop                                           ; $7E03: $00
    nop                                           ; $7E04: $00
    nop                                           ; $7E05: $00
    nop                                           ; $7E06: $00
    nop                                           ; $7E07: $00
    nop                                           ; $7E08: $00
    nop                                           ; $7E09: $00
    nop                                           ; $7E0A: $00
    nop                                           ; $7E0B: $00
    nop                                           ; $7E0C: $00
    nop                                           ; $7E0D: $00
    nop                                           ; $7E0E: $00
    nop                                           ; $7E0F: $00
    nop                                           ; $7E10: $00
    nop                                           ; $7E11: $00
    nop                                           ; $7E12: $00
    nop                                           ; $7E13: $00
    nop                                           ; $7E14: $00
    nop                                           ; $7E15: $00
    inc a                                         ; $7E16: $3C
    nop                                           ; $7E17: $00
    ld c, a                                       ; $7E18: $4F
    jr nc, jr_001_7E71                            ; $7E19: $30 $56

    add hl, hl                                    ; $7E1B: $29
    cp c                                          ; $7E1C: $B9
    ld b, [hl]                                    ; $7E1D: $46
    cp l                                          ; $7E1E: $BD
    ld b, d                                       ; $7E1F: $42
    sbc l                                         ; $7E20: $9D
    ld h, d                                       ; $7E21: $62
    ld [$1615], a                                 ; $7E22: $EA $15 $16
    add hl, bc                                    ; $7E25: $09
    rla                                           ; $7E26: $17
    ld [$0817], sp                                ; $7E27: $08 $17 $08
    inc hl                                        ; $7E2A: $23
    inc e                                         ; $7E2B: $1C
    dec hl                                        ; $7E2C: $2B
    inc d                                         ; $7E2D: $14
    dec l                                         ; $7E2E: $2D
    ld [de], a                                    ; $7E2F: $12
    ld e, h                                       ; $7E30: $5C
    inc hl                                        ; $7E31: $23
    ld e, [hl]                                    ; $7E32: $5E
    ld hl, $003F                                  ; $7E33: $21 $3F $00
    jp Jump_000_3C3C                              ; $7E36: $C3 $3C $3C


    jp Jump_000_00FF                              ; $7E39: $C3 $FF $00


    rst RST_38                                    ; $7E3C: $FF
    nop                                           ; $7E3D: $00
    rst RST_38                                    ; $7E3E: $FF
    nop                                           ; $7E3F: $00
    rst RST_38                                    ; $7E40: $FF
    nop                                           ; $7E41: $00
    rst RST_38                                    ; $7E42: $FF
    nop                                           ; $7E43: $00
    add $39                                       ; $7E44: $C6 $39
    cp $01                                        ; $7E46: $FE $01
    ld b, l                                       ; $7E48: $45
    cp d                                          ; $7E49: $BA
    db $FD                                        ; $7E4A: $FD
    ld [bc], a                                    ; $7E4B: $02
    rst RST_00                                    ; $7E4C: $C7
    jr c, @+$01                                   ; $7E4D: $38 $FF

    nop                                           ; $7E4F: $00
    rst RST_00                                    ; $7E50: $C7

jr_001_7E51:
    jr c, jr_001_7E51                             ; $7E51: $38 $FE

    ld bc, $00C0                                  ; $7E53: $01 $C0 $00

jr_001_7E56:
    rst RST_20                                    ; $7E56: $E7
    ret nz                                        ; $7E57: $C0

    ld sp, hl                                     ; $7E58: $F9
    ld h, [hl]                                    ; $7E59: $66
    halt                                          ; $7E5A: $76
    xor c                                         ; $7E5B: $A9
    xor [hl]                                      ; $7E5C: $AE
    ld d, c                                       ; $7E5D: $51
    adc a                                         ; $7E5E: $8F
    ld [hl], b                                    ; $7E5F: $70
    inc e                                         ; $7E60: $1C
    db $E3                                        ; $7E61: $E3
    ld d, c                                       ; $7E62: $51
    xor [hl]                                      ; $7E63: $AE
    rst RST_20                                    ; $7E64: $E7
    jr jr_001_7E56                                ; $7E65: $18 $EF

    db $10                                        ; $7E67: $10
    rst RST_20                                    ; $7E68: $E7
    dec de                                        ; $7E69: $1B
    rst RST_20                                    ; $7E6A: $E7
    dec de                                        ; $7E6B: $1B
    swap l                                        ; $7E6C: $CB $35
    sbc e                                         ; $7E6E: $9B
    ld h, l                                       ; $7E6F: $65
    dec a                                         ; $7E70: $3D

jr_001_7E71:
    jp nz, $827D                                  ; $7E71: $C2 $7D $82

    nop                                           ; $7E74: $00
    nop                                           ; $7E75: $00
    ret nz                                        ; $7E76: $C0

    nop                                           ; $7E77: $00
    ldh [$FFC0], a                                ; $7E78: $E0 $C0
    ldh a, [$FF60]                                ; $7E7A: $F0 $60

jr_001_7E7C:
    ldh a, [$FF60]                                ; $7E7C: $F0 $60
    ld a, b                                       ; $7E7E: $78
    or b                                          ; $7E7F: $B0
    ld a, b                                       ; $7E80: $78
    or b                                          ; $7E81: $B0
    ld hl, sp+$00                                 ; $7E82: $F8 $00
    ldh [rP1], a                                  ; $7E84: $E0 $00
    add b                                         ; $7E86: $80
    nop                                           ; $7E87: $00
    add b                                         ; $7E88: $80
    nop                                           ; $7E89: $00
    ret nz                                        ; $7E8A: $C0

    add b                                         ; $7E8B: $80
    ret nz                                        ; $7E8C: $C0

    add b                                         ; $7E8D: $80
    ret nz                                        ; $7E8E: $C0

    add b                                         ; $7E8F: $80
    ldh [$FFC0], a                                ; $7E90: $E0 $C0
    ldh [$FFC0], a                                ; $7E92: $E0 $C0

jr_001_7E94:
    ld e, a                                       ; $7E94: $5F
    jr nz, jr_001_7EF6                            ; $7E95: $20 $5F

    jr nz, jr_001_7EF8                            ; $7E97: $20 $5F

    jr nz, jr_001_7EFA                            ; $7E99: $20 $5F

    jr nz, jr_001_7ECC                            ; $7E9B: $20 $2F

    db $10                                        ; $7E9D: $10
    cpl                                           ; $7E9E: $2F
    db $10                                        ; $7E9F: $10
    cpl                                           ; $7EA0: $2F
    db $10                                        ; $7EA1: $10
    scf                                           ; $7EA2: $37
    ld [$1C23], sp                                ; $7EA3: $08 $23 $1C
    inc l                                         ; $7EA6: $2C
    inc de                                        ; $7EA7: $13
    ld d, $09                                     ; $7EA8: $16 $09
    ld d, $09                                     ; $7EAA: $16 $09
    ld a, [bc]                                    ; $7EAC: $0A
    dec b                                         ; $7EAD: $05
    inc b                                         ; $7EAE: $04
    inc bc                                        ; $7EAF: $03
    ld [bc], a                                    ; $7EB0: $02
    ld bc, $0001                                  ; $7EB1: $01 $01 $00
    ld a, h                                       ; $7EB4: $7C
    add e                                         ; $7EB5: $83
    add hl, sp                                    ; $7EB6: $39
    add $93                                       ; $7EB7: $C6 $93
    ld l, h                                       ; $7EB9: $6C
    rst RST_10                                    ; $7EBA: $D7
    jr z, jr_001_7E94                             ; $7EBB: $28 $D7

    jr z, @-$27                                   ; $7EBD: $28 $D7

    jr z, jr_001_7E7C                             ; $7EBF: $28 $BB

    ld b, h                                       ; $7EC1: $44
    cp e                                          ; $7EC2: $BB
    ld b, h                                       ; $7EC3: $44
    ld a, l                                       ; $7EC4: $7D
    add d                                         ; $7EC5: $82
    cp $01                                        ; $7EC6: $FE $01
    rst RST_38                                    ; $7EC8: $FF
    nop                                           ; $7EC9: $00
    rst RST_38                                    ; $7ECA: $FF
    nop                                           ; $7ECB: $00

jr_001_7ECC:
    cp e                                          ; $7ECC: $BB
    ld b, h                                       ; $7ECD: $44
    cp e                                          ; $7ECE: $BB
    ld b, h                                       ; $7ECF: $44
    cp c                                          ; $7ED0: $B9
    ld b, [hl]                                    ; $7ED1: $46
    ld a, d                                       ; $7ED2: $7A
    add l                                         ; $7ED3: $85
    db $FD                                        ; $7ED4: $FD
    ld [bc], a                                    ; $7ED5: $02
    db $FD                                        ; $7ED6: $FD
    ld [bc], a                                    ; $7ED7: $02
    db $FD                                        ; $7ED8: $FD
    ld [bc], a                                    ; $7ED9: $02
    db $FD                                        ; $7EDA: $FD
    ld [bc], a                                    ; $7EDB: $02
    db $FD                                        ; $7EDC: $FD
    ld [bc], a                                    ; $7EDD: $02
    ei                                            ; $7EDE: $FB
    dec b                                         ; $7EDF: $05
    ei                                            ; $7EE0: $FB
    dec b                                         ; $7EE1: $05
    rst RST_30                                    ; $7EE2: $F7
    ld [$3DC3], sp                                ; $7EE3: $08 $C3 $3D
    dec de                                        ; $7EE6: $1B
    push hl                                       ; $7EE7: $E5
    cp e                                          ; $7EE8: $BB
    ld b, l                                       ; $7EE9: $45
    or a                                          ; $7EEA: $B7
    ld c, e                                       ; $7EEB: $4B
    xor a                                         ; $7EEC: $AF
    ld d, [hl]                                    ; $7EED: $56
    sbc [hl]                                      ; $7EEE: $9E
    ld l, h                                       ; $7EEF: $6C
    cp h                                          ; $7EF0: $BC
    ld e, b                                       ; $7EF1: $58
    ld a, b                                       ; $7EF2: $78
    or b                                          ; $7EF3: $B0
    ldh [$FFC0], a                                ; $7EF4: $E0 $C0

jr_001_7EF6:
    ldh [$FFC0], a                                ; $7EF6: $E0 $C0

jr_001_7EF8:
    ldh [$FFC0], a                                ; $7EF8: $E0 $C0

jr_001_7EFA:
    ldh [$FFC0], a                                ; $7EFA: $E0 $C0
    ldh [$FFC0], a                                ; $7EFC: $E0 $C0
    ret nz                                        ; $7EFE: $C0

    add b                                         ; $7EFF: $80
    ret nz                                        ; $7F00: $C0

    add b                                         ; $7F01: $80
    ret nz                                        ; $7F02: $C0

    nop                                           ; $7F03: $00
    ret nz                                        ; $7F04: $C0

    add b                                         ; $7F05: $80
    ret nz                                        ; $7F06: $C0

    add b                                         ; $7F07: $80
    ret nz                                        ; $7F08: $C0

    add b                                         ; $7F09: $80
    add b                                         ; $7F0A: $80
    nop                                           ; $7F0B: $00
    nop                                           ; $7F0C: $00
    nop                                           ; $7F0D: $00
    nop                                           ; $7F0E: $00
    nop                                           ; $7F0F: $00
    nop                                           ; $7F10: $00
    nop                                           ; $7F11: $00
    nop                                           ; $7F12: $00
    nop                                           ; $7F13: $00
    ei                                            ; $7F14: $FB
    inc b                                         ; $7F15: $04
    dec sp                                        ; $7F16: $3B
    dec b                                         ; $7F17: $05
    dec sp                                        ; $7F18: $3B
    dec b                                         ; $7F19: $05
    scf                                           ; $7F1A: $37
    dec bc                                        ; $7F1B: $0B
    rla                                           ; $7F1C: $17
    dec bc                                        ; $7F1D: $0B
    rla                                           ; $7F1E: $17
    dec bc                                        ; $7F1F: $0B
    rla                                           ; $7F20: $17
    dec bc                                        ; $7F21: $0B
    rrca                                          ; $7F22: $0F
    nop                                           ; $7F23: $00
    nop                                           ; $7F24: $00
    nop                                           ; $7F25: $00
    nop                                           ; $7F26: $00
    nop                                           ; $7F27: $00
    nop                                           ; $7F28: $00
    nop                                           ; $7F29: $00
    nop                                           ; $7F2A: $00
    nop                                           ; $7F2B: $00
    nop                                           ; $7F2C: $00
    nop                                           ; $7F2D: $00
    nop                                           ; $7F2E: $00
    nop                                           ; $7F2F: $00
    nop                                           ; $7F30: $00
    nop                                           ; $7F31: $00
    nop                                           ; $7F32: $00
    nop                                           ; $7F33: $00
    ldh a, [rP1]                                  ; $7F34: $F0 $00
    ret nz                                        ; $7F36: $C0

    add b                                         ; $7F37: $80
    ret nz                                        ; $7F38: $C0

    add b                                         ; $7F39: $80
    add b                                         ; $7F3A: $80
    nop                                           ; $7F3B: $00
    add b                                         ; $7F3C: $80
    nop                                           ; $7F3D: $00
    add b                                         ; $7F3E: $80
    nop                                           ; $7F3F: $00
    add b                                         ; $7F40: $80
    nop                                           ; $7F41: $00
    nop                                           ; $7F42: $00
    nop                                           ; $7F43: $00
    nop                                           ; $7F44: $00
    nop                                           ; $7F45: $00
    nop                                           ; $7F46: $00
    nop                                           ; $7F47: $00
    nop                                           ; $7F48: $00
    nop                                           ; $7F49: $00
    nop                                           ; $7F4A: $00
    nop                                           ; $7F4B: $00
    nop                                           ; $7F4C: $00
    nop                                           ; $7F4D: $00
    nop                                           ; $7F4E: $00
    nop                                           ; $7F4F: $00
    nop                                           ; $7F50: $00
    nop                                           ; $7F51: $00
    nop                                           ; $7F52: $00
    nop                                           ; $7F53: $00
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
