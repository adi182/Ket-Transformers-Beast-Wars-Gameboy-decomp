; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    ld sp, $DD00                                  ; $4000: $31 $00 $DD
    di                                            ; $4003: $F3
    rst RST_10                                    ; $4004: $D7
    ld hl, $C03A                                  ; $4005: $21 $3A $C0
    res 1, [hl]                                   ; $4008: $CB $8E
    xor a                                         ; $400A: $AF
    ldh [rBGP], a                                 ; $400B: $E0 $47
    ldh [rOBP0], a                                ; $400D: $E0 $48
    ldh [rOBP1], a                                ; $400F: $E0 $49
    call Call_000_13ED                            ; $4011: $CD $ED $13
    call Call_029_563C                            ; $4014: $CD $3C $56
    ld hl, $C2FE                                  ; $4017: $21 $FE $C2
    ld de, $572E                                  ; $401A: $11 $2E $57
    ld b, $0A                                     ; $401D: $06 $0A

jr_029_401F:
    ld a, [de]                                    ; $401F: $1A
    ld [hl+], a                                   ; $4020: $22
    inc de                                        ; $4021: $13
    dec b                                         ; $4022: $05
    jr nz, jr_029_401F                            ; $4023: $20 $FA

    ld a, [$C001]                                 ; $4025: $FA $01 $C0
    bit 7, a                                      ; $4028: $CB $7F
    jr nz, jr_029_4031                            ; $402A: $20 $05

    ld hl, $C306                                  ; $402C: $21 $06 $C3
    set 7, [hl]                                   ; $402F: $CB $FE

jr_029_4031:
    bit 6, a                                      ; $4031: $CB $77
    jr nz, jr_029_403A                            ; $4033: $20 $05

    ld hl, $C307                                  ; $4035: $21 $07 $C3
    set 7, [hl]                                   ; $4038: $CB $FE

jr_029_403A:
    ld a, $3C                                     ; $403A: $3E $3C
    ld [$C319], a                                 ; $403C: $EA $19 $C3
    xor a                                         ; $403F: $AF

Call_029_4040:
    ld [$C03B], a                                 ; $4040: $EA $3B $C0
    ld [$C312], a                                 ; $4043: $EA $12 $C3
    ld [$C313], a                                 ; $4046: $EA $13 $C3
    ld de, $0004                                  ; $4049: $11 $04 $00
    call Call_000_14C0                            ; $404C: $CD $C0 $14
    call Call_000_0F9E                            ; $404F: $CD $9E $0F
    ld de, $8100                                  ; $4052: $11 $00 $81
    call Call_000_0FCF                            ; $4055: $CD $CF $0F
    ld de, $9400                                  ; $4058: $11 $00 $94
    call Call_000_0FD4                            ; $405B: $CD $D4 $0F
    xor a                                         ; $405E: $AF
    ldh [$FFE4], a                                ; $405F: $E0 $E4
    ld [$C2AA], a                                 ; $4061: $EA $AA $C2
    ldh [$FFE2], a                                ; $4064: $E0 $E2
    ld [$C2AC], a                                 ; $4066: $EA $AC $C2
    ld hl, $5B04                                  ; $4069: $21 $04 $5B
    ld de, $C329                                  ; $406C: $11 $29 $C3
    call Call_000_124C                            ; $406F: $CD $4C $12
    ld hl, $C329                                  ; $4072: $21 $29 $C3
    ld de, $8800                                  ; $4075: $11 $00 $88
    ld b, $14                                     ; $4078: $06 $14
    call Call_000_1188                            ; $407A: $CD $88 $11
    ld hl, $5738                                  ; $407D: $21 $38 $57
    ld de, $C329                                  ; $4080: $11 $29 $C3
    call Call_000_124C                            ; $4083: $CD $4C $12
    ld hl, $C329                                  ; $4086: $21 $29 $C3
    ld de, $8940                                  ; $4089: $11 $40 $89
    ld b, $41                                     ; $408C: $06 $41
    call Call_000_1188                            ; $408E: $CD $88 $11
    ld hl, $68C8                                  ; $4091: $21 $C8 $68
    ld de, $C329                                  ; $4094: $11 $29 $C3
    call Call_000_124C                            ; $4097: $CD $4C $12
    ld hl, $C329                                  ; $409A: $21 $29 $C3
    ld de, $8D50                                  ; $409D: $11 $50 $8D
    ld b, $12                                     ; $40A0: $06 $12
    call Call_000_1188                            ; $40A2: $CD $88 $11
    ld hl, $6996                                  ; $40A5: $21 $96 $69
    ld de, $C329                                  ; $40A8: $11 $29 $C3
    call Call_000_124C                            ; $40AB: $CD $4C $12
    ld hl, $C329                                  ; $40AE: $21 $29 $C3
    ld de, $8E70                                  ; $40B1: $11 $70 $8E
    ld b, $05                                     ; $40B4: $06 $05
    call Call_000_1188                            ; $40B6: $CD $88 $11
    ld hl, $6718                                  ; $40B9: $21 $18 $67
    ld de, $C329                                  ; $40BC: $11 $29 $C3
    call Call_000_124C                            ; $40BF: $CD $4C $12
    ld hl, $C329                                  ; $40C2: $21 $29 $C3
    ld de, $8EC0                                  ; $40C5: $11 $C0 $8E
    ld b, $14                                     ; $40C8: $06 $14
    call Call_000_1188                            ; $40CA: $CD $88 $11
    ld hl, $69D0                                  ; $40CD: $21 $D0 $69
    ld de, $C329                                  ; $40D0: $11 $29 $C3
    call Call_000_124C                            ; $40D3: $CD $4C $12
    ld hl, $C329                                  ; $40D6: $21 $29 $C3
    ld de, $95A0                                  ; $40D9: $11 $A0 $95
    ld b, $25                                     ; $40DC: $06 $25
    call Call_000_1188                            ; $40DE: $CD $88 $11
    ld hl, $D780                                  ; $40E1: $21 $80 $D7
    ld de, $6CBC                                  ; $40E4: $11 $BC $6C
    call Call_000_0F8E                            ; $40E7: $CD $8E $0F
    ld hl, $D780                                  ; $40EA: $21 $80 $D7
    ld [hl], $80                                  ; $40ED: $36 $80
    ld hl, $D782                                  ; $40EF: $21 $82 $D7
    ld [hl], $06                                  ; $40F2: $36 $06
    ld hl, $D784                                  ; $40F4: $21 $84 $D7
    ld [hl], $00                                  ; $40F7: $36 $00
    ld hl, $D786                                  ; $40F9: $21 $86 $D7
    ld [hl], $00                                  ; $40FC: $36 $00
    ld hl, $D78E                                  ; $40FE: $21 $8E $D7
    ld [hl], $80                                  ; $4101: $36 $80
    ld hl, $D794                                  ; $4103: $21 $94 $D7
    ld [hl], $00                                  ; $4106: $36 $00
    ld hl, $D792                                  ; $4108: $21 $92 $D7
    ld [hl], $A1                                  ; $410B: $36 $A1
    inc hl                                        ; $410D: $23
    ld [hl], $6F                                  ; $410E: $36 $6F
    ld hl, $D7C0                                  ; $4110: $21 $C0 $D7
    ld de, $6CBC                                  ; $4113: $11 $BC $6C
    call Call_000_0F8E                            ; $4116: $CD $8E $0F
    ld hl, $D7C0                                  ; $4119: $21 $C0 $D7
    ld [hl], $80                                  ; $411C: $36 $80
    ld hl, $D7C2                                  ; $411E: $21 $C2 $D7
    ld [hl], $06                                  ; $4121: $36 $06
    ld hl, $D7C4                                  ; $4123: $21 $C4 $D7
    ld [hl], $00                                  ; $4126: $36 $00
    ld hl, $D7C6                                  ; $4128: $21 $C6 $D7
    ld [hl], $00                                  ; $412B: $36 $00
    ld hl, $D7CE                                  ; $412D: $21 $CE $D7
    ld [hl], $80                                  ; $4130: $36 $80
    ld hl, $D7D4                                  ; $4132: $21 $D4 $D7
    ld [hl], $04                                  ; $4135: $36 $04
    ld hl, $D7D2                                  ; $4137: $21 $D2 $D7
    ld [hl], $A1                                  ; $413A: $36 $A1
    inc hl                                        ; $413C: $23
    ld [hl], $6F                                  ; $413D: $36 $6F
    ld hl, $D800                                  ; $413F: $21 $00 $D8
    ld de, $6CBC                                  ; $4142: $11 $BC $6C
    call Call_000_0F8E                            ; $4145: $CD $8E $0F
    ld hl, $D800                                  ; $4148: $21 $00 $D8
    ld [hl], $80                                  ; $414B: $36 $80
    ld hl, $D802                                  ; $414D: $21 $02 $D8
    ld [hl], $17                                  ; $4150: $36 $17
    ld hl, $D804                                  ; $4152: $21 $04 $D8
    ld [hl], $00                                  ; $4155: $36 $00
    ld hl, $D806                                  ; $4157: $21 $06 $D8
    ld [hl], $00                                  ; $415A: $36 $00
    ld hl, $D80E                                  ; $415C: $21 $0E $D8
    ld [hl], $72                                  ; $415F: $36 $72
    ld hl, $D812                                  ; $4161: $21 $12 $D8
    ld [hl], $36                                  ; $4164: $36 $36
    inc hl                                        ; $4166: $23
    ld [hl], $6F                                  ; $4167: $36 $6F
    ld hl, $D814                                  ; $4169: $21 $14 $D8
    ld a, [$C2C6]                                 ; $416C: $FA $C6 $C2
    and $F0                                       ; $416F: $E6 $F0
    cp $10                                        ; $4171: $FE $10
    jr z, jr_029_4180                             ; $4173: $28 $0B

    cp $20                                        ; $4175: $FE $20
    jr z, jr_029_4187                             ; $4177: $28 $0E

    ld [hl], $00                                  ; $4179: $36 $00
    ld hl, $67A2                                  ; $417B: $21 $A2 $67
    jr jr_029_418C                                ; $417E: $18 $0C

jr_029_4180:
    ld [hl], $04                                  ; $4180: $36 $04
    ld hl, $6816                                  ; $4182: $21 $16 $68
    jr jr_029_418C                                ; $4185: $18 $05

jr_029_4187:
    ld [hl], $08                                  ; $4187: $36 $08
    ld hl, $685E                                  ; $4189: $21 $5E $68

jr_029_418C:
    ld de, $C329                                  ; $418C: $11 $29 $C3
    call Call_000_124C                            ; $418F: $CD $4C $12
    ld hl, $C329                                  ; $4192: $21 $29 $C3
    ld de, $8720                                  ; $4195: $11 $20 $87
    ld b, $0E                                     ; $4198: $06 $0E
    call Call_000_1188                            ; $419A: $CD $88 $11
    ld hl, $5BD8                                  ; $419D: $21 $D8 $5B
    ld de, $9000                                  ; $41A0: $11 $00 $90
    ld b, $5A                                     ; $41A3: $06 $5A
    call Call_000_1188                            ; $41A5: $CD $88 $11
    ld hl, $D680                                  ; $41A8: $21 $80 $D6
    ld de, $24CF                                  ; $41AB: $11 $CF $24
    call Call_000_0F8E                            ; $41AE: $CD $8E $0F
    ld hl, $D6C0                                  ; $41B1: $21 $C0 $D6
    ld de, $24EF                                  ; $41B4: $11 $EF $24
    call Call_000_0F8E                            ; $41B7: $CD $8E $0F
    ld hl, $D680                                  ; $41BA: $21 $80 $D6
    res 7, [hl]                                   ; $41BD: $CB $BE
    ld hl, $D6C0                                  ; $41BF: $21 $C0 $D6
    res 7, [hl]                                   ; $41C2: $CB $BE
    ld hl, $D682                                  ; $41C4: $21 $82 $D6
    ld [hl], $30                                  ; $41C7: $36 $30
    ld hl, $D6C2                                  ; $41C9: $21 $C2 $D6
    ld [hl], $10                                  ; $41CC: $36 $10
    ld hl, $D684                                  ; $41CE: $21 $84 $D6
    ld [hl], $1C                                  ; $41D1: $36 $1C
    ld hl, $D686                                  ; $41D3: $21 $86 $D6
    ld [hl], $00                                  ; $41D6: $36 $00
    ld hl, $D6C4                                  ; $41D8: $21 $C4 $D6
    ld [hl], $84                                  ; $41DB: $36 $84
    ld hl, $D6C6                                  ; $41DD: $21 $C6 $D6
    ld [hl], $50                                  ; $41E0: $36 $50
    ld hl, $D6A9                                  ; $41E2: $21 $A9 $D6
    ld [hl], $FF                                  ; $41E5: $36 $FF
    ld hl, $D6E9                                  ; $41E7: $21 $E9 $D6
    ld [hl], $FF                                  ; $41EA: $36 $FF
    ld hl, $D700                                  ; $41EC: $21 $00 $D7
    ld de, $6CBC                                  ; $41EF: $11 $BC $6C
    call Call_000_0F8E                            ; $41F2: $CD $8E $0F
    ld hl, $D702                                  ; $41F5: $21 $02 $D7
    ld [hl], $02                                  ; $41F8: $36 $02
    ld hl, $D714                                  ; $41FA: $21 $14 $D7
    ld de, $D72B                                  ; $41FD: $11 $2B $D7
    ld a, [$D920]                                 ; $4200: $FA $20 $D9
    bit 7, a                                      ; $4203: $CB $7F
    jr nz, jr_029_420B                            ; $4205: $20 $04

    ld b, $00                                     ; $4207: $06 $00
    jr jr_029_420D                                ; $4209: $18 $02

jr_029_420B:
    ld b, $08                                     ; $420B: $06 $08

jr_029_420D:
    ld a, [$C2C6]                                 ; $420D: $FA $C6 $C2
    and $F0                                       ; $4210: $E6 $F0
    cp $10                                        ; $4212: $FE $10
    jr nz, jr_029_421A                            ; $4214: $20 $04

    ld a, $10                                     ; $4216: $3E $10
    add b                                         ; $4218: $80
    ld b, a                                       ; $4219: $47

jr_029_421A:
    ld a, b                                       ; $421A: $78
    ld [hl], a                                    ; $421B: $77
    ld [de], a                                    ; $421C: $12
    ld a, [$C308]                                 ; $421D: $FA $08 $C3
    ld hl, $D72C                                  ; $4220: $21 $2C $D7
    ld [hl], a                                    ; $4223: $77
    ld de, $D700                                  ; $4224: $11 $00 $D7
    ld hl, $D740                                  ; $4227: $21 $40 $D7
    ld de, $6CBC                                  ; $422A: $11 $BC $6C
    call Call_000_0F8E                            ; $422D: $CD $8E $0F
    ld hl, $D742                                  ; $4230: $21 $42 $D7
    ld [hl], $02                                  ; $4233: $36 $02
    ld hl, $D754                                  ; $4235: $21 $54 $D7
    ld de, $D76B                                  ; $4238: $11 $6B $D7
    ld a, [$DA20]                                 ; $423B: $FA $20 $DA
    bit 7, a                                      ; $423E: $CB $7F
    jr nz, jr_029_4246                            ; $4240: $20 $04

    ld b, $04                                     ; $4242: $06 $04
    jr jr_029_4248                                ; $4244: $18 $02

jr_029_4246:
    ld b, $0C                                     ; $4246: $06 $0C

jr_029_4248:
    ld a, [$C2C6]                                 ; $4248: $FA $C6 $C2
    and $F0                                       ; $424B: $E6 $F0
    cp $10                                        ; $424D: $FE $10
    jr nz, jr_029_4255                            ; $424F: $20 $04

    ld a, $10                                     ; $4251: $3E $10
    add b                                         ; $4253: $80
    ld b, a                                       ; $4254: $47

jr_029_4255:
    ld a, b                                       ; $4255: $78
    ld [hl], a                                    ; $4256: $77
    ld [de], a                                    ; $4257: $12
    ld a, [$C309]                                 ; $4258: $FA $09 $C3
    ld hl, $D76C                                  ; $425B: $21 $6C $D7
    ld [hl], a                                    ; $425E: $77
    ld de, $D740                                  ; $425F: $11 $40 $D7
    call Call_000_17E2                            ; $4262: $CD $E2 $17
    and $0F                                       ; $4265: $E6 $0F
    add $03                                       ; $4267: $C6 $03
    ld [$D734], a                                 ; $4269: $EA $34 $D7
    call Call_000_17E2                            ; $426C: $CD $E2 $17
    and $0F                                       ; $426F: $E6 $0F
    add $03                                       ; $4271: $C6 $03
    ld [$D774], a                                 ; $4273: $EA $74 $D7
    ld a, [$C2C6]                                 ; $4276: $FA $C6 $C2
    bit 0, a                                      ; $4279: $CB $47
    jr z, jr_029_4287                             ; $427B: $28 $0A

    ld hl, $D72A                                  ; $427D: $21 $2A $D7
    set 7, [hl]                                   ; $4280: $CB $FE
    ld hl, $D76A                                  ; $4282: $21 $6A $D7
    set 7, [hl]                                   ; $4285: $CB $FE

jr_029_4287:
    ld a, [$C2C6]                                 ; $4287: $FA $C6 $C2
    bit 1, a                                      ; $428A: $CB $4F
    jr nz, jr_029_42C8                            ; $428C: $20 $3A

    bit 4, a                                      ; $428E: $CB $67
    jr nz, jr_029_42C8                            ; $4290: $20 $36

    ld a, [$C2D0]                                 ; $4292: $FA $D0 $C2
    or a                                          ; $4295: $B7
    jr z, jr_029_42B0                             ; $4296: $28 $18

    ld hl, $D700                                  ; $4298: $21 $00 $D7
    res 7, [hl]                                   ; $429B: $CB $BE
    ld a, $08                                     ; $429D: $3E $08
    ld [$D729], a                                 ; $429F: $EA $29 $D7
    ld a, [$C2C5]                                 ; $42A2: $FA $C5 $C2
    bit 0, a                                      ; $42A5: $CB $47
    jr z, jr_029_42D6                             ; $42A7: $28 $2D

    ld a, $02                                     ; $42A9: $3E $02
    ld [$D729], a                                 ; $42AB: $EA $29 $D7
    jr jr_029_42C6                                ; $42AE: $18 $16

jr_029_42B0:
    ld hl, $D740                                  ; $42B0: $21 $40 $D7
    res 7, [hl]                                   ; $42B3: $CB $BE
    ld a, $08                                     ; $42B5: $3E $08
    ld [$D769], a                                 ; $42B7: $EA $69 $D7
    ld a, [$C2C5]                                 ; $42BA: $FA $C5 $C2
    bit 1, a                                      ; $42BD: $CB $4F
    jr z, jr_029_42D6                             ; $42BF: $28 $15

    ld a, $02                                     ; $42C1: $3E $02
    ld [$D769], a                                 ; $42C3: $EA $69 $D7

jr_029_42C6:
    jr jr_029_42D6                                ; $42C6: $18 $0E

jr_029_42C8:
    call Call_000_17E2                            ; $42C8: $CD $E2 $17
    and $0F                                       ; $42CB: $E6 $0F
    ld [$C2F3], a                                 ; $42CD: $EA $F3 $C2
    ld b, $3F                                     ; $42D0: $06 $3F
    ld hl, $50BC                                  ; $42D2: $21 $BC $50
    rst RST_08                                    ; $42D5: $CF

jr_029_42D6:
    ld hl, $C329                                  ; $42D6: $21 $29 $C3
    xor a                                         ; $42D9: $AF
    ld bc, $0240                                  ; $42DA: $01 $40 $02

jr_029_42DD:
    ld [hl], $00                                  ; $42DD: $36 $00
    inc hl                                        ; $42DF: $23
    ld [hl], $94                                  ; $42E0: $36 $94
    inc hl                                        ; $42E2: $23
    dec bc                                        ; $42E3: $0B
    ld a, b                                       ; $42E4: $78
    or c                                          ; $42E5: $B1
    jr nz, jr_029_42DD                            ; $42E6: $20 $F5

    ld de, $59E4                                  ; $42E8: $11 $E4 $59
    ld hl, $C335                                  ; $42EB: $21 $35 $C3
    ld b, $08                                     ; $42EE: $06 $08
    ld c, $12                                     ; $42F0: $0E $12
    ld a, $94                                     ; $42F2: $3E $94
    call Call_000_1028                            ; $42F4: $CD $28 $10
    ld a, $01                                     ; $42F7: $3E $01
    ld [$C314], a                                 ; $42F9: $EA $14 $C3
    ld de, $D700                                  ; $42FC: $11 $00 $D7
    call Call_029_5436                            ; $42FF: $CD $36 $54
    call Call_029_566C                            ; $4302: $CD $6C $56
    call Call_000_1CD6                            ; $4305: $CD $D6 $1C
    call Call_000_1A39                            ; $4308: $CD $39 $1A
    ld a, $00                                     ; $430B: $3E $00
    call Call_000_135D                            ; $430D: $CD $5D $13
    ld a, $90                                     ; $4310: $3E $90
    ldh [rWY], a                                  ; $4312: $E0 $4A
    ld a, $07                                     ; $4314: $3E $07
    ldh [rWX], a                                  ; $4316: $E0 $4B
    ld a, $C7                                     ; $4318: $3E $C7
    rst RST_18                                    ; $431A: $DF
    xor a                                         ; $431B: $AF
    ldh [rSTAT], a                                ; $431C: $E0 $41
    ld a, $01                                     ; $431E: $3E $01
    ld [$C01D], a                                 ; $4320: $EA $1D $C0
    ei                                            ; $4323: $FB
    ld b, $01                                     ; $4324: $06 $01

jr_029_4326:
    call Call_000_0424                            ; $4326: $CD $24 $04
    dec b                                         ; $4329: $05
    jr nz, jr_029_4326                            ; $432A: $20 $FA

    ld a, $1B                                     ; $432C: $3E $1B
    ldh [rOBP0], a                                ; $432E: $E0 $48
    ld a, $8D                                     ; $4330: $3E $8D
    ldh [rOBP1], a                                ; $4332: $E0 $49
    ld a, $1B                                     ; $4334: $3E $1B
    ldh [rBGP], a                                 ; $4336: $E0 $47
    call Call_000_149D                            ; $4338: $CD $9D $14
    call Call_000_0424                            ; $433B: $CD $24 $04

jr_029_433E:
    ld a, [$C03B]                                 ; $433E: $FA $3B $C0
    ld hl, $435A                                  ; $4341: $21 $5A $43
    call Call_029_434C                            ; $4344: $CD $4C $43
    call Call_000_0424                            ; $4347: $CD $24 $04
    jr jr_029_433E                                ; $434A: $18 $F2

Call_029_434C:
    rst RST_28                                    ; $434C: $EF
    ret                                           ; $434D: $C9


    xor a                                         ; $434E: $AF
    ret                                           ; $434F: $C9


Jump_029_4350:
    ld a, [$C03B]                                 ; $4350: $FA $3B $C0
    add $02                                       ; $4353: $C6 $02
    ld [$C03B], a                                 ; $4355: $EA $3B $C0
    xor a                                         ; $4358: $AF
    ret                                           ; $4359: $C9


    ld [hl], b                                    ; $435A: $70
    ld b, e                                       ; $435B: $43
    ld a, b                                       ; $435C: $78
    ld b, e                                       ; $435D: $43
    sub l                                         ; $435E: $95
    ld b, e                                       ; $435F: $43
    ld d, a                                       ; $4360: $57
    ld b, h                                       ; $4361: $44
    ld h, a                                       ; $4362: $67
    ld b, h                                       ; $4363: $44
    ld [hl], h                                    ; $4364: $74
    ld b, [hl]                                    ; $4365: $46
    ret c                                         ; $4366: $D8

    ld c, d                                       ; $4367: $4A
    ld [hl+], a                                   ; $4368: $22
    ld b, a                                       ; $4369: $47
    halt                                          ; $436A: $76
    ld c, b                                       ; $436B: $48
    db $ED                                        ; $436C: $ED
    ld c, b                                       ; $436D: $48
    sub e                                         ; $436E: $93
    ld c, c                                       ; $436F: $49
    ld hl, $C319                                  ; $4370: $21 $19 $C3
    dec [hl]                                      ; $4373: $35
    ret nz                                        ; $4374: $C0

    jp Jump_029_4350                              ; $4375: $C3 $50 $43


    ld hl, $D7A9                                  ; $4378: $21 $A9 $D7
    ld de, $001F                                  ; $437B: $11 $1F $00
    ld [hl], e                                    ; $437E: $73
    inc hl                                        ; $437F: $23
    ld [hl], d                                    ; $4380: $72
    ld hl, $D7E9                                  ; $4381: $21 $E9 $D7
    ld de, $FFE1                                  ; $4384: $11 $E1 $FF
    ld [hl], e                                    ; $4387: $73
    inc hl                                        ; $4388: $23
    ld [hl], d                                    ; $4389: $72
    ld a, $FF                                     ; $438A: $3E $FF
    ld bc, $0102                                  ; $438C: $01 $02 $01
    call Call_000_189B                            ; $438F: $CD $9B $18
    jp Jump_029_4350                              ; $4392: $C3 $50 $43


    ld a, [$C017]                                 ; $4395: $FA $17 $C0
    and $01                                       ; $4398: $E6 $01
    jp nz, Jump_029_4407                          ; $439A: $C2 $07 $44

    ld b, $18                                     ; $439D: $06 $18
    ld a, [$C313]                                 ; $439F: $FA $13 $C3
    or a                                          ; $43A2: $B7
    jr z, jr_029_43A7                             ; $43A3: $28 $02

    ld b, $40                                     ; $43A5: $06 $40

jr_029_43A7:
    ld hl, $D786                                  ; $43A7: $21 $86 $D7
    ld a, [hl]                                    ; $43AA: $7E
    cp b                                          ; $43AB: $B8
    jr z, jr_029_43D5                             ; $43AC: $28 $27

    inc [hl]                                      ; $43AE: $34
    ld hl, $D806                                  ; $43AF: $21 $06 $D8
    inc [hl]                                      ; $43B2: $34
    ld a, [$D786]                                 ; $43B3: $FA $86 $D7
    and $07                                       ; $43B6: $E6 $07
    jr nz, jr_029_43D5                            ; $43B8: $20 $1B

    ld hl, $4438                                  ; $43BA: $21 $38 $44
    ld de, $D7A9                                  ; $43BD: $11 $A9 $D7
    call Call_029_463A                            ; $43C0: $CD $3A $46
    ld hl, $D7A9                                  ; $43C3: $21 $A9 $D7
    ld e, [hl]                                    ; $43C6: $5E
    inc hl                                        ; $43C7: $23
    ld d, [hl]                                    ; $43C8: $56
    ld hl, $0020                                  ; $43C9: $21 $20 $00
    add hl, de                                    ; $43CC: $19
    push hl                                       ; $43CD: $E5
    pop de                                        ; $43CE: $D1
    ld hl, $D7A9                                  ; $43CF: $21 $A9 $D7
    ld [hl], e                                    ; $43D2: $73
    inc hl                                        ; $43D3: $23
    ld [hl], d                                    ; $43D4: $72

jr_029_43D5:
    ld b, $E8                                     ; $43D5: $06 $E8
    ld a, [$C313]                                 ; $43D7: $FA $13 $C3
    or a                                          ; $43DA: $B7
    jr z, jr_029_43DF                             ; $43DB: $28 $02

    ld b, $C0                                     ; $43DD: $06 $C0

jr_029_43DF:
    ld hl, $D7C6                                  ; $43DF: $21 $C6 $D7
    ld a, [hl]                                    ; $43E2: $7E
    cp b                                          ; $43E3: $B8
    jr z, jr_029_4408                             ; $43E4: $28 $22

    dec [hl]                                      ; $43E6: $35
    ld a, [hl]                                    ; $43E7: $7E
    and $07                                       ; $43E8: $E6 $07
    jr nz, jr_029_4407                            ; $43EA: $20 $1B

    ld hl, $4438                                  ; $43EC: $21 $38 $44
    ld de, $D7E9                                  ; $43EF: $11 $E9 $D7
    call Call_029_463A                            ; $43F2: $CD $3A $46
    ld hl, $D7E9                                  ; $43F5: $21 $E9 $D7
    ld e, [hl]                                    ; $43F8: $5E
    inc hl                                        ; $43F9: $23

Call_029_43FA:
    ld d, [hl]                                    ; $43FA: $56
    ld hl, $FFE0                                  ; $43FB: $21 $E0 $FF
    add hl, de                                    ; $43FE: $19
    push hl                                       ; $43FF: $E5
    pop de                                        ; $4400: $D1
    ld hl, $D7E9                                  ; $4401: $21 $E9 $D7
    ld [hl], e                                    ; $4404: $73
    inc hl                                        ; $4405: $23
    ld [hl], d                                    ; $4406: $72

Jump_029_4407:
jr_029_4407:
    ret                                           ; $4407: $C9


jr_029_4408:
    ld a, $06                                     ; $4408: $3E $06
    ld bc, $0303                                  ; $440A: $01 $03 $03
    call Call_000_189B                            ; $440D: $CD $9B $18
    ld a, $83                                     ; $4410: $3E $83
    call Call_000_135D                            ; $4412: $CD $5D $13
    ld hl, $D800                                  ; $4415: $21 $00 $D8
    res 7, [hl]                                   ; $4418: $CB $BE
    ld hl, $D7A9                                  ; $441A: $21 $A9 $D7
    ld de, $FFFF                                  ; $441D: $11 $FF $FF
    ld [hl], e                                    ; $4420: $73
    inc hl                                        ; $4421: $23
    ld [hl], d                                    ; $4422: $72
    ld hl, $D7E9                                  ; $4423: $21 $E9 $D7
    ld de, $0001                                  ; $4426: $11 $01 $00
    ld [hl], e                                    ; $4429: $73
    inc hl                                        ; $442A: $23
    ld [hl], d                                    ; $442B: $72
    ld hl, $D7C4                                  ; $442C: $21 $C4 $D7
    inc [hl]                                      ; $442F: $34
    ld a, $01                                     ; $4430: $3E $01
    ld [$C319], a                                 ; $4432: $EA $19 $C3
    jp Jump_029_4350                              ; $4435: $C3 $50 $43


    inc b                                         ; $4438: $04
    ld sp, hl                                     ; $4439: $F9
    call nz, $98E8                                ; $443A: $C4 $E8 $98
    ld bc, $3B01                                  ; $443D: $01 $01 $3B
    push bc                                       ; $4440: $C5
    add hl, bc                                    ; $4441: $09
    sbc c                                         ; $4442: $99
    ld bc, $7D01                                  ; $4443: $01 $01 $7D
    push bc                                       ; $4446: $C5
    ld a, [hl+]                                   ; $4447: $2A
    sbc c                                         ; $4448: $99
    ld bc, $BF01                                  ; $4449: $01 $01 $BF
    push bc                                       ; $444C: $C5
    ld c, e                                       ; $444D: $4B
    sbc c                                         ; $444E: $99
    ld bc, $0101                                  ; $444F: $01 $01 $01
    add $6C                                       ; $4452: $C6 $6C
    sbc c                                         ; $4454: $99
    ld bc, $2101                                  ; $4455: $01 $01 $21
    add hl, de                                    ; $4458: $19
    jp $C035                                      ; $4459: $C3 $35 $C0


    ld a, $FF                                     ; $445C: $3E $FF
    ld bc, $0102                                  ; $445E: $01 $02 $01
    call Call_000_189B                            ; $4461: $CD $9B $18
    jp Jump_029_4350                              ; $4464: $C3 $50 $43


    ld hl, $D784                                  ; $4467: $21 $84 $D7
    ld a, [hl]                                    ; $446A: $7E
    cp $C0                                        ; $446B: $FE $C0
    jr z, jr_029_449B                             ; $446D: $28 $2C

    dec [hl]                                      ; $446F: $35
    ld a, [hl]                                    ; $4470: $7E
    and $07                                       ; $4471: $E6 $07
    jr nz, jr_029_449B                            ; $4473: $20 $26

    ld a, [$C313]                                 ; $4475: $FA $13 $C3
    or a                                          ; $4478: $B7
    jr nz, jr_029_4480                            ; $4479: $20 $05

    ld hl, $4532                                  ; $447B: $21 $32 $45
    jr jr_029_4483                                ; $447E: $18 $03

jr_029_4480:
    ld hl, $4570                                  ; $4480: $21 $70 $45

jr_029_4483:
    ld de, $D7A9                                  ; $4483: $11 $A9 $D7
    call Call_029_463A                            ; $4486: $CD $3A $46
    ld hl, $D7A9                                  ; $4489: $21 $A9 $D7
    ld e, [hl]                                    ; $448C: $5E
    inc hl                                        ; $448D: $23
    ld d, [hl]                                    ; $448E: $56
    ld hl, $FFFF                                  ; $448F: $21 $FF $FF
    add hl, de                                    ; $4492: $19
    push hl                                       ; $4493: $E5
    pop de                                        ; $4494: $D1
    ld hl, $D7A9                                  ; $4495: $21 $A9 $D7
    ld [hl], e                                    ; $4498: $73
    inc hl                                        ; $4499: $23
    ld [hl], d                                    ; $449A: $72

jr_029_449B:
    ld hl, $D7C4                                  ; $449B: $21 $C4 $D7
    ld a, [hl]                                    ; $449E: $7E
    cp $40                                        ; $449F: $FE $40
    jr z, jr_029_44D0                             ; $44A1: $28 $2D

    inc [hl]                                      ; $44A3: $34
    ld a, [hl]                                    ; $44A4: $7E
    and $07                                       ; $44A5: $E6 $07
    jr nz, jr_029_44CF                            ; $44A7: $20 $26

    ld a, [$C313]                                 ; $44A9: $FA $13 $C3
    or a                                          ; $44AC: $B7
    jr nz, jr_029_44B4                            ; $44AD: $20 $05

    ld hl, $4551                                  ; $44AF: $21 $51 $45
    jr jr_029_44B7                                ; $44B2: $18 $03

jr_029_44B4:
    ld hl, $4583                                  ; $44B4: $21 $83 $45

jr_029_44B7:
    ld de, $D7E9                                  ; $44B7: $11 $E9 $D7
    call Call_029_463A                            ; $44BA: $CD $3A $46
    ld hl, $D7E9                                  ; $44BD: $21 $E9 $D7
    ld e, [hl]                                    ; $44C0: $5E
    inc hl                                        ; $44C1: $23
    ld d, [hl]                                    ; $44C2: $56
    ld hl, $0001                                  ; $44C3: $21 $01 $00
    add hl, de                                    ; $44C6: $19
    push hl                                       ; $44C7: $E5
    pop de                                        ; $44C8: $D1
    ld hl, $D7E9                                  ; $44C9: $21 $E9 $D7
    ld [hl], e                                    ; $44CC: $73
    inc hl                                        ; $44CD: $23
    ld [hl], d                                    ; $44CE: $72

jr_029_44CF:
    ret                                           ; $44CF: $C9


jr_029_44D0:
    call Call_000_0424                            ; $44D0: $CD $24 $04
    ld a, $06                                     ; $44D3: $3E $06
    ld bc, $0303                                  ; $44D5: $01 $03 $03
    call Call_000_189B                            ; $44D8: $CD $9B $18
    ld a, $00                                     ; $44DB: $3E $00
    ld [$C314], a                                 ; $44DD: $EA $14 $C3
    ld hl, $D780                                  ; $44E0: $21 $80 $D7
    res 7, [hl]                                   ; $44E3: $CB $BE
    ld hl, $D7C0                                  ; $44E5: $21 $C0 $D7
    res 7, [hl]                                   ; $44E8: $CB $BE
    ld a, [$C313]                                 ; $44EA: $FA $13 $C3
    or a                                          ; $44ED: $B7
    jr nz, jr_029_4511                            ; $44EE: $20 $21

    ld de, $4596                                  ; $44F0: $11 $96 $45
    ld hl, $9940                                  ; $44F3: $21 $40 $99
    ld b, $04                                     ; $44F6: $06 $04
    ld c, $08                                     ; $44F8: $0E $08
    ld a, $00                                     ; $44FA: $3E $00
    call Call_000_0FF7                            ; $44FC: $CD $F7 $0F
    ld de, $45D6                                  ; $44FF: $11 $D6 $45
    ld hl, $9810                                  ; $4502: $21 $10 $98
    ld b, $04                                     ; $4505: $06 $04
    ld c, $08                                     ; $4507: $0E $08
    ld a, $00                                     ; $4509: $3E $00
    call Call_000_0FF7                            ; $450B: $CD $F7 $0F
    jp Jump_029_4350                              ; $450E: $C3 $50 $43


jr_029_4511:
    ld de, $4616                                  ; $4511: $11 $16 $46
    ld hl, $99E0                                  ; $4514: $21 $E0 $99
    ld b, $03                                     ; $4517: $06 $03
    ld c, $03                                     ; $4519: $0E $03
    ld a, $00                                     ; $451B: $3E $00
    call Call_000_0FF7                            ; $451D: $CD $F7 $0F
    ld de, $4628                                  ; $4520: $11 $28 $46
    ld hl, $9811                                  ; $4523: $21 $11 $98
    ld b, $03                                     ; $4526: $06 $03
    ld c, $03                                     ; $4528: $0E $03
    ld a, $00                                     ; $452A: $3E $00
    call Call_000_0FF7                            ; $452C: $CD $F7 $0F
    jp Jump_029_4350                              ; $452F: $C3 $50 $43


    dec b                                         ; $4532: $05
    scf                                           ; $4533: $37
    jp $9807                                      ; $4534: $C3 $07 $98


    dec bc                                        ; $4537: $0B
    ld bc, $C5F9                                  ; $4538: $01 $F9 $C5
    ld l, b                                       ; $453B: $68
    sbc c                                         ; $453C: $99
    ld bc, $3B01                                  ; $453D: $01 $01 $3B
    add $89                                       ; $4540: $C6 $89
    sbc c                                         ; $4542: $99
    ld bc, $7D01                                  ; $4543: $01 $01 $7D
    add $AA                                       ; $4546: $C6 $AA
    sbc c                                         ; $4548: $99
    ld bc, $BF01                                  ; $4549: $01 $01 $BF
    add $CB                                       ; $454C: $C6 $CB
    sbc c                                         ; $454E: $99
    inc b                                         ; $454F: $04
    ld bc, $3905                                  ; $4550: $01 $05 $39
    jp $9808                                      ; $4553: $C3 $08 $98


    inc b                                         ; $4556: $04
    ld bc, $C43B                                  ; $4557: $01 $3B $C4
    adc c                                         ; $455A: $89
    sbc b                                         ; $455B: $98
    ld bc, $7D01                                  ; $455C: $01 $01 $7D
    call nz, $98AA                                ; $455F: $C4 $AA $98
    ld bc, $BF01                                  ; $4562: $01 $01 $BF
    call nz, $98CB                                ; $4565: $C4 $CB $98
    ld bc, $0101                                  ; $4568: $01 $01 $01
    push bc                                       ; $456B: $C5
    db $EC                                        ; $456C: $EC
    sbc b                                         ; $456D: $98
    dec bc                                        ; $456E: $0B
    ld bc, $3703                                  ; $456F: $01 $03 $37
    jp $9807                                      ; $4572: $C3 $07 $98


    db $10                                        ; $4575: $10
    ld bc, $C739                                  ; $4576: $01 $39 $C7
    ld [$019A], sp                                ; $4579: $08 $9A $01
    ld bc, $C77B                                  ; $457C: $01 $7B $C7
    add hl, hl                                    ; $457F: $29
    sbc d                                         ; $4580: $9A
    ld bc, $0301                                  ; $4581: $01 $01 $03
    dec a                                         ; $4584: $3D
    jp $980A                                      ; $4585: $C3 $0A $98


    ld bc, $7F01                                  ; $4588: $01 $01 $7F
    jp $982B                                      ; $458B: $C3 $2B $98


    ld bc, $C101                                  ; $458E: $01 $01 $C1
    jp $984C                                      ; $4591: $C3 $4C $98


    db $10                                        ; $4594: $10
    ld bc, $8200                                  ; $4595: $01 $00 $82
    nop                                           ; $4598: $00
    sub h                                         ; $4599: $94
    nop                                           ; $459A: $00
    sub h                                         ; $459B: $94
    nop                                           ; $459C: $00
    sub h                                         ; $459D: $94
    nop                                           ; $459E: $00
    add e                                         ; $459F: $83
    nop                                           ; $45A0: $00
    add d                                         ; $45A1: $82
    nop                                           ; $45A2: $00
    sub h                                         ; $45A3: $94
    nop                                           ; $45A4: $00
    sub h                                         ; $45A5: $94
    nop                                           ; $45A6: $00
    add b                                         ; $45A7: $80
    nop                                           ; $45A8: $00
    add e                                         ; $45A9: $83
    nop                                           ; $45AA: $00
    add d                                         ; $45AB: $82
    nop                                           ; $45AC: $00
    sub h                                         ; $45AD: $94
    nop                                           ; $45AE: $00
    add c                                         ; $45AF: $81
    nop                                           ; $45B0: $00
    add b                                         ; $45B1: $80
    nop                                           ; $45B2: $00
    add e                                         ; $45B3: $83
    nop                                           ; $45B4: $00
    adc d                                         ; $45B5: $8A
    nop                                           ; $45B6: $00
    add c                                         ; $45B7: $81
    nop                                           ; $45B8: $00
    add c                                         ; $45B9: $81
    nop                                           ; $45BA: $00
    add b                                         ; $45BB: $80
    nop                                           ; $45BC: $00
    adc e                                         ; $45BD: $8B
    nop                                           ; $45BE: $00
    add c                                         ; $45BF: $81
    nop                                           ; $45C0: $00
    add c                                         ; $45C1: $81
    nop                                           ; $45C2: $00
    add c                                         ; $45C3: $81
    nop                                           ; $45C4: $00
    sub b                                         ; $45C5: $90
    nop                                           ; $45C6: $00
    add c                                         ; $45C7: $81
    nop                                           ; $45C8: $00
    add c                                         ; $45C9: $81
    nop                                           ; $45CA: $00
    add c                                         ; $45CB: $81
    nop                                           ; $45CC: $00
    sub b                                         ; $45CD: $90
    nop                                           ; $45CE: $00
    add c                                         ; $45CF: $81
    nop                                           ; $45D0: $00
    add c                                         ; $45D1: $81
    nop                                           ; $45D2: $00
    add c                                         ; $45D3: $81
    nop                                           ; $45D4: $00
    sub b                                         ; $45D5: $90
    nop                                           ; $45D6: $00
    sub d                                         ; $45D7: $92
    nop                                           ; $45D8: $00
    add c                                         ; $45D9: $81
    nop                                           ; $45DA: $00
    add c                                         ; $45DB: $81
    nop                                           ; $45DC: $00
    add c                                         ; $45DD: $81
    nop                                           ; $45DE: $00
    sub d                                         ; $45DF: $92
    nop                                           ; $45E0: $00
    add c                                         ; $45E1: $81
    nop                                           ; $45E2: $00
    add c                                         ; $45E3: $81
    nop                                           ; $45E4: $00
    add c                                         ; $45E5: $81
    nop                                           ; $45E6: $00
    sub d                                         ; $45E7: $92
    nop                                           ; $45E8: $00
    add c                                         ; $45E9: $81
    nop                                           ; $45EA: $00
    add c                                         ; $45EB: $81
    nop                                           ; $45EC: $00
    add c                                         ; $45ED: $81
    nop                                           ; $45EE: $00
    adc h                                         ; $45EF: $8C
    nop                                           ; $45F0: $00
    add l                                         ; $45F1: $85
    nop                                           ; $45F2: $00
    add c                                         ; $45F3: $81
    nop                                           ; $45F4: $00
    add c                                         ; $45F5: $81
    nop                                           ; $45F6: $00
    adc l                                         ; $45F7: $8D
    nop                                           ; $45F8: $00
    add [hl]                                      ; $45F9: $86
    nop                                           ; $45FA: $00
    add l                                         ; $45FB: $85
    nop                                           ; $45FC: $00
    add c                                         ; $45FD: $81
    nop                                           ; $45FE: $00
    sub h                                         ; $45FF: $94
    nop                                           ; $4600: $00
    adc l                                         ; $4601: $8D
    nop                                           ; $4602: $00
    add [hl]                                      ; $4603: $86
    nop                                           ; $4604: $00
    add l                                         ; $4605: $85
    nop                                           ; $4606: $00
    sub h                                         ; $4607: $94
    nop                                           ; $4608: $00
    sub h                                         ; $4609: $94
    nop                                           ; $460A: $00
    adc l                                         ; $460B: $8D
    nop                                           ; $460C: $00
    add [hl]                                      ; $460D: $86
    nop                                           ; $460E: $00
    sub h                                         ; $460F: $94
    nop                                           ; $4610: $00
    sub h                                         ; $4611: $94
    nop                                           ; $4612: $00
    sub h                                         ; $4613: $94
    nop                                           ; $4614: $00
    adc l                                         ; $4615: $8D
    nop                                           ; $4616: $00
    add d                                         ; $4617: $82
    nop                                           ; $4618: $00
    sub h                                         ; $4619: $94
    nop                                           ; $461A: $00
    sub h                                         ; $461B: $94
    nop                                           ; $461C: $00
    add e                                         ; $461D: $83
    nop                                           ; $461E: $00
    add d                                         ; $461F: $82
    nop                                           ; $4620: $00
    sub h                                         ; $4621: $94
    nop                                           ; $4622: $00
    add b                                         ; $4623: $80
    nop                                           ; $4624: $00
    add e                                         ; $4625: $83
    nop                                           ; $4626: $00
    add d                                         ; $4627: $82
    nop                                           ; $4628: $00
    adc l                                         ; $4629: $8D
    nop                                           ; $462A: $00
    add [hl]                                      ; $462B: $86
    nop                                           ; $462C: $00
    add l                                         ; $462D: $85
    nop                                           ; $462E: $00
    sub h                                         ; $462F: $94
    nop                                           ; $4630: $00
    adc l                                         ; $4631: $8D
    nop                                           ; $4632: $00
    add [hl]                                      ; $4633: $86
    nop                                           ; $4634: $00
    sub h                                         ; $4635: $94
    nop                                           ; $4636: $00
    sub h                                         ; $4637: $94
    nop                                           ; $4638: $00
    adc l                                         ; $4639: $8D

Call_029_463A:
    ld a, [de]                                    ; $463A: $1A
    ld c, a                                       ; $463B: $4F
    inc de                                        ; $463C: $13
    ld a, [de]                                    ; $463D: $1A
    ld b, a                                       ; $463E: $47
    ld a, [hl+]                                   ; $463F: $2A

jr_029_4640:
    push af                                       ; $4640: $F5
    push bc                                       ; $4641: $C5
    push hl                                       ; $4642: $E5
    ld e, [hl]                                    ; $4643: $5E
    inc hl                                        ; $4644: $23
    ld d, [hl]                                    ; $4645: $56
    inc hl                                        ; $4646: $23
    push hl                                       ; $4647: $E5
    push bc                                       ; $4648: $C5
    pop hl                                        ; $4649: $E1
    sla l                                         ; $464A: $CB $25
    rl h                                          ; $464C: $CB $14
    add hl, de                                    ; $464E: $19
    push hl                                       ; $464F: $E5
    pop de                                        ; $4650: $D1
    pop hl                                        ; $4651: $E1
    push de                                       ; $4652: $D5
    ld e, [hl]                                    ; $4653: $5E
    inc hl                                        ; $4654: $23
    ld d, [hl]                                    ; $4655: $56
    inc hl                                        ; $4656: $23
    push hl                                       ; $4657: $E5
    push bc                                       ; $4658: $C5
    pop hl                                        ; $4659: $E1
    add hl, de                                    ; $465A: $19
    push hl                                       ; $465B: $E5
    pop bc                                        ; $465C: $C1
    pop hl                                        ; $465D: $E1
    push bc                                       ; $465E: $C5
    ld c, [hl]                                    ; $465F: $4E
    inc hl                                        ; $4660: $23
    ld b, [hl]                                    ; $4661: $46
    pop hl                                        ; $4662: $E1
    pop de                                        ; $4663: $D1
    ld a, $00                                     ; $4664: $3E $00
    call Call_000_1045                            ; $4666: $CD $45 $10
    pop hl                                        ; $4669: $E1
    ld bc, $0006                                  ; $466A: $01 $06 $00
    add hl, bc                                    ; $466D: $09
    pop bc                                        ; $466E: $C1
    pop af                                        ; $466F: $F1
    dec a                                         ; $4670: $3D
    jr nz, jr_029_4640                            ; $4671: $20 $CD

    ret                                           ; $4673: $C9


    ld b, $03                                     ; $4674: $06 $03
    ld c, $00                                     ; $4676: $0E $00
    ld de, $C290                                  ; $4678: $11 $90 $C2
    call Call_000_160B                            ; $467B: $CD $0B $16
    jr c, jr_029_4681                             ; $467E: $38 $01

    ret                                           ; $4680: $C9


jr_029_4681:
    ld a, [$C313]                                 ; $4681: $FA $13 $C3
    or a                                          ; $4684: $B7
    jr nz, jr_029_469D                            ; $4685: $20 $16

    ld hl, $D72C                                  ; $4687: $21 $2C $D7
    ld a, [hl]                                    ; $468A: $7E
    ld de, $D700                                  ; $468B: $11 $00 $D7
    call Call_029_50B7                            ; $468E: $CD $B7 $50
    ld hl, $D76C                                  ; $4691: $21 $6C $D7
    ld a, [hl]                                    ; $4694: $7E
    ld de, $D740                                  ; $4695: $11 $40 $D7
    call Call_029_50B7                            ; $4698: $CD $B7 $50
    jr jr_029_46B5                                ; $469B: $18 $18

jr_029_469D:
    ld a, $00                                     ; $469D: $3E $00
    ld hl, $D72C                                  ; $469F: $21 $2C $D7
    ld [hl], a                                    ; $46A2: $77
    ld de, $D700                                  ; $46A3: $11 $00 $D7
    call Call_029_50B7                            ; $46A6: $CD $B7 $50
    ld a, $09                                     ; $46A9: $3E $09
    ld hl, $D76C                                  ; $46AB: $21 $6C $D7
    ld [hl], a                                    ; $46AE: $77
    ld de, $D740                                  ; $46AF: $11 $40 $D7
    call Call_029_50B7                            ; $46B2: $CD $B7 $50

jr_029_46B5:
    call Call_000_0424                            ; $46B5: $CD $24 $04
    ld a, $00                                     ; $46B8: $3E $00
    ld [$C01D], a                                 ; $46BA: $EA $1D $C0
    ld b, $10                                     ; $46BD: $06 $10

jr_029_46BF:
    push bc                                       ; $46BF: $C5
    ld hl, $D680                                  ; $46C0: $21 $80 $D6
    call Call_000_0E28                            ; $46C3: $CD $28 $0E
    ld hl, $D6C0                                  ; $46C6: $21 $C0 $D6
    call Call_000_0E28                            ; $46C9: $CD $28 $0E
    call Call_000_0424                            ; $46CC: $CD $24 $04
    pop bc                                        ; $46CF: $C1
    dec b                                         ; $46D0: $05
    jr nz, jr_029_46BF                            ; $46D1: $20 $EC

    ld hl, $D680                                  ; $46D3: $21 $80 $D6
    set 7, [hl]                                   ; $46D6: $CB $FE
    ld hl, $D6C0                                  ; $46D8: $21 $C0 $D6
    set 7, [hl]                                   ; $46DB: $CB $FE
    ld hl, $D700                                  ; $46DD: $21 $00 $D7
    set 7, [hl]                                   ; $46E0: $CB $FE
    ld hl, $D740                                  ; $46E2: $21 $40 $D7
    set 7, [hl]                                   ; $46E5: $CB $FE
    ld a, [$C313]                                 ; $46E7: $FA $13 $C3
    or a                                          ; $46EA: $B7
    jp nz, Jump_029_4350                          ; $46EB: $C2 $50 $43

    ld a, [$C2C6]                                 ; $46EE: $FA $C6 $C2
    bit 1, a                                      ; $46F1: $CB $4F
    jr nz, jr_029_4715                            ; $46F3: $20 $20

    ld a, [$C2D0]                                 ; $46F5: $FA $D0 $C2
    or a                                          ; $46F8: $B7
    jr z, jr_029_4708                             ; $46F9: $28 $0D

    ld hl, $D700                                  ; $46FB: $21 $00 $D7
    res 7, [hl]                                   ; $46FE: $CB $BE
    ld hl, $D740                                  ; $4700: $21 $40 $D7
    set 7, [hl]                                   ; $4703: $CB $FE
    jp Jump_029_4350                              ; $4705: $C3 $50 $43


jr_029_4708:
    ld hl, $D700                                  ; $4708: $21 $00 $D7
    set 7, [hl]                                   ; $470B: $CB $FE
    ld hl, $D740                                  ; $470D: $21 $40 $D7
    res 7, [hl]                                   ; $4710: $CB $BE
    jp Jump_029_4350                              ; $4712: $C3 $50 $43


jr_029_4715:
    ld hl, $D700                                  ; $4715: $21 $00 $D7
    set 7, [hl]                                   ; $4718: $CB $FE
    ld hl, $D740                                  ; $471A: $21 $40 $D7
    set 7, [hl]                                   ; $471D: $CB $FE
    jp Jump_029_4350                              ; $471F: $C3 $50 $43


    ld b, $03                                     ; $4722: $06 $03
    ld c, $00                                     ; $4724: $0E $00
    ld de, $C290                                  ; $4726: $11 $90 $C2
    call Call_000_160B                            ; $4729: $CD $0B $16
    jr c, jr_029_472F                             ; $472C: $38 $01

    ret                                           ; $472E: $C9


jr_029_472F:
    ld a, $00                                     ; $472F: $3E $00
    call Call_000_135D                            ; $4731: $CD $5D $13
    call Call_000_0424                            ; $4734: $CD $24 $04
    ld a, $FF                                     ; $4737: $3E $FF
    ld bc, $0102                                  ; $4739: $01 $02 $01
    call Call_000_189B                            ; $473C: $CD $9B $18
    ld hl, $D680                                  ; $473F: $21 $80 $D6
    res 7, [hl]                                   ; $4742: $CB $BE
    ld hl, $D6C0                                  ; $4744: $21 $C0 $D6
    res 7, [hl]                                   ; $4747: $CB $BE
    ld a, [$C313]                                 ; $4749: $FA $13 $C3
    or a                                          ; $474C: $B7
    jr nz, jr_029_4769                            ; $474D: $20 $1A

    ld hl, $98C1                                  ; $474F: $21 $C1 $98
    ld bc, $0501                                  ; $4752: $01 $01 $05
    ld de, $9400                                  ; $4755: $11 $00 $94
    call Call_000_10EA                            ; $4758: $CD $EA $10
    ld hl, $9A0E                                  ; $475B: $21 $0E $9A
    ld bc, $0501                                  ; $475E: $01 $01 $05
    ld de, $9400                                  ; $4761: $11 $00 $94
    call Call_000_10EA                            ; $4764: $CD $EA $10
    jr jr_029_4781                                ; $4767: $18 $18

jr_029_4769:
    ld hl, $98C0                                  ; $4769: $21 $C0 $98
    ld bc, $0501                                  ; $476C: $01 $01 $05
    ld de, $9400                                  ; $476F: $11 $00 $94
    call Call_000_10EA                            ; $4772: $CD $EA $10
    ld hl, $9A2F                                  ; $4775: $21 $2F $9A
    ld bc, $0501                                  ; $4778: $01 $01 $05
    ld de, $9400                                  ; $477B: $11 $00 $94
    call Call_000_10EA                            ; $477E: $CD $EA $10

jr_029_4781:
    ld a, $1B                                     ; $4781: $3E $1B
    ldh [rOBP0], a                                ; $4783: $E0 $48
    call Call_000_0424                            ; $4785: $CD $24 $04
    ld a, $01                                     ; $4788: $3E $01
    ld [$C314], a                                 ; $478A: $EA $14 $C3
    ld hl, $D780                                  ; $478D: $21 $80 $D7
    set 7, [hl]                                   ; $4790: $CB $FE
    ld hl, $D7C0                                  ; $4792: $21 $C0 $D7
    set 7, [hl]                                   ; $4795: $CB $FE
    ld hl, $D794                                  ; $4797: $21 $94 $D7
    ld [hl], $00                                  ; $479A: $36 $00
    ld hl, $D7D4                                  ; $479C: $21 $D4 $D7
    ld [hl], $04                                  ; $479F: $36 $04
    call Call_000_0424                            ; $47A1: $CD $24 $04
    ld a, [$C313]                                 ; $47A4: $FA $13 $C3
    or a                                          ; $47A7: $B7
    jr nz, jr_029_481F                            ; $47A8: $20 $75

    ld hl, $9960                                  ; $47AA: $21 $60 $99
    ld bc, $0102                                  ; $47AD: $01 $02 $01
    ld de, $8100                                  ; $47B0: $11 $00 $81
    call Call_000_10EA                            ; $47B3: $CD $EA $10
    ld hl, $9981                                  ; $47B6: $21 $81 $99
    ld bc, $0102                                  ; $47B9: $01 $02 $01
    ld de, $8100                                  ; $47BC: $11 $00 $81
    call Call_000_10EA                            ; $47BF: $CD $EA $10
    ld hl, $99A2                                  ; $47C2: $21 $A2 $99
    ld bc, $0102                                  ; $47C5: $01 $02 $01
    ld de, $8100                                  ; $47C8: $11 $00 $81
    call Call_000_10EA                            ; $47CB: $CD $EA $10
    ld hl, $99C3                                  ; $47CE: $21 $C3 $99
    ld bc, HeaderLogo                             ; $47D1: $01 $04 $01
    ld de, $8100                                  ; $47D4: $11 $00 $81
    call Call_000_10EA                            ; $47D7: $CD $EA $10
    ld hl, $9810                                  ; $47DA: $21 $10 $98
    ld bc, HeaderLogo                             ; $47DD: $01 $04 $01
    ld de, $8100                                  ; $47E0: $11 $00 $81
    call Call_000_10EA                            ; $47E3: $CD $EA $10
    ld hl, $9871                                  ; $47E6: $21 $71 $98
    ld bc, $0102                                  ; $47E9: $01 $02 $01
    ld de, $8100                                  ; $47EC: $11 $00 $81
    call Call_000_10EA                            ; $47EF: $CD $EA $10
    ld hl, $9892                                  ; $47F2: $21 $92 $98
    ld bc, $0102                                  ; $47F5: $01 $02 $01
    ld de, $8100                                  ; $47F8: $11 $00 $81
    call Call_000_10EA                            ; $47FB: $CD $EA $10
    ld hl, $98B3                                  ; $47FE: $21 $B3 $98
    ld bc, $0102                                  ; $4801: $01 $02 $01
    ld de, $8100                                  ; $4804: $11 $00 $81
    call Call_000_10EA                            ; $4807: $CD $EA $10
    ld hl, $D7A9                                  ; $480A: $21 $A9 $D7
    ld de, $0058                                  ; $480D: $11 $58 $00
    ld [hl], e                                    ; $4810: $73
    inc hl                                        ; $4811: $23
    ld [hl], d                                    ; $4812: $72
    ld hl, $D7E9                                  ; $4813: $21 $E9 $D7
    ld de, $FFA8                                  ; $4816: $11 $A8 $FF
    ld [hl], e                                    ; $4819: $73
    inc hl                                        ; $481A: $23
    ld [hl], d                                    ; $481B: $72
    jp Jump_029_4861                              ; $481C: $C3 $61 $48


jr_029_481F:
    ld hl, $9A00                                  ; $481F: $21 $00 $9A
    ld bc, $0102                                  ; $4822: $01 $02 $01
    ld de, $8100                                  ; $4825: $11 $00 $81
    call Call_000_10EA                            ; $4828: $CD $EA $10
    ld hl, $9A21                                  ; $482B: $21 $21 $9A
    ld bc, $0101                                  ; $482E: $01 $01 $01
    ld de, $8100                                  ; $4831: $11 $00 $81
    call Call_000_10EA                            ; $4834: $CD $EA $10
    ld hl, $9812                                  ; $4837: $21 $12 $98
    ld bc, $0101                                  ; $483A: $01 $01 $01
    ld de, $8100                                  ; $483D: $11 $00 $81
    call Call_000_10EA                            ; $4840: $CD $EA $10
    ld hl, $9813                                  ; $4843: $21 $13 $98
    ld bc, $0102                                  ; $4846: $01 $02 $01
    ld de, $8100                                  ; $4849: $11 $00 $81
    call Call_000_10EA                            ; $484C: $CD $EA $10
    ld hl, $D7A9                                  ; $484F: $21 $A9 $D7
    ld de, $00F8                                  ; $4852: $11 $F8 $00
    ld [hl], e                                    ; $4855: $73
    inc hl                                        ; $4856: $23
    ld [hl], d                                    ; $4857: $72
    ld hl, $D7E9                                  ; $4858: $21 $E9 $D7
    ld de, $FF08                                  ; $485B: $11 $08 $FF
    ld [hl], e                                    ; $485E: $73
    inc hl                                        ; $485F: $23
    ld [hl], d                                    ; $4860: $72

Jump_029_4861:
    ld hl, $C329                                  ; $4861: $21 $29 $C3
    xor a                                         ; $4864: $AF
    ld bc, $0240                                  ; $4865: $01 $40 $02

jr_029_4868:
    ld [hl], $00                                  ; $4868: $36 $00
    inc hl                                        ; $486A: $23
    ld [hl], $81                                  ; $486B: $36 $81
    inc hl                                        ; $486D: $23
    dec bc                                        ; $486E: $0B
    ld a, b                                       ; $486F: $78
    or c                                          ; $4870: $B1
    jr nz, jr_029_4868                            ; $4871: $20 $F5

    jp Jump_029_4350                              ; $4873: $C3 $50 $43


    ld hl, $D786                                  ; $4876: $21 $86 $D7
    ld a, [hl]                                    ; $4879: $7E
    cp $00                                        ; $487A: $FE $00
    jr z, jr_029_48A1                             ; $487C: $28 $23

    dec [hl]                                      ; $487E: $35
    ld a, [$D786]                                 ; $487F: $FA $86 $D7
    and $07                                       ; $4882: $E6 $07
    jr nz, jr_029_48A1                            ; $4884: $20 $1B

    ld hl, $4438                                  ; $4886: $21 $38 $44
    ld de, $D7A9                                  ; $4889: $11 $A9 $D7
    call Call_029_463A                            ; $488C: $CD $3A $46
    ld hl, $D7A9                                  ; $488F: $21 $A9 $D7
    ld e, [hl]                                    ; $4892: $5E
    inc hl                                        ; $4893: $23
    ld d, [hl]                                    ; $4894: $56
    ld hl, $FFE0                                  ; $4895: $21 $E0 $FF
    add hl, de                                    ; $4898: $19
    push hl                                       ; $4899: $E5
    pop de                                        ; $489A: $D1
    ld hl, $D7A9                                  ; $489B: $21 $A9 $D7
    ld [hl], e                                    ; $489E: $73
    inc hl                                        ; $489F: $23
    ld [hl], d                                    ; $48A0: $72

jr_029_48A1:
    ld hl, $D7C6                                  ; $48A1: $21 $C6 $D7
    ld a, [hl]                                    ; $48A4: $7E
    cp $00                                        ; $48A5: $FE $00
    jr z, jr_029_48CB                             ; $48A7: $28 $22

    inc [hl]                                      ; $48A9: $34
    ld a, [hl]                                    ; $48AA: $7E
    and $07                                       ; $48AB: $E6 $07
    jr nz, jr_029_48CA                            ; $48AD: $20 $1B

    ld hl, $4438                                  ; $48AF: $21 $38 $44
    ld de, $D7E9                                  ; $48B2: $11 $E9 $D7
    call Call_029_463A                            ; $48B5: $CD $3A $46
    ld hl, $D7E9                                  ; $48B8: $21 $E9 $D7
    ld e, [hl]                                    ; $48BB: $5E
    inc hl                                        ; $48BC: $23
    ld d, [hl]                                    ; $48BD: $56
    ld hl, $0020                                  ; $48BE: $21 $20 $00
    add hl, de                                    ; $48C1: $19
    push hl                                       ; $48C2: $E5
    pop de                                        ; $48C3: $D1
    ld hl, $D7E9                                  ; $48C4: $21 $E9 $D7
    ld [hl], e                                    ; $48C7: $73
    inc hl                                        ; $48C8: $23
    ld [hl], d                                    ; $48C9: $72

jr_029_48CA:
    ret                                           ; $48CA: $C9


jr_029_48CB:
    ld a, $FF                                     ; $48CB: $3E $FF
    ld bc, $0102                                  ; $48CD: $01 $02 $01
    call Call_000_189B                            ; $48D0: $CD $9B $18
    ld hl, $D7A9                                  ; $48D3: $21 $A9 $D7
    ld de, $0000                                  ; $48D6: $11 $00 $00
    ld [hl], e                                    ; $48D9: $73
    inc hl                                        ; $48DA: $23
    ld [hl], d                                    ; $48DB: $72
    ld hl, $D7E9                                  ; $48DC: $21 $E9 $D7
    ld de, $0000                                  ; $48DF: $11 $00 $00
    ld [hl], e                                    ; $48E2: $73
    inc hl                                        ; $48E3: $23
    ld [hl], d                                    ; $48E4: $72
    ld hl, $D7C4                                  ; $48E5: $21 $C4 $D7
    dec [hl]                                      ; $48E8: $35
    dec [hl]                                      ; $48E9: $35
    jp Jump_029_4350                              ; $48EA: $C3 $50 $43


    ld hl, $D784                                  ; $48ED: $21 $84 $D7
    ld a, [hl]                                    ; $48F0: $7E
    cp $00                                        ; $48F1: $FE $00
    jr z, jr_029_4917                             ; $48F3: $28 $22

    inc [hl]                                      ; $48F5: $34
    inc [hl]                                      ; $48F6: $34
    ld a, [hl]                                    ; $48F7: $7E
    and $07                                       ; $48F8: $E6 $07
    jr nz, jr_029_4917                            ; $48FA: $20 $1B

    ld hl, $4955                                  ; $48FC: $21 $55 $49
    ld de, $D7A9                                  ; $48FF: $11 $A9 $D7
    call Call_029_463A                            ; $4902: $CD $3A $46
    ld hl, $D7A9                                  ; $4905: $21 $A9 $D7
    ld e, [hl]                                    ; $4908: $5E
    inc hl                                        ; $4909: $23
    ld d, [hl]                                    ; $490A: $56
    ld hl, $0001                                  ; $490B: $21 $01 $00
    add hl, de                                    ; $490E: $19
    push hl                                       ; $490F: $E5
    pop de                                        ; $4910: $D1
    ld hl, $D7A9                                  ; $4911: $21 $A9 $D7
    ld [hl], e                                    ; $4914: $73
    inc hl                                        ; $4915: $23
    ld [hl], d                                    ; $4916: $72

jr_029_4917:
    ld hl, $D7C4                                  ; $4917: $21 $C4 $D7
    ld a, [hl]                                    ; $491A: $7E
    cp $00                                        ; $491B: $FE $00
    jr z, jr_029_4942                             ; $491D: $28 $23

    dec [hl]                                      ; $491F: $35
    dec [hl]                                      ; $4920: $35
    ld a, [hl]                                    ; $4921: $7E
    and $07                                       ; $4922: $E6 $07
    jr nz, jr_029_4941                            ; $4924: $20 $1B

    ld hl, $4974                                  ; $4926: $21 $74 $49
    ld de, $D7E9                                  ; $4929: $11 $E9 $D7
    call Call_029_463A                            ; $492C: $CD $3A $46
    ld hl, $D7E9                                  ; $492F: $21 $E9 $D7
    ld e, [hl]                                    ; $4932: $5E
    inc hl                                        ; $4933: $23
    ld d, [hl]                                    ; $4934: $56
    ld hl, $FFFF                                  ; $4935: $21 $FF $FF
    add hl, de                                    ; $4938: $19
    push hl                                       ; $4939: $E5
    pop de                                        ; $493A: $D1
    ld hl, $D7E9                                  ; $493B: $21 $E9 $D7
    ld [hl], e                                    ; $493E: $73
    inc hl                                        ; $493F: $23
    ld [hl], d                                    ; $4940: $72

jr_029_4941:
    ret                                           ; $4941: $C9


jr_029_4942:
    call Call_000_0424                            ; $4942: $CD $24 $04
    ld a, $06                                     ; $4945: $3E $06
    ld bc, $0303                                  ; $4947: $01 $03 $03
    call Call_000_189B                            ; $494A: $CD $9B $18
    ld a, $00                                     ; $494D: $3E $00
    ld [$C314], a                                 ; $494F: $EA $14 $C3
    jp Jump_029_4350                              ; $4952: $C3 $50 $43


    dec b                                         ; $4955: $05
    add hl, hl                                    ; $4956: $29
    jp $9800                                      ; $4957: $C3 $00 $98


    ld [$2B01], sp                                ; $495A: $08 $01 $2B
    push bc                                       ; $495D: $C5
    ld bc, $0199                                  ; $495E: $01 $99 $01
    ld bc, $C56D                                  ; $4961: $01 $6D $C5
    ld [hl+], a                                   ; $4964: $22
    sbc c                                         ; $4965: $99
    ld bc, $AF01                                  ; $4966: $01 $01 $AF
    push bc                                       ; $4969: $C5
    ld b, e                                       ; $496A: $43
    sbc c                                         ; $496B: $99
    ld bc, $F101                                  ; $496C: $01 $01 $F1
    push bc                                       ; $496F: $C5
    ld h, h                                       ; $4970: $64
    sbc c                                         ; $4971: $99
    rlca                                          ; $4972: $07
    ld bc, $4705                                  ; $4973: $01 $05 $47
    jp $980F                                      ; $4976: $C3 $0F $98


    rlca                                          ; $4979: $07
    ld bc, $C509                                  ; $497A: $01 $09 $C5
    ldh a, [$FF98]                                ; $497D: $F0 $98
    ld bc, $4B01                                  ; $497F: $01 $01 $4B
    push bc                                       ; $4982: $C5
    ld de, $0199                                  ; $4983: $11 $99 $01
    ld bc, $C58D                                  ; $4986: $01 $8D $C5
    ld [hl-], a                                   ; $4989: $32
    sbc c                                         ; $498A: $99
    ld bc, $CF01                                  ; $498B: $01 $01 $CF
    push bc                                       ; $498E: $C5
    ld d, e                                       ; $498F: $53
    sbc c                                         ; $4990: $99
    ld [$0601], sp                                ; $4991: $08 $01 $06
    inc a                                         ; $4994: $3C

jr_029_4995:
    call Call_000_0424                            ; $4995: $CD $24 $04
    dec b                                         ; $4998: $05
    jr nz, jr_029_4995                            ; $4999: $20 $FA

    ld a, [$D92E]                                 ; $499B: $FA $2E $D9
    srl a                                         ; $499E: $CB $3F
    ld [$C2D1], a                                 ; $49A0: $EA $D1 $C2
    ld a, [$C313]                                 ; $49A3: $FA $13 $C3
    or a                                          ; $49A6: $B7
    jr nz, jr_029_49B2                            ; $49A7: $20 $09

    ld a, [$C2C6]                                 ; $49A9: $FA $C6 $C2
    and $F0                                       ; $49AC: $E6 $F0
    cp $10                                        ; $49AE: $FE $10
    jr z, jr_029_49C0                             ; $49B0: $28 $0E

jr_029_49B2:
    ld a, $00                                     ; $49B2: $3E $00
    call Call_000_135D                            ; $49B4: $CD $5D $13
    call Call_000_0424                            ; $49B7: $CD $24 $04
    ld b, $2A                                     ; $49BA: $06 $2A
    ld hl, $4000                                  ; $49BC: $21 $00 $40
    rst RST_00                                    ; $49BF: $C7

jr_029_49C0:
    di                                            ; $49C0: $F3
    rst RST_10                                    ; $49C1: $D7
    call Call_029_563C                            ; $49C2: $CD $3C $56
    ld de, $0005                                  ; $49C5: $11 $05 $00
    call Call_000_14C0                            ; $49C8: $CD $C0 $14
    xor a                                         ; $49CB: $AF
    ld [$C03B], a                                 ; $49CC: $EA $3B $C0
    ld a, $01                                     ; $49CF: $3E $01
    ld [$C313], a                                 ; $49D1: $EA $13 $C3
    ld [$C314], a                                 ; $49D4: $EA $14 $C3
    ld hl, $C2FE                                  ; $49D7: $21 $FE $C2
    ld de, $C329                                  ; $49DA: $11 $29 $C3
    ld b, $0A                                     ; $49DD: $06 $0A

jr_029_49DF:
    ld a, [hl+]                                   ; $49DF: $2A
    ld [de], a                                    ; $49E0: $12
    inc de                                        ; $49E1: $13
    dec b                                         ; $49E2: $05
    jr nz, jr_029_49DF                            ; $49E3: $20 $FA

    ld a, [$C308]                                 ; $49E5: $FA $08 $C3
    bit 0, a                                      ; $49E8: $CB $47
    jr nz, jr_029_49F1                            ; $49EA: $20 $05

    ld hl, $C329                                  ; $49EC: $21 $29 $C3
    jr jr_029_49F4                                ; $49EF: $18 $03

jr_029_49F1:
    ld hl, $C32A                                  ; $49F1: $21 $2A $C3

jr_029_49F4:
    ld de, $C2FE                                  ; $49F4: $11 $FE $C2
    ld b, $05                                     ; $49F7: $06 $05

jr_029_49F9:
    ld a, [hl+]                                   ; $49F9: $2A
    inc hl                                        ; $49FA: $23
    ld [de], a                                    ; $49FB: $12
    inc de                                        ; $49FC: $13
    dec b                                         ; $49FD: $05
    jr nz, jr_029_49F9                            ; $49FE: $20 $F9

    ld a, [$C309]                                 ; $4A00: $FA $09 $C3
    bit 0, a                                      ; $4A03: $CB $47
    jr nz, jr_029_4A0C                            ; $4A05: $20 $05

    ld hl, $C329                                  ; $4A07: $21 $29 $C3
    jr jr_029_4A0F                                ; $4A0A: $18 $03

jr_029_4A0C:
    ld hl, $C32A                                  ; $4A0C: $21 $2A $C3

jr_029_4A0F:
    ld de, $C307                                  ; $4A0F: $11 $07 $C3
    ld b, $05                                     ; $4A12: $06 $05

jr_029_4A14:
    ld a, [hl+]                                   ; $4A14: $2A
    inc hl                                        ; $4A15: $23
    ld [de], a                                    ; $4A16: $12
    dec de                                        ; $4A17: $1B
    dec b                                         ; $4A18: $05
    jr nz, jr_029_4A14                            ; $4A19: $20 $F9

    ld hl, $C329                                  ; $4A1B: $21 $29 $C3
    xor a                                         ; $4A1E: $AF
    ld bc, $0240                                  ; $4A1F: $01 $40 $02

jr_029_4A22:
    ld [hl], $00                                  ; $4A22: $36 $00
    inc hl                                        ; $4A24: $23
    ld [hl], $94                                  ; $4A25: $36 $94
    inc hl                                        ; $4A27: $23
    dec bc                                        ; $4A28: $0B
    ld a, b                                       ; $4A29: $78
    or c                                          ; $4A2A: $B1
    jr nz, jr_029_4A22                            ; $4A2B: $20 $F5

    ld de, $6B32                                  ; $4A2D: $11 $32 $6B
    ld hl, $C4E9                                  ; $4A30: $21 $E9 $C4
    ld b, $14                                     ; $4A33: $06 $14
    ld c, $04                                     ; $4A35: $0E $04
    ld a, $5A                                     ; $4A37: $3E $5A
    call Call_000_1028                            ; $4A39: $CD $28 $10
    ld de, $D700                                  ; $4A3C: $11 $00 $D7
    call Call_029_5436                            ; $4A3F: $CD $36 $54
    call Call_029_566C                            ; $4A42: $CD $6C $56
    ld hl, $D680                                  ; $4A45: $21 $80 $D6
    res 4, [hl]                                   ; $4A48: $CB $A6
    ld hl, $D6C0                                  ; $4A4A: $21 $C0 $D6
    res 4, [hl]                                   ; $4A4D: $CB $A6
    ld hl, $D684                                  ; $4A4F: $21 $84 $D6
    ld [hl], $14                                  ; $4A52: $36 $14
    ld hl, $D686                                  ; $4A54: $21 $86 $D6
    ld [hl], $00                                  ; $4A57: $36 $00
    ld hl, $D6C4                                  ; $4A59: $21 $C4 $D6
    ld [hl], $8C                                  ; $4A5C: $36 $8C
    ld hl, $D6C6                                  ; $4A5E: $21 $C6 $D6
    ld [hl], $58                                  ; $4A61: $36 $58
    ld hl, $D6A9                                  ; $4A63: $21 $A9 $D6
    ld [hl], $FF                                  ; $4A66: $36 $FF
    ld hl, $D6E9                                  ; $4A68: $21 $E9 $D6
    ld [hl], $FF                                  ; $4A6B: $36 $FF
    ld hl, $D729                                  ; $4A6D: $21 $29 $D7
    ld [hl], $00                                  ; $4A70: $36 $00
    ld hl, $D769                                  ; $4A72: $21 $69 $D7
    ld [hl], $00                                  ; $4A75: $36 $00
    ld hl, $D714                                  ; $4A77: $21 $14 $D7
    ld a, [hl]                                    ; $4A7A: $7E
    sub $10                                       ; $4A7B: $D6 $10
    ld [hl], a                                    ; $4A7D: $77
    ld [$D72B], a                                 ; $4A7E: $EA $2B $D7
    ld hl, $D754                                  ; $4A81: $21 $54 $D7
    ld a, [hl]                                    ; $4A84: $7E
    sub $10                                       ; $4A85: $D6 $10
    ld [hl], a                                    ; $4A87: $77
    ld [$D76B], a                                 ; $4A88: $EA $6B $D7
    ld hl, $D794                                  ; $4A8B: $21 $94 $D7
    ld [hl], $08                                  ; $4A8E: $36 $08
    ld hl, $D7D4                                  ; $4A90: $21 $D4 $D7
    ld [hl], $0C                                  ; $4A93: $36 $0C
    ld hl, $D72A                                  ; $4A95: $21 $2A $D7
    res 7, [hl]                                   ; $4A98: $CB $BE
    ld hl, $D76A                                  ; $4A9A: $21 $6A $D7
    res 7, [hl]                                   ; $4A9D: $CB $BE
    ld hl, $D920                                  ; $4A9F: $21 $20 $D9
    bit 7, [hl]                                   ; $4AA2: $CB $7E
    jr z, jr_029_4AAB                             ; $4AA4: $28 $05

    ld hl, $D72A                                  ; $4AA6: $21 $2A $D7
    set 7, [hl]                                   ; $4AA9: $CB $FE

jr_029_4AAB:
    ld hl, $DA20                                  ; $4AAB: $21 $20 $DA
    bit 7, [hl]                                   ; $4AAE: $CB $7E
    jr z, jr_029_4AB7                             ; $4AB0: $28 $05

    ld hl, $D76A                                  ; $4AB2: $21 $6A $D7
    set 7, [hl]                                   ; $4AB5: $CB $FE

jr_029_4AB7:
    call Call_000_1A39                            ; $4AB7: $CD $39 $1A
    ld a, $C7                                     ; $4ABA: $3E $C7
    rst RST_18                                    ; $4ABC: $DF
    xor a                                         ; $4ABD: $AF
    ldh [rSTAT], a                                ; $4ABE: $E0 $41
    ld a, $01                                     ; $4AC0: $3E $01
    ld [$C01D], a                                 ; $4AC2: $EA $1D $C0
    ei                                            ; $4AC5: $FB
    call Call_000_0424                            ; $4AC6: $CD $24 $04
    ld a, $1B                                     ; $4AC9: $3E $1B
    ldh [rOBP0], a                                ; $4ACB: $E0 $48
    ld a, $8D                                     ; $4ACD: $3E $8D
    ldh [rOBP1], a                                ; $4ACF: $E0 $49
    ld a, $1B                                     ; $4AD1: $3E $1B
    ldh [rBGP], a                                 ; $4AD3: $E0 $47
    jp Jump_029_4350                              ; $4AD5: $C3 $50 $43


jr_029_4AD8:
    call Call_000_17A0                            ; $4AD8: $CD $A0 $17
    call Call_029_4AFC                            ; $4ADB: $CD $FC $4A
    call Call_029_4B03                            ; $4ADE: $CD $03 $4B
    ld a, [$D729]                                 ; $4AE1: $FA $29 $D7
    cp $06                                        ; $4AE4: $FE $06
    jr nz, jr_029_4AF1                            ; $4AE6: $20 $09

    ld a, [$D769]                                 ; $4AE8: $FA $69 $D7
    cp $06                                        ; $4AEB: $FE $06
    jr nz, jr_029_4AF1                            ; $4AED: $20 $02

    jr jr_029_4AF6                                ; $4AEF: $18 $05

jr_029_4AF1:
    call Call_000_0424                            ; $4AF1: $CD $24 $04
    jr jr_029_4AD8                                ; $4AF4: $18 $E2

jr_029_4AF6:
    call Call_029_5641                            ; $4AF6: $CD $41 $56
    jp Jump_029_4350                              ; $4AF9: $C3 $50 $43


Call_029_4AFC:
    ld de, $D700                                  ; $4AFC: $11 $00 $D7
    call Call_029_4B0A                            ; $4AFF: $CD $0A $4B
    ret                                           ; $4B02: $C9


Call_029_4B03:
    ld de, $D740                                  ; $4B03: $11 $40 $D7
    call Call_029_4B0A                            ; $4B06: $CD $0A $4B
    ret                                           ; $4B09: $C9


Call_029_4B0A:
    ld hl, $0029                                  ; $4B0A: $21 $29 $00
    add hl, de                                    ; $4B0D: $19
    ld a, [hl]                                    ; $4B0E: $7E
    ld hl, $4B14                                  ; $4B0F: $21 $14 $4B
    rst RST_28                                    ; $4B12: $EF
    ret                                           ; $4B13: $C9


    ld [hl+], a                                   ; $4B14: $22
    ld c, h                                       ; $4B15: $4C
    dec h                                         ; $4B16: $25
    ld c, e                                       ; $4B17: $4B
    jr c, @+$4D                                   ; $4B18: $38 $4B

    jr nz, jr_029_4B67                            ; $4B1A: $20 $4B

    ld hl, $964B                                  ; $4B1C: $21 $4B $96
    ld c, e                                       ; $4B1F: $4B
    ret                                           ; $4B20: $C9


    call Call_029_4ED7                            ; $4B21: $CD $D7 $4E
    ret                                           ; $4B24: $C9


    call Call_029_53EF                            ; $4B25: $CD $EF $53
    call Call_029_53F4                            ; $4B28: $CD $F4 $53
    call Call_029_52B9                            ; $4B2B: $CD $B9 $52
    call $558E                                    ; $4B2E: $CD $8E $55
    ld hl, $0029                                  ; $4B31: $21 $29 $00
    add hl, de                                    ; $4B34: $19
    ld [hl], $04                                  ; $4B35: $36 $04
    ret                                           ; $4B37: $C9


    call Call_029_4ED7                            ; $4B38: $CD $D7 $4E
    ld a, $00                                     ; $4B3B: $3E $00
    cp e                                          ; $4B3D: $BB
    jr nz, jr_029_4B48                            ; $4B3E: $20 $08

    ld a, [$D680]                                 ; $4B40: $FA $80 $D6
    ld bc, $D740                                  ; $4B43: $01 $40 $D7
    jr jr_029_4B4E                                ; $4B46: $18 $06

jr_029_4B48:
    ld a, [$D6C0]                                 ; $4B48: $FA $C0 $D6
    ld bc, $D700                                  ; $4B4B: $01 $00 $D7

jr_029_4B4E:
    bit 4, a                                      ; $4B4E: $CB $67
    ret z                                         ; $4B50: $C8

    ld hl, $0029                                  ; $4B51: $21 $29 $00
    add hl, bc                                    ; $4B54: $09
    ld a, [hl]                                    ; $4B55: $7E
    cp $08                                        ; $4B56: $FE $08
    jr nz, jr_029_4B8F                            ; $4B58: $20 $35

    ld a, [$C2C6]                                 ; $4B5A: $FA $C6 $C2
    and $F0                                       ; $4B5D: $E6 $F0
    cp $10                                        ; $4B5F: $FE $10
    jr nz, jr_029_4B84                            ; $4B61: $20 $21

    ld hl, $002C                                  ; $4B63: $21 $2C $00
    add hl, de                                    ; $4B66: $19

jr_029_4B67:
    ld a, [hl]                                    ; $4B67: $7E
    xor $01                                       ; $4B68: $EE $01
    ld hl, $002C                                  ; $4B6A: $21 $2C $00
    add hl, bc                                    ; $4B6D: $09
    ld [hl], a                                    ; $4B6E: $77
    push bc                                       ; $4B6F: $C5
    push de                                       ; $4B70: $D5
    push bc                                       ; $4B71: $C5
    pop de                                        ; $4B72: $D1
    call Call_029_50B7                            ; $4B73: $CD $B7 $50
    pop de                                        ; $4B76: $D1
    pop bc                                        ; $4B77: $C1
    ld hl, $0029                                  ; $4B78: $21 $29 $00
    add hl, bc                                    ; $4B7B: $09
    ld [hl], $02                                  ; $4B7C: $36 $02
    ld a, $AB                                     ; $4B7E: $3E $AB
    call Call_000_1360                            ; $4B80: $CD $60 $13
    ret                                           ; $4B83: $C9


jr_029_4B84:
    ld hl, $0029                                  ; $4B84: $21 $29 $00
    add hl, bc                                    ; $4B87: $09
    ld [hl], $0A                                  ; $4B88: $36 $0A
    ld a, $00                                     ; $4B8A: $3E $00
    ld [$C312], a                                 ; $4B8C: $EA $12 $C3

jr_029_4B8F:
    ld hl, $0029                                  ; $4B8F: $21 $29 $00
    add hl, de                                    ; $4B92: $19
    ld [hl], $06                                  ; $4B93: $36 $06
    ret                                           ; $4B95: $C9


    call Call_029_4ED7                            ; $4B96: $CD $D7 $4E
    ld a, [$C312]                                 ; $4B99: $FA $12 $C3
    bit 0, a                                      ; $4B9C: $CB $47
    jr z, jr_029_4BCD                             ; $4B9E: $28 $2D

    call Call_029_4E50                            ; $4BA0: $CD $50 $4E
    ret z                                         ; $4BA3: $C8

jr_029_4BA4:
    ld hl, $C312                                  ; $4BA4: $21 $12 $C3
    inc [hl]                                      ; $4BA7: $34
    ld a, [hl]                                    ; $4BA8: $7E
    cp $0C                                        ; $4BA9: $FE $0C
    jr z, jr_029_4C07                             ; $4BAB: $28 $5A

    cp $08                                        ; $4BAD: $FE $08
    jr z, jr_029_4BB7                             ; $4BAF: $28 $06

    cp $0A                                        ; $4BB1: $FE $0A
    jr z, jr_029_4BC0                             ; $4BB3: $28 $0B

    jr jr_029_4BCD                                ; $4BB5: $18 $16

jr_029_4BB7:
    ld hl, $C306                                  ; $4BB7: $21 $06 $C3
    bit 7, [hl]                                   ; $4BBA: $CB $7E
    jr z, jr_029_4BCD                             ; $4BBC: $28 $0F

    jr jr_029_4BC7                                ; $4BBE: $18 $07

jr_029_4BC0:
    ld hl, $C307                                  ; $4BC0: $21 $07 $C3
    bit 7, [hl]                                   ; $4BC3: $CB $7E
    jr z, jr_029_4BCD                             ; $4BC5: $28 $06

jr_029_4BC7:
    ld hl, $C312                                  ; $4BC7: $21 $12 $C3
    inc [hl]                                      ; $4BCA: $34
    jr jr_029_4BA4                                ; $4BCB: $18 $D7

jr_029_4BCD:
    ld a, [de]                                    ; $4BCD: $1A
    set 7, a                                      ; $4BCE: $CB $FF
    ld [de], a                                    ; $4BD0: $12
    ld hl, $002A                                  ; $4BD1: $21 $2A $00
    add hl, de                                    ; $4BD4: $19
    set 6, [hl]                                   ; $4BD5: $CB $F6
    ld hl, $C312                                  ; $4BD7: $21 $12 $C3
    ld a, [hl]                                    ; $4BDA: $7E
    srl a                                         ; $4BDB: $CB $3F
    cp $00                                        ; $4BDD: $FE $00
    jr z, jr_029_4BE7                             ; $4BDF: $28 $06

    cp $01                                        ; $4BE1: $FE $01
    jr z, jr_029_4BE7                             ; $4BE3: $28 $02

    add $04                                       ; $4BE5: $C6 $04

jr_029_4BE7:
    push hl                                       ; $4BE7: $E5
    ld hl, $002C                                  ; $4BE8: $21 $2C $00
    add hl, de                                    ; $4BEB: $19
    ld [hl], a                                    ; $4BEC: $77
    push af                                       ; $4BED: $F5
    call Call_029_50C4                            ; $4BEE: $CD $C4 $50
    pop af                                        ; $4BF1: $F1
    push af                                       ; $4BF2: $F5
    call Call_029_4E04                            ; $4BF3: $CD $04 $4E
    pop af                                        ; $4BF6: $F1
    push bc                                       ; $4BF7: $C5
    push hl                                       ; $4BF8: $E5
    ld hl, $C2FE                                  ; $4BF9: $21 $FE $C2
    ld b, $00                                     ; $4BFC: $06 $00
    ld c, a                                       ; $4BFE: $4F
    add hl, bc                                    ; $4BFF: $09
    set 7, [hl]                                   ; $4C00: $CB $FE
    pop hl                                        ; $4C02: $E1
    pop bc                                        ; $4C03: $C1
    pop hl                                        ; $4C04: $E1
    inc [hl]                                      ; $4C05: $34
    ret                                           ; $4C06: $C9


jr_029_4C07:
    ld hl, $002A                                  ; $4C07: $21 $2A $00
    add hl, de                                    ; $4C0A: $19
    res 6, [hl]                                   ; $4C0B: $CB $B6
    ld hl, $0029                                  ; $4C0D: $21 $29 $00
    add hl, de                                    ; $4C10: $19
    ld [hl], $00                                  ; $4C11: $36 $00
    ld hl, $002C                                  ; $4C13: $21 $2C $00
    add hl, de                                    ; $4C16: $19
    ld a, $02                                     ; $4C17: $3E $02
    ld [hl], a                                    ; $4C19: $77
    call Call_029_50B7                            ; $4C1A: $CD $B7 $50
    xor a                                         ; $4C1D: $AF
    ld [$C312], a                                 ; $4C1E: $EA $12 $C3
    ret                                           ; $4C21: $C9


    call Call_029_4ED7                            ; $4C22: $CD $D7 $4E
    call Call_029_4E50                            ; $4C25: $CD $50 $4E
    call Call_029_5364                            ; $4C28: $CD $64 $53
    ret nz                                        ; $4C2B: $C0

    ld hl, $002A                                  ; $4C2C: $21 $2A $00
    add hl, de                                    ; $4C2F: $19
    bit 7, [hl]                                   ; $4C30: $CB $7E
    jr z, jr_029_4C3A                             ; $4C32: $28 $06

    call Call_029_4CB5                            ; $4C34: $CD $B5 $4C
    jr c, jr_029_4C91                             ; $4C37: $38 $58

    ret                                           ; $4C39: $C9


jr_029_4C3A:
    call Call_029_507C                            ; $4C3A: $CD $7C $50
    bit 6, a                                      ; $4C3D: $CB $77
    jr nz, jr_029_4C61                            ; $4C3F: $20 $20

    bit 4, a                                      ; $4C41: $CB $67
    jr nz, jr_029_4C91                            ; $4C43: $20 $4C

    bit 1, b                                      ; $4C45: $CB $48
    jr nz, jr_029_4CA7                            ; $4C47: $20 $5E

    bit 0, b                                      ; $4C49: $CB $40
    jr nz, jr_029_4CAC                            ; $4C4B: $20 $5F

    bit 7, a                                      ; $4C4D: $CB $7F
    jr nz, jr_029_4C75                            ; $4C4F: $20 $24

    ld hl, $C2C6                                  ; $4C51: $21 $C6 $C2
    bit 4, [hl]                                   ; $4C54: $CB $66
    jr nz, jr_029_4C60                            ; $4C56: $20 $08

    bit 3, b                                      ; $4C58: $CB $58
    jr nz, jr_029_4C9D                            ; $4C5A: $20 $41

    bit 2, b                                      ; $4C5C: $CB $50
    jr nz, jr_029_4CA2                            ; $4C5E: $20 $42

jr_029_4C60:
    ret                                           ; $4C60: $C9


jr_029_4C61:
    call Call_029_4FE9                            ; $4C61: $CD $E9 $4F
    jr c, jr_029_4C67                             ; $4C64: $38 $01

    ret                                           ; $4C66: $C9


jr_029_4C67:
    ld a, $00                                     ; $4C67: $3E $00
    call Call_000_135D                            ; $4C69: $CD $5D $13
    call Call_000_0424                            ; $4C6C: $CD $24 $04
    ld b, $2B                                     ; $4C6F: $06 $2B
    ld hl, $4000                                  ; $4C71: $21 $00 $40
    rst RST_00                                    ; $4C74: $C7

jr_029_4C75:
    bit 5, c                                      ; $4C75: $CB $69
    jr nz, jr_029_4C7D                            ; $4C77: $20 $04

    call Call_029_4D4B                            ; $4C79: $CD $4B $4D
    ret                                           ; $4C7C: $C9


jr_029_4C7D:
    ld a, [$C2C6]                                 ; $4C7D: $FA $C6 $C2
    bit 1, a                                      ; $4C80: $CB $4F
    jr z, jr_029_4C8A                             ; $4C82: $28 $06

    ld hl, $C037                                  ; $4C84: $21 $37 $C0
    bit 7, [hl]                                   ; $4C87: $CB $7E
    ret z                                         ; $4C89: $C8

jr_029_4C8A:
    ld hl, $002A                                  ; $4C8A: $21 $2A $00
    add hl, de                                    ; $4C8D: $19
    set 7, [hl]                                   ; $4C8E: $CB $FE
    ret                                           ; $4C90: $C9


jr_029_4C91:
    call Call_029_5009                            ; $4C91: $CD $09 $50
    ret nc                                        ; $4C94: $D0

    ld hl, $0029                                  ; $4C95: $21 $29 $00
    add hl, de                                    ; $4C98: $19
    ld [hl], $02                                  ; $4C99: $36 $02
    ret                                           ; $4C9B: $C9


    ret                                           ; $4C9C: $C9


jr_029_4C9D:
    call Call_029_4EF4                            ; $4C9D: $CD $F4 $4E
    jr jr_029_4CAF                                ; $4CA0: $18 $0D

jr_029_4CA2:
    call Call_029_4F14                            ; $4CA2: $CD $14 $4F
    jr jr_029_4CAF                                ; $4CA5: $18 $08

jr_029_4CA7:
    call Call_029_4F34                            ; $4CA7: $CD $34 $4F
    jr jr_029_4CAF                                ; $4CAA: $18 $03

jr_029_4CAC:
    call Call_029_4F85                            ; $4CAC: $CD $85 $4F

jr_029_4CAF:
    ld a, $AA                                     ; $4CAF: $3E $AA
    call Call_000_1360                            ; $4CB1: $CD $60 $13
    ret                                           ; $4CB4: $C9


Call_029_4CB5:
    ld hl, $0034                                  ; $4CB5: $21 $34 $00
    add hl, de                                    ; $4CB8: $19
    push hl                                       ; $4CB9: $E5
    pop bc                                        ; $4CBA: $C1
    call Call_029_4CCF                            ; $4CBB: $CD $CF $4C
    jr c, jr_029_4CCE                             ; $4CBE: $38 $0E

    push af                                       ; $4CC0: $F5
    call Call_029_4D4B                            ; $4CC1: $CD $4B $4D
    jr c, jr_029_4CC9                             ; $4CC4: $38 $03

    pop af                                        ; $4CC6: $F1
    xor a                                         ; $4CC7: $AF
    ret                                           ; $4CC8: $C9


jr_029_4CC9:
    pop af                                        ; $4CC9: $F1
    call Call_029_50B7                            ; $4CCA: $CD $B7 $50
    xor a                                         ; $4CCD: $AF

jr_029_4CCE:
    ret                                           ; $4CCE: $C9


Call_029_4CCF:
    ld a, [bc]                                    ; $4CCF: $0A
    or a                                          ; $4CD0: $B7
    jr nz, jr_029_4CE1                            ; $4CD1: $20 $0E

    push de                                       ; $4CD3: $D5
    push hl                                       ; $4CD4: $E5
    call Call_000_17E2                            ; $4CD5: $CD $E2 $17
    and $0F                                       ; $4CD8: $E6 $0F
    add $03                                       ; $4CDA: $C6 $03
    ld [bc], a                                    ; $4CDC: $02
    pop hl                                        ; $4CDD: $E1
    pop de                                        ; $4CDE: $D1
    scf                                           ; $4CDF: $37
    ret                                           ; $4CE0: $C9


jr_029_4CE1:
    dec a                                         ; $4CE1: $3D
    ld [bc], a                                    ; $4CE2: $02

jr_029_4CE3:
    ld a, [$C2C6]                                 ; $4CE3: $FA $C6 $C2
    bit 4, a                                      ; $4CE6: $CB $67
    jr nz, jr_029_4D0C                            ; $4CE8: $20 $22

    call Call_000_17E2                            ; $4CEA: $CD $E2 $17
    ld h, $00                                     ; $4CED: $26 $00
    ld l, a                                       ; $4CEF: $6F
    sla l                                         ; $4CF0: $CB $25
    rl h                                          ; $4CF2: $CB $14
    push hl                                       ; $4CF4: $E5
    sla l                                         ; $4CF5: $CB $25
    rl h                                          ; $4CF7: $CB $14
    sla l                                         ; $4CF9: $CB $25
    rl h                                          ; $4CFB: $CB $14
    pop bc                                        ; $4CFD: $C1
    add hl, bc                                    ; $4CFE: $09
    ld a, h                                       ; $4CFF: $7C
    push af                                       ; $4D00: $F5
    call Call_029_4FD5                            ; $4D01: $CD $D5 $4F
    jr nc, jr_029_4D42                            ; $4D04: $30 $3C

    pop af                                        ; $4D06: $F1
    call Call_000_0424                            ; $4D07: $CD $24 $04
    jr jr_029_4CE3                                ; $4D0A: $18 $D7

jr_029_4D0C:
    ld a, [$C313]                                 ; $4D0C: $FA $13 $C3
    or a                                          ; $4D0F: $B7
    jr nz, jr_029_4D19                            ; $4D10: $20 $07

    call Call_000_17E2                            ; $4D12: $CD $E2 $17
    and $01                                       ; $4D15: $E6 $01
    jr jr_029_4D36                                ; $4D17: $18 $1D

jr_029_4D19:
    call Call_000_17E2                            ; $4D19: $CD $E2 $17
    ld h, $00                                     ; $4D1C: $26 $00
    ld l, a                                       ; $4D1E: $6F
    push hl                                       ; $4D1F: $E5
    sla l                                         ; $4D20: $CB $25
    rl h                                          ; $4D22: $CB $14
    sla l                                         ; $4D24: $CB $25
    rl h                                          ; $4D26: $CB $14
    pop bc                                        ; $4D28: $C1
    add hl, bc                                    ; $4D29: $09
    ld a, h                                       ; $4D2A: $7C
    ld a, $00                                     ; $4D2B: $3E $00
    cp e                                          ; $4D2D: $BB
    jr nz, jr_029_4D33                            ; $4D2E: $20 $03

    ld a, h                                       ; $4D30: $7C
    jr jr_029_4D36                                ; $4D31: $18 $03

jr_029_4D33:
    ld a, h                                       ; $4D33: $7C
    add $05                                       ; $4D34: $C6 $05

jr_029_4D36:
    push af                                       ; $4D36: $F5
    call Call_029_4FD5                            ; $4D37: $CD $D5 $4F
    jr nc, jr_029_4D42                            ; $4D3A: $30 $06

    pop af                                        ; $4D3C: $F1
    call Call_000_0424                            ; $4D3D: $CD $24 $04
    jr jr_029_4CE3                                ; $4D40: $18 $A1

jr_029_4D42:
    pop af                                        ; $4D42: $F1
    ld hl, $002C                                  ; $4D43: $21 $2C $00
    add hl, de                                    ; $4D46: $19
    ld [hl], a                                    ; $4D47: $77
    scf                                           ; $4D48: $37
    ccf                                           ; $4D49: $3F
    ret                                           ; $4D4A: $C9


Call_029_4D4B:
    ld a, [$C2C6]                                 ; $4D4B: $FA $C6 $C2
    and $F0                                       ; $4D4E: $E6 $F0
    cp $10                                        ; $4D50: $FE $10
    jp z, Jump_029_4D78                           ; $4D52: $CA $78 $4D

    ld a, $00                                     ; $4D55: $3E $00
    cp e                                          ; $4D57: $BB
    jr nz, jr_029_4D5F                            ; $4D58: $20 $05

    ld bc, $D740                                  ; $4D5A: $01 $40 $D7
    jr jr_029_4D62                                ; $4D5D: $18 $03

jr_029_4D5F:
    ld bc, $D700                                  ; $4D5F: $01 $00 $D7

jr_029_4D62:
    push de                                       ; $4D62: $D5
    call Call_029_4D7A                            ; $4D63: $CD $7A $4D
    pop de                                        ; $4D66: $D1
    jr c, jr_029_4D78                             ; $4D67: $38 $0F

    ld hl, $002C                                  ; $4D69: $21 $2C $00
    add hl, de                                    ; $4D6C: $19
    ld a, [hl]                                    ; $4D6D: $7E
    call Call_029_50B7                            ; $4D6E: $CD $B7 $50
    ld a, $AF                                     ; $4D71: $3E $AF
    call Call_000_1360                            ; $4D73: $CD $60 $13
    xor a                                         ; $4D76: $AF
    ret                                           ; $4D77: $C9


Jump_029_4D78:
jr_029_4D78:
    scf                                           ; $4D78: $37
    ret                                           ; $4D79: $C9


Call_029_4D7A:
    ld hl, $0002                                  ; $4D7A: $21 $02 $00
    add hl, de                                    ; $4D7D: $19
    bit 4, [hl]                                   ; $4D7E: $CB $66
    jp nz, Jump_029_4E0E                          ; $4D80: $C2 $0E $4E

    ld hl, $002C                                  ; $4D83: $21 $2C $00
    add hl, de                                    ; $4D86: $19
    ld a, [hl]                                    ; $4D87: $7E
    ld hl, $002C                                  ; $4D88: $21 $2C $00
    add hl, bc                                    ; $4D8B: $09
    cp [hl]                                       ; $4D8C: $BE
    jr nz, jr_029_4D98                            ; $4D8D: $20 $09

    ld hl, $0002                                  ; $4D8F: $21 $02 $00
    add hl, bc                                    ; $4D92: $09
    bit 4, [hl]                                   ; $4D93: $CB $66
    jp nz, Jump_029_4E0E                          ; $4D95: $C2 $0E $4E

jr_029_4D98:
    call Call_029_4E10                            ; $4D98: $CD $10 $4E
    xor $40                                       ; $4D9B: $EE $40
    ld [hl], a                                    ; $4D9D: $77
    ld c, a                                       ; $4D9E: $4F
    push af                                       ; $4D9F: $F5
    call Call_029_4E42                            ; $4DA0: $CD $42 $4E
    pop af                                        ; $4DA3: $F1
    ld hl, $002F                                  ; $4DA4: $21 $2F $00
    add hl, de                                    ; $4DA7: $19
    ld [hl], $90                                  ; $4DA8: $36 $90
    inc hl                                        ; $4DAA: $23
    ld a, c                                       ; $4DAB: $79
    and $0F                                       ; $4DAC: $E6 $0F
    push af                                       ; $4DAE: $F5
    bit 6, c                                      ; $4DAF: $CB $71
    jr z, jr_029_4DB5                             ; $4DB1: $28 $02

    add $0A                                       ; $4DB3: $C6 $0A

jr_029_4DB5:
    push hl                                       ; $4DB5: $E5
    pop bc                                        ; $4DB6: $C1
    ld d, a                                       ; $4DB7: $57
    sla a                                         ; $4DB8: $CB $27
    sla a                                         ; $4DBA: $CB $27
    sla a                                         ; $4DBC: $CB $27
    add d                                         ; $4DBE: $82
    ld d, $00                                     ; $4DBF: $16 $00
    ld e, a                                       ; $4DC1: $5F
    sla e                                         ; $4DC2: $CB $23
    rl d                                          ; $4DC4: $CB $12
    sla e                                         ; $4DC6: $CB $23
    rl d                                          ; $4DC8: $CB $12
    sla e                                         ; $4DCA: $CB $23
    rl d                                          ; $4DCC: $CB $12
    sla e                                         ; $4DCE: $CB $23
    rl d                                          ; $4DD0: $CB $12
    ld hl, $5BD8                                  ; $4DD2: $21 $D8 $5B
    add hl, de                                    ; $4DD5: $19
    ld a, l                                       ; $4DD6: $7D
    ld [bc], a                                    ; $4DD7: $02
    inc bc                                        ; $4DD8: $03
    ld a, h                                       ; $4DD9: $7C
    ld [bc], a                                    ; $4DDA: $02
    inc bc                                        ; $4DDB: $03
    pop af                                        ; $4DDC: $F1
    ld d, a                                       ; $4DDD: $57
    sla a                                         ; $4DDE: $CB $27
    sla a                                         ; $4DE0: $CB $27
    sla a                                         ; $4DE2: $CB $27
    add d                                         ; $4DE4: $82
    ld d, $00                                     ; $4DE5: $16 $00
    ld e, a                                       ; $4DE7: $5F
    sla e                                         ; $4DE8: $CB $23
    rl d                                          ; $4DEA: $CB $12
    sla e                                         ; $4DEC: $CB $23
    rl d                                          ; $4DEE: $CB $12
    sla e                                         ; $4DF0: $CB $23
    rl d                                          ; $4DF2: $CB $12
    sla e                                         ; $4DF4: $CB $23
    rl d                                          ; $4DF6: $CB $12
    ld hl, $9000                                  ; $4DF8: $21 $00 $90
    add hl, de                                    ; $4DFB: $19
    ld a, l                                       ; $4DFC: $7D
    ld [bc], a                                    ; $4DFD: $02
    inc bc                                        ; $4DFE: $03
    ld a, h                                       ; $4DFF: $7C
    ld [bc], a                                    ; $4E00: $02
    jp Jump_029_4E0C                              ; $4E01: $C3 $0C $4E


Call_029_4E04:
    call Call_029_4E10                            ; $4E04: $CD $10 $4E
    push af                                       ; $4E07: $F5
    call Call_029_4E42                            ; $4E08: $CD $42 $4E
    pop af                                        ; $4E0B: $F1

Jump_029_4E0C:
    xor a                                         ; $4E0C: $AF
    ret                                           ; $4E0D: $C9


Jump_029_4E0E:
    scf                                           ; $4E0E: $37
    ret                                           ; $4E0F: $C9


Call_029_4E10:
    ld hl, $0002                                  ; $4E10: $21 $02 $00
    add hl, de                                    ; $4E13: $19
    ld [hl], $10                                  ; $4E14: $36 $10
    ld hl, $0012                                  ; $4E16: $21 $12 $00
    add hl, de                                    ; $4E19: $19
    ld [hl], $86                                  ; $4E1A: $36 $86
    inc hl                                        ; $4E1C: $23
    ld [hl], $6D                                  ; $4E1D: $36 $6D
    call Call_029_4E30                            ; $4E1F: $CD $30 $4E
    ld hl, $002C                                  ; $4E22: $21 $2C $00
    add hl, de                                    ; $4E25: $19
    ld a, [hl]                                    ; $4E26: $7E
    ld hl, $C2FE                                  ; $4E27: $21 $FE $C2
    ld b, $00                                     ; $4E2A: $06 $00
    ld c, a                                       ; $4E2C: $4F
    add hl, bc                                    ; $4E2D: $09
    ld a, [hl]                                    ; $4E2E: $7E
    ret                                           ; $4E2F: $C9


Call_029_4E30:
    push af                                       ; $4E30: $F5
    push bc                                       ; $4E31: $C5
    push de                                       ; $4E32: $D5
    push hl                                       ; $4E33: $E5
    push af                                       ; $4E34: $F5
    call Call_000_0424                            ; $4E35: $CD $24 $04
    pop af                                        ; $4E38: $F1
    ld b, a                                       ; $4E39: $47
    call Call_029_5501                            ; $4E3A: $CD $01 $55
    pop hl                                        ; $4E3D: $E1
    pop de                                        ; $4E3E: $D1
    pop bc                                        ; $4E3F: $C1
    pop af                                        ; $4E40: $F1
    ret                                           ; $4E41: $C9


Call_029_4E42:
    ld hl, $0014                                  ; $4E42: $21 $14 $00
    add hl, de                                    ; $4E45: $19
    ld [hl], $00                                  ; $4E46: $36 $00
    ld hl, $001D                                  ; $4E48: $21 $1D $00
    add hl, de                                    ; $4E4B: $19
    ld a, [hl]                                    ; $4E4C: $7E
    dec hl                                        ; $4E4D: $2B
    ld [hl], a                                    ; $4E4E: $77
    ret                                           ; $4E4F: $C9


Call_029_4E50:
    ld hl, $0002                                  ; $4E50: $21 $02 $00
    add hl, de                                    ; $4E53: $19
    bit 4, [hl]                                   ; $4E54: $CB $66
    ret z                                         ; $4E56: $C8

    push bc                                       ; $4E57: $C5
    call Call_029_4EA0                            ; $4E58: $CD $A0 $4E
    pop bc                                        ; $4E5B: $C1
    ld hl, $0014                                  ; $4E5C: $21 $14 $00
    add hl, de                                    ; $4E5F: $19
    ld a, [hl]                                    ; $4E60: $7E
    cp $54                                        ; $4E61: $FE $54
    jr nz, jr_029_4E97                            ; $4E63: $20 $32

    ld hl, $001C                                  ; $4E65: $21 $1C $00
    add hl, de                                    ; $4E68: $19
    ld a, [hl]                                    ; $4E69: $7E
    or a                                          ; $4E6A: $B7
    jr nz, jr_029_4E97                            ; $4E6B: $20 $2A

    ld hl, $002C                                  ; $4E6D: $21 $2C $00
    add hl, de                                    ; $4E70: $19
    ld a, [hl]                                    ; $4E71: $7E
    call Call_029_5443                            ; $4E72: $CD $43 $54
    ld hl, $0002                                  ; $4E75: $21 $02 $00
    add hl, de                                    ; $4E78: $19
    ld [hl], $00                                  ; $4E79: $36 $00
    ld hl, $0012                                  ; $4E7B: $21 $12 $00
    add hl, de                                    ; $4E7E: $19
    ld [hl], $DC                                  ; $4E7F: $36 $DC
    inc hl                                        ; $4E81: $23
    ld [hl], $6C                                  ; $4E82: $36 $6C
    ld hl, $002B                                  ; $4E84: $21 $2B $00
    add hl, de                                    ; $4E87: $19
    ld a, [hl]                                    ; $4E88: $7E
    ld hl, $0014                                  ; $4E89: $21 $14 $00
    add hl, de                                    ; $4E8C: $19
    ld [hl], a                                    ; $4E8D: $77
    ld a, $B8                                     ; $4E8E: $3E $B8
    call Call_000_1360                            ; $4E90: $CD $60 $13
    ld a, $01                                     ; $4E93: $3E $01
    or a                                          ; $4E95: $B7
    ret                                           ; $4E96: $C9


jr_029_4E97:
    push de                                       ; $4E97: $D5
    push de                                       ; $4E98: $D5
    pop hl                                        ; $4E99: $E1
    call Call_000_0E28                            ; $4E9A: $CD $28 $0E
    pop de                                        ; $4E9D: $D1
    xor a                                         ; $4E9E: $AF
    ret                                           ; $4E9F: $C9


Call_029_4EA0:
    push de                                       ; $4EA0: $D5
    ld hl, $002F                                  ; $4EA1: $21 $2F $00
    add hl, de                                    ; $4EA4: $19
    ld a, [hl]                                    ; $4EA5: $7E
    or a                                          ; $4EA6: $B7
    jr z, jr_029_4ED5                             ; $4EA7: $28 $2C

    push hl                                       ; $4EA9: $E5
    ld b, $07                                     ; $4EAA: $06 $07
    cp b                                          ; $4EAC: $B8
    jr nc, jr_029_4EB0                            ; $4EAD: $30 $01

    ld b, a                                       ; $4EAF: $47

jr_029_4EB0:
    sub b                                         ; $4EB0: $90
    ld [hl], a                                    ; $4EB1: $77
    ld a, b                                       ; $4EB2: $78
    inc hl                                        ; $4EB3: $23
    ld c, [hl]                                    ; $4EB4: $4E
    inc hl                                        ; $4EB5: $23
    ld b, [hl]                                    ; $4EB6: $46
    inc hl                                        ; $4EB7: $23
    ld e, [hl]                                    ; $4EB8: $5E
    inc hl                                        ; $4EB9: $23
    ld d, [hl]                                    ; $4EBA: $56
    push bc                                       ; $4EBB: $C5
    pop hl                                        ; $4EBC: $E1
    ld b, a                                       ; $4EBD: $47

jr_029_4EBE:
    ldh a, [rSTAT]                                ; $4EBE: $F0 $41
    and $03                                       ; $4EC0: $E6 $03
    jr nz, jr_029_4EBE                            ; $4EC2: $20 $FA

    ld a, [hl+]                                   ; $4EC4: $2A
    ld [de], a                                    ; $4EC5: $12
    inc de                                        ; $4EC6: $13
    dec b                                         ; $4EC7: $05
    jr nz, jr_029_4EBE                            ; $4EC8: $20 $F4

    push hl                                       ; $4ECA: $E5
    pop bc                                        ; $4ECB: $C1
    pop hl                                        ; $4ECC: $E1
    inc hl                                        ; $4ECD: $23
    ld [hl], c                                    ; $4ECE: $71
    inc hl                                        ; $4ECF: $23
    ld [hl], b                                    ; $4ED0: $70
    inc hl                                        ; $4ED1: $23
    ld [hl], e                                    ; $4ED2: $73
    inc hl                                        ; $4ED3: $23
    ld [hl], d                                    ; $4ED4: $72

jr_029_4ED5:
    pop de                                        ; $4ED5: $D1
    ret                                           ; $4ED6: $C9


Call_029_4ED7:
    ld hl, $0029                                  ; $4ED7: $21 $29 $00
    add hl, de                                    ; $4EDA: $19
    ld a, [hl]                                    ; $4EDB: $7E
    cp $04                                        ; $4EDC: $FE $04
    jr z, jr_029_4EEA                             ; $4EDE: $28 $0A

    push de                                       ; $4EE0: $D5
    ld hl, $FF80                                  ; $4EE1: $21 $80 $FF
    add hl, de                                    ; $4EE4: $19
    call Call_000_0E28                            ; $4EE5: $CD $28 $0E
    pop de                                        ; $4EE8: $D1
    ret                                           ; $4EE9: $C9


jr_029_4EEA:
    push de                                       ; $4EEA: $D5
    ld hl, $FF80                                  ; $4EEB: $21 $80 $FF
    add hl, de                                    ; $4EEE: $19
    call Call_000_0DD4                            ; $4EEF: $CD $D4 $0D
    pop de                                        ; $4EF2: $D1
    ret                                           ; $4EF3: $C9


Call_029_4EF4:
    ld hl, $002C                                  ; $4EF4: $21 $2C $00
    add hl, de                                    ; $4EF7: $19
    call Call_029_4EFF                            ; $4EF8: $CD $FF $4E
    call Call_029_50B7                            ; $4EFB: $CD $B7 $50
    ret                                           ; $4EFE: $C9


Call_029_4EFF:
    ld a, [hl]                                    ; $4EFF: $7E

jr_029_4F00:
    add $02                                       ; $4F00: $C6 $02
    cp $0A                                        ; $4F02: $FE $0A
    jr c, jr_029_4F08                             ; $4F04: $38 $02

    sub $0A                                       ; $4F06: $D6 $0A

jr_029_4F08:
    push af                                       ; $4F08: $F5
    call Call_029_4FD5                            ; $4F09: $CD $D5 $4F
    jr nc, jr_029_4F11                            ; $4F0C: $30 $03

    pop af                                        ; $4F0E: $F1
    jr jr_029_4F00                                ; $4F0F: $18 $EF

jr_029_4F11:
    pop af                                        ; $4F11: $F1
    ld [hl], a                                    ; $4F12: $77
    ret                                           ; $4F13: $C9


Call_029_4F14:
    ld hl, $002C                                  ; $4F14: $21 $2C $00
    add hl, de                                    ; $4F17: $19
    call Call_029_4F1F                            ; $4F18: $CD $1F $4F
    call Call_029_50B7                            ; $4F1B: $CD $B7 $50
    ret                                           ; $4F1E: $C9


Call_029_4F1F:
    ld a, [hl]                                    ; $4F1F: $7E

jr_029_4F20:
    sub $02                                       ; $4F20: $D6 $02
    bit 7, a                                      ; $4F22: $CB $7F
    jr z, jr_029_4F28                             ; $4F24: $28 $02

    add $0A                                       ; $4F26: $C6 $0A

jr_029_4F28:
    push af                                       ; $4F28: $F5
    call Call_029_4FD5                            ; $4F29: $CD $D5 $4F
    jr nc, jr_029_4F31                            ; $4F2C: $30 $03

    pop af                                        ; $4F2E: $F1
    jr jr_029_4F20                                ; $4F2F: $18 $EF

jr_029_4F31:
    pop af                                        ; $4F31: $F1
    ld [hl], a                                    ; $4F32: $77
    ret                                           ; $4F33: $C9


Call_029_4F34:
    ld hl, $002C                                  ; $4F34: $21 $2C $00
    add hl, de                                    ; $4F37: $19
    call Call_029_4F3F                            ; $4F38: $CD $3F $4F
    call Call_029_50B7                            ; $4F3B: $CD $B7 $50
    ret                                           ; $4F3E: $C9


Call_029_4F3F:
    ld a, [$C313]                                 ; $4F3F: $FA $13 $C3
    or a                                          ; $4F42: $B7
    jr nz, jr_029_4F6B                            ; $4F43: $20 $26

    ld a, [hl]                                    ; $4F45: $7E

jr_029_4F46:
    cp $00                                        ; $4F46: $FE $00
    jr z, jr_029_4F5D                             ; $4F48: $28 $13

    cp $02                                        ; $4F4A: $FE $02
    jr z, jr_029_4F5D                             ; $4F4C: $28 $0F

    cp $04                                        ; $4F4E: $FE $04
    jr z, jr_029_4F5D                             ; $4F50: $28 $0B

    cp $06                                        ; $4F52: $FE $06
    jr z, jr_029_4F5D                             ; $4F54: $28 $07

    cp $08                                        ; $4F56: $FE $08
    jr z, jr_029_4F5D                             ; $4F58: $28 $03

    dec a                                         ; $4F5A: $3D
    jr jr_029_4F5F                                ; $4F5B: $18 $02

jr_029_4F5D:
    add $01                                       ; $4F5D: $C6 $01

jr_029_4F5F:
    push af                                       ; $4F5F: $F5
    call Call_029_4FD5                            ; $4F60: $CD $D5 $4F
    jr nc, jr_029_4F68                            ; $4F63: $30 $03

    pop af                                        ; $4F65: $F1
    jr jr_029_4F46                                ; $4F66: $18 $DE

jr_029_4F68:
    pop af                                        ; $4F68: $F1
    ld [hl], a                                    ; $4F69: $77
    ret                                           ; $4F6A: $C9


jr_029_4F6B:
    ld a, [hl]                                    ; $4F6B: $7E

jr_029_4F6C:
    cp $00                                        ; $4F6C: $FE $00
    jr z, jr_029_4F77                             ; $4F6E: $28 $07

    cp $05                                        ; $4F70: $FE $05
    jr z, jr_029_4F77                             ; $4F72: $28 $03

    dec a                                         ; $4F74: $3D
    jr jr_029_4F79                                ; $4F75: $18 $02

jr_029_4F77:
    add $04                                       ; $4F77: $C6 $04

jr_029_4F79:
    push af                                       ; $4F79: $F5
    call Call_029_4FD5                            ; $4F7A: $CD $D5 $4F
    jr nc, jr_029_4F82                            ; $4F7D: $30 $03

    pop af                                        ; $4F7F: $F1
    jr jr_029_4F6C                                ; $4F80: $18 $EA

jr_029_4F82:
    pop af                                        ; $4F82: $F1
    ld [hl], a                                    ; $4F83: $77
    ret                                           ; $4F84: $C9


Call_029_4F85:
    ld hl, $002C                                  ; $4F85: $21 $2C $00
    add hl, de                                    ; $4F88: $19
    call Call_029_4F90                            ; $4F89: $CD $90 $4F
    call Call_029_50B7                            ; $4F8C: $CD $B7 $50
    ret                                           ; $4F8F: $C9


Call_029_4F90:
    ld a, [$C313]                                 ; $4F90: $FA $13 $C3
    or a                                          ; $4F93: $B7
    jr nz, jr_029_4FBB                            ; $4F94: $20 $25

    ld a, [hl]                                    ; $4F96: $7E

jr_029_4F97:
    cp $01                                        ; $4F97: $FE $01
    jr z, jr_029_4FAE                             ; $4F99: $28 $13

    cp $03                                        ; $4F9B: $FE $03
    jr z, jr_029_4FAE                             ; $4F9D: $28 $0F

    cp $05                                        ; $4F9F: $FE $05
    jr z, jr_029_4FAE                             ; $4FA1: $28 $0B

    cp $07                                        ; $4FA3: $FE $07
    jr z, jr_029_4FAE                             ; $4FA5: $28 $07

    cp $09                                        ; $4FA7: $FE $09
    jr z, jr_029_4FAE                             ; $4FA9: $28 $03

    inc a                                         ; $4FAB: $3C
    jr jr_029_4FAF                                ; $4FAC: $18 $01

jr_029_4FAE:
    dec a                                         ; $4FAE: $3D

jr_029_4FAF:
    push af                                       ; $4FAF: $F5
    call Call_029_4FD5                            ; $4FB0: $CD $D5 $4F
    jr nc, jr_029_4FB8                            ; $4FB3: $30 $03

    pop af                                        ; $4FB5: $F1
    jr jr_029_4F97                                ; $4FB6: $18 $DF

jr_029_4FB8:
    pop af                                        ; $4FB8: $F1
    ld [hl], a                                    ; $4FB9: $77
    ret                                           ; $4FBA: $C9


jr_029_4FBB:
    ld a, [hl]                                    ; $4FBB: $7E

jr_029_4FBC:
    cp $04                                        ; $4FBC: $FE $04
    jr z, jr_029_4FC7                             ; $4FBE: $28 $07

    cp $09                                        ; $4FC0: $FE $09
    jr z, jr_029_4FC7                             ; $4FC2: $28 $03

    inc a                                         ; $4FC4: $3C
    jr jr_029_4FC9                                ; $4FC5: $18 $02

jr_029_4FC7:
    sub $04                                       ; $4FC7: $D6 $04

jr_029_4FC9:
    push af                                       ; $4FC9: $F5
    call Call_029_4FD5                            ; $4FCA: $CD $D5 $4F
    jr nc, jr_029_4FD2                            ; $4FCD: $30 $03

    pop af                                        ; $4FCF: $F1
    jr jr_029_4FBC                                ; $4FD0: $18 $EA

jr_029_4FD2:
    pop af                                        ; $4FD2: $F1
    ld [hl], a                                    ; $4FD3: $77
    ret                                           ; $4FD4: $C9


Call_029_4FD5:
    push hl                                       ; $4FD5: $E5
    ld hl, $C2FE                                  ; $4FD6: $21 $FE $C2
    add l                                         ; $4FD9: $85
    jr nc, jr_029_4FDD                            ; $4FDA: $30 $01

    inc h                                         ; $4FDC: $24

jr_029_4FDD:
    ld l, a                                       ; $4FDD: $6F
    ld a, [hl]                                    ; $4FDE: $7E
    bit 7, a                                      ; $4FDF: $CB $7F
    jr z, jr_029_4FE6                             ; $4FE1: $28 $03

    pop hl                                        ; $4FE3: $E1
    scf                                           ; $4FE4: $37
    ret                                           ; $4FE5: $C9


jr_029_4FE6:
    pop hl                                        ; $4FE6: $E1
    xor a                                         ; $4FE7: $AF
    ret                                           ; $4FE8: $C9


Call_029_4FE9:
    ld a, [$C2C6]                                 ; $4FE9: $FA $C6 $C2
    bit 1, a                                      ; $4FEC: $CB $4F
    jr nz, jr_029_4FFE                            ; $4FEE: $20 $0E

    and $F0                                       ; $4FF0: $E6 $F0
    cp $10                                        ; $4FF2: $FE $10
    jr z, jr_029_4FFE                             ; $4FF4: $28 $08

    ld a, [$C2F3]                                 ; $4FF6: $FA $F3 $C2
    or a                                          ; $4FF9: $B7
    jr nz, jr_029_5007                            ; $4FFA: $20 $0B

    jr jr_029_5005                                ; $4FFC: $18 $07

jr_029_4FFE:
    ld hl, $C037                                  ; $4FFE: $21 $37 $C0
    bit 6, [hl]                                   ; $5001: $CB $76
    jr nz, jr_029_5007                            ; $5003: $20 $02

jr_029_5005:
    scf                                           ; $5005: $37
    ret                                           ; $5006: $C9


jr_029_5007:
    xor a                                         ; $5007: $AF
    ret                                           ; $5008: $C9


Call_029_5009:
    ld a, [$C313]                                 ; $5009: $FA $13 $C3
    or a                                          ; $500C: $B7
    jr nz, jr_029_5020                            ; $500D: $20 $11

    push de                                       ; $500F: $D5
    ld hl, $002C                                  ; $5010: $21 $2C $00
    add hl, de                                    ; $5013: $19
    ld a, [hl]                                    ; $5014: $7E
    call Call_029_506F                            ; $5015: $CD $6F $50
    ld a, $AB                                     ; $5018: $3E $AB
    call Call_000_1360                            ; $501A: $CD $60 $13
    pop de                                        ; $501D: $D1
    scf                                           ; $501E: $37
    ret                                           ; $501F: $C9


jr_029_5020:
    push de                                       ; $5020: $D5
    ld a, $00                                     ; $5021: $3E $00
    cp e                                          ; $5023: $BB
    jr nz, jr_029_502B                            ; $5024: $20 $05

    ld bc, $D937                                  ; $5026: $01 $37 $D9
    jr jr_029_502E                                ; $5029: $18 $03

jr_029_502B:
    ld bc, $DA37                                  ; $502B: $01 $37 $DA

jr_029_502E:
    ld hl, $002D                                  ; $502E: $21 $2D $00
    add hl, de                                    ; $5031: $19
    push hl                                       ; $5032: $E5
    ld a, [hl]                                    ; $5033: $7E
    ld h, $00                                     ; $5034: $26 $00
    ld l, a                                       ; $5036: $6F
    add hl, bc                                    ; $5037: $09
    push hl                                       ; $5038: $E5
    ld hl, $002C                                  ; $5039: $21 $2C $00
    add hl, de                                    ; $503C: $19
    ld a, [hl]                                    ; $503D: $7E
    call Call_029_56C7                            ; $503E: $CD $C7 $56
    ld hl, $C2FE                                  ; $5041: $21 $FE $C2
    ld b, $00                                     ; $5044: $06 $00
    ld c, a                                       ; $5046: $4F
    add hl, bc                                    ; $5047: $09
    ld a, [hl]                                    ; $5048: $7E
    sla a                                         ; $5049: $CB $27
    set 7, [hl]                                   ; $504B: $CB $FE
    pop hl                                        ; $504D: $E1
    ld [hl], a                                    ; $504E: $77
    ld a, $AB                                     ; $504F: $3E $AB
    call Call_000_1360                            ; $5051: $CD $60 $13
    pop hl                                        ; $5054: $E1
    inc [hl]                                      ; $5055: $34
    ld a, [hl]                                    ; $5056: $7E
    cp $03                                        ; $5057: $FE $03
    jr z, jr_029_506C                             ; $5059: $28 $11

    ld a, $00                                     ; $505B: $3E $00
    cp e                                          ; $505D: $BB
    jr nz, jr_029_5065                            ; $505E: $20 $05

    call Call_029_4F85                            ; $5060: $CD $85 $4F
    jr jr_029_5068                                ; $5063: $18 $03

jr_029_5065:
    call Call_029_4F34                            ; $5065: $CD $34 $4F

jr_029_5068:
    pop de                                        ; $5068: $D1
    scf                                           ; $5069: $37
    ccf                                           ; $506A: $3F
    ret                                           ; $506B: $C9


jr_029_506C:
    pop de                                        ; $506C: $D1
    scf                                           ; $506D: $37
    ret                                           ; $506E: $C9


Call_029_506F:
    push hl                                       ; $506F: $E5
    push de                                       ; $5070: $D5
    ld hl, $C2FE                                  ; $5071: $21 $FE $C2
    ld d, $00                                     ; $5074: $16 $00
    ld e, a                                       ; $5076: $5F
    add hl, de                                    ; $5077: $19
    ld a, [hl]                                    ; $5078: $7E
    pop de                                        ; $5079: $D1
    pop hl                                        ; $507A: $E1
    ret                                           ; $507B: $C9


Call_029_507C:
    push de                                       ; $507C: $D5
    ld a, [$C2C6]                                 ; $507D: $FA $C6 $C2
    bit 1, a                                      ; $5080: $CB $4F
    jr nz, jr_029_508C                            ; $5082: $20 $08

    ld a, [$C2D0]                                 ; $5084: $FA $D0 $C2
    or a                                          ; $5087: $B7
    jr z, jr_029_5091                             ; $5088: $28 $07

    jr jr_029_5096                                ; $508A: $18 $0A

jr_029_508C:
    ld a, $00                                     ; $508C: $3E $00
    cp e                                          ; $508E: $BB
    jr nz, jr_029_5096                            ; $508F: $20 $05

jr_029_5091:
    ld hl, $FF98                                  ; $5091: $21 $98 $FF
    jr jr_029_5099                                ; $5094: $18 $03

jr_029_5096:
    ld hl, $FFAB                                  ; $5096: $21 $AB $FF

jr_029_5099:
    ld c, [hl]                                    ; $5099: $4E
    inc hl                                        ; $509A: $23
    ld a, [hl]                                    ; $509B: $7E
    push af                                       ; $509C: $F5
    push bc                                       ; $509D: $C5
    inc hl                                        ; $509E: $23
    inc hl                                        ; $509F: $23
    ld b, $00                                     ; $50A0: $06 $00
    ld c, $08                                     ; $50A2: $0E $08

jr_029_50A4:
    ld a, [hl+]                                   ; $50A4: $2A
    inc hl                                        ; $50A5: $23
    cp $01                                        ; $50A6: $FE $01
    jr nz, jr_029_50AC                            ; $50A8: $20 $02

    set 7, b                                      ; $50AA: $CB $F8

jr_029_50AC:
    rlc b                                         ; $50AC: $CB $00
    dec c                                         ; $50AE: $0D
    jr nz, jr_029_50A4                            ; $50AF: $20 $F3

    ld d, b                                       ; $50B1: $50
    pop bc                                        ; $50B2: $C1
    ld b, d                                       ; $50B3: $42
    pop af                                        ; $50B4: $F1
    pop de                                        ; $50B5: $D1
    ret                                           ; $50B6: $C9


Call_029_50B7:
    push af                                       ; $50B7: $F5
    call Call_029_506F                            ; $50B8: $CD $6F $50
    and $0F                                       ; $50BB: $E6 $0F
    call Call_029_5113                            ; $50BD: $CD $13 $51
    call Call_029_520D                            ; $50C0: $CD $0D $52
    pop af                                        ; $50C3: $F1

Call_029_50C4:
    push bc                                       ; $50C4: $C5
    sla a                                         ; $50C5: $CB $27
    ld hl, $C313                                  ; $50C7: $21 $13 $C3
    bit 0, [hl]                                   ; $50CA: $CB $46
    jr nz, jr_029_50D3                            ; $50CC: $20 $05

    ld bc, $50EB                                  ; $50CE: $01 $EB $50
    jr jr_029_50D6                                ; $50D1: $18 $03

jr_029_50D3:
    ld bc, $50FF                                  ; $50D3: $01 $FF $50

jr_029_50D6:
    ld h, $00                                     ; $50D6: $26 $00
    ld l, a                                       ; $50D8: $6F
    add hl, bc                                    ; $50D9: $09
    push hl                                       ; $50DA: $E5
    pop bc                                        ; $50DB: $C1
    ld hl, $0004                                  ; $50DC: $21 $04 $00
    add hl, de                                    ; $50DF: $19
    ld a, [bc]                                    ; $50E0: $0A
    ld [hl], a                                    ; $50E1: $77
    inc bc                                        ; $50E2: $03
    ld hl, $0006                                  ; $50E3: $21 $06 $00
    add hl, de                                    ; $50E6: $19
    ld a, [bc]                                    ; $50E7: $0A
    ld [hl], a                                    ; $50E8: $77
    pop bc                                        ; $50E9: $C1
    ret                                           ; $50EA: $C9


    jr nc, @-$06                                  ; $50EB: $30 $F8

    ld c, b                                       ; $50ED: $48
    ldh a, [$FF30]                                ; $50EE: $F0 $30
    db $10                                        ; $50F0: $10
    ld c, b                                       ; $50F1: $48
    ld [$2830], sp                                ; $50F2: $08 $30 $28
    ld c, b                                       ; $50F5: $48
    jr nz, @+$32                                  ; $50F6: $20 $30

    ld b, b                                       ; $50F8: $40
    ld c, b                                       ; $50F9: $48
    jr c, @+$32                                   ; $50FA: $38 $30

    ld e, b                                       ; $50FC: $58
    ld c, b                                       ; $50FD: $48
    ld d, b                                       ; $50FE: $50
    jr nz, @+$0A                                  ; $50FF: $20 $08

    jr c, jr_029_510B                             ; $5101: $38 $08

    ld d, b                                       ; $5103: $50
    ld [$0868], sp                                ; $5104: $08 $68 $08
    add b                                         ; $5107: $80
    ld [$40F8], sp                                ; $5108: $08 $F8 $40

jr_029_510B:
    db $10                                        ; $510B: $10
    ld b, b                                       ; $510C: $40
    jr z, @+$42                                   ; $510D: $28 $40

    ld b, b                                       ; $510F: $40
    ld b, b                                       ; $5110: $40
    ld e, b                                       ; $5111: $58
    ld b, b                                       ; $5112: $40

Call_029_5113:
    push af                                       ; $5113: $F5
    push de                                       ; $5114: $D5
    ld b, a                                       ; $5115: $47
    ld a, $00                                     ; $5116: $3E $00
    cp e                                          ; $5118: $BB
    jr nz, jr_029_5134                            ; $5119: $20 $19

    ld a, [$C313]                                 ; $511B: $FA $13 $C3
    or a                                          ; $511E: $B7
    jr nz, jr_029_512F                            ; $511F: $20 $0E

    ld de, $98C1                                  ; $5121: $11 $C1 $98
    ld a, [$C2C6]                                 ; $5124: $FA $C6 $C2
    and $F0                                       ; $5127: $E6 $F0
    cp $10                                        ; $5129: $FE $10
    jr z, jr_029_5150                             ; $512B: $28 $23

    jr jr_029_514B                                ; $512D: $18 $1C

jr_029_512F:
    ld de, $98C0                                  ; $512F: $11 $C0 $98
    jr jr_029_514B                                ; $5132: $18 $17

jr_029_5134:
    ld a, [$C313]                                 ; $5134: $FA $13 $C3
    or a                                          ; $5137: $B7
    jr nz, jr_029_5148                            ; $5138: $20 $0E

    ld de, $9A0E                                  ; $513A: $11 $0E $9A
    ld a, [$C2C6]                                 ; $513D: $FA $C6 $C2
    and $F0                                       ; $5140: $E6 $F0
    cp $10                                        ; $5142: $FE $10
    jr z, jr_029_5150                             ; $5144: $28 $0A

    jr jr_029_514B                                ; $5146: $18 $03

jr_029_5148:
    ld de, $9A2F                                  ; $5148: $11 $2F $9A

jr_029_514B:
    ld hl, $516D                                  ; $514B: $21 $6D $51
    jr jr_029_5153                                ; $514E: $18 $03

jr_029_5150:
    ld hl, $5181                                  ; $5150: $21 $81 $51

jr_029_5153:
    ld a, b                                       ; $5153: $78
    sla a                                         ; $5154: $CB $27
    ld b, $00                                     ; $5156: $06 $00
    ld c, a                                       ; $5158: $4F
    add hl, bc                                    ; $5159: $09
    ld c, [hl]                                    ; $515A: $4E
    inc hl                                        ; $515B: $23
    ld b, [hl]                                    ; $515C: $46
    push de                                       ; $515D: $D5
    push bc                                       ; $515E: $C5
    pop de                                        ; $515F: $D1
    pop hl                                        ; $5160: $E1
    ld b, $05                                     ; $5161: $06 $05
    ld c, $01                                     ; $5163: $0E $01
    ld a, $94                                     ; $5165: $3E $94
    call Call_000_0FF7                            ; $5167: $CD $F7 $0F
    pop de                                        ; $516A: $D1
    pop af                                        ; $516B: $F1
    ret                                           ; $516C: $C9


    xor c                                         ; $516D: $A9
    ld d, c                                       ; $516E: $51
    or e                                          ; $516F: $B3
    ld d, c                                       ; $5170: $51
    cp l                                          ; $5171: $BD
    ld d, c                                       ; $5172: $51
    rst RST_00                                    ; $5173: $C7
    ld d, c                                       ; $5174: $51
    pop de                                        ; $5175: $D1
    ld d, c                                       ; $5176: $51
    db $DB                                        ; $5177: $DB
    ld d, c                                       ; $5178: $51
    push hl                                       ; $5179: $E5
    ld d, c                                       ; $517A: $51
    rst RST_28                                    ; $517B: $EF
    ld d, c                                       ; $517C: $51
    ld sp, hl                                     ; $517D: $F9
    ld d, c                                       ; $517E: $51
    inc bc                                        ; $517F: $03
    ld d, d                                       ; $5180: $52
    sub l                                         ; $5181: $95
    ld d, c                                       ; $5182: $51
    sbc a                                         ; $5183: $9F
    ld d, c                                       ; $5184: $51
    sub l                                         ; $5185: $95
    ld d, c                                       ; $5186: $51
    sbc a                                         ; $5187: $9F
    ld d, c                                       ; $5188: $51
    sub l                                         ; $5189: $95
    ld d, c                                       ; $518A: $51
    sbc a                                         ; $518B: $9F
    ld d, c                                       ; $518C: $51
    sub l                                         ; $518D: $95
    ld d, c                                       ; $518E: $51
    sbc a                                         ; $518F: $9F
    ld d, c                                       ; $5190: $51
    sub l                                         ; $5191: $95
    ld d, c                                       ; $5192: $51
    sbc a                                         ; $5193: $9F
    ld d, c                                       ; $5194: $51
    ld b, $28                                     ; $5195: $06 $28
    ld b, $29                                     ; $5197: $06 $29
    ld b, $08                                     ; $5199: $06 $08
    ld b, $09                                     ; $519B: $06 $09
    ld b, $0A                                     ; $519D: $06 $0A
    ld b, $34                                     ; $519F: $06 $34
    ld b, $35                                     ; $51A1: $06 $35
    ld b, $36                                     ; $51A3: $06 $36
    ld b, $32                                     ; $51A5: $06 $32
    ld b, $33                                     ; $51A7: $06 $33
    ld b, $01                                     ; $51A9: $06 $01
    ld b, $02                                     ; $51AB: $06 $02
    ld b, $03                                     ; $51AD: $06 $03
    ld b, $04                                     ; $51AF: $06 $04
    ld b, $05                                     ; $51B1: $06 $05
    ld b, $06                                     ; $51B3: $06 $06
    ld b, $07                                     ; $51B5: $06 $07
    ld b, $08                                     ; $51B7: $06 $08
    ld b, $09                                     ; $51B9: $06 $09
    ld b, $0A                                     ; $51BB: $06 $0A
    ld b, $10                                     ; $51BD: $06 $10
    ld b, $11                                     ; $51BF: $06 $11
    ld b, $12                                     ; $51C1: $06 $12
    ld b, $13                                     ; $51C3: $06 $13
    ld b, $14                                     ; $51C5: $06 $14
    ld b, $15                                     ; $51C7: $06 $15
    ld b, $06                                     ; $51C9: $06 $06
    ld b, $16                                     ; $51CB: $06 $16
    ld b, $17                                     ; $51CD: $06 $17
    ld b, $18                                     ; $51CF: $06 $18
    ld b, $1E                                     ; $51D1: $06 $1E
    ld b, $1F                                     ; $51D3: $06 $1F
    ld b, $20                                     ; $51D5: $06 $20
    ld b, $21                                     ; $51D7: $06 $21
    ld b, $22                                     ; $51D9: $06 $22
    ld b, $23                                     ; $51DB: $06 $23
    ld b, $24                                     ; $51DD: $06 $24
    ld b, $25                                     ; $51DF: $06 $25
    ld b, $26                                     ; $51E1: $06 $26
    ld b, $27                                     ; $51E3: $06 $27
    ld b, $2A                                     ; $51E5: $06 $2A
    ld b, $2B                                     ; $51E7: $06 $2B
    ld b, $2C                                     ; $51E9: $06 $2C
    ld b, $2D                                     ; $51EB: $06 $2D
    ld b, $2E                                     ; $51ED: $06 $2E
    ld b, $2F                                     ; $51EF: $06 $2F
    ld b, $30                                     ; $51F1: $06 $30
    ld b, $31                                     ; $51F3: $06 $31
    ld b, $32                                     ; $51F5: $06 $32
    ld b, $33                                     ; $51F7: $06 $33
    ld b, $0B                                     ; $51F9: $06 $0B
    ld b, $0C                                     ; $51FB: $06 $0C
    ld b, $0D                                     ; $51FD: $06 $0D
    ld b, $0E                                     ; $51FF: $06 $0E
    ld b, $0F                                     ; $5201: $06 $0F
    ld b, $19                                     ; $5203: $06 $19
    ld b, $1A                                     ; $5205: $06 $1A
    ld b, $1B                                     ; $5207: $06 $1B
    ld b, $1C                                     ; $5209: $06 $1C
    ld b, $1D                                     ; $520B: $06 $1D

Call_029_520D:
    push af                                       ; $520D: $F5
    push de                                       ; $520E: $D5
    ld b, a                                       ; $520F: $47
    ld a, $00                                     ; $5210: $3E $00
    cp e                                          ; $5212: $BB
    jr nz, jr_029_521A                            ; $5213: $20 $05

    ld de, $D680                                  ; $5215: $11 $80 $D6
    jr jr_029_521D                                ; $5218: $18 $03

jr_029_521A:
    ld de, $D6C0                                  ; $521A: $11 $C0 $D6

jr_029_521D:
    ld a, b                                       ; $521D: $78
    ld hl, $0029                                  ; $521E: $21 $29 $00
    add hl, de                                    ; $5221: $19
    cp [hl]                                       ; $5222: $BE
    jr z, jr_029_5266                             ; $5223: $28 $41

    ld [hl], a                                    ; $5225: $77
    ld b, a                                       ; $5226: $47
    ld a, [$C313]                                 ; $5227: $FA $13 $C3
    or a                                          ; $522A: $B7
    jr nz, jr_029_5236                            ; $522B: $20 $09

    ld a, [$C2C6]                                 ; $522D: $FA $C6 $C2
    and $F0                                       ; $5230: $E6 $F0
    cp $10                                        ; $5232: $FE $10
    jr z, jr_029_523B                             ; $5234: $28 $05

jr_029_5236:
    ld hl, $5269                                  ; $5236: $21 $69 $52
    jr jr_029_523E                                ; $5239: $18 $03

jr_029_523B:
    ld hl, $5291                                  ; $523B: $21 $91 $52

jr_029_523E:
    ld a, b                                       ; $523E: $78
    sla a                                         ; $523F: $CB $27
    sla a                                         ; $5241: $CB $27
    ld b, $00                                     ; $5243: $06 $00
    ld c, a                                       ; $5245: $4F
    add hl, bc                                    ; $5246: $09
    push hl                                       ; $5247: $E5
    pop bc                                        ; $5248: $C1
    ld hl, $0011                                  ; $5249: $21 $11 $00
    add hl, de                                    ; $524C: $19
    ld a, [bc]                                    ; $524D: $0A
    ld [hl+], a                                   ; $524E: $22
    inc bc                                        ; $524F: $03
    ld a, [bc]                                    ; $5250: $0A
    ld [hl+], a                                   ; $5251: $22
    inc bc                                        ; $5252: $03
    ld a, [bc]                                    ; $5253: $0A
    ld [hl+], a                                   ; $5254: $22
    inc bc                                        ; $5255: $03
    xor a                                         ; $5256: $AF
    ld [hl], a                                    ; $5257: $77
    ld hl, $001C                                  ; $5258: $21 $1C $00
    add hl, de                                    ; $525B: $19
    ld a, [bc]                                    ; $525C: $0A
    ld [hl+], a                                   ; $525D: $22
    ld [hl], a                                    ; $525E: $77
    push de                                       ; $525F: $D5
    push de                                       ; $5260: $D5
    pop hl                                        ; $5261: $E1
    call Call_000_0DB5                            ; $5262: $CD $B5 $0D
    pop de                                        ; $5265: $D1

jr_029_5266:
    pop de                                        ; $5266: $D1
    pop af                                        ; $5267: $F1
    ret                                           ; $5268: $C9


    rlca                                          ; $5269: $07
    cp [hl]                                       ; $526A: $BE
    ld b, b                                       ; $526B: $40
    ld b, $07                                     ; $526C: $06 $07
    ld h, c                                       ; $526E: $61
    ld d, a                                       ; $526F: $57
    ld b, $08                                     ; $5270: $06 $08
    ld a, [hl+]                                   ; $5272: $2A
    ld b, b                                       ; $5273: $40
    ld b, $08                                     ; $5274: $06 $08
    adc d                                         ; $5276: $8A
    ld e, h                                       ; $5277: $5C
    ld b, $09                                     ; $5278: $06 $09
    ld [hl+], a                                   ; $527A: $22
    ld b, b                                       ; $527B: $40
    ld b, $09                                     ; $527C: $06 $09
    db $F4                                        ; $527E: $F4
    ld d, a                                       ; $527F: $57
    ld b, $0A                                     ; $5280: $06 $0A
    ld b, $40                                     ; $5282: $06 $40
    ld b, $0A                                     ; $5284: $06 $0A
    ld a, l                                       ; $5286: $7D
    ld e, d                                       ; $5287: $5A
    ld b, $0B                                     ; $5288: $06 $0B
    ld a, [hl+]                                   ; $528A: $2A
    ld b, b                                       ; $528B: $40
    ld b, $0B                                     ; $528C: $06 $0B
    db $E4                                        ; $528E: $E4
    ld e, e                                       ; $528F: $5B
    ld b, $02                                     ; $5290: $06 $02
    cp b                                          ; $5292: $B8
    ld h, d                                       ; $5293: $62
    nop                                           ; $5294: $00
    ld [bc], a                                    ; $5295: $02
    ldh [$FF62], a                                ; $5296: $E0 $62
    nop                                           ; $5298: $00
    ld [bc], a                                    ; $5299: $02
    cp b                                          ; $529A: $B8
    ld h, d                                       ; $529B: $62
    nop                                           ; $529C: $00
    ld [bc], a                                    ; $529D: $02
    ldh [$FF62], a                                ; $529E: $E0 $62
    nop                                           ; $52A0: $00
    ld [bc], a                                    ; $52A1: $02
    cp b                                          ; $52A2: $B8
    ld h, d                                       ; $52A3: $62
    nop                                           ; $52A4: $00
    ld [bc], a                                    ; $52A5: $02
    ldh [$FF62], a                                ; $52A6: $E0 $62
    nop                                           ; $52A8: $00
    ld [bc], a                                    ; $52A9: $02
    cp b                                          ; $52AA: $B8
    ld h, d                                       ; $52AB: $62
    nop                                           ; $52AC: $00
    ld [bc], a                                    ; $52AD: $02
    ldh [$FF62], a                                ; $52AE: $E0 $62
    nop                                           ; $52B0: $00
    ld [bc], a                                    ; $52B1: $02
    cp b                                          ; $52B2: $B8
    ld h, d                                       ; $52B3: $62
    nop                                           ; $52B4: $00
    ld [bc], a                                    ; $52B5: $02
    ldh [$FF62], a                                ; $52B6: $E0 $62
    nop                                           ; $52B8: $00

Call_029_52B9:
    push af                                       ; $52B9: $F5
    push de                                       ; $52BA: $D5
    ld a, $00                                     ; $52BB: $3E $00
    cp e                                          ; $52BD: $BB
    jr nz, jr_029_52C5                            ; $52BE: $20 $05

    ld de, $D680                                  ; $52C0: $11 $80 $D6
    jr jr_029_52C8                                ; $52C3: $18 $03

jr_029_52C5:
    ld de, $D6C0                                  ; $52C5: $11 $C0 $D6

jr_029_52C8:
    ld hl, $0029                                  ; $52C8: $21 $29 $00
    add hl, de                                    ; $52CB: $19
    ld a, [hl]                                    ; $52CC: $7E
    ld b, a                                       ; $52CD: $47
    ld a, [$C313]                                 ; $52CE: $FA $13 $C3
    or a                                          ; $52D1: $B7
    jr nz, jr_029_52DD                            ; $52D2: $20 $09

    ld a, [$C2C6]                                 ; $52D4: $FA $C6 $C2
    and $F0                                       ; $52D7: $E6 $F0
    cp $10                                        ; $52D9: $FE $10
    jr z, jr_029_52E2                             ; $52DB: $28 $05

jr_029_52DD:
    ld hl, $5314                                  ; $52DD: $21 $14 $53
    jr jr_029_52E5                                ; $52E0: $18 $03

jr_029_52E2:
    ld hl, $533C                                  ; $52E2: $21 $3C $53

jr_029_52E5:
    ld a, b                                       ; $52E5: $78
    sla a                                         ; $52E6: $CB $27
    sla a                                         ; $52E8: $CB $27
    ld b, $00                                     ; $52EA: $06 $00
    ld c, a                                       ; $52EC: $4F
    add hl, bc                                    ; $52ED: $09
    push hl                                       ; $52EE: $E5
    pop bc                                        ; $52EF: $C1
    ld a, [de]                                    ; $52F0: $1A
    and $EF                                       ; $52F1: $E6 $EF
    ld [de], a                                    ; $52F3: $12
    ld hl, $0011                                  ; $52F4: $21 $11 $00
    add hl, de                                    ; $52F7: $19
    ld a, [bc]                                    ; $52F8: $0A
    ld [hl+], a                                   ; $52F9: $22
    inc bc                                        ; $52FA: $03
    ld a, [bc]                                    ; $52FB: $0A
    ld [hl+], a                                   ; $52FC: $22
    inc bc                                        ; $52FD: $03
    ld a, [bc]                                    ; $52FE: $0A
    ld [hl+], a                                   ; $52FF: $22
    inc bc                                        ; $5300: $03
    xor a                                         ; $5301: $AF
    ld [hl], a                                    ; $5302: $77
    ld hl, $001C                                  ; $5303: $21 $1C $00
    add hl, de                                    ; $5306: $19
    ld a, [bc]                                    ; $5307: $0A
    ld [hl+], a                                   ; $5308: $22
    ld [hl], a                                    ; $5309: $77
    push de                                       ; $530A: $D5
    push de                                       ; $530B: $D5
    pop hl                                        ; $530C: $E1
    call Call_000_0DB5                            ; $530D: $CD $B5 $0D
    pop de                                        ; $5310: $D1
    pop de                                        ; $5311: $D1
    pop af                                        ; $5312: $F1
    ret                                           ; $5313: $C9


    rlca                                          ; $5314: $07
    nop                                           ; $5315: $00
    ld b, b                                       ; $5316: $40
    ld b, $07                                     ; $5317: $06 $07
    ld d, e                                       ; $5319: $53
    ld d, a                                       ; $531A: $57
    ld b, $08                                     ; $531B: $06 $08
    nop                                           ; $531D: $00
    ld b, b                                       ; $531E: $40
    ld b, $08                                     ; $531F: $06 $08
    ld [hl], h                                    ; $5321: $74
    ld e, h                                       ; $5322: $5C
    ld b, $09                                     ; $5323: $06 $09
    nop                                           ; $5325: $00
    ld b, b                                       ; $5326: $40
    ld b, $09                                     ; $5327: $06 $09
    xor $57                                       ; $5329: $EE $57
    ld b, $0A                                     ; $532B: $06 $0A
    nop                                           ; $532D: $00
    ld b, b                                       ; $532E: $40
    ld b, $0A                                     ; $532F: $06 $0A
    ld h, a                                       ; $5331: $67
    ld e, d                                       ; $5332: $5A
    ld b, $0B                                     ; $5333: $06 $0B
    nop                                           ; $5335: $00
    ld b, b                                       ; $5336: $40
    ld b, $0B                                     ; $5337: $06 $0B
    cp [hl]                                       ; $5339: $BE
    ld e, e                                       ; $533A: $5B
    ld b, $02                                     ; $533B: $06 $02
    jp c, $0062                                   ; $533D: $DA $62 $00

    ld [bc], a                                    ; $5340: $02
    ld [bc], a                                    ; $5341: $02
    ld h, e                                       ; $5342: $63
    nop                                           ; $5343: $00
    ld [bc], a                                    ; $5344: $02
    jp c, $0062                                   ; $5345: $DA $62 $00

    ld [bc], a                                    ; $5348: $02
    ld [bc], a                                    ; $5349: $02
    ld h, e                                       ; $534A: $63
    nop                                           ; $534B: $00
    ld [bc], a                                    ; $534C: $02
    jp c, $0062                                   ; $534D: $DA $62 $00

    ld [bc], a                                    ; $5350: $02
    ld [bc], a                                    ; $5351: $02
    ld h, e                                       ; $5352: $63
    nop                                           ; $5353: $00
    ld [bc], a                                    ; $5354: $02
    jp c, $0062                                   ; $5355: $DA $62 $00

    ld [bc], a                                    ; $5358: $02
    ld [bc], a                                    ; $5359: $02
    ld h, e                                       ; $535A: $63
    nop                                           ; $535B: $00
    ld [bc], a                                    ; $535C: $02
    jp c, $0062                                   ; $535D: $DA $62 $00

    ld [bc], a                                    ; $5360: $02
    ld [bc], a                                    ; $5361: $02
    ld h, e                                       ; $5362: $63
    nop                                           ; $5363: $00

Call_029_5364:
    ld a, [$C017]                                 ; $5364: $FA $17 $C0
    and $07                                       ; $5367: $E6 $07
    srl a                                         ; $5369: $CB $3F
    jr jr_029_5376                                ; $536B: $18 $09

    ld a, [$C017]                                 ; $536D: $FA $17 $C0
    and $0F                                       ; $5370: $E6 $0F
    srl a                                         ; $5372: $CB $3F
    srl a                                         ; $5374: $CB $3F

jr_029_5376:
    cp $01                                        ; $5376: $FE $01
    jr z, jr_029_539C                             ; $5378: $28 $22

    cp $02                                        ; $537A: $FE $02
    jr z, jr_029_53B6                             ; $537C: $28 $38

    cp $03                                        ; $537E: $FE $03
    jr z, jr_029_53D0                             ; $5380: $28 $4E

    ld a, $3C                                     ; $5382: $3E $3C
    ldh [rOBP0], a                                ; $5384: $E0 $48
    ld a, [$D702]                                 ; $5386: $FA $02 $D7
    and $F8                                       ; $5389: $E6 $F8
    add $02                                       ; $538B: $C6 $02
    ld [$D702], a                                 ; $538D: $EA $02 $D7
    ld a, [$D742]                                 ; $5390: $FA $42 $D7
    and $F8                                       ; $5393: $E6 $F8
    add $02                                       ; $5395: $C6 $02
    ld [$D742], a                                 ; $5397: $EA $42 $D7
    jr jr_029_53E8                                ; $539A: $18 $4C

jr_029_539C:
    ld a, $34                                     ; $539C: $3E $34
    ldh [rOBP0], a                                ; $539E: $E0 $48
    ld a, [$D702]                                 ; $53A0: $FA $02 $D7
    and $F8                                       ; $53A3: $E6 $F8
    add $03                                       ; $53A5: $C6 $03
    ld [$D702], a                                 ; $53A7: $EA $02 $D7
    ld a, [$D742]                                 ; $53AA: $FA $42 $D7
    and $F8                                       ; $53AD: $E6 $F8
    add $03                                       ; $53AF: $C6 $03
    ld [$D742], a                                 ; $53B1: $EA $42 $D7
    jr jr_029_53E8                                ; $53B4: $18 $32

jr_029_53B6:
    ld a, $D0                                     ; $53B6: $3E $D0
    ldh [rOBP0], a                                ; $53B8: $E0 $48
    ld a, [$D702]                                 ; $53BA: $FA $02 $D7
    and $F8                                       ; $53BD: $E6 $F8
    add $04                                       ; $53BF: $C6 $04
    ld [$D702], a                                 ; $53C1: $EA $02 $D7
    ld a, [$D742]                                 ; $53C4: $FA $42 $D7
    and $F8                                       ; $53C7: $E6 $F8
    add $04                                       ; $53C9: $C6 $04
    ld [$D742], a                                 ; $53CB: $EA $42 $D7
    jr jr_029_53E8                                ; $53CE: $18 $18

jr_029_53D0:
    ld a, $D4                                     ; $53D0: $3E $D4
    ldh [rOBP0], a                                ; $53D2: $E0 $48
    ld a, [$D702]                                 ; $53D4: $FA $02 $D7
    and $F8                                       ; $53D7: $E6 $F8
    add $05                                       ; $53D9: $C6 $05
    ld [$D702], a                                 ; $53DB: $EA $02 $D7
    ld a, [$D742]                                 ; $53DE: $FA $42 $D7
    and $F8                                       ; $53E1: $E6 $F8
    add $05                                       ; $53E3: $C6 $05
    ld [$D742], a                                 ; $53E5: $EA $42 $D7

jr_029_53E8:
    ld hl, $0002                                  ; $53E8: $21 $02 $00
    add hl, de                                    ; $53EB: $19
    bit 4, [hl]                                   ; $53EC: $CB $66
    ret                                           ; $53EE: $C9


Call_029_53EF:
    push de                                       ; $53EF: $D5
    pop hl                                        ; $53F0: $E1
    res 7, [hl]                                   ; $53F1: $CB $BE
    ret                                           ; $53F3: $C9


Call_029_53F4:
    ld a, [$C313]                                 ; $53F4: $FA $13 $C3
    or a                                          ; $53F7: $B7
    jr nz, jr_029_5420                            ; $53F8: $20 $26

    ld hl, $002C                                  ; $53FA: $21 $2C $00
    add hl, de                                    ; $53FD: $19
    ld a, [hl]                                    ; $53FE: $7E
    ld c, a                                       ; $53FF: $4F
    call Call_029_506F                            ; $5400: $CD $6F $50
    and $0F                                       ; $5403: $E6 $0F
    sla a                                         ; $5405: $CB $27
    ld b, a                                       ; $5407: $47
    ld a, $00                                     ; $5408: $3E $00
    cp e                                          ; $540A: $BB
    jr nz, jr_029_5417                            ; $540B: $20 $0A

    ld a, b                                       ; $540D: $78
    ld [$D92E], a                                 ; $540E: $EA $2E $D9
    ld a, c                                       ; $5411: $79
    ld [$C308], a                                 ; $5412: $EA $08 $C3
    jr jr_029_541F                                ; $5415: $18 $08

jr_029_5417:
    ld a, b                                       ; $5417: $78
    ld [$DA2E], a                                 ; $5418: $EA $2E $DA
    ld a, c                                       ; $541B: $79
    ld [$C309], a                                 ; $541C: $EA $09 $C3

jr_029_541F:
    ret                                           ; $541F: $C9


jr_029_5420:
    ld a, $00                                     ; $5420: $3E $00
    cp e                                          ; $5422: $BB
    jr nz, jr_029_542D                            ; $5423: $20 $08

    ld bc, $D937                                  ; $5425: $01 $37 $D9
    ld hl, $D92E                                  ; $5428: $21 $2E $D9
    jr jr_029_5433                                ; $542B: $18 $06

jr_029_542D:
    ld bc, $DA37                                  ; $542D: $01 $37 $DA
    ld hl, $DA2E                                  ; $5430: $21 $2E $DA

jr_029_5433:
    ld a, [bc]                                    ; $5433: $0A
    ld [hl], a                                    ; $5434: $77
    ret                                           ; $5435: $C9


Call_029_5436:
    ld a, $00                                     ; $5436: $3E $00

jr_029_5438:
    push af                                       ; $5438: $F5
    call Call_029_5443                            ; $5439: $CD $43 $54
    pop af                                        ; $543C: $F1
    inc a                                         ; $543D: $3C
    cp $0A                                        ; $543E: $FE $0A
    jr nz, jr_029_5438                            ; $5440: $20 $F6

    ret                                           ; $5442: $C9


Call_029_5443:
    push de                                       ; $5443: $D5
    ld hl, $C313                                  ; $5444: $21 $13 $C3
    bit 0, [hl]                                   ; $5447: $CB $46
    jr nz, jr_029_545C                            ; $5449: $20 $11

    ld hl, $C314                                  ; $544B: $21 $14 $C3
    bit 0, [hl]                                   ; $544E: $CB $46
    jr nz, jr_029_5457                            ; $5450: $20 $05

    ld hl, $552A                                  ; $5452: $21 $2A $55
    jr jr_029_5477                                ; $5455: $18 $20

jr_029_5457:
    ld hl, $553E                                  ; $5457: $21 $3E $55
    jr jr_029_5477                                ; $545A: $18 $1B

jr_029_545C:
    ld hl, $C314                                  ; $545C: $21 $14 $C3
    bit 0, [hl]                                   ; $545F: $CB $46
    jr nz, jr_029_5474                            ; $5461: $20 $11

    ld hl, $C313                                  ; $5463: $21 $13 $C3
    bit 1, [hl]                                   ; $5466: $CB $4E
    jr nz, jr_029_546F                            ; $5468: $20 $05

    ld hl, $5552                                  ; $546A: $21 $52 $55
    jr jr_029_5477                                ; $546D: $18 $08

jr_029_546F:
    ld hl, $5566                                  ; $546F: $21 $66 $55
    jr jr_029_5477                                ; $5472: $18 $03

jr_029_5474:
    ld hl, $557A                                  ; $5474: $21 $7A $55

jr_029_5477:
    ld c, a                                       ; $5477: $4F
    sla a                                         ; $5478: $CB $27
    push bc                                       ; $547A: $C5
    ld b, $00                                     ; $547B: $06 $00
    ld c, a                                       ; $547D: $4F
    add hl, bc                                    ; $547E: $09
    pop bc                                        ; $547F: $C1
    push de                                       ; $5480: $D5
    ld e, [hl]                                    ; $5481: $5E
    inc hl                                        ; $5482: $23
    ld d, [hl]                                    ; $5483: $56
    push de                                       ; $5484: $D5
    pop hl                                        ; $5485: $E1
    pop de                                        ; $5486: $D1
    push hl                                       ; $5487: $E5
    ld hl, $002A                                  ; $5488: $21 $2A $00
    add hl, de                                    ; $548B: $19
    ld a, [hl]                                    ; $548C: $7E
    pop hl                                        ; $548D: $E1
    ld b, a                                       ; $548E: $47
    ld a, c                                       ; $548F: $79
    push hl                                       ; $5490: $E5
    push bc                                       ; $5491: $C5
    ld hl, $C2FE                                  ; $5492: $21 $FE $C2
    ld b, $00                                     ; $5495: $06 $00
    ld c, a                                       ; $5497: $4F
    add hl, bc                                    ; $5498: $09
    pop bc                                        ; $5499: $C1
    ld a, [hl]                                    ; $549A: $7E
    pop hl                                        ; $549B: $E1
    bit 7, a                                      ; $549C: $CB $7F
    jr nz, jr_029_54A6                            ; $549E: $20 $06

    bit 6, b                                      ; $54A0: $CB $70
    jr nz, jr_029_54A6                            ; $54A2: $20 $02

    jr jr_029_54CE                                ; $54A4: $18 $28

jr_029_54A6:
    bit 0, a                                      ; $54A6: $CB $47
    jr nz, jr_029_54AF                            ; $54A8: $20 $05

    ld de, $6C86                                  ; $54AA: $11 $86 $6C
    jr jr_029_54B2                                ; $54AD: $18 $03

jr_029_54AF:
    ld de, $6C98                                  ; $54AF: $11 $98 $6C

jr_029_54B2:
    ld a, [$C314]                                 ; $54B2: $FA $14 $C3
    or a                                          ; $54B5: $B7
    jr nz, jr_029_54C3                            ; $54B6: $20 $0B

    ld a, $D5                                     ; $54B8: $3E $D5
    ld b, $03                                     ; $54BA: $06 $03
    ld c, $03                                     ; $54BC: $0E $03
    call Call_000_0FF7                            ; $54BE: $CD $F7 $0F
    pop de                                        ; $54C1: $D1
    ret                                           ; $54C2: $C9


jr_029_54C3:
    ld a, $D5                                     ; $54C3: $3E $D5
    ld b, $03                                     ; $54C5: $06 $03
    ld c, $03                                     ; $54C7: $0E $03
    call Call_000_1028                            ; $54C9: $CD $28 $10
    pop de                                        ; $54CC: $D1
    ret                                           ; $54CD: $C9


jr_029_54CE:
    push hl                                       ; $54CE: $E5
    ld de, $6BD2                                  ; $54CF: $11 $D2 $6B
    and $0F                                       ; $54D2: $E6 $0F
    ld b, a                                       ; $54D4: $47
    sla a                                         ; $54D5: $CB $27
    sla a                                         ; $54D7: $CB $27
    sla a                                         ; $54D9: $CB $27
    add b                                         ; $54DB: $80
    ld h, $00                                     ; $54DC: $26 $00
    ld l, a                                       ; $54DE: $6F
    sla l                                         ; $54DF: $CB $25
    rl h                                          ; $54E1: $CB $14
    add hl, de                                    ; $54E3: $19
    push hl                                       ; $54E4: $E5
    pop de                                        ; $54E5: $D1
    ld hl, $C314                                  ; $54E6: $21 $14 $C3
    bit 0, [hl]                                   ; $54E9: $CB $46
    jr nz, jr_029_54F7                            ; $54EB: $20 $0A

    pop hl                                        ; $54ED: $E1
    ld b, $03                                     ; $54EE: $06 $03
    ld c, $03                                     ; $54F0: $0E $03
    call Call_000_0FF7                            ; $54F2: $CD $F7 $0F
    pop de                                        ; $54F5: $D1
    ret                                           ; $54F6: $C9


jr_029_54F7:
    pop hl                                        ; $54F7: $E1
    ld b, $03                                     ; $54F8: $06 $03
    ld c, $03                                     ; $54FA: $0E $03
    call Call_000_1028                            ; $54FC: $CD $28 $10
    pop de                                        ; $54FF: $D1
    ret                                           ; $5500: $C9


Call_029_5501:
    ld hl, $C313                                  ; $5501: $21 $13 $C3
    bit 0, [hl]                                   ; $5504: $CB $46
    jr nz, jr_029_550D                            ; $5506: $20 $05

    ld hl, $552A                                  ; $5508: $21 $2A $55
    jr jr_029_5510                                ; $550B: $18 $03

jr_029_550D:
    ld hl, $5552                                  ; $550D: $21 $52 $55

jr_029_5510:
    ld a, b                                       ; $5510: $78
    sla a                                         ; $5511: $CB $27
    add l                                         ; $5513: $85
    jr nc, jr_029_5517                            ; $5514: $30 $01

    inc h                                         ; $5516: $24

jr_029_5517:
    ld l, a                                       ; $5517: $6F
    ld e, [hl]                                    ; $5518: $5E
    inc hl                                        ; $5519: $23
    ld d, [hl]                                    ; $551A: $56
    push de                                       ; $551B: $D5
    ld de, $6CAA                                  ; $551C: $11 $AA $6C
    pop hl                                        ; $551F: $E1
    ld b, $03                                     ; $5520: $06 $03
    ld c, $03                                     ; $5522: $0E $03
    ld a, $94                                     ; $5524: $3E $94
    call Call_000_0FF7                            ; $5526: $CD $F7 $0F
    ret                                           ; $5529: $C9


    ld b, a                                       ; $552A: $47
    sbc b                                         ; $552B: $98
    ld a, [hl+]                                   ; $552C: $2A
    sbc b                                         ; $552D: $98
    and a                                         ; $552E: $A7
    sbc b                                         ; $552F: $98
    adc d                                         ; $5530: $8A
    sbc b                                         ; $5531: $98
    rlca                                          ; $5532: $07
    sbc c                                         ; $5533: $99
    ld [$6798], a                                 ; $5534: $EA $98 $67
    sbc c                                         ; $5537: $99
    ld c, d                                       ; $5538: $4A
    sbc c                                         ; $5539: $99
    rst RST_00                                    ; $553A: $C7
    sbc c                                         ; $553B: $99
    xor d                                         ; $553C: $AA
    sbc c                                         ; $553D: $99
    or a                                          ; $553E: $B7
    jp $C37D                                      ; $553F: $C3 $7D $C3


    ld [hl], a                                    ; $5542: $77
    call nz, $C43D                                ; $5543: $C4 $3D $C4
    scf                                           ; $5546: $37
    push bc                                       ; $5547: $C5
    db $FD                                        ; $5548: $FD
    call nz, $C5F7                                ; $5549: $C4 $F7 $C5
    cp l                                          ; $554C: $BD
    push bc                                       ; $554D: $C5
    or a                                          ; $554E: $B7
    add $7D                                       ; $554F: $C6 $7D
    add $85                                       ; $5551: $C6 $85
    sbc b                                         ; $5553: $98
    adc b                                         ; $5554: $88
    sbc b                                         ; $5555: $98
    adc e                                         ; $5556: $8B
    sbc b                                         ; $5557: $98
    adc [hl]                                      ; $5558: $8E
    sbc b                                         ; $5559: $98
    sub c                                         ; $555A: $91
    sbc b                                         ; $555B: $98
    ld h, b                                       ; $555C: $60
    sbc c                                         ; $555D: $99
    ld h, e                                       ; $555E: $63
    sbc c                                         ; $555F: $99
    ld h, [hl]                                    ; $5560: $66
    sbc c                                         ; $5561: $99
    ld l, c                                       ; $5562: $69
    sbc c                                         ; $5563: $99
    ld l, h                                       ; $5564: $6C
    sbc c                                         ; $5565: $99
    ld h, l                                       ; $5566: $65
    sbc b                                         ; $5567: $98
    ld l, b                                       ; $5568: $68
    sbc b                                         ; $5569: $98
    ld l, e                                       ; $556A: $6B
    sbc b                                         ; $556B: $98
    ld l, [hl]                                    ; $556C: $6E
    sbc b                                         ; $556D: $98
    ld [hl], c                                    ; $556E: $71
    sbc b                                         ; $556F: $98
    add b                                         ; $5570: $80
    sbc c                                         ; $5571: $99
    add e                                         ; $5572: $83
    sbc c                                         ; $5573: $99
    add [hl]                                      ; $5574: $86
    sbc c                                         ; $5575: $99
    adc c                                         ; $5576: $89
    sbc c                                         ; $5577: $99
    adc h                                         ; $5578: $8C
    sbc c                                         ; $5579: $99
    inc sp                                        ; $557A: $33
    call nz, $C439                                ; $557B: $C4 $39 $C4
    ccf                                           ; $557E: $3F
    call nz, $C445                                ; $557F: $C4 $45 $C4
    ld c, e                                       ; $5582: $4B
    call nz, $C5E9                                ; $5583: $C4 $E9 $C5
    rst RST_28                                    ; $5586: $EF
    push bc                                       ; $5587: $C5
    push af                                       ; $5588: $F5
    push bc                                       ; $5589: $C5
    ei                                            ; $558A: $FB
    push bc                                       ; $558B: $C5
    ld bc, $CDC6                                  ; $558C: $01 $C6 $CD
    add hl, de                                    ; $558F: $19
    ld d, [hl]                                    ; $5590: $56
    ret nc                                        ; $5591: $D0

    ld a, [$C2F3]                                 ; $5592: $FA $F3 $C2
    or a                                          ; $5595: $B7
    ret nz                                        ; $5596: $C0

    push de                                       ; $5597: $D5
    ld b, $0A                                     ; $5598: $06 $0A
    ld hl, $C2F4                                  ; $559A: $21 $F4 $C2
    ld a, $FF                                     ; $559D: $3E $FF

jr_029_559F:
    ld [hl+], a                                   ; $559F: $22
    dec b                                         ; $55A0: $05
    jr nz, jr_029_559F                            ; $55A1: $20 $FC

    ld a, [$C2D0]                                 ; $55A3: $FA $D0 $C2
    or a                                          ; $55A6: $B7
    jr nz, jr_029_55AE                            ; $55A7: $20 $05

    ld a, [$DA2E]                                 ; $55A9: $FA $2E $DA
    jr jr_029_55B1                                ; $55AC: $18 $03

jr_029_55AE:
    ld a, [$D92E]                                 ; $55AE: $FA $2E $D9

jr_029_55B1:
    srl a                                         ; $55B1: $CB $3F
    ld [$C2F4], a                                 ; $55B3: $EA $F4 $C2
    ld a, [$C2F4]                                 ; $55B6: $FA $F4 $C2
    ld c, a                                       ; $55B9: $4F
    ld b, $03                                     ; $55BA: $06 $03

jr_029_55BC:
    call Call_000_0424                            ; $55BC: $CD $24 $04
    ld a, b                                       ; $55BF: $78
    add $02                                       ; $55C0: $C6 $02
    cp c                                          ; $55C2: $B9
    jr z, jr_029_55DA                             ; $55C3: $28 $15

    call Call_000_17E2                            ; $55C5: $CD $E2 $17
    and $03                                       ; $55C8: $E6 $03
    ld d, $00                                     ; $55CA: $16 $00
    ld e, a                                       ; $55CC: $5F
    ld hl, $C2F4                                  ; $55CD: $21 $F4 $C2
    add hl, de                                    ; $55D0: $19
    ld a, [hl]                                    ; $55D1: $7E
    cp $FF                                        ; $55D2: $FE $FF
    jr nz, jr_029_55BC                            ; $55D4: $20 $E6

    ld a, b                                       ; $55D6: $78
    add $02                                       ; $55D7: $C6 $02
    ld [hl], a                                    ; $55D9: $77

jr_029_55DA:
    dec b                                         ; $55DA: $05
    ld a, b                                       ; $55DB: $78
    cp $FF                                        ; $55DC: $FE $FF
    jr nz, jr_029_55BC                            ; $55DE: $20 $DC

    ld b, $02                                     ; $55E0: $06 $02

Jump_029_55E2:
jr_029_55E2:
    call Call_000_0424                            ; $55E2: $CD $24 $04
    call Call_000_17E2                            ; $55E5: $CD $E2 $17
    and $01                                       ; $55E8: $E6 $01
    ld c, a                                       ; $55EA: $4F
    call Call_000_17E2                            ; $55EB: $CD $E2 $17
    and $01                                       ; $55EE: $E6 $01
    add c                                         ; $55F0: $81
    ld d, $00                                     ; $55F1: $16 $00
    ld e, a                                       ; $55F3: $5F
    ld hl, $C2F8                                  ; $55F4: $21 $F8 $C2
    add hl, de                                    ; $55F7: $19
    ld a, [hl]                                    ; $55F8: $7E
    cp $FF                                        ; $55F9: $FE $FF
    jr nz, jr_029_55E2                            ; $55FB: $20 $E5

    ld a, b                                       ; $55FD: $78
    cp $02                                        ; $55FE: $FE $02
    jr nz, jr_029_5604                            ; $5600: $20 $02

    add $04                                       ; $5602: $C6 $04

jr_029_5604:
    ld [hl], a                                    ; $5604: $77
    dec b                                         ; $5605: $05
    ld a, b                                       ; $5606: $78
    cp $FF                                        ; $5607: $FE $FF
    jp nz, Jump_029_55E2                          ; $5609: $C2 $E2 $55

    ld hl, $C2FB                                  ; $560C: $21 $FB $C2
    ld [hl], $07                                  ; $560F: $36 $07
    inc hl                                        ; $5611: $23
    ld [hl], $08                                  ; $5612: $36 $08
    inc hl                                        ; $5614: $23
    ld [hl], $09                                  ; $5615: $36 $09
    pop de                                        ; $5617: $D1
    ret                                           ; $5618: $C9


    ld a, [$C2C6]                                 ; $5619: $FA $C6 $C2
    bit 1, a                                      ; $561C: $CB $4F
    jr nz, jr_029_5639                            ; $561E: $20 $19

    bit 4, a                                      ; $5620: $CB $67
    jr nz, jr_029_5639                            ; $5622: $20 $15

    ld a, $00                                     ; $5624: $3E $00
    cp e                                          ; $5626: $BB
    jr nz, jr_029_5631                            ; $5627: $20 $08

    ld a, [$C2D0]                                 ; $5629: $FA $D0 $C2
    or a                                          ; $562C: $B7
    jr z, jr_029_5639                             ; $562D: $28 $0A

    jr jr_029_5637                                ; $562F: $18 $06

jr_029_5631:
    ld a, [$C2D0]                                 ; $5631: $FA $D0 $C2
    or a                                          ; $5634: $B7
    jr nz, jr_029_5639                            ; $5635: $20 $02

jr_029_5637:
    scf                                           ; $5637: $37
    ret                                           ; $5638: $C9


jr_029_5639:
    scf                                           ; $5639: $37
    ccf                                           ; $563A: $3F
    ret                                           ; $563B: $C9


Call_029_563C:
    ld de, $5650                                  ; $563C: $11 $50 $56
    jr jr_029_5644                                ; $563F: $18 $03

Call_029_5641:
    ld de, $565E                                  ; $5641: $11 $5E $56

jr_029_5644:
    ld hl, $C290                                  ; $5644: $21 $90 $C2
    ld b, $0E                                     ; $5647: $06 $0E

jr_029_5649:
    ld a, [de]                                    ; $5649: $1A
    ld [hl+], a                                   ; $564A: $22
    inc de                                        ; $564B: $13
    dec b                                         ; $564C: $05
    jr nz, jr_029_5649                            ; $564D: $20 $FA

    ret                                           ; $564F: $C9


    sbc h                                         ; $5650: $9C
    ld [hl], e                                    ; $5651: $73
    sbc h                                         ; $5652: $9C
    ld [de], a                                    ; $5653: $12
    sbc h                                         ; $5654: $9C
    stop                                          ; $5655: $10 $00
    nop                                           ; $5657: $00
    jr jr_029_56BD                                ; $5658: $18 $63

    adc $39                                       ; $565A: $CE $39
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    sbc h                                         ; $565E: $9C
    ld [hl], e                                    ; $565F: $73
    jr @+$65                                      ; $5660: $18 $63

    adc $39                                       ; $5662: $CE $39
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    jr @+$65                                      ; $5666: $18 $63

    adc $39                                       ; $5668: $CE $39
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00

Call_029_566C:
    ld de, $C337                                  ; $566C: $11 $37 $C3
    ld hl, $9807                                  ; $566F: $21 $07 $98
    ld b, $01                                     ; $5672: $06 $01
    ld c, $08                                     ; $5674: $0E $08
    ld a, $00                                     ; $5676: $3E $00
    call Call_000_1045                            ; $5678: $CD $45 $10
    ld de, $C339                                  ; $567B: $11 $39 $C3
    ld hl, $9808                                  ; $567E: $21 $08 $98
    ld b, $01                                     ; $5681: $06 $01
    ld c, $09                                     ; $5683: $0E $09
    ld a, $00                                     ; $5685: $3E $00
    call Call_000_1045                            ; $5687: $CD $45 $10
    ld de, $C4FB                                  ; $568A: $11 $FB $C4
    ld hl, $98E9                                  ; $568D: $21 $E9 $98
    ld b, $01                                     ; $5690: $06 $01
    ld c, $03                                     ; $5692: $0E $03
    ld a, $00                                     ; $5694: $3E $00
    call Call_000_1045                            ; $5696: $CD $45 $10
    ld de, $C53D                                  ; $5699: $11 $3D $C5
    ld hl, $990A                                  ; $569C: $21 $0A $99
    ld b, $01                                     ; $569F: $06 $01
    ld c, $03                                     ; $56A1: $0E $03
    ld a, $00                                     ; $56A3: $3E $00
    call Call_000_1045                            ; $56A5: $CD $45 $10
    ld de, $C57F                                  ; $56A8: $11 $7F $C5
    ld hl, $992B                                  ; $56AB: $21 $2B $99
    ld b, $01                                     ; $56AE: $06 $01
    ld c, $09                                     ; $56B0: $0E $09
    ld a, $00                                     ; $56B2: $3E $00
    call Call_000_1045                            ; $56B4: $CD $45 $10
    ld de, $C5C1                                  ; $56B7: $11 $C1 $C5
    ld hl, $994C                                  ; $56BA: $21 $4C $99

jr_029_56BD:
    ld b, $01                                     ; $56BD: $06 $01
    ld c, $08                                     ; $56BF: $0E $08
    ld a, $00                                     ; $56C1: $3E $00
    call Call_000_1045                            ; $56C3: $CD $45 $10
    ret                                           ; $56C6: $C9


Call_029_56C7:
    push af                                       ; $56C7: $F5
    push de                                       ; $56C8: $D5
    ld hl, $002C                                  ; $56C9: $21 $2C $00
    add hl, de                                    ; $56CC: $19
    ld a, [hl]                                    ; $56CD: $7E
    push af                                       ; $56CE: $F5
    ld hl, $C313                                  ; $56CF: $21 $13 $C3
    set 1, [hl]                                   ; $56D2: $CB $CE
    call Call_029_5443                            ; $56D4: $CD $43 $54
    pop af                                        ; $56D7: $F1
    ld hl, $002D                                  ; $56D8: $21 $2D $00
    add hl, de                                    ; $56DB: $19
    ld b, [hl]                                    ; $56DC: $46
    ld hl, $5708                                  ; $56DD: $21 $08 $57
    sla a                                         ; $56E0: $CB $27
    push bc                                       ; $56E2: $C5
    ld b, $00                                     ; $56E3: $06 $00
    ld c, a                                       ; $56E5: $4F
    add hl, bc                                    ; $56E6: $09
    pop bc                                        ; $56E7: $C1
    ld e, [hl]                                    ; $56E8: $5E
    inc hl                                        ; $56E9: $23
    ld d, [hl]                                    ; $56EA: $56
    push de                                       ; $56EB: $D5
    ld a, b                                       ; $56EC: $78
    sla a                                         ; $56ED: $CB $27
    add b                                         ; $56EF: $80
    sla a                                         ; $56F0: $CB $27
    ld b, $00                                     ; $56F2: $06 $00
    ld c, a                                       ; $56F4: $4F
    ld hl, $571C                                  ; $56F5: $21 $1C $57
    add hl, bc                                    ; $56F8: $09
    push hl                                       ; $56F9: $E5
    pop de                                        ; $56FA: $D1
    pop hl                                        ; $56FB: $E1
    ld b, $03                                     ; $56FC: $06 $03
    ld c, $01                                     ; $56FE: $0E $01
    ld a, $E7                                     ; $5700: $3E $E7
    call Call_000_0FF7                            ; $5702: $CD $F7 $0F
    pop de                                        ; $5705: $D1
    pop af                                        ; $5706: $F1
    ret                                           ; $5707: $C9


    push bc                                       ; $5708: $C5
    sbc b                                         ; $5709: $98
    ret z                                         ; $570A: $C8

    sbc b                                         ; $570B: $98
    res 3, b                                      ; $570C: $CB $98
    adc $98                                       ; $570E: $CE $98
    pop de                                        ; $5710: $D1
    sbc b                                         ; $5711: $98
    ld h, b                                       ; $5712: $60
    sbc c                                         ; $5713: $99

jr_029_5714:
    ld h, e                                       ; $5714: $63
    sbc c                                         ; $5715: $99
    ld h, [hl]                                    ; $5716: $66
    sbc c                                         ; $5717: $99
    ld l, c                                       ; $5718: $69
    sbc c                                         ; $5719: $99
    ld l, h                                       ; $571A: $6C
    sbc c                                         ; $571B: $99
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    ld bc, $0200                                  ; $571F: $01 $00 $02
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    ld bc, $0300                                  ; $5725: $01 $00 $03
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    ld bc, $0400                                  ; $572B: $01 $00 $04
    nop                                           ; $572E: $00
    ld bc, $0302                                  ; $572F: $01 $02 $03
    inc b                                         ; $5732: $04
    dec b                                         ; $5733: $05
    ld b, $07                                     ; $5734: $06 $07
    ld [$4B09], sp                                ; $5736: $08 $09 $4B
    ld b, b                                       ; $5739: $40
    halt                                          ; $573A: $76
    nop                                           ; $573B: $00
    rlca                                          ; $573C: $07
    rlca                                          ; $573D: $07

jr_029_573E:
    nop                                           ; $573E: $00
    db $FC                                        ; $573F: $FC
    nop                                           ; $5740: $00
    ld [hl+], a                                   ; $5741: $22
    db $FD                                        ; $5742: $FD
    sub l                                         ; $5743: $95
    ld [$180C], sp                                ; $5744: $08 $0C $18
    db $10                                        ; $5747: $10
    ld [hl], b                                    ; $5748: $70
    ld a, h                                       ; $5749: $7C
    ld h, e                                       ; $574A: $63
    nop                                           ; $574B: $00
    ld l, d                                       ; $574C: $6A
    rst RST_08                                    ; $574D: $CF
    nop                                           ; $574E: $00
    jr nz, jr_029_5714                            ; $574F: $20 $C3

    ld [$21C7], sp                                ; $5751: $08 $C7 $21
    db $DB                                        ; $5754: $DB
    xor a                                         ; $5755: $AF
    ld a, h                                       ; $5756: $7C
    ld a, e                                       ; $5757: $7B
    nop                                           ; $5758: $00
    sbc b                                         ; $5759: $98
    nop                                           ; $575A: $00
    jr nz, jr_029_573E                            ; $575B: $20 $E1

    ld [$11EE], sp                                ; $575D: $08 $EE $11
    ld b, b                                       ; $5760: $40
    cp $6F                                        ; $5761: $FE $6F
    nop                                           ; $5763: $00
    ld hl, $6B08                                  ; $5764: $21 $08 $6B
    ld d, l                                       ; $5767: $55
    rl b                                          ; $5768: $CB $10
    adc e                                         ; $576A: $8B
    ld a, h                                       ; $576B: $7C
    ld d, e                                       ; $576C: $53
    nop                                           ; $576D: $00

jr_029_576E:
    add $00                                       ; $576E: $C6 $00
    xor [hl]                                      ; $5770: $AE
    jr nz, jr_029_5791                            ; $5771: $20 $1E

    ld [$0046], sp                                ; $5773: $08 $46 $00
    ld de, $0A6A                                  ; $5776: $11 $6A $0A
    xor l                                         ; $5779: $AD
    nop                                           ; $577A: $00
    ld l, d                                       ; $577B: $6A
    nop                                           ; $577C: $00
    db $FC                                        ; $577D: $FC
    nop                                           ; $577E: $00
    jr nc, jr_029_57ED                            ; $577F: $30 $6C

    add hl, bc                                    ; $5781: $09
    xor [hl]                                      ; $5782: $AE
    ld de, $FCCC                                  ; $5783: $11 $CC $FC
    reti                                          ; $5786: $D9


    ld [bc], a                                    ; $5787: $02
    ld hl, $DD09                                  ; $5788: $21 $09 $DD
    xor d                                         ; $578B: $AA
    db $10                                        ; $578C: $10
    db $DB                                        ; $578D: $DB
    ld l, d                                       ; $578E: $6A
    inc d                                         ; $578F: $14
    nop                                           ; $5790: $00

jr_029_5791:
    or l                                          ; $5791: $B5
    nop                                           ; $5792: $00
    or c                                          ; $5793: $B1
    push af                                       ; $5794: $F5
    nop                                           ; $5795: $00
    jr nc, jr_029_57A2                            ; $5796: $30 $0A

    ld de, $FC19                                  ; $5798: $11 $19 $FC
    adc a                                         ; $579B: $8F
    nop                                           ; $579C: $00
    ld l, e                                       ; $579D: $6B
    adc h                                         ; $579E: $8C
    nop                                           ; $579F: $00
    jr nz, jr_029_576E                            ; $57A0: $20 $CC

jr_029_57A2:
    ld [$21EC], sp                                ; $57A2: $08 $EC $21
    ld b, b                                       ; $57A5: $40
    xor [hl]                                      ; $57A6: $AE
    ld a, h                                       ; $57A7: $7C
    db $DB                                        ; $57A8: $DB
    nop                                           ; $57A9: $00
    jp $2000                                      ; $57AA: $C3 $00 $20


    ld a, [bc]                                    ; $57AD: $0A
    rst RST_00                                    ; $57AE: $C7
    xor e                                         ; $57AF: $AB
    db $10                                        ; $57B0: $10
    sbc $7C                                       ; $57B1: $DE $7C
    db $FC                                        ; $57B3: $FC
    nop                                           ; $57B4: $00
    inc c                                         ; $57B5: $0C
    nop                                           ; $57B6: $00
    jr nz, @+$4C                                  ; $57B7: $20 $4A

    add hl, de                                    ; $57B9: $19
    ld [$7830], sp                                ; $57BA: $08 $30 $78
    db $10                                        ; $57BD: $10
    call $F07C                                    ; $57BE: $CD $7C $F0
    cp c                                          ; $57C1: $B9
    nop                                           ; $57C2: $00
    sub b                                         ; $57C3: $90
    nop                                           ; $57C4: $00
    ld hl, $3708                                  ; $57C5: $21 $08 $37
    ld h, b                                       ; $57C8: $60

jr_029_57C9:
    db $10                                        ; $57C9: $10
    ld l, d                                       ; $57CA: $6A
    ret nz                                        ; $57CB: $C0

    rst RST_38                                    ; $57CC: $FF
    ld sp, hl                                     ; $57CD: $F9
    ld l, l                                       ; $57CE: $6D
    ld [$7969], sp                                ; $57CF: $08 $69 $79
    pop bc                                        ; $57D2: $C1
    or l                                          ; $57D3: $B5
    ld a, h                                       ; $57D4: $7C
    inc bc                                        ; $57D5: $03
    ld [bc], a                                    ; $57D6: $02
    jr nz, @+$5D                                  ; $57D7: $20 $5B

    add hl, bc                                    ; $57D9: $09
    inc sp                                        ; $57DA: $33
    db $10                                        ; $57DB: $10
    ld d, l                                       ; $57DC: $55
    and $6A                                       ; $57DD: $E6 $6A
    inc e                                         ; $57DF: $1C
    nop                                           ; $57E0: $00
    ld [hl], h                                    ; $57E1: $74
    nop                                           ; $57E2: $00
    ld a, h                                       ; $57E3: $7C
    nop                                           ; $57E4: $00
    push de                                       ; $57E5: $D5
    jr nc, jr_029_57C9                            ; $57E6: $30 $E1

    ld l, a                                       ; $57E8: $6F
    ld de, $FC30                                  ; $57E9: $11 $30 $FC
    rrca                                          ; $57EC: $0F

jr_029_57ED:
    nop                                           ; $57ED: $00
    and l                                         ; $57EE: $A5
    ld [hl+], a                                   ; $57EF: $22
    ld bc, $0308                                  ; $57F0: $01 $08 $03
    rlca                                          ; $57F3: $07
    db $10                                        ; $57F4: $10
    inc c                                         ; $57F5: $0C
    ld a, h                                       ; $57F6: $7C
    ld e, d                                       ; $57F7: $5A
    rst RST_00                                    ; $57F8: $C7

jr_029_57F9:
    nop                                           ; $57F9: $00
    call nz, $2000                                ; $57FA: $C4 $00 $20
    adc h                                         ; $57FD: $8C
    add hl, sp                                    ; $57FE: $39
    add b                                         ; $57FF: $80
    xor a                                         ; $5800: $AF
    ld [$7CCF], sp                                ; $5801: $08 $CF $7C
    ret nz                                        ; $5804: $C0

    ld [bc], a                                    ; $5805: $02
    ld hl, $1161                                  ; $5806: $21 $61 $11
    db $DD                                        ; $5809: $DD
    adc c                                         ; $580A: $89
    inc bc                                        ; $580B: $03
    dec de                                        ; $580C: $1B
    ld [bc], a                                    ; $580D: $02
    ld hl, $9B08                                  ; $580E: $21 $08 $9B
    ld de, $315E                                  ; $5811: $11 $5E $31
    ld l, d                                       ; $5814: $6A

jr_029_5815:
    and b                                         ; $5815: $A0
    ld [bc], a                                    ; $5816: $02
    or h                                          ; $5817: $B4
    ld [bc], a                                    ; $5818: $02
    db $FD                                        ; $5819: $FD
    ld b, $B5                                     ; $581A: $06 $B5
    nop                                           ; $581C: $00
    ld h, [hl]                                    ; $581D: $66
    nop                                           ; $581E: $00
    jr nz, jr_029_585D                            ; $581F: $20 $3C

    ld [$1118], sp                                ; $5821: $08 $18 $11
    ld d, [hl]                                    ; $5824: $56
    and $7C                                       ; $5825: $E6 $7C
    db $FD                                        ; $5827: $FD
    nop                                           ; $5828: $00
    dec c                                         ; $5829: $0D
    nop                                           ; $582A: $00
    jr nz, jr_029_5846                            ; $582B: $20 $19

    sub l                                         ; $582D: $95
    ld [$7931], sp                                ; $582E: $08 $31 $79
    db $10                                        ; $5831: $10
    call $807C                                    ; $5832: $CD $7C $80
    ld [bc], a                                    ; $5835: $02
    xor [hl]                                      ; $5836: $AE
    jr nz, jr_029_57F9                            ; $5837: $20 $C0

    ld [$21EF], sp                                ; $5839: $08 $EF $21
    add hl, bc                                    ; $583C: $09
    inc bc                                        ; $583D: $03
    jr jr_029_5815                                ; $583E: $18 $D5

    ld [bc], a                                    ; $5840: $02
    jr nz, jr_029_5879                            ; $5841: $20 $36

    add hl, bc                                    ; $5843: $09
    ld l, a                                       ; $5844: $6F
    db $10                                        ; $5845: $10

jr_029_5846:
    ld a, e                                       ; $5846: $7B
    ld a, h                                       ; $5847: $7C
    ld e, d                                       ; $5848: $5A
    rra                                           ; $5849: $1F
    nop                                           ; $584A: $00
    ld bc, $2000                                  ; $584B: $01 $00 $20
    dec c                                         ; $584E: $0D
    add hl, bc                                    ; $584F: $09
    inc c                                         ; $5850: $0C
    db $DD                                        ; $5851: $DD
    ret                                           ; $5852: $C9


    ld a, h                                       ; $5853: $7C
    or [hl]                                       ; $5854: $B6
    ld [bc], a                                    ; $5855: $02
    ld hl, $37F9                                  ; $5856: $21 $F9 $37
    ld de, $7CB6                                  ; $5859: $11 $B6 $7C
    ld a, h                                       ; $585C: $7C

jr_029_585D:
    nop                                           ; $585D: $00
    ld [hl+], a                                   ; $585E: $22
    cp $E1                                        ; $585F: $FE $E1
    jp hl                                         ; $5861: $E9


    ld [hl], b                                    ; $5862: $70
    or l                                          ; $5863: $B5
    ld a, h                                       ; $5864: $7C
    di                                            ; $5865: $F3
    nop                                           ; $5866: $00
    ld d, d                                       ; $5867: $52
    ldh a, [$FF79]                                ; $5868: $F0 $79
    pop af                                        ; $586A: $F1
    db $10                                        ; $586B: $10
    halt                                          ; $586C: $76
    dec de                                        ; $586D: $1B
    ld a, h                                       ; $586E: $7C
    ld d, b                                       ; $586F: $50
    nop                                           ; $5870: $00
    jr nc, jr_029_5873                            ; $5871: $30 $00

jr_029_5873:
    jr nz, jr_029_58D5                            ; $5873: $20 $60

    sbc l                                         ; $5875: $9D
    ld [$E0C0], sp                                ; $5876: $08 $C0 $E0

jr_029_5879:
    db $10                                        ; $5879: $10
    ld sp, $0703                                  ; $587A: $31 $03 $07
    nop                                           ; $587D: $00

jr_029_587E:
    ld l, a                                       ; $587E: $6F
    ld bc, $2000                                  ; $587F: $01 $00 $20
    rrca                                          ; $5882: $0F
    ld [$4022], sp                                ; $5883: $08 $22 $40
    ld a, h                                       ; $5886: $7C
    jp c, Jump_000_00B8                           ; $5887: $DA $B8 $00

    add b                                         ; $588A: $80
    nop                                           ; $588B: $00
    jr nz, jr_029_587E                            ; $588C: $20 $F0

    ld [$D687], sp                                ; $588E: $08 $87 $D6
    ld hl, $0305                                  ; $5891: $21 $05 $03
    nop                                           ; $5894: $00
    ld b, $00                                     ; $5895: $06 $00
    jr nz, @+$0E                                  ; $5897: $20 $0C

    xor d                                         ; $5899: $AA
    ld [$F9C3], sp                                ; $589A: $08 $C3 $F9
    rrca                                          ; $589D: $0F
    ld a, h                                       ; $589E: $7C
    rst RST_20                                    ; $589F: $E7
    nop                                           ; $58A0: $00
    ld h, b                                       ; $58A1: $60
    rst RST_20                                    ; $58A2: $E7
    nop                                           ; $58A3: $00
    jr nz, jr_029_58AF                            ; $58A4: $20 $09

    pop bc                                        ; $58A6: $C1
    add e                                         ; $58A7: $83
    db $10                                        ; $58A8: $10
    or c                                          ; $58A9: $B1
    inc bc                                        ; $58AA: $03
    ld l, e                                       ; $58AB: $6B
    ldh [rP1], a                                  ; $58AC: $E0 $00
    ld a, d                                       ; $58AE: $7A

jr_029_58AF:
    ret nz                                        ; $58AF: $C0

    ld [$1180], sp                                ; $58B0: $08 $80 $11
    ld sp, $01AB                                  ; $58B3: $31 $AB $01
    dec b                                         ; $58B6: $05
    nop                                           ; $58B7: $00
    dec [hl]                                      ; $58B8: $35
    nop                                           ; $58B9: $00
    ld a, [hl]                                    ; $58BA: $7E
    nop                                           ; $58BB: $00
    jr nc, jr_029_5928                            ; $58BC: $30 $6A

jr_029_58BE:
    ld [hl], $09                                  ; $58BE: $36 $09
    ld de, $FC66                                  ; $58C0: $11 $66 $FC
    ld b, $00                                     ; $58C3: $06 $00
    inc c                                         ; $58C5: $0C
    db $D3                                        ; $58C6: $D3
    nop                                           ; $58C7: $00
    jr nz, jr_029_5902                            ; $58C8: $20 $38

    ld [$18F8], sp                                ; $58CA: $08 $F8 $18
    db $10                                        ; $58CD: $10
    add hl, bc                                    ; $58CE: $09
    xor l                                         ; $58CF: $AD
    inc bc                                        ; $58D0: $03
    ret c                                         ; $58D1: $D8

    nop                                           ; $58D2: $00
    reti                                          ; $58D3: $D9


    nop                                           ; $58D4: $00

jr_029_58D5:
    jr nz, @-$23                                  ; $58D5: $20 $DB

    ld sp, $DC6A                                  ; $58D7: $31 $6A $DC
    ld [hl+], a                                   ; $58DA: $22
    ld bc, $000A                                  ; $58DB: $01 $0A $00
    ld a, [$9800]                                 ; $58DE: $FA $00 $98
    rlc b                                         ; $58E1: $CB $00
    jp nc, $60F3                                  ; $58E3: $D2 $F3 $60

    db $10                                        ; $58E6: $10
    ret nz                                        ; $58E7: $C0

    db $FC                                        ; $58E8: $FC
    ld d, b                                       ; $58E9: $50
    rst RST_10                                    ; $58EA: $D7
    ld [bc], a                                    ; $58EB: $02
    jr nz, jr_029_590A                            ; $58EC: $20 $1C

    ld [$21DE], sp                                ; $58EE: $08 $DE $21
    add hl, bc                                    ; $58F1: $09
    inc bc                                        ; $58F2: $03
    ld e, h                                       ; $58F3: $5C
    ld l, h                                       ; $58F4: $6C
    nop                                           ; $58F5: $00
    cp $00                                        ; $58F6: $FE $00
    ld hl, $6D08                                  ; $58F8: $21 $08 $6D
    inc c                                         ; $58FB: $0C
    xor e                                         ; $58FC: $AB
    db $10                                        ; $58FD: $10
    jr c, jr_029_597C                             ; $58FE: $38 $7C

    dec c                                         ; $5900: $0D
    nop                                           ; $5901: $00

jr_029_5902:
    add hl, de                                    ; $5902: $19
    nop                                           ; $5903: $00
    jr nz, jr_029_5950                            ; $5904: $20 $4A

    ld [hl], c                                    ; $5906: $71
    ld [$31F1], sp                                ; $5907: $08 $F1 $31

jr_029_590A:
    db $10                                        ; $590A: $10
    inc sp                                        ; $590B: $33
    ld a, h                                       ; $590C: $7C
    rrca                                          ; $590D: $0F
    push af                                       ; $590E: $F5
    nop                                           ; $590F: $00
    inc [hl]                                      ; $5910: $34
    ld c, e                                       ; $5911: $4B
    inc l                                         ; $5912: $2C
    adc $00                                       ; $5913: $CE $00
    ret nz                                        ; $5915: $C0

    nop                                           ; $5916: $00

jr_029_5917:
    ld [$0A20], a                                 ; $5917: $EA $20 $0A
    ld de, $7CCF                                  ; $591A: $11 $CF $7C
    jp $DF00                                      ; $591D: $C3 $00 $DF


    db $ED                                        ; $5920: $ED
    nop                                           ; $5921: $00
    ld hl, $DB08                                  ; $5922: $21 $08 $DB
    nop                                           ; $5925: $00
    db $10                                        ; $5926: $10
    sbc e                                         ; $5927: $9B

jr_029_5928:
    ld l, d                                       ; $5928: $6A
    ld e, d                                       ; $5929: $5A
    ld d, b                                       ; $592A: $50
    ld [bc], a                                    ; $592B: $02
    ldh [rP1], a                                  ; $592C: $E0 $00
    jr nc, jr_029_5933                            ; $592E: $30 $03

    ld [$756F], sp                                ; $5930: $08 $6F $75

jr_029_5933:
    ld h, c                                       ; $5933: $61
    db $10                                        ; $5934: $10
    add hl, bc                                    ; $5935: $09
    inc bc                                        ; $5936: $03
    ld h, b                                       ; $5937: $60
    nop                                           ; $5938: $00
    ret nz                                        ; $5939: $C0

    nop                                           ; $593A: $00
    cp [hl]                                       ; $593B: $BE
    jr nz, jr_029_58BE                            ; $593C: $20 $80

    add hl, bc                                    ; $593E: $09
    ld [de], a                                    ; $593F: $12
    ld a, h                                       ; $5940: $7C
    ret nc                                        ; $5941: $D0

    nop                                           ; $5942: $00
    inc sp                                        ; $5943: $33
    push de                                       ; $5944: $D5
    nop                                           ; $5945: $00
    jr nz, @+$20                                  ; $5946: $20 $1E

    ld [$110C], sp                                ; $5948: $08 $0C $11
    ld [hl], e                                    ; $594B: $73
    ld l, d                                       ; $594C: $6A
    ld d, [hl]                                    ; $594D: $56
    ld [bc], a                                    ; $594E: $02
    nop                                           ; $594F: $00

jr_029_5950:
    ld a, [de]                                    ; $5950: $1A
    nop                                           ; $5951: $00
    ld a, a                                       ; $5952: $7F
    nop                                           ; $5953: $00
    jr nc, @+$1D                                  ; $5954: $30 $1B

    push af                                       ; $5956: $F5
    add hl, bc                                    ; $5957: $09
    ld de, $01B1                                  ; $5958: $11 $B1 $01
    add b                                         ; $595B: $80
    nop                                           ; $595C: $00
    sbc b                                         ; $595D: $98
    nop                                           ; $595E: $00
    ld l, e                                       ; $595F: $6B
    jr jr_029_5962                                ; $5960: $18 $00

jr_029_5962:
    jr nc, @+$1E                                  ; $5962: $30 $1C

    ld [$211F], sp                                ; $5964: $08 $1F $21
    add hl, bc                                    ; $5967: $09
    xor a                                         ; $5968: $AF
    inc bc                                        ; $5969: $03
    ld a, [hl]                                    ; $596A: $7E
    nop                                           ; $596B: $00
    ld h, [hl]                                    ; $596C: $66
    nop                                           ; $596D: $00
    jr nz, jr_029_597A                            ; $596E: $20 $0A

    ld de, $40D7                                  ; $5970: $11 $D7 $40
    ld a, h                                       ; $5973: $7C
    db $EC                                        ; $5974: $EC
    nop                                           ; $5975: $00
    inc c                                         ; $5976: $0C
    nop                                           ; $5977: $00
    jr nz, jr_029_5984                            ; $5978: $20 $0A

jr_029_597A:
    ld d, l                                       ; $597A: $55
    inc e                                         ; $597B: $1C

jr_029_597C:
    db $10                                        ; $597C: $10
    ld hl, sp+$6A                                 ; $597D: $F8 $6A
    ld bc, $1F00                                  ; $597F: $01 $00 $1F
    nop                                           ; $5982: $00
    xor a                                         ; $5983: $AF

jr_029_5984:
    ld [hl-], a                                   ; $5984: $32
    ccf                                           ; $5985: $3F
    ld [$0006], sp                                ; $5986: $08 $06 $00
    db $10                                        ; $5989: $10
    adc c                                         ; $598A: $89
    ld bc, $405D                                  ; $598B: $01 $5D $40
    nop                                           ; $598E: $00
    ld e, a                                       ; $598F: $5F
    nop                                           ; $5990: $00
    sbc c                                         ; $5991: $99
    jr nc, jr_029_5917                            ; $5992: $30 $83

    ld a, c                                       ; $5994: $79
    ld e, e                                       ; $5995: $5B
    rrca                                          ; $5996: $0F
    db $10                                        ; $5997: $10
    add hl, de                                    ; $5998: $19
    ld a, d                                       ; $5999: $7A
    ld bc, $0298                                  ; $599A: $01 $98 $02
    jp nc, Jump_000_1F3A                          ; $599D: $D2 $3A $1F

    jr jr_029_59EB                                ; $59A0: $18 $49

    ld a, h                                       ; $59A2: $7C
    rlca                                          ; $59A3: $07
    rlca                                          ; $59A4: $07
    nop                                           ; $59A5: $00
    inc bc                                        ; $59A6: $03
    cp e                                          ; $59A7: $BB
    ld [$0801], sp                                ; $59A8: $08 $01 $08
    ld l, a                                       ; $59AB: $6F
    ld bc, $04FF                                  ; $59AC: $01 $FF $04
    ld l, a                                       ; $59AF: $6F
    adc [hl]                                      ; $59B0: $8E
    ld bc, $E0C0                                  ; $59B1: $01 $C0 $E0
    add b                                         ; $59B4: $80
    ld [$0920], sp                                ; $59B5: $08 $20 $09
    rlca                                          ; $59B8: $07
    xor e                                         ; $59B9: $AB
    rrca                                          ; $59BA: $0F
    ld hl, sp-$28                                 ; $59BB: $F8 $D8
    db $FC                                        ; $59BD: $FC
    ld [$F9FE], sp                                ; $59BE: $08 $FE $F9
    sbc e                                         ; $59C1: $9B
    db $F4                                        ; $59C2: $F4
    rrca                                          ; $59C3: $0F
    rst RST_38                                    ; $59C4: $FF
    rrca                                          ; $59C5: $0F
    ld a, [bc]                                    ; $59C6: $0A
    rst RST_38                                    ; $59C7: $FF
    db $10                                        ; $59C8: $10
    ld a, a                                       ; $59C9: $7F
    add b                                         ; $59CA: $80
    ccf                                           ; $59CB: $3F
    ccf                                           ; $59CC: $3F
    ret nz                                        ; $59CD: $C0

    rst RST_28                                    ; $59CE: $EF
    add hl, bc                                    ; $59CF: $09
    ld a, c                                       ; $59D0: $79
    dec bc                                        ; $59D1: $0B
    rlca                                          ; $59D2: $07
    ld [bc], a                                    ; $59D3: $02
    sub $88                                       ; $59D4: $D6 $88
    ldh a, [$FF60]                                ; $59D6: $F0 $60
    ldh a, [rNR41]                                ; $59D8: $F0 $20
    ld h, a                                       ; $59DA: $67
    ld bc, $0C01                                  ; $59DB: $01 $01 $0C
    ld b, $03                                     ; $59DE: $06 $03
    inc b                                         ; $59E0: $04
    rlca                                          ; $59E1: $07
    ld h, a                                       ; $59E2: $67
    ld [bc], a                                    ; $59E3: $02
    nop                                           ; $59E4: $00
    nop                                           ; $59E5: $00
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    nop                                           ; $59E8: $00
    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00

jr_029_59EB:
    scf                                           ; $59EB: $37
    nop                                           ; $59EC: $00
    jr c, jr_029_59EF                             ; $59ED: $38 $00

jr_029_59EF:
    jr c, jr_029_59F1                             ; $59EF: $38 $00

jr_029_59F1:
    jr c, jr_029_59F3                             ; $59F1: $38 $00

jr_029_59F3:
    add hl, sp                                    ; $59F3: $39
    nop                                           ; $59F4: $00
    scf                                           ; $59F5: $37
    nop                                           ; $59F6: $00
    jr c, jr_029_59F9                             ; $59F7: $38 $00

jr_029_59F9:
    jr c, jr_029_59FB                             ; $59F9: $38 $00

jr_029_59FB:
    ld a, [hl-]                                   ; $59FB: $3A
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    dec sp                                        ; $5A03: $3B
    nop                                           ; $5A04: $00
    inc a                                         ; $5A05: $3C
    nop                                           ; $5A06: $00
    nop                                           ; $5A07: $00
    nop                                           ; $5A08: $00
    nop                                           ; $5A09: $00
    nop                                           ; $5A0A: $00
    nop                                           ; $5A0B: $00
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    nop                                           ; $5A0E: $00
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00
    nop                                           ; $5A11: $00
    nop                                           ; $5A12: $00
    dec sp                                        ; $5A13: $3B
    nop                                           ; $5A14: $00
    inc a                                         ; $5A15: $3C
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00
    nop                                           ; $5A22: $00
    dec sp                                        ; $5A23: $3B
    nop                                           ; $5A24: $00
    inc a                                         ; $5A25: $3C
    nop                                           ; $5A26: $00
    nop                                           ; $5A27: $00
    nop                                           ; $5A28: $00
    nop                                           ; $5A29: $00
    nop                                           ; $5A2A: $00
    nop                                           ; $5A2B: $00
    nop                                           ; $5A2C: $00
    nop                                           ; $5A2D: $00
    nop                                           ; $5A2E: $00
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    nop                                           ; $5A32: $00
    dec sp                                        ; $5A33: $3B
    nop                                           ; $5A34: $00
    inc a                                         ; $5A35: $3C
    nop                                           ; $5A36: $00
    nop                                           ; $5A37: $00
    nop                                           ; $5A38: $00
    nop                                           ; $5A39: $00
    nop                                           ; $5A3A: $00
    nop                                           ; $5A3B: $00
    nop                                           ; $5A3C: $00
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    nop                                           ; $5A42: $00
    dec sp                                        ; $5A43: $3B
    nop                                           ; $5A44: $00
    inc a                                         ; $5A45: $3C
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    nop                                           ; $5A4F: $00
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    nop                                           ; $5A52: $00
    dec sp                                        ; $5A53: $3B
    nop                                           ; $5A54: $00
    inc a                                         ; $5A55: $3C
    nop                                           ; $5A56: $00
    nop                                           ; $5A57: $00
    nop                                           ; $5A58: $00
    nop                                           ; $5A59: $00
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    dec sp                                        ; $5A63: $3B
    nop                                           ; $5A64: $00
    inc a                                         ; $5A65: $3C
    nop                                           ; $5A66: $00
    nop                                           ; $5A67: $00
    nop                                           ; $5A68: $00
    nop                                           ; $5A69: $00
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    dec sp                                        ; $5A73: $3B
    nop                                           ; $5A74: $00
    inc a                                         ; $5A75: $3C
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    nop                                           ; $5A7A: $00
    nop                                           ; $5A7B: $00
    nop                                           ; $5A7C: $00
    nop                                           ; $5A7D: $00
    nop                                           ; $5A7E: $00
    nop                                           ; $5A7F: $00
    nop                                           ; $5A80: $00
    nop                                           ; $5A81: $00
    nop                                           ; $5A82: $00
    dec sp                                        ; $5A83: $3B
    nop                                           ; $5A84: $00
    inc a                                         ; $5A85: $3C
    nop                                           ; $5A86: $00
    nop                                           ; $5A87: $00
    nop                                           ; $5A88: $00
    nop                                           ; $5A89: $00
    nop                                           ; $5A8A: $00
    nop                                           ; $5A8B: $00
    nop                                           ; $5A8C: $00
    nop                                           ; $5A8D: $00
    nop                                           ; $5A8E: $00
    nop                                           ; $5A8F: $00
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    dec sp                                        ; $5A93: $3B
    nop                                           ; $5A94: $00
    inc a                                         ; $5A95: $3C
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    nop                                           ; $5A98: $00
    nop                                           ; $5A99: $00
    nop                                           ; $5A9A: $00
    nop                                           ; $5A9B: $00
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    nop                                           ; $5A9E: $00
    nop                                           ; $5A9F: $00
    nop                                           ; $5AA0: $00
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00
    dec sp                                        ; $5AA3: $3B
    nop                                           ; $5AA4: $00
    inc a                                         ; $5AA5: $3C
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    nop                                           ; $5AAA: $00
    nop                                           ; $5AAB: $00
    nop                                           ; $5AAC: $00
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    nop                                           ; $5AAF: $00
    nop                                           ; $5AB0: $00
    nop                                           ; $5AB1: $00
    nop                                           ; $5AB2: $00
    dec sp                                        ; $5AB3: $3B
    nop                                           ; $5AB4: $00
    inc a                                         ; $5AB5: $3C
    nop                                           ; $5AB6: $00
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    nop                                           ; $5AC0: $00
    nop                                           ; $5AC1: $00
    nop                                           ; $5AC2: $00
    dec sp                                        ; $5AC3: $3B
    nop                                           ; $5AC4: $00
    inc a                                         ; $5AC5: $3C
    nop                                           ; $5AC6: $00
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    nop                                           ; $5AC9: $00
    nop                                           ; $5ACA: $00
    nop                                           ; $5ACB: $00
    nop                                           ; $5ACC: $00
    nop                                           ; $5ACD: $00
    nop                                           ; $5ACE: $00
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    dec sp                                        ; $5AD3: $3B
    nop                                           ; $5AD4: $00
    inc a                                         ; $5AD5: $3C
    nop                                           ; $5AD6: $00
    nop                                           ; $5AD7: $00
    nop                                           ; $5AD8: $00
    nop                                           ; $5AD9: $00
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    nop                                           ; $5ADC: $00
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    dec sp                                        ; $5AE3: $3B
    nop                                           ; $5AE4: $00
    inc a                                         ; $5AE5: $3C
    nop                                           ; $5AE6: $00
    nop                                           ; $5AE7: $00
    nop                                           ; $5AE8: $00
    nop                                           ; $5AE9: $00
    nop                                           ; $5AEA: $00
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00
    dec a                                         ; $5AED: $3D
    nop                                           ; $5AEE: $00
    ld a, $00                                     ; $5AEF: $3E $00
    ld a, $00                                     ; $5AF1: $3E $00
    ccf                                           ; $5AF3: $3F
    nop                                           ; $5AF4: $00
    ld b, b                                       ; $5AF5: $40
    nop                                           ; $5AF6: $00
    ld a, $00                                     ; $5AF7: $3E $00
    ld a, $00                                     ; $5AF9: $3E $00
    ld a, $00                                     ; $5AFB: $3E $00
    ccf                                           ; $5AFD: $3F
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    rla                                           ; $5B04: $17
    ld b, b                                       ; $5B05: $40
    dec d                                         ; $5B06: $15
    add b                                         ; $5B07: $80
    rst RST_38                                    ; $5B08: $FF
    ld b, b                                       ; $5B09: $40
    ld [$0820], sp                                ; $5B0A: $08 $20 $08
    db $10                                        ; $5B0D: $10
    ld [$0855], sp                                ; $5B0E: $08 $55 $08
    ld [$0804], sp                                ; $5B11: $08 $04 $08
    ld [bc], a                                    ; $5B14: $02
    ld [$0801], sp                                ; $5B15: $08 $01 $08
    ld [hl], l                                    ; $5B18: $75
    nop                                           ; $5B19: $00
    rrca                                          ; $5B1A: $0F
    rrca                                          ; $5B1B: $0F
    ld bc, $0880                                  ; $5B1C: $01 $80 $08
    ret nz                                        ; $5B1F: $C0

    ld [$E055], sp                                ; $5B20: $08 $55 $E0
    ld [$08F0], sp                                ; $5B23: $08 $F0 $08
    ld hl, sp+$08                                 ; $5B26: $F8 $08
    db $FC                                        ; $5B28: $FC
    ld [$FE7C], sp                                ; $5B29: $08 $7C $FE
    cp a                                          ; $5B2C: $BF
    rrca                                          ; $5B2D: $0F
    rrca                                          ; $5B2E: $0F
    rrca                                          ; $5B2F: $0F
    add hl, bc                                    ; $5B30: $09
    add b                                         ; $5B31: $80
    ld a, a                                       ; $5B32: $7F
    nop                                           ; $5B33: $00
    ret nz                                        ; $5B34: $C0

    ccf                                           ; $5B35: $3F
    ldh [$FF1F], a                                ; $5B36: $E0 $1F
    ldh a, [rIF]                                  ; $5B38: $F0 $0F
    ld hl, sp+$07                                 ; $5B3A: $F8 $07
    rrca                                          ; $5B3C: $0F
    db $FC                                        ; $5B3D: $FC
    inc bc                                        ; $5B3E: $03
    cp $01                                        ; $5B3F: $FE $01
    or a                                          ; $5B41: $B7
    rrca                                          ; $5B42: $0F
    add hl, bc                                    ; $5B43: $09
    ldh a, [rIE]                                  ; $5B44: $F0 $FF
    ld [$08F0], sp                                ; $5B46: $08 $F0 $08
    ldh a, [$FF08]                                ; $5B49: $F0 $08
    ldh a, [$FF08]                                ; $5B4B: $F0 $08
    ldh a, [$FFFA]                                ; $5B4D: $F0 $FA
    ld [$08F0], sp                                ; $5B4F: $08 $F0 $08
    ldh a, [$FF7A]                                ; $5B52: $F0 $7A
    cp $20                                        ; $5B54: $FE $20
    db $FC                                        ; $5B56: $FC
    xor d                                         ; $5B57: $AA
    ld b, b                                       ; $5B58: $40
    ld hl, sp+$60                                 ; $5B59: $F8 $60
    ldh a, [$FF80]                                ; $5B5B: $F0 $80
    ldh [$FFA0], a                                ; $5B5D: $E0 $A0
    ret nz                                        ; $5B5F: $C0

    cp d                                          ; $5B60: $BA
    ret nz                                        ; $5B61: $C0

    add b                                         ; $5B62: $80
    ldh [$FF08], a                                ; $5B63: $E0 $08
    add b                                         ; $5B65: $80
    ld b, b                                       ; $5B66: $40
    ld [$AA20], sp                                ; $5B67: $08 $20 $AA
    ld [$0810], sp                                ; $5B6A: $08 $10 $08
    ld [$0408], sp                                ; $5B6D: $08 $08 $04
    ld [$FF02], sp                                ; $5B70: $08 $02 $FF
    ld [$F1D0], sp                                ; $5B73: $08 $D0 $F1
    ld bc, $0890                                  ; $5B76: $01 $90 $08
    ret nz                                        ; $5B79: $C0

    ld [$E0D5], sp                                ; $5B7A: $08 $D5 $E0
    ld [$08F0], sp                                ; $5B7D: $08 $F0 $08
    ld hl, sp+$08                                 ; $5B80: $F8 $08
    db $FC                                        ; $5B82: $FC
    ld [$FE6A], sp                                ; $5B83: $08 $6A $FE
    adc b                                         ; $5B86: $88
    ld [$2803], sp                                ; $5B87: $08 $03 $28
    rlca                                          ; $5B8A: $07
    ld c, b                                       ; $5B8B: $48
    rrca                                          ; $5B8C: $0F
    xor e                                         ; $5B8D: $AB
    ld l, b                                       ; $5B8E: $68
    rra                                           ; $5B8F: $1F
    adc b                                         ; $5B90: $88
    ccf                                           ; $5B91: $3F
    xor b                                         ; $5B92: $A8
    ld a, a                                       ; $5B93: $7F
    ret z                                         ; $5B94: $C8

    ldh a, [c]                                    ; $5B95: $F2
    rst RST_38                                    ; $5B96: $FF
    db $10                                        ; $5B97: $10
    adc a                                         ; $5B98: $8F
    adc a                                         ; $5B99: $8F
    jr jr_029_5BA4                                ; $5B9A: $18 $08

    jr c, @+$0A                                   ; $5B9C: $38 $08

    ld e, b                                       ; $5B9E: $58
    rst RST_38                                    ; $5B9F: $FF
    ld [$0878], sp                                ; $5BA0: $08 $78 $08
    sbc b                                         ; $5BA3: $98

jr_029_5BA4:
    ld [$08B8], sp                                ; $5BA4: $08 $B8 $08
    ret c                                         ; $5BA7: $D8

    rst RST_38                                    ; $5BA8: $FF
    ld a, [$8090]                                 ; $5BA9: $FA $90 $80
    or b                                          ; $5BAC: $B0
    add b                                         ; $5BAD: $80
    ret nc                                        ; $5BAE: $D0

    add b                                         ; $5BAF: $80
    ldh a, [$FFAB]                                ; $5BB0: $F0 $AB
    add b                                         ; $5BB2: $80
    ld hl, sp-$80                                 ; $5BB3: $F8 $80
    db $FC                                        ; $5BB5: $FC
    add b                                         ; $5BB6: $80
    cp $80                                        ; $5BB7: $FE $80
    ld [hl], b                                    ; $5BB9: $70
    xor d                                         ; $5BBA: $AA
    ld [$28FD], sp                                ; $5BBB: $08 $FD $28
    ld sp, hl                                     ; $5BBE: $F9
    ld c, b                                       ; $5BBF: $48
    pop af                                        ; $5BC0: $F1
    ld l, b                                       ; $5BC1: $68
    pop hl                                        ; $5BC2: $E1
    xor [hl]                                      ; $5BC3: $AE
    adc b                                         ; $5BC4: $88
    pop bc                                        ; $5BC5: $C1
    xor b                                         ; $5BC6: $A8
    add c                                         ; $5BC7: $81
    ret z                                         ; $5BC8: $C8

    ld [hl], c                                    ; $5BC9: $71
    nop                                           ; $5BCA: $00
    nop                                           ; $5BCB: $00
    rst RST_30                                    ; $5BCC: $F7
    rrca                                          ; $5BCD: $0F
    rrca                                          ; $5BCE: $0F
    rrca                                          ; $5BCF: $0F
    dec c                                         ; $5BD0: $0D
    ld bc, $0F10                                  ; $5BD1: $01 $10 $0F
    rrca                                          ; $5BD4: $0F
    ret nz                                        ; $5BD5: $C0

    rrca                                          ; $5BD6: $0F
    dec c                                         ; $5BD7: $0D
    rst RST_38                                    ; $5BD8: $FF
    rst RST_38                                    ; $5BD9: $FF
    ret                                           ; $5BDA: $C9


    add [hl]                                      ; $5BDB: $86
    or l                                          ; $5BDC: $B5
    or d                                          ; $5BDD: $B2
    set 1, b                                      ; $5BDE: $CB $C8
    add e                                         ; $5BE0: $83
    add b                                         ; $5BE1: $80
    adc c                                         ; $5BE2: $89
    add h                                         ; $5BE3: $84
    sbc h                                         ; $5BE4: $9C
    adc $9F                                       ; $5BE5: $CE $9F
    sbc a                                         ; $5BE7: $9F
    rst RST_38                                    ; $5BE8: $FF
    rst RST_38                                    ; $5BE9: $FF
    inc h                                         ; $5BEA: $24
    db $DB                                        ; $5BEB: $DB
    dec h                                         ; $5BEC: $25
    jp c, $D22D                                   ; $5BED: $DA $2D $D2

    xor [hl]                                      ; $5BF0: $AE
    ld d, b                                       ; $5BF1: $50
    adc b                                         ; $5BF2: $88
    ld d, c                                       ; $5BF3: $51
    ld d, e                                       ; $5BF4: $53
    rlca                                          ; $5BF5: $07
    rlca                                          ; $5BF6: $07
    xor a                                         ; $5BF7: $AF
    rst RST_38                                    ; $5BF8: $FF
    rst RST_38                                    ; $5BF9: $FF
    or e                                          ; $5BFA: $B3
    add hl, sp                                    ; $5BFB: $39
    add hl, bc                                    ; $5BFC: $09
    ld b, l                                       ; $5BFD: $45
    ld bc, $8105                                  ; $5BFE: $01 $05 $81
    dec b                                         ; $5C01: $05
    and e                                         ; $5C02: $A3
    ret                                           ; $5C03: $C9


    rst RST_20                                    ; $5C04: $E7
    pop af                                        ; $5C05: $F1
    push bc                                       ; $5C06: $C5
    db $E3                                        ; $5C07: $E3
    jp $C887                                      ; $5C08: $C3 $87 $C8


    adc c                                         ; $5C0B: $89
    jp z, $848A                                   ; $5C0C: $CA $8A $84

    call nz, $C0A8                                ; $5C0F: $C4 $A8 $C0
    rst RST_20                                    ; $5C12: $E7
    adc a                                         ; $5C13: $8F
    db $D3                                        ; $5C14: $D3
    and a                                         ; $5C15: $A7
    add e                                         ; $5C16: $83
    db $E3                                        ; $5C17: $E3
    xor $FF                                       ; $5C18: $EE $FF
    ld a, [$25FC]                                 ; $5C1A: $FA $FC $25
    reti                                          ; $5C1D: $D9


    jr nc, jr_029_5C20                            ; $5C1E: $30 $00

jr_029_5C20:
    jr nc, jr_029_5C9E                            ; $5C20: $30 $7C

    add c                                         ; $5C22: $81
    rst RST_38                                    ; $5C23: $FF
    add c                                         ; $5C24: $81
    add e                                         ; $5C25: $83
    add e                                         ; $5C26: $83
    rst RST_00                                    ; $5C27: $C7
    ld bc, $4517                                  ; $5C28: $01 $17 $45
    ld d, c                                       ; $5C2B: $51
    ld b, a                                       ; $5C2C: $47
    ld d, c                                       ; $5C2D: $51
    add a                                         ; $5C2E: $87
    or c                                          ; $5C2F: $B1
    ld c, l                                       ; $5C30: $4D
    ld h, e                                       ; $5C31: $63
    reti                                          ; $5C32: $D9


    rst RST_00                                    ; $5C33: $C7
    call $87C3                                    ; $5C34: $CD $C3 $87
    reti                                          ; $5C37: $D9


    xor e                                         ; $5C38: $AB
    db $D3                                        ; $5C39: $D3
    and c                                         ; $5C3A: $A1
    db $D3                                        ; $5C3B: $D3
    add h                                         ; $5C3C: $84
    reti                                          ; $5C3D: $D9


    add d                                         ; $5C3E: $82
    or h                                          ; $5C3F: $B4
    add a                                         ; $5C40: $87
    xor b                                         ; $5C41: $A8
    add h                                         ; $5C42: $84
    add c                                         ; $5C43: $81
    add c                                         ; $5C44: $81
    add d                                         ; $5C45: $82
    rst RST_38                                    ; $5C46: $FF
    rst RST_38                                    ; $5C47: $FF
    rst RST_10                                    ; $5C48: $D7
    rst RST_28                                    ; $5C49: $EF
    jp nz, $80E7                                  ; $5C4A: $C2 $E7 $80

    add b                                         ; $5C4D: $80
    ld b, d                                       ; $5C4E: $42
    ld b, d                                       ; $5C4F: $42
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    add b                                         ; $5C52: $80
    ld [bc], a                                    ; $5C53: $02
    ld e, h                                       ; $5C54: $5C
    sbc h                                         ; $5C55: $9C
    rst RST_38                                    ; $5C56: $FF
    rst RST_38                                    ; $5C57: $FF
    ld de, $B9CD                                  ; $5C58: $11 $CD $B9
    rlca                                          ; $5C5B: $07
    ld e, c                                       ; $5C5C: $59
    inc hl                                        ; $5C5D: $23
    ld c, l                                       ; $5C5E: $4D
    ld sp, $11E5                                  ; $5C5F: $31 $E5 $11
    pop hl                                        ; $5C62: $E1
    inc bc                                        ; $5C63: $03
    ld b, c                                       ; $5C64: $41
    rrca                                          ; $5C65: $0F
    rst RST_38                                    ; $5C66: $FF
    rst RST_38                                    ; $5C67: $FF
    rst RST_38                                    ; $5C68: $FF
    rst RST_38                                    ; $5C69: $FF
    rst RST_38                                    ; $5C6A: $FF
    add b                                         ; $5C6B: $80
    rst RST_38                                    ; $5C6C: $FF
    add b                                         ; $5C6D: $80
    rst RST_38                                    ; $5C6E: $FF
    add b                                         ; $5C6F: $80
    rst RST_38                                    ; $5C70: $FF
    add b                                         ; $5C71: $80
    rst RST_38                                    ; $5C72: $FF
    add b                                         ; $5C73: $80
    rst RST_38                                    ; $5C74: $FF
    add b                                         ; $5C75: $80
    ld a, [$FF80]                                 ; $5C76: $FA $80 $FF
    rst RST_38                                    ; $5C79: $FF
    ld hl, sp+$01                                 ; $5C7A: $F8 $01
    db $F4                                        ; $5C7C: $F4
    inc b                                         ; $5C7D: $04
    pop af                                        ; $5C7E: $F1
    dec b                                         ; $5C7F: $05
    ret nc                                        ; $5C80: $D0

    nop                                           ; $5C81: $00
    adc e                                         ; $5C82: $8B
    inc c                                         ; $5C83: $0C
    ld b, [hl]                                    ; $5C84: $46
    ld c, c                                       ; $5C85: $49
    add b                                         ; $5C86: $80
    ret nz                                        ; $5C87: $C0

    rst RST_38                                    ; $5C88: $FF
    rst RST_38                                    ; $5C89: $FF
    add hl, de                                    ; $5C8A: $19
    ld b, e                                       ; $5C8B: $43
    ld bc, $8105                                  ; $5C8C: $01 $05 $81
    pop hl                                        ; $5C8F: $E1
    ld bc, $0113                                  ; $5C90: $01 $13 $01
    pop hl                                        ; $5C93: $E1
    ld hl, $21B1                                  ; $5C94: $21 $B1 $21
    ld sp, $85F4                                  ; $5C97: $31 $F4 $85
    db $F4                                        ; $5C9A: $F4
    add h                                         ; $5C9B: $84
    add sp, -$74                                  ; $5C9C: $E8 $8C

jr_029_5C9E:
    ret nc                                        ; $5C9E: $D0

    sbc b                                         ; $5C9F: $98
    sub b                                         ; $5CA0: $90
    sub b                                         ; $5CA1: $90
    jp $90CF                                      ; $5CA2: $C3 $CF $90


    sub b                                         ; $5CA5: $90
    ret nc                                        ; $5CA6: $D0

    sbc b                                         ; $5CA7: $98
    nop                                           ; $5CA8: $00
    nop                                           ; $5CA9: $00
    ret nc                                        ; $5CAA: $D0

    ret c                                         ; $5CAB: $D8

    ld b, b                                       ; $5CAC: $40
    ld h, h                                       ; $5CAD: $64
    inc h                                         ; $5CAE: $24
    ld [hl], $00                                  ; $5CAF: $36 $00
    ld [bc], a                                    ; $5CB1: $02
    cp l                                          ; $5CB2: $BD
    cp h                                          ; $5CB3: $BC
    nop                                           ; $5CB4: $00
    ld [bc], a                                    ; $5CB5: $02
    ld h, h                                       ; $5CB6: $64
    halt                                          ; $5CB7: $76
    ld b, c                                       ; $5CB8: $41
    ld h, c                                       ; $5CB9: $61
    ld bc, $010B                                  ; $5CBA: $01 $0B $01
    ld l, l                                       ; $5CBD: $6D
    ld bc, $E11B                                  ; $5CBE: $01 $1B $E1
    ld bc, $7591                                  ; $5CC1: $01 $91 $75
    pop hl                                        ; $5CC4: $E1
    ld bc, $0F01                                  ; $5CC5: $01 $01 $0F
    add sp, -$74                                  ; $5CC8: $E8 $8C
    add h                                         ; $5CCA: $84
    add l                                         ; $5CCB: $85

jr_029_5CCC:
    sub h                                         ; $5CCC: $94
    and h                                         ; $5CCD: $A4
    add b                                         ; $5CCE: $80
    add b                                         ; $5CCF: $80
    db $FC                                        ; $5CD0: $FC
    add b                                         ; $5CD1: $80
    cp $80                                        ; $5CD2: $FE $80
    rst RST_38                                    ; $5CD4: $FF
    add b                                         ; $5CD5: $80
    rst RST_38                                    ; $5CD6: $FF
    rst RST_38                                    ; $5CD7: $FF
    ret nz                                        ; $5CD8: $C0

    db $E4                                        ; $5CD9: $E4
    db $10                                        ; $5CDA: $10
    jr @-$7B                                      ; $5CDB: $18 $83

    call nz, Call_029_4040                        ; $5CDD: $C4 $40 $40
    ld b, $1E                                     ; $5CE0: $06 $1E
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    rst RST_38                                    ; $5CE4: $FF
    nop                                           ; $5CE5: $00
    rst RST_38                                    ; $5CE6: $FF
    rst RST_38                                    ; $5CE7: $FF
    rrca                                          ; $5CE8: $0F
    pop af                                        ; $5CE9: $F1
    add hl, de                                    ; $5CEA: $19
    ld hl, $0131                                  ; $5CEB: $21 $31 $01
    ld bc, $7101                                  ; $5CEE: $01 $01 $71
    ld a, c                                       ; $5CF1: $79
    add hl, sp                                    ; $5CF2: $39
    ccf                                           ; $5CF3: $3F
    pop bc                                        ; $5CF4: $C1
    ld bc, $FFFF                                  ; $5CF5: $01 $FF $FF
    rst RST_38                                    ; $5CF8: $FF
    rst RST_38                                    ; $5CF9: $FF
    add b                                         ; $5CFA: $80
    rst RST_38                                    ; $5CFB: $FF
    add b                                         ; $5CFC: $80
    rst RST_38                                    ; $5CFD: $FF
    add b                                         ; $5CFE: $80
    rst RST_38                                    ; $5CFF: $FF
    add b                                         ; $5D00: $80
    rst RST_38                                    ; $5D01: $FF
    add b                                         ; $5D02: $80
    cp $80                                        ; $5D03: $FE $80
    db $FC                                        ; $5D05: $FC
    add b                                         ; $5D06: $80
    ei                                            ; $5D07: $FB
    rst RST_38                                    ; $5D08: $FF
    rst RST_38                                    ; $5D09: $FF
    jr jr_029_5CCC                                ; $5D0A: $18 $C0

    nop                                           ; $5D0C: $00
    rst RST_00                                    ; $5D0D: $C7
    inc bc                                        ; $5D0E: $03
    cp b                                          ; $5D0F: $B8
    inc b                                         ; $5D10: $04
    ld a, b                                       ; $5D11: $78
    rra                                           ; $5D12: $1F
    ldh [$FF3F], a                                ; $5D13: $E0 $3F
    ld b, b                                       ; $5D15: $40
    ccf                                           ; $5D16: $3F
    add b                                         ; $5D17: $80
    rst RST_38                                    ; $5D18: $FF
    rst RST_38                                    ; $5D19: $FF
    ld hl, $1B01                                  ; $5D1A: $21 $01 $1B
    add c                                         ; $5D1D: $81
    rst RST_30                                    ; $5D1E: $F7
    ld bc, $01B5                                  ; $5D1F: $01 $B5 $01
    ld l, c                                       ; $5D22: $69
    ld bc, $015B                                  ; $5D23: $01 $5B $01
    xor l                                         ; $5D26: $AD
    ld bc, $FB80                                  ; $5D27: $01 $80 $FB
    add b                                         ; $5D2A: $80
    pop af                                        ; $5D2B: $F1
    add b                                         ; $5D2C: $80
    xor $83                                       ; $5D2D: $EE $83
    db $EC                                        ; $5D2F: $EC
    add e                                         ; $5D30: $83
    db $E4                                        ; $5D31: $E4
    add d                                         ; $5D32: $82
    add b                                         ; $5D33: $80
    add c                                         ; $5D34: $81
    ldh a, [$FFAE]                                ; $5D35: $F0 $AE
    adc $FF                                       ; $5D37: $CE $FF
    nop                                           ; $5D39: $00
    rst RST_38                                    ; $5D3A: $FF
    nop                                           ; $5D3B: $00
    pop bc                                        ; $5D3C: $C1
    nop                                           ; $5D3D: $00
    inc a                                         ; $5D3E: $3C
    nop                                           ; $5D3F: $00
    ld a, d                                       ; $5D40: $7A
    nop                                           ; $5D41: $00
    ld a, [$F600]                                 ; $5D42: $FA $00 $F6
    nop                                           ; $5D45: $00
    halt                                          ; $5D46: $76
    nop                                           ; $5D47: $00
    sub c                                         ; $5D48: $91
    ld bc, $0179                                  ; $5D49: $01 $79 $01
    ld sp, hl                                     ; $5D4C: $F9
    inc bc                                        ; $5D4D: $03
    pop bc                                        ; $5D4E: $C1
    rlca                                          ; $5D4F: $07
    pop af                                        ; $5D50: $F1
    rlca                                          ; $5D51: $07
    pop af                                        ; $5D52: $F1
    rlca                                          ; $5D53: $07
    add c                                         ; $5D54: $81
    rrca                                          ; $5D55: $0F
    pop hl                                        ; $5D56: $E1
    rrca                                          ; $5D57: $0F
    ldh [$FF80], a                                ; $5D58: $E0 $80
    adc $8E                                       ; $5D5A: $CE $8E
    sub c                                         ; $5D5C: $91
    add b                                         ; $5D5D: $80
    xor d                                         ; $5D5E: $AA
    sbc c                                         ; $5D5F: $99
    sbc b                                         ; $5D60: $98
    db $DD                                        ; $5D61: $DD
    and c                                         ; $5D62: $A1
    adc h                                         ; $5D63: $8C
    sub b                                         ; $5D64: $90
    and b                                         ; $5D65: $A0
    rst RST_38                                    ; $5D66: $FF
    rst RST_38                                    ; $5D67: $FF
    inc l                                         ; $5D68: $2C
    nop                                           ; $5D69: $00
    sbc l                                         ; $5D6A: $9D
    nop                                           ; $5D6B: $00
    ld [hl+], a                                   ; $5D6C: $22
    ret nz                                        ; $5D6D: $C0

    ld e, h                                       ; $5D6E: $5C
    sbc h                                         ; $5D6F: $9C
    ret nz                                        ; $5D70: $C0

    ld bc, $1C9D                                  ; $5D71: $01 $9D $1C
    inc bc                                        ; $5D74: $03
    jr nz, @+$01                                  ; $5D75: $20 $FF

    rst RST_38                                    ; $5D77: $FF
    ld b, c                                       ; $5D78: $41
    rra                                           ; $5D79: $1F
    add c                                         ; $5D7A: $81
    ccf                                           ; $5D7B: $3F
    ld bc, $017F                                  ; $5D7C: $01 $7F $01
    rst RST_38                                    ; $5D7F: $FF
    ld bc, $017F                                  ; $5D80: $01 $7F $01
    cp a                                          ; $5D83: $BF
    ld bc, $FFBF                                  ; $5D84: $01 $BF $FF
    rst RST_38                                    ; $5D87: $FF
    rst RST_38                                    ; $5D88: $FF
    rst RST_38                                    ; $5D89: $FF
    add b                                         ; $5D8A: $80
    rst RST_38                                    ; $5D8B: $FF
    add b                                         ; $5D8C: $80
    pop bc                                        ; $5D8D: $C1
    sbc b                                         ; $5D8E: $98
    cp d                                          ; $5D8F: $BA
    or l                                          ; $5D90: $B5
    push bc                                       ; $5D91: $C5
    and h                                         ; $5D92: $A4
    push bc                                       ; $5D93: $C5
    push hl                                       ; $5D94: $E5
    call nz, $B8BA                                ; $5D95: $C4 $BA $B8
    rst RST_38                                    ; $5D98: $FF
    rst RST_38                                    ; $5D99: $FF
    nop                                           ; $5D9A: $00
    db $E3                                        ; $5D9B: $E3
    inc e                                         ; $5D9C: $1C
    pop bc                                        ; $5D9D: $C1
    nop                                           ; $5D9E: $00
    ld c, $47                                     ; $5D9F: $0E $47
    scf                                           ; $5DA1: $37
    ld [hl], a                                    ; $5DA2: $77
    scf                                           ; $5DA3: $37
    ld b, b                                       ; $5DA4: $40
    scf                                           ; $5DA5: $37
    ld [hl], a                                    ; $5DA6: $77
    nop                                           ; $5DA7: $00
    rst RST_38                                    ; $5DA8: $FF
    rst RST_38                                    ; $5DA9: $FF
    ld bc, $09F1                                  ; $5DAA: $01 $F1 $09
    db $ED                                        ; $5DAD: $ED
    inc de                                        ; $5DAE: $13
    reti                                          ; $5DAF: $D9


    ld bc, $4101                                  ; $5DB0: $01 $01 $41
    dec [hl]                                      ; $5DB3: $35
    ld [hl], c                                    ; $5DB4: $71
    dec [hl]                                      ; $5DB5: $35
    ld c, c                                       ; $5DB6: $49
    dec h                                         ; $5DB7: $25
    add b                                         ; $5DB8: $80
    ret nz                                        ; $5DB9: $C0

    add b                                         ; $5DBA: $80
    rst RST_38                                    ; $5DBB: $FF
    add b                                         ; $5DBC: $80
    rst RST_38                                    ; $5DBD: $FF
    add b                                         ; $5DBE: $80
    rst RST_38                                    ; $5DBF: $FF
    add b                                         ; $5DC0: $80
    rst RST_38                                    ; $5DC1: $FF
    add b                                         ; $5DC2: $80
    ld hl, sp-$7D                                 ; $5DC3: $F8 $83
    db $F4                                        ; $5DC5: $F4
    add [hl]                                      ; $5DC6: $86
    add sp, $0E                                   ; $5DC7: $E8 $0E
    nop                                           ; $5DC9: $00
    nop                                           ; $5DCA: $00
    ret nz                                        ; $5DCB: $C0

    nop                                           ; $5DCC: $00
    db $FC                                        ; $5DCD: $FC
    ld [bc], a                                    ; $5DCE: $02
    ei                                            ; $5DCF: $FB
    nop                                           ; $5DD0: $00
    add d                                         ; $5DD1: $82
    ld [hl], h                                    ; $5DD2: $74
    ld d, [hl]                                    ; $5DD3: $56
    nop                                           ; $5DD4: $00
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    nop                                           ; $5DD7: $00
    add hl, de                                    ; $5DD8: $19
    dec b                                         ; $5DD9: $05
    ld [hl], c                                    ; $5DDA: $71
    add hl, bc                                    ; $5DDB: $09
    add hl, bc                                    ; $5DDC: $09
    ld bc, $0181                                  ; $5DDD: $01 $81 $01
    inc bc                                        ; $5DE0: $03
    dec c                                         ; $5DE1: $0D
    rst RST_00                                    ; $5DE2: $C7
    sbc c                                         ; $5DE3: $99
    ld bc, $1F21                                  ; $5DE4: $01 $21 $1F
    rra                                           ; $5DE7: $1F
    add b                                         ; $5DE8: $80
    ldh [$FF8F], a                                ; $5DE9: $E0 $8F
    rst RST_28                                    ; $5DEB: $EF
    add b                                         ; $5DEC: $80
    ldh a, [$FF87]                                ; $5DED: $F0 $87
    rst RST_30                                    ; $5DEF: $F7
    add b                                         ; $5DF0: $80
    ld hl, sp-$7F                                 ; $5DF1: $F8 $81
    db $FD                                        ; $5DF3: $FD
    add b                                         ; $5DF4: $80
    cp $FF                                        ; $5DF5: $FE $FF
    rst RST_38                                    ; $5DF7: $FF
    nop                                           ; $5DF8: $00
    ld a, a                                       ; $5DF9: $7F
    ld a, a                                       ; $5DFA: $7F
    nop                                           ; $5DFB: $00
    ccf                                           ; $5DFC: $3F
    nop                                           ; $5DFD: $00
    add b                                         ; $5DFE: $80
    add b                                         ; $5DFF: $80
    rrca                                          ; $5E00: $0F
    nop                                           ; $5E01: $00
    db $E3                                        ; $5E02: $E3
    ldh [rP1], a                                  ; $5E03: $E0 $00
    nop                                           ; $5E05: $00
    rst RST_38                                    ; $5E06: $FF
    rst RST_38                                    ; $5E07: $FF
    ld bc, $DFC1                                  ; $5E08: $01 $C1 $DF
    rra                                           ; $5E0B: $1F
    pop hl                                        ; $5E0C: $E1
    ld bc, $0F0F                                  ; $5E0D: $01 $0F $0F
    pop af                                        ; $5E10: $F1

Call_029_5E11:
    ld bc, $03FB                                  ; $5E11: $01 $FB $03
    ld bc, $FF01                                  ; $5E14: $01 $01 $FF
    rst RST_38                                    ; $5E17: $FF
    rst RST_38                                    ; $5E18: $FF
    rst RST_38                                    ; $5E19: $FF
    add b                                         ; $5E1A: $80
    db $DD                                        ; $5E1B: $DD
    add h                                         ; $5E1C: $84
    and d                                         ; $5E1D: $A2
    sub h                                         ; $5E1E: $94
    and d                                         ; $5E1F: $A2
    adc b                                         ; $5E20: $88
    sub $80                                       ; $5E21: $D6 $80
    rst RST_28                                    ; $5E23: $EF
    add b                                         ; $5E24: $80
    db $EB                                        ; $5E25: $EB
    add d                                         ; $5E26: $82
    call c, $FFFF                                 ; $5E27: $DC $FF $FF
    nop                                           ; $5E2A: $00
    rst RST_38                                    ; $5E2B: $FF
    nop                                           ; $5E2C: $00
    add d                                         ; $5E2D: $82
    ld a, h                                       ; $5E2E: $7C
    nop                                           ; $5E2F: $00
    adc [hl]                                      ; $5E30: $8E
    ld d, b                                       ; $5E31: $50
    dec b                                         ; $5E32: $05
    ld a, b                                       ; $5E33: $78
    ld [bc], a                                    ; $5E34: $02
    push af                                       ; $5E35: $F5
    ld b, b                                       ; $5E36: $40
    inc a                                         ; $5E37: $3C
    rst RST_38                                    ; $5E38: $FF
    rst RST_38                                    ; $5E39: $FF
    ld de, $0967                                  ; $5E3A: $11 $67 $09
    jp $8359                                      ; $5E3D: $C3 $59 $83


    ld [hl], c                                    ; $5E40: $71
    rlca                                          ; $5E41: $07
    ld h, c                                       ; $5E42: $61
    adc a                                         ; $5E43: $8F
    and c                                         ; $5E44: $A1
    rrca                                          ; $5E45: $0F
    ld [hl], c                                    ; $5E46: $71
    add a                                         ; $5E47: $87
    add l                                         ; $5E48: $85
    ret                                           ; $5E49: $C9


    add d                                         ; $5E4A: $82
    jp c, $DA82                                   ; $5E4B: $DA $82 $DA

    add d                                         ; $5E4E: $82
    sbc d                                         ; $5E4F: $9A
    db $E4                                        ; $5E50: $E4
    ldh a, [$FFB1]                                ; $5E51: $F0 $B1
    cp c                                          ; $5E53: $B9
    or c                                          ; $5E54: $B1
    pop af                                        ; $5E55: $F1
    sub e                                         ; $5E56: $93
    sub e                                         ; $5E57: $93
    ld bc, $8239                                  ; $5E58: $01 $39 $82
    jr c, jr_029_5E5D                             ; $5E5B: $38 $00

jr_029_5E5D:
    cp d                                          ; $5E5D: $BA
    add d                                         ; $5E5E: $82
    cp d                                          ; $5E5F: $BA
    jr c, jr_029_5E62                             ; $5E60: $38 $00

jr_029_5E62:
    add [hl]                                      ; $5E62: $86
    jp $EFEF                                      ; $5E63: $C3 $EF $EF


    rst RST_38                                    ; $5E66: $FF
    rst RST_38                                    ; $5E67: $FF
    ld sp, $A147                                  ; $5E68: $31 $47 $A1
    add a                                         ; $5E6B: $87
    or c                                          ; $5E6C: $B1
    add a                                         ; $5E6D: $87
    or c                                          ; $5E6E: $B1
    add e                                         ; $5E6F: $83
    ld b, c                                       ; $5E70: $41
    dec e                                         ; $5E71: $1D
    ld sp, $193B                                  ; $5E72: $31 $3B $19
    dec e                                         ; $5E75: $1D
    ld de, $A391                                  ; $5E76: $11 $91 $A3
    or d                                          ; $5E79: $B2
    add c                                         ; $5E7A: $81
    xor c                                         ; $5E7B: $A9
    add b                                         ; $5E7C: $80
    ret z                                         ; $5E7D: $C8

    add d                                         ; $5E7E: $82
    ldh a, [c]                                    ; $5E7F: $F2
    add e                                         ; $5E80: $83
    ei                                            ; $5E81: $FB
    add c                                         ; $5E82: $81
    push af                                       ; $5E83: $F5
    add b                                         ; $5E84: $80
    xor $FF                                       ; $5E85: $EE $FF
    rst RST_38                                    ; $5E87: $FF
    ld bc, $8044                                  ; $5E88: $01 $44 $80
    add e                                         ; $5E8B: $83
    ld b, h                                       ; $5E8C: $44
    ld b, b                                       ; $5E8D: $40
    ld l, b                                       ; $5E8E: $68
    ld b, h                                       ; $5E8F: $44
    and b                                         ; $5E90: $A0
    cp b                                          ; $5E91: $B8
    call nz, $FCC5                                ; $5E92: $C4 $C5 $FC
    db $FD                                        ; $5E95: $FD
    rst RST_38                                    ; $5E96: $FF
    rst RST_38                                    ; $5E97: $FF
    ld bc, $019B                                  ; $5E98: $01 $9B $01
    dec hl                                        ; $5E9B: $2B
    ld bc, $5907                                  ; $5E9C: $01 $07 $59
    inc hl                                        ; $5E9F: $23
    ld l, l                                       ; $5EA0: $6D

jr_029_5EA1:
    pop de                                        ; $5EA1: $D1
    sbc a                                         ; $5EA2: $9F

jr_029_5EA3:
    pop bc                                        ; $5EA3: $C1
    daa                                           ; $5EA4: $27
    sub c                                         ; $5EA5: $91
    rst RST_38                                    ; $5EA6: $FF
    rst RST_38                                    ; $5EA7: $FF
    rst RST_38                                    ; $5EA8: $FF
    rst RST_38                                    ; $5EA9: $FF
    sub e                                         ; $5EAA: $93
    add b                                         ; $5EAB: $80
    jp z, $E988                                   ; $5EAC: $CA $88 $E9

    ret nz                                        ; $5EAF: $C0

    xor d                                         ; $5EB0: $AA
    add b                                         ; $5EB1: $80
    ret c                                         ; $5EB2: $D8

    sub d                                         ; $5EB3: $92
    ret c                                         ; $5EB4: $D8

    add d                                         ; $5EB5: $82
    ret nz                                        ; $5EB6: $C0

    add b                                         ; $5EB7: $80
    rst RST_38                                    ; $5EB8: $FF
    rst RST_38                                    ; $5EB9: $FF
    or b                                          ; $5EBA: $B0
    inc hl                                        ; $5EBB: $23
    ld e, b                                       ; $5EBC: $58
    ld [bc], a                                    ; $5EBD: $02
    sbc b                                         ; $5EBE: $98
    ld d, b                                       ; $5EBF: $50
    ld e, l                                       ; $5EC0: $5D
    sub b                                         ; $5EC1: $90
    inc e                                         ; $5EC2: $1C
    pop bc                                        ; $5EC3: $C1
    sbc h                                         ; $5EC4: $9C
    nop                                           ; $5EC5: $00
    dec c                                         ; $5EC6: $0D
    ld bc, $FFFF                                  ; $5EC7: $01 $FF $FF
    inc bc                                        ; $5ECA: $03
    dec d                                         ; $5ECB: $15
    ld de, $898D                                  ; $5ECC: $11 $8D $89
    ld b, l                                       ; $5ECF: $45
    ld b, e                                       ; $5ED0: $43
    and c                                         ; $5ED1: $A1
    ld bc, $C701                                  ; $5ED2: $01 $01 $C7
    pop af                                        ; $5ED5: $F1
    ld bc, $DF81                                  ; $5ED6: $01 $81 $DF
    sbc a                                         ; $5ED9: $9F
    or b                                          ; $5EDA: $B0
    cp c                                          ; $5EDB: $B9
    and b                                         ; $5EDC: $A0
    cp a                                          ; $5EDD: $BF
    or d                                          ; $5EDE: $B2
    and c                                         ; $5EDF: $A1
    add h                                         ; $5EE0: $84
    add b                                         ; $5EE1: $80
    jp nz, $E188                                  ; $5EE2: $C2 $88 $E1

    add h                                         ; $5EE5: $84
    pop af                                        ; $5EE6: $F1
    add h                                         ; $5EE7: $84
    ld [de], a                                    ; $5EE8: $12
    ld h, d                                       ; $5EE9: $62
    nop                                           ; $5EEA: $00
    add b                                         ; $5EEB: $80
    scf                                           ; $5EEC: $37
    or b                                          ; $5EED: $B0
    ld bc, $02CE                                  ; $5EEE: $01 $CE $02
    ld a, h                                       ; $5EF1: $7C
    inc e                                         ; $5EF2: $1C
    ld [hl+], a                                   ; $5EF3: $22
    inc b                                         ; $5EF4: $04
    dec de                                        ; $5EF5: $1B
    nop                                           ; $5EF6: $00
    rrca                                          ; $5EF7: $0F
    ld bc, $5119                                  ; $5EF8: $01 $19 $51
    xor c                                         ; $5EFB: $A9
    ld d, c                                       ; $5EFC: $51
    add hl, hl                                    ; $5EFD: $29
    ld bc, $5179                                  ; $5EFE: $01 $79 $51
    xor c                                         ; $5F01: $A9
    ld d, c                                       ; $5F02: $51
    xor c                                         ; $5F03: $A9
    inc bc                                        ; $5F04: $03
    ld [hl], c                                    ; $5F05: $71
    inc bc                                        ; $5F06: $03
    ld h, c                                       ; $5F07: $61
    pop af                                        ; $5F08: $F1
    add h                                         ; $5F09: $84
    ld hl, sp-$80                                 ; $5F0A: $F8 $80
    db $FC                                        ; $5F0C: $FC
    add b                                         ; $5F0D: $80
    db $FC                                        ; $5F0E: $FC
    add b                                         ; $5F0F: $80
    db $FD                                        ; $5F10: $FD
    add b                                         ; $5F11: $80
    ld sp, hl                                     ; $5F12: $F9
    add b                                         ; $5F13: $80
    ei                                            ; $5F14: $FB
    add b                                         ; $5F15: $80
    rst RST_38                                    ; $5F16: $FF
    rst RST_38                                    ; $5F17: $FF
    nop                                           ; $5F18: $00
    inc bc                                        ; $5F19: $03

jr_029_5F1A:
    ld b, c                                       ; $5F1A: $41
    ld [$18C0], sp                                ; $5F1B: $08 $C0 $18
    ret nz                                        ; $5F1E: $C0

    jr jr_029_5EA1                                ; $5F1F: $18 $80

    jr nc, jr_029_5EA3                            ; $5F21: $30 $80

    jr nc, jr_029_5F25                            ; $5F23: $30 $00

jr_029_5F25:
    ld h, b                                       ; $5F25: $60
    rst RST_38                                    ; $5F26: $FF
    rst RST_38                                    ; $5F27: $FF
    rlca                                          ; $5F28: $07
    ld bc, $034D                                  ; $5F29: $01 $4D $03
    ld d, e                                       ; $5F2C: $53
    ld bc, $112D                                  ; $5F2D: $01 $2D $11
    ld bc, $433D                                  ; $5F30: $01 $3D $43
    dec a                                         ; $5F33: $3D
    add e                                         ; $5F34: $83
    ld a, l                                       ; $5F35: $7D
    rst RST_38                                    ; $5F36: $FF
    rst RST_38                                    ; $5F37: $FF
    rst RST_38                                    ; $5F38: $FF
    rst RST_38                                    ; $5F39: $FF
    add a                                         ; $5F3A: $87
    ldh a, [$FF81]                                ; $5F3B: $F0 $81
    ldh [$FF84], a                                ; $5F3D: $E0 $84
    ldh [$FF80], a                                ; $5F3F: $E0 $80
    adc [hl]                                      ; $5F41: $8E
    db $E4                                        ; $5F42: $E4
    add e                                         ; $5F43: $83
    jp nc, $D191                                  ; $5F44: $D2 $91 $D1

    sub b                                         ; $5F47: $90
    rst RST_38                                    ; $5F48: $FF
    rst RST_38                                    ; $5F49: $FF
    add b                                         ; $5F4A: $80
    nop                                           ; $5F4B: $00
    nop                                           ; $5F4C: $00
    nop                                           ; $5F4D: $00
    ld [hl+], a                                   ; $5F4E: $22
    inc e                                         ; $5F4F: $1C
    add hl, de                                    ; $5F50: $19
    ld h, [hl]                                    ; $5F51: $66
    jr nz, jr_029_5F1A                            ; $5F52: $20 $C6

    ld c, c                                       ; $5F54: $49
    adc d                                         ; $5F55: $8A
    adc b                                         ; $5F56: $88
    dec bc                                        ; $5F57: $0B
    rst RST_38                                    ; $5F58: $FF
    rst RST_38                                    ; $5F59: $FF
    ld bc, $0101                                  ; $5F5A: $01 $01 $01
    ld bc, $0101                                  ; $5F5D: $01 $01 $01
    ld bc, $3131                                  ; $5F60: $01 $31 $31
    ld b, c                                       ; $5F63: $41
    daa                                           ; $5F64: $27
    ld b, c                                       ; $5F65: $41
    xor e                                         ; $5F66: $AB
    dec b                                         ; $5F67: $05
    call z, $E28D                                 ; $5F68: $CC $8D $E2
    add e                                         ; $5F6B: $83
    call $9D8D                                    ; $5F6C: $CD $8D $9D
    sbc l                                         ; $5F6F: $9D
    sbc a                                         ; $5F70: $9F
    sbc a                                         ; $5F71: $9F
    adc b                                         ; $5F72: $88
    adc b                                         ; $5F73: $88
    add [hl]                                      ; $5F74: $86
    add a                                         ; $5F75: $87
    add b                                         ; $5F76: $80
    add b                                         ; $5F77: $80
    ld sp, $82B6                                  ; $5F78: $31 $B6 $82
    call z, Call_029_7E61                         ; $5F7B: $CC $61 $7E
    ld [hl], c                                    ; $5F7E: $71
    ld a, [hl]                                    ; $5F7F: $7E
    ldh [$FFEF], a                                ; $5F80: $E0 $EF
    ld bc, $001E                                  ; $5F82: $01 $1E $00
    ei                                            ; $5F85: $FB
    add hl, bc                                    ; $5F86: $09
    ld b, $03                                     ; $5F87: $06 $03
    dec c                                         ; $5F89: $0D
    rlca                                          ; $5F8A: $07
    add hl, bc                                    ; $5F8B: $09
    rla                                           ; $5F8C: $17
    ld bc, $0113                                  ; $5F8D: $01 $13 $01
    sbc c                                         ; $5F90: $99
    ld bc, $0139                                  ; $5F91: $01 $39 $01
    xor l                                         ; $5F94: $AD
    ld de, $318D                                  ; $5F95: $11 $8D $31
    rst RST_00                                    ; $5F98: $C7
    add b                                         ; $5F99: $80
    pop bc                                        ; $5F9A: $C1
    add a                                         ; $5F9B: $87
    ret nz                                        ; $5F9C: $C0

    add e                                         ; $5F9D: $83
    and b                                         ; $5F9E: $A0
    ret nz                                        ; $5F9F: $C0

    and b                                         ; $5FA0: $A0
    ret nz                                        ; $5FA1: $C0

    ret nz                                        ; $5FA2: $C0

    and b                                         ; $5FA3: $A0
    and b                                         ; $5FA4: $A0
    adc h                                         ; $5FA5: $8C

jr_029_5FA6:
    rst RST_38                                    ; $5FA6: $FF
    rst RST_38                                    ; $5FA7: $FF
    ld h, a                                       ; $5FA8: $67
    jr jr_029_5FA6                                ; $5FA9: $18 $FB

    cp h                                          ; $5FAB: $BC
    or e                                          ; $5FAC: $B3
    cp b                                          ; $5FAD: $B8
    ld b, a                                       ; $5FAE: $47
    nop                                           ; $5FAF: $00
    ld [bc], a                                    ; $5FB0: $02
    db $FC                                        ; $5FB1: $FC
    inc [hl]                                      ; $5FB2: $34
    jr c, jr_029_5FB5                             ; $5FB3: $38 $00

jr_029_5FB5:
    nop                                           ; $5FB5: $00
    rst RST_38                                    ; $5FB6: $FF
    rst RST_38                                    ; $5FB7: $FF
    dec e                                         ; $5FB8: $1D
    ld hl, $0119                                  ; $5FB9: $21 $19 $01
    ld bc, $6101                                  ; $5FBC: $01 $01 $61
    ld bc, $4131                                  ; $5FBF: $01 $31 $41
    ld [hl], c                                    ; $5FC2: $71
    add c                                         ; $5FC3: $81
    ld hl, $FF01                                  ; $5FC4: $21 $01 $FF
    rst RST_38                                    ; $5FC7: $FF
    rst RST_38                                    ; $5FC8: $FF
    rst RST_38                                    ; $5FC9: $FF
    db $FC                                        ; $5FCA: $FC
    add b                                         ; $5FCB: $80
    ld hl, sp-$7D                                 ; $5FCC: $F8 $83
    ldh a, [$FF86]                                ; $5FCE: $F0 $86
    pop af                                        ; $5FD0: $F1
    add l                                         ; $5FD1: $85
    pop af                                        ; $5FD2: $F1
    add l                                         ; $5FD3: $85
    ld sp, hl                                     ; $5FD4: $F9
    add c                                         ; $5FD5: $81
    ld a, [$FF80]                                 ; $5FD6: $FA $80 $FF
    rst RST_38                                    ; $5FD9: $FF
    inc e                                         ; $5FDA: $1C
    nop                                           ; $5FDB: $00
    ld bc, $04C0                                  ; $5FDC: $01 $C0 $04
    inc hl                                        ; $5FDF: $23
    ld d, b                                       ; $5FE0: $50
    ld c, a                                       ; $5FE1: $4F
    jr nz, jr_029_6003                            ; $5FE2: $20 $1F

    or b                                          ; $5FE4: $B0
    adc a                                         ; $5FE5: $8F
    ld b, b                                       ; $5FE6: $40
    ld a, $FF                                     ; $5FE7: $3E $FF
    rst RST_38                                    ; $5FE9: $FF
    rlca                                          ; $5FEA: $07
    ld bc, $C13B                                  ; $5FEB: $01 $3B $C1
    sub l                                         ; $5FEE: $95
    pop bc                                        ; $5FEF: $C1
    dec e                                         ; $5FF0: $1D
    pop hl                                        ; $5FF1: $E1
    ld a, l                                       ; $5FF2: $7D
    add c                                         ; $5FF3: $81
    ld bc, $D501                                  ; $5FF4: $01 $01 $D5
    push de                                       ; $5FF7: $D5
    db $F4                                        ; $5FF8: $F4
    add e                                         ; $5FF9: $83
    call z, $A487                                 ; $5FFA: $CC $87 $A4
    sbc a                                         ; $5FFD: $9F
    sub b                                         ; $5FFE: $90
    rst RST_38                                    ; $5FFF: $FF
    sub l                                         ; $6000: $95
    ld hl, sp-$3E                                 ; $6001: $F8 $C2

jr_029_6003:
    db $FC                                        ; $6003: $FC
    ret z                                         ; $6004: $C8

    db $F4                                        ; $6005: $F4
    sub d                                         ; $6006: $92
    db $EC                                        ; $6007: $EC
    inc b                                         ; $6008: $04
    ld hl, sp+$19                                 ; $6009: $F8 $19
    pop hl                                        ; $600B: $E1
    inc h                                         ; $600C: $24
    add h                                         ; $600D: $84
    ret                                           ; $600E: $C9


    ld [$0040], sp                                ; $600F: $08 $40 $00
    inc h                                         ; $6012: $24
    ld [$2884], sp                                ; $6013: $08 $84 $28
    ld b, e                                       ; $6016: $43
    and h                                         ; $6017: $A4
    ld d, c                                       ; $6018: $51
    ld d, c                                       ; $6019: $51
    ld h, e                                       ; $601A: $63
    ld bc, $01C7                                  ; $601B: $01 $C7 $01
    adc a                                         ; $601E: $8F
    ld bc, $011F                                  ; $601F: $01 $1F $01
    ld e, a                                       ; $6022: $5F
    ld bc, $815F                                  ; $6023: $01 $5F $81
    ld e, a                                       ; $6026: $5F
    add c                                         ; $6027: $81
    adc b                                         ; $6028: $88
    or $8A                                        ; $6029: $F6 $8A
    or h                                          ; $602B: $B4
    add [hl]                                      ; $602C: $86
    ret z                                         ; $602D: $C8

    rst RST_00                                    ; $602E: $C7
    and b                                         ; $602F: $A0
    add e                                         ; $6030: $83
    or b                                          ; $6031: $B0
    jp $C2A2                                      ; $6032: $C3 $A2 $C2


    add d                                         ; $6035: $82
    rst RST_38                                    ; $6036: $FF
    rst RST_38                                    ; $6037: $FF
    ld b, c                                       ; $6038: $41
    ld h, $08                                     ; $6039: $26 $08
    ld l, e                                       ; $603B: $6B
    inc b                                         ; $603C: $04
    inc [hl]                                      ; $603D: $34
    ld hl, $1E11                                  ; $603E: $21 $11 $1E
    nop                                           ; $6041: $00
    add a                                         ; $6042: $87
    add b                                         ; $6043: $80
    add b                                         ; $6044: $80
    add b                                         ; $6045: $80
    rst RST_38                                    ; $6046: $FF
    rst RST_38                                    ; $6047: $FF
    ld c, a                                       ; $6048: $4F
    add c                                         ; $6049: $81
    rst RST_08                                    ; $604A: $CF
    ld bc, $1197                                  ; $604B: $01 $97 $11
    ld b, e                                       ; $604E: $43
    ld b, c                                       ; $604F: $41
    inc bc                                        ; $6050: $03
    ld bc, $01F3                                  ; $6051: $01 $F3 $01
    rlca                                          ; $6054: $07
    ld bc, $FFFF                                  ; $6055: $01 $FF $FF
    rst RST_38                                    ; $6058: $FF
    rst RST_38                                    ; $6059: $FF
    cp b                                          ; $605A: $B8
    add d                                         ; $605B: $82
    call nc, $DA81                                ; $605C: $D4 $81 $DA
    add b                                         ; $605F: $80
    db $EC                                        ; $6060: $EC
    add b                                         ; $6061: $80
    db $EC                                        ; $6062: $EC
    add b                                         ; $6063: $80
    or $80                                        ; $6064: $F6 $80
    ld hl, sp-$80                                 ; $6066: $F8 $80
    rst RST_38                                    ; $6068: $FF
    rst RST_38                                    ; $6069: $FF
    rst RST_38                                    ; $606A: $FF
    nop                                           ; $606B: $00
    ld a, [hl]                                    ; $606C: $7E
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    add c                                         ; $606F: $81
    ld b, $38                                     ; $6070: $06 $38
    ld bc, $007E                                  ; $6072: $01 $7E $00
    ld a, a                                       ; $6075: $7F
    nop                                           ; $6076: $00
    rst RST_38                                    ; $6077: $FF
    rst RST_38                                    ; $6078: $FF
    rst RST_38                                    ; $6079: $FF
    dec e                                         ; $607A: $1D
    ld b, c                                       ; $607B: $41
    dec l                                         ; $607C: $2D
    add c                                         ; $607D: $81
    ld e, e                                       ; $607E: $5B
    ld bc, $011B                                  ; $607F: $01 $1B $01
    scf                                           ; $6082: $37
    ld bc, $016F                                  ; $6083: $01 $6F $01
    sbc a                                         ; $6086: $9F
    ld bc, $81FD                                  ; $6087: $01 $FD $81
    db $FD                                        ; $608A: $FD
    add c                                         ; $608B: $81
    db $FD                                        ; $608C: $FD
    add c                                         ; $608D: $81
    cp $80                                        ; $608E: $FE $80
    cp $80                                        ; $6090: $FE $80
    cp [hl]                                       ; $6092: $BE
    add b                                         ; $6093: $80
    ret nc                                        ; $6094: $D0

    ret nz                                        ; $6095: $C0

    and b                                         ; $6096: $A0
    xor l                                         ; $6097: $AD
    nop                                           ; $6098: $00
    ld a, a                                       ; $6099: $7F
    nop                                           ; $609A: $00
    ld a, $00                                     ; $609B: $3E $00
    ld [$DDC1], sp                                ; $609D: $08 $C1 $DD
    nop                                           ; $60A0: $00
    ld a, $00                                     ; $60A1: $3E $00
    rst RST_38                                    ; $60A3: $FF
    ld bc, $037E                                  ; $60A4: $01 $7E $03
    and b                                         ; $60A7: $A0
    ld e, a                                       ; $60A8: $5F
    ld b, c                                       ; $60A9: $41
    ld e, a                                       ; $60AA: $5F
    ld b, c                                       ; $60AB: $41
    ld e, a                                       ; $60AC: $5F
    ld b, c                                       ; $60AD: $41
    cp a                                          ; $60AE: $BF
    add c                                         ; $60AF: $81
    ccf                                           ; $60B0: $3F
    ld bc, $01BF                                  ; $60B1: $01 $BF $01
    sbc a                                         ; $60B4: $9F
    ld bc, $210F                                  ; $60B5: $01 $0F $21
    add l                                         ; $60B8: $85
    sub b                                         ; $60B9: $90
    jp $80C0                                      ; $60BA: $C3 $C0 $80


    add b                                         ; $60BD: $80
    add b                                         ; $60BE: $80
    xor h                                         ; $60BF: $AC
    xor h                                         ; $60C0: $AC
    add e                                         ; $60C1: $83
    add [hl]                                      ; $60C2: $86
    ret nz                                        ; $60C3: $C0

    and b                                         ; $60C4: $A0
    add b                                         ; $60C5: $80
    rst RST_38                                    ; $60C6: $FF
    rst RST_38                                    ; $60C7: $FF
    sbc l                                         ; $60C8: $9D
    ld b, b                                       ; $60C9: $40
    jp z, $C400                                   ; $60CA: $CA $00 $C4

    ld de, $0825                                  ; $60CD: $11 $25 $08
    ld h, b                                       ; $60D0: $60
    nop                                           ; $60D1: $00
    ld b, b                                       ; $60D2: $40
    ld bc, $0C8D                                  ; $60D3: $01 $8D $0C
    rst RST_38                                    ; $60D6: $FF
    rst RST_38                                    ; $60D7: $FF
    rlca                                          ; $60D8: $07
    ld [hl], c                                    ; $60D9: $71
    rlca                                          ; $60DA: $07
    ld de, $A107                                  ; $60DB: $11 $07 $A1
    and c                                         ; $60DE: $A1
    ld de, $0B33                                  ; $60DF: $11 $33 $0B
    add hl, de                                    ; $60E2: $19
    add c                                         ; $60E3: $81
    add l                                         ; $60E4: $85
    dec h                                         ; $60E5: $25
    rst RST_38                                    ; $60E6: $FF
    rst RST_38                                    ; $60E7: $FF
    rst RST_38                                    ; $60E8: $FF
    rst RST_38                                    ; $60E9: $FF
    ld hl, sp-$79                                 ; $60EA: $F8 $87
    ld hl, sp-$7A                                 ; $60EC: $F8 $86
    ldh a, [$FF8C]                                ; $60EE: $F0 $8C
    ldh [$FF98], a                                ; $60F0: $E0 $98
    ldh [$FF93], a                                ; $60F2: $E0 $93
    ret nz                                        ; $60F4: $C0

    and a                                         ; $60F5: $A7
    add b                                         ; $60F6: $80
    ld [$FFFF], a                                 ; $60F7: $EA $FF $FF
    ccf                                           ; $60FA: $3F
    nop                                           ; $60FB: $00
    ld a, a                                       ; $60FC: $7F
    nop                                           ; $60FD: $00
    add a                                         ; $60FE: $87
    nop                                           ; $60FF: $00
    ld bc, $0008                                  ; $6100: $01 $08 $00
    and $00                                       ; $6103: $E6 $00
    dec bc                                        ; $6105: $0B
    add c                                         ; $6106: $81
    ld h, l                                       ; $6107: $65
    rst RST_38                                    ; $6108: $FF
    rst RST_38                                    ; $6109: $FF
    rst RST_00                                    ; $610A: $C7
    rrca                                          ; $610B: $0F
    pop af                                        ; $610C: $F1
    inc bc                                        ; $610D: $03
    db $FD                                        ; $610E: $FD
    ld bc, $01FD                                  ; $610F: $01 $FD $01
    ld sp, hl                                     ; $6112: $F9
    rlca                                          ; $6113: $07
    ld a, c                                       ; $6114: $79
    rlca                                          ; $6115: $07
    inc sp                                        ; $6116: $33
    adc l                                         ; $6117: $8D
    add l                                         ; $6118: $85
    call c, $DC8F                                 ; $6119: $DC $8F $DC
    sbc [hl]                                      ; $611C: $9E
    cp h                                          ; $611D: $BC
    sbc [hl]                                      ; $611E: $9E
    cp h                                          ; $611F: $BC
    sbc e                                         ; $6120: $9B
    cp b                                          ; $6121: $B8
    sbc [hl]                                      ; $6122: $9E
    sbc $C4                                       ; $6123: $DE $C4
    and a                                         ; $6125: $A7
    pop hl                                        ; $6126: $E1
    sbc c                                         ; $6127: $99
    rst RST_10                                    ; $6128: $D7
    rst RST_20                                    ; $6129: $E7
    ccf                                           ; $612A: $3F
    rst RST_18                                    ; $612B: $DF
    ld a, a                                       ; $612C: $7F
    rra                                           ; $612D: $1F
    ld a, a                                       ; $612E: $7F
    ccf                                           ; $612F: $3F
    rst RST_38                                    ; $6130: $FF
    ld a, a                                       ; $6131: $7F
    ld a, a                                       ; $6132: $7F
    ld a, a                                       ; $6133: $7F
    cp a                                          ; $6134: $BF
    cp a                                          ; $6135: $BF
    ld sp, hl                                     ; $6136: $F9
    ld sp, hl                                     ; $6137: $F9
    and a                                         ; $6138: $A7
    sbc c                                         ; $6139: $99
    add c                                         ; $613A: $81
    pop bc                                        ; $613B: $C1
    pop hl                                        ; $613C: $E1
    pop af                                        ; $613D: $F1
    pop bc                                        ; $613E: $C1
    call $B1D1                                    ; $613F: $CD $D1 $B1
    ld sp, hl                                     ; $6142: $F9
    xor c                                         ; $6143: $A9
    cp c                                          ; $6144: $B9
    add hl, de                                    ; $6145: $19
    pop af                                        ; $6146: $F1
    dec [hl]                                      ; $6147: $35
    ldh [$FF80], a                                ; $6148: $E0 $80
    rst RST_18                                    ; $614A: $DF
    add b                                         ; $614B: $80
    cp a                                          ; $614C: $BF
    add b                                         ; $614D: $80
    rst RST_18                                    ; $614E: $DF
    ret nz                                        ; $614F: $C0

    and $E0                                       ; $6150: $E6 $E0
    cp b                                          ; $6152: $B8
    ld hl, sp-$64                                 ; $6153: $F8 $9C
    db $FD                                        ; $6155: $FD
    rst RST_38                                    ; $6156: $FF
    rst RST_38                                    ; $6157: $FF
    ld sp, hl                                     ; $6158: $F9
    ld sp, hl                                     ; $6159: $F9
    ld a, a                                       ; $615A: $7F
    ld a, a                                       ; $615B: $7F
    ld b, a                                       ; $615C: $47
    ld b, a                                       ; $615D: $47
    ld b, e                                       ; $615E: $43
    ld b, e                                       ; $615F: $43
    ld b, a                                       ; $6160: $47
    rst RST_10                                    ; $6161: $D7
    call z, $F0CE                                 ; $6162: $CC $CE $F0
    ld hl, sp-$01                                 ; $6165: $F8 $FF
    rst RST_38                                    ; $6167: $FF
    add hl, hl                                    ; $6168: $29
    dec h                                         ; $6169: $25
    inc de                                        ; $616A: $13
    ret                                           ; $616B: $C9


    sub e                                         ; $616C: $93
    ret                                           ; $616D: $C9


    sub e                                         ; $616E: $93
    ret                                           ; $616F: $C9


    inc bc                                        ; $6170: $03
    adc c                                         ; $6171: $89
    ld [hl], e                                    ; $6172: $73
    ld bc, $017B                                  ; $6173: $01 $7B $01
    rst RST_38                                    ; $6176: $FF
    rst RST_38                                    ; $6177: $FF
    rst RST_38                                    ; $6178: $FF
    rst RST_38                                    ; $6179: $FF
    add b                                         ; $617A: $80
    ldh a, [$FF83]                                ; $617B: $F0 $83
    ldh [$FF98], a                                ; $617D: $E0 $98
    ret nz                                        ; $617F: $C0

    and b                                         ; $6180: $A0
    add a                                         ; $6181: $87
    ret z                                         ; $6182: $C8

    add c                                         ; $6183: $81
    ret nz                                        ; $6184: $C0

    add e                                         ; $6185: $83
    ret nc                                        ; $6186: $D0

    add a                                         ; $6187: $87
    rst RST_38                                    ; $6188: $FF
    rst RST_38                                    ; $6189: $FF
    nop                                           ; $618A: $00
    jr c, jr_029_6193                             ; $618B: $38 $06

    nop                                           ; $618D: $00
    ld l, b                                       ; $618E: $68
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00

jr_029_6193:
    rst RST_38                                    ; $6193: $FF
    nop                                           ; $6194: $00
    rst RST_38                                    ; $6195: $FF
    nop                                           ; $6196: $00
    rst RST_38                                    ; $6197: $FF
    rst RST_38                                    ; $6198: $FF
    rst RST_38                                    ; $6199: $FF
    ld bc, $C11F                                  ; $619A: $01 $1F $C1
    rlca                                          ; $619D: $07
    add hl, sp                                    ; $619E: $39
    inc bc                                        ; $619F: $03
    dec d                                         ; $61A0: $15
    pop bc                                        ; $61A1: $C1
    inc bc                                        ; $61A2: $03
    add c                                         ; $61A3: $81
    dec e                                         ; $61A4: $1D
    pop bc                                        ; $61A5: $C1
    rra                                           ; $61A6: $1F
    pop bc                                        ; $61A7: $C1
    sub b                                         ; $61A8: $90
    add h                                         ; $61A9: $84
    and b                                         ; $61AA: $A0
    add a                                         ; $61AB: $87
    ldh [$FF8F], a                                ; $61AC: $E0 $8F
    add b                                         ; $61AE: $80
    adc a                                         ; $61AF: $8F
    and b                                         ; $61B0: $A0
    adc a                                         ; $61B1: $8F
    and b                                         ; $61B2: $A0
    adc a                                         ; $61B3: $8F
    and b                                         ; $61B4: $A0
    adc [hl]                                      ; $61B5: $8E
    ret nz                                        ; $61B6: $C0

    adc [hl]                                      ; $61B7: $8E
    nop                                           ; $61B8: $00
    inc a                                         ; $61B9: $3C
    nop                                           ; $61BA: $00
    rst RST_38                                    ; $61BB: $FF
    nop                                           ; $61BC: $00
    rst RST_38                                    ; $61BD: $FF
    nop                                           ; $61BE: $00
    db $E3                                        ; $61BF: $E3
    nop                                           ; $61C0: $00
    rst RST_30                                    ; $61C1: $F7
    ld [hl+], a                                   ; $61C2: $22
    ld [hl+], a                                   ; $61C3: $22
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    inc de                                        ; $61C8: $13
    ld b, c                                       ; $61C9: $41
    dec c                                         ; $61CA: $0D
    pop bc                                        ; $61CB: $C1
    dec c                                         ; $61CC: $0D
    pop hl                                        ; $61CD: $E1
    dec b                                         ; $61CE: $05
    pop af                                        ; $61CF: $F1
    rlca                                          ; $61D0: $07
    pop af                                        ; $61D1: $F1
    dec b                                         ; $61D2: $05
    ld [hl], c                                    ; $61D3: $71
    dec b                                         ; $61D4: $05
    ld sp, $2105                                  ; $61D5: $31 $05 $21
    sub b                                         ; $61D8: $90
    add a                                         ; $61D9: $87
    ret nc                                        ; $61DA: $D0

    add a                                         ; $61DB: $87
    add b                                         ; $61DC: $80
    add e                                         ; $61DD: $83
    xor b                                         ; $61DE: $A8
    add b                                         ; $61DF: $80
    ret nz                                        ; $61E0: $C0

    add b                                         ; $61E1: $80
    add b                                         ; $61E2: $80
    cp [hl]                                       ; $61E3: $BE
    add b                                         ; $61E4: $80
    xor d                                         ; $61E5: $AA
    rst RST_38                                    ; $61E6: $FF
    rst RST_38                                    ; $61E7: $FF
    nop                                           ; $61E8: $00
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    add b                                         ; $61EB: $80
    nop                                           ; $61EC: $00
    pop bc                                        ; $61ED: $C1
    nop                                           ; $61EE: $00
    rst RST_38                                    ; $61EF: $FF
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    ld sp, hl                                     ; $61F2: $F9
    nop                                           ; $61F3: $00
    sbc [hl]                                      ; $61F4: $9E
    nop                                           ; $61F5: $00
    rst RST_38                                    ; $61F6: $FF
    rst RST_38                                    ; $61F7: $FF
    rlca                                          ; $61F8: $07
    ld h, c                                       ; $61F9: $61
    dec bc                                        ; $61FA: $0B
    pop bc                                        ; $61FB: $C1
    dec bc                                        ; $61FC: $0B
    add c                                         ; $61FD: $81
    dec e                                         ; $61FE: $1D
    ld bc, $0101                                  ; $61FF: $01 $01 $01
    ld bc, $017D                                  ; $6202: $01 $7D $01
    ld d, l                                       ; $6205: $55
    rst RST_38                                    ; $6206: $FF
    rst RST_38                                    ; $6207: $FF
    rst RST_38                                    ; $6208: $FF
    rst RST_38                                    ; $6209: $FF
    rst RST_38                                    ; $620A: $FF
    add b                                         ; $620B: $80
    rst RST_38                                    ; $620C: $FF
    sub h                                         ; $620D: $94
    rst RST_38                                    ; $620E: $FF
    and c                                         ; $620F: $A1
    rst RST_38                                    ; $6210: $FF
    or c                                          ; $6211: $B1
    rst RST_38                                    ; $6212: $FF
    xor b                                         ; $6213: $A8
    rst RST_38                                    ; $6214: $FF
    and b                                         ; $6215: $A0
    rst RST_38                                    ; $6216: $FF
    add b                                         ; $6217: $80
    rst RST_38                                    ; $6218: $FF
    rst RST_38                                    ; $6219: $FF
    rst RST_38                                    ; $621A: $FF
    nop                                           ; $621B: $00
    rst RST_38                                    ; $621C: $FF
    ld a, [bc]                                    ; $621D: $0A
    rst RST_38                                    ; $621E: $FF
    ld c, d                                       ; $621F: $4A
    rst RST_38                                    ; $6220: $FF
    ld d, e                                       ; $6221: $53
    rst RST_38                                    ; $6222: $FF
    ld b, b                                       ; $6223: $40
    rst RST_38                                    ; $6224: $FF
    add b                                         ; $6225: $80
    rst RST_38                                    ; $6226: $FF
    nop                                           ; $6227: $00
    rst RST_38                                    ; $6228: $FF
    rst RST_38                                    ; $6229: $FF
    rst RST_38                                    ; $622A: $FF
    ld bc, $01FF                                  ; $622B: $01 $FF $01
    rst RST_38                                    ; $622E: $FF
    add c                                         ; $622F: $81
    rst RST_38                                    ; $6230: $FF
    ld bc, $01FF                                  ; $6231: $01 $FF $01
    adc a                                         ; $6234: $8F
    ld bc, $11D7                                  ; $6235: $01 $D7 $11
    rst RST_38                                    ; $6238: $FF
    add b                                         ; $6239: $80
    rst RST_38                                    ; $623A: $FF
    add b                                         ; $623B: $80
    rst RST_38                                    ; $623C: $FF
    add b                                         ; $623D: $80
    rst RST_38                                    ; $623E: $FF
    add b                                         ; $623F: $80
    rst RST_38                                    ; $6240: $FF
    add b                                         ; $6241: $80
    rst RST_38                                    ; $6242: $FF
    add b                                         ; $6243: $80
    cp $80                                        ; $6244: $FE $80
    db $FC                                        ; $6246: $FC
    add c                                         ; $6247: $81
    ldh a, [rP1]                                  ; $6248: $F0 $00
    pop hl                                        ; $624A: $E1
    rrca                                          ; $624B: $0F
    ret z                                         ; $624C: $C8

    ld [$07A7], sp                                ; $624D: $08 $A7 $07
    ld e, a                                       ; $6250: $5F
    rra                                           ; $6251: $1F
    rrca                                          ; $6252: $0F
    rrca                                          ; $6253: $0F
    ret nz                                        ; $6254: $C0

    ldh a, [$FF33]                                ; $6255: $F0 $33
    ei                                            ; $6257: $FB
    sub a                                         ; $6258: $97
    ld de, $3137                                  ; $6259: $11 $37 $31
    ld [hl], a                                    ; $625C: $77
    ld [hl], c                                    ; $625D: $71
    or a                                          ; $625E: $B7
    or c                                          ; $625F: $B1
    add a                                         ; $6260: $87
    add c                                         ; $6261: $81
    inc sp                                        ; $6262: $33
    add hl, sp                                    ; $6263: $39
    jp Jump_000_03E1                              ; $6264: $C3 $E1 $03


    adc c                                         ; $6267: $89
    ld sp, hl                                     ; $6268: $F9
    add e                                         ; $6269: $83
    or $87                                        ; $626A: $F6 $87
    db $EB                                        ; $626C: $EB
    adc a                                         ; $626D: $8F
    db $DD                                        ; $626E: $DD
    sbc a                                         ; $626F: $9F
    ldh [$FF80], a                                ; $6270: $E0 $80
    rst RST_38                                    ; $6272: $FF
    add b                                         ; $6273: $80
    rst RST_38                                    ; $6274: $FF
    add b                                         ; $6275: $80
    rst RST_38                                    ; $6276: $FF
    rst RST_38                                    ; $6277: $FF
    sbc b                                         ; $6278: $98
    ei                                            ; $6279: $FB
    ret z                                         ; $627A: $C8

    ld hl, sp+$60                                 ; $627B: $F8 $60
    ld sp, hl                                     ; $627D: $F9
    nop                                           ; $627E: $00
    ldh a, [rTMA]                                 ; $627F: $F0 $06
    nop                                           ; $6281: $00
    rst RST_38                                    ; $6282: $FF
    nop                                           ; $6283: $00
    rst RST_38                                    ; $6284: $FF
    nop                                           ; $6285: $00
    rst RST_38                                    ; $6286: $FF
    rst RST_38                                    ; $6287: $FF
    inc bc                                        ; $6288: $03
    ld sp, $D903                                  ; $6289: $31 $03 $D9
    rlca                                          ; $628C: $07
    ld [hl], c                                    ; $628D: $71
    rrca                                          ; $628E: $0F
    pop hl                                        ; $628F: $E1
    rra                                           ; $6290: $1F
    ld bc, $01FF                                  ; $6291: $01 $FF $01
    rst RST_38                                    ; $6294: $FF
    ld bc, $FFFF                                  ; $6295: $01 $FF $FF
    rst RST_38                                    ; $6298: $FF
    rst RST_38                                    ; $6299: $FF
    rst RST_38                                    ; $629A: $FF
    add b                                         ; $629B: $80
    rst RST_38                                    ; $629C: $FF
    add b                                         ; $629D: $80
    ldh a, [$FF80]                                ; $629E: $F0 $80
    rst RST_28                                    ; $62A0: $EF
    adc a                                         ; $62A1: $8F
    rst RST_28                                    ; $62A2: $EF
    adc a                                         ; $62A3: $8F
    di                                            ; $62A4: $F3
    add e                                         ; $62A5: $83
    db $FC                                        ; $62A6: $FC
    add b                                         ; $62A7: $80
    rst RST_38                                    ; $62A8: $FF
    rst RST_38                                    ; $62A9: $FF
    db $FC                                        ; $62AA: $FC
    nop                                           ; $62AB: $00
    ldh [$FF03], a                                ; $62AC: $E0 $03
    ld e, $1F                                     ; $62AE: $1E $1F
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
    ld a, a                                       ; $62BA: $7F
    ld bc, $813F                                  ; $62BB: $01 $3F $81
    rra                                           ; $62BE: $1F
    pop bc                                        ; $62BF: $C1
    adc a                                         ; $62C0: $8F
    pop hl                                        ; $62C1: $E1
    rst RST_00                                    ; $62C2: $C7
    pop af                                        ; $62C3: $F1
    db $E3                                        ; $62C4: $E3
    ld sp, hl                                     ; $62C5: $F9
    pop hl                                        ; $62C6: $E1
    db $FD                                        ; $62C7: $FD
    cp $80                                        ; $62C8: $FE $80
    db $FC                                        ; $62CA: $FC
    add c                                         ; $62CB: $81
    ld sp, hl                                     ; $62CC: $F9
    add e                                         ; $62CD: $83
    di                                            ; $62CE: $F3
    add a                                         ; $62CF: $87
    db $E3                                        ; $62D0: $E3
    adc a                                         ; $62D1: $8F
    db $E3                                        ; $62D2: $E3
    adc a                                         ; $62D3: $8F
    ldh a, [$FF83]                                ; $62D4: $F0 $83
    adc h                                         ; $62D6: $8C
    adc h                                         ; $62D7: $8C
    ld a, a                                       ; $62D8: $7F
    ld a, a                                       ; $62D9: $7F
    ld a, a                                       ; $62DA: $7F
    rst RST_38                                    ; $62DB: $FF
    ld hl, sp-$01                                 ; $62DC: $F8 $FF
    db $FC                                        ; $62DE: $FC
    rst RST_38                                    ; $62DF: $FF
    rst RST_38                                    ; $62E0: $FF
    rst RST_38                                    ; $62E1: $FF
    rst RST_38                                    ; $62E2: $FF
    rst RST_38                                    ; $62E3: $FF
    ld a, a                                       ; $62E4: $7F
    rst RST_38                                    ; $62E5: $FF
    rrca                                          ; $62E6: $0F
    ld a, a                                       ; $62E7: $7F
    pop bc                                        ; $62E8: $C1
    rst RST_38                                    ; $62E9: $FF
    ld bc, $03FD                                  ; $62EA: $01 $FD $03
    ld bc, $C11F                                  ; $62ED: $01 $1F $C1
    rra                                           ; $62F0: $1F
    pop bc                                        ; $62F1: $C1
    adc a                                         ; $62F2: $8F
    pop hl                                        ; $62F3: $E1
    adc a                                         ; $62F4: $8F
    pop hl                                        ; $62F5: $E1
    add a                                         ; $62F6: $87
    pop af                                        ; $62F7: $F1
    ld hl, sp-$01                                 ; $62F8: $F8 $FF
    add c                                         ; $62FA: $81
    cp a                                          ; $62FB: $BF
    pop bc                                        ; $62FC: $C1
    add c                                         ; $62FD: $81
    ld a, [$F483]                                 ; $62FE: $FA $83 $F4
    add a                                         ; $6301: $87
    ld hl, sp-$80                                 ; $6302: $F8 $80
    rst RST_38                                    ; $6304: $FF
    add b                                         ; $6305: $80
    rst RST_38                                    ; $6306: $FF
    rst RST_38                                    ; $6307: $FF
    nop                                           ; $6308: $00
    rrca                                          ; $6309: $0F
    add b                                         ; $630A: $80
    pop hl                                        ; $630B: $E1
    inc [hl]                                      ; $630C: $34
    db $FC                                        ; $630D: $FC
    ld h, [hl]                                    ; $630E: $66
    rst RST_38                                    ; $630F: $FF
    ld h, d                                       ; $6310: $62
    ld a, a                                       ; $6311: $7F
    and d                                         ; $6312: $A2
    inc sp                                        ; $6313: $33
    adc b                                         ; $6314: $88
    ld [hl+], a                                   ; $6315: $22
    rst RST_38                                    ; $6316: $FF
    rst RST_38                                    ; $6317: $FF
    rlca                                          ; $6318: $07
    pop af                                        ; $6319: $F1
    rrca                                          ; $631A: $0F
    pop bc                                        ; $631B: $C1
    inc bc                                        ; $631C: $03
    ld sp, $FD61                                  ; $631D: $31 $61 $FD
    inc hl                                        ; $6320: $23
    and c                                         ; $6321: $A1
    rrca                                          ; $6322: $0F
    ld hl, $01DF                                  ; $6323: $21 $DF $01
    rst RST_38                                    ; $6326: $FF
    rst RST_38                                    ; $6327: $FF
    rst RST_38                                    ; $6328: $FF
    rst RST_38                                    ; $6329: $FF
    rst RST_38                                    ; $632A: $FF
    add b                                         ; $632B: $80
    rst RST_38                                    ; $632C: $FF
    add c                                         ; $632D: $81
    rst RST_38                                    ; $632E: $FF
    add e                                         ; $632F: $83
    rst RST_38                                    ; $6330: $FF
    add b                                         ; $6331: $80
    rst RST_38                                    ; $6332: $FF
    add b                                         ; $6333: $80
    rst RST_38                                    ; $6334: $FF
    add c                                         ; $6335: $81
    rst RST_38                                    ; $6336: $FF
    xor b                                         ; $6337: $A8
    rst RST_38                                    ; $6338: $FF
    rst RST_38                                    ; $6339: $FF
    rst RST_38                                    ; $633A: $FF
    nop                                           ; $633B: $00
    rst RST_38                                    ; $633C: $FF
    ldh [rIE], a                                  ; $633D: $E0 $FF
    inc l                                         ; $633F: $2C
    rst RST_38                                    ; $6340: $FF
    pop hl                                        ; $6341: $E1
    rst RST_38                                    ; $6342: $FF
    ld b, d                                       ; $6343: $42
    rst RST_38                                    ; $6344: $FF
    adc h                                         ; $6345: $8C
    rst RST_38                                    ; $6346: $FF
    nop                                           ; $6347: $00
    rst RST_38                                    ; $6348: $FF
    rst RST_38                                    ; $6349: $FF
    rst RST_38                                    ; $634A: $FF
    ld bc, $01FF                                  ; $634B: $01 $FF $01
    rst RST_38                                    ; $634E: $FF
    add hl, sp                                    ; $634F: $39
    rst RST_38                                    ; $6350: $FF
    ld c, c                                       ; $6351: $49
    rst RST_38                                    ; $6352: $FF
    add hl, bc                                    ; $6353: $09
    rst RST_38                                    ; $6354: $FF
    ld de, $61FF                                  ; $6355: $11 $FF $61
    rst RST_38                                    ; $6358: $FF
    add b                                         ; $6359: $80
    rst RST_30                                    ; $635A: $F7
    ret nz                                        ; $635B: $C0

    pop hl                                        ; $635C: $E1
    adc b                                         ; $635D: $88
    ldh [$FF86], a                                ; $635E: $E0 $86
    ld hl, sp-$7F                                 ; $6360: $F8 $81
    cp $80                                        ; $6362: $FE $80
    rst RST_38                                    ; $6364: $FF
    add b                                         ; $6365: $80
    cp $80                                        ; $6366: $FE $80
    rst RST_38                                    ; $6368: $FF
    nop                                           ; $6369: $00
    rst RST_38                                    ; $636A: $FF
    nop                                           ; $636B: $00
    ldh a, [rP1]                                  ; $636C: $F0 $00
    ld b, b                                       ; $636E: $40
    rrca                                          ; $636F: $0F
    nop                                           ; $6370: $00
    add b                                         ; $6371: $80
    nop                                           ; $6372: $00
    ld a, a                                       ; $6373: $7F
    nop                                           ; $6374: $00
    ld a, a                                       ; $6375: $7F
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    rst RST_38                                    ; $6378: $FF
    ld bc, $01FF                                  ; $6379: $01 $FF $01
    rst RST_38                                    ; $637C: $FF
    ld bc, $017F                                  ; $637D: $01 $7F $01
    rra                                           ; $6380: $1F
    ld bc, $C10F                                  ; $6381: $01 $0F $C1
    rrca                                          ; $6384: $0F
    pop hl                                        ; $6385: $E1
    rrca                                          ; $6386: $0F
    ld hl, $81F0                                  ; $6387: $21 $F0 $81
    ldh [$FF87], a                                ; $638A: $E0 $87
    ldh [$FF89], a                                ; $638C: $E0 $89
    ldh [$FF89], a                                ; $638E: $E0 $89
    ldh a, [$FF81]                                ; $6390: $F0 $81
    cp $80                                        ; $6392: $FE $80
    rst RST_38                                    ; $6394: $FF
    add b                                         ; $6395: $80
    rst RST_38                                    ; $6396: $FF
    rst RST_38                                    ; $6397: $FF
    nop                                           ; $6398: $00
    rst RST_38                                    ; $6399: $FF
    nop                                           ; $639A: $00
    rst RST_38                                    ; $639B: $FF
    nop                                           ; $639C: $00
    rst RST_38                                    ; $639D: $FF
    nop                                           ; $639E: $00
    sbc c                                         ; $639F: $99
    nop                                           ; $63A0: $00
    sbc c                                         ; $63A1: $99
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    rst RST_38                                    ; $63A4: $FF
    nop                                           ; $63A5: $00
    rst RST_38                                    ; $63A6: $FF
    rst RST_38                                    ; $63A7: $FF
    rrca                                          ; $63A8: $0F
    pop bc                                        ; $63A9: $C1
    rlca                                          ; $63AA: $07
    pop af                                        ; $63AB: $F1
    inc bc                                        ; $63AC: $03
    sbc c                                         ; $63AD: $99
    inc bc                                        ; $63AE: $03
    sbc c                                         ; $63AF: $99
    rlca                                          ; $63B0: $07
    pop bc                                        ; $63B1: $C1
    rra                                           ; $63B2: $1F
    ld bc, $01FF                                  ; $63B3: $01 $FF $01
    rst RST_38                                    ; $63B6: $FF
    rst RST_38                                    ; $63B7: $FF
    rst RST_38                                    ; $63B8: $FF
    rst RST_38                                    ; $63B9: $FF
    rst RST_38                                    ; $63BA: $FF
    add b                                         ; $63BB: $80
    rst RST_38                                    ; $63BC: $FF
    add b                                         ; $63BD: $80
    rst RST_38                                    ; $63BE: $FF
    add b                                         ; $63BF: $80
    cp $80                                        ; $63C0: $FE $80
    db $FC                                        ; $63C2: $FC
    add c                                         ; $63C3: $81
    db $FC                                        ; $63C4: $FC
    add b                                         ; $63C5: $80
    sbc h                                         ; $63C6: $9C
    add c                                         ; $63C7: $81
    rst RST_38                                    ; $63C8: $FF
    rst RST_38                                    ; $63C9: $FF
    rst RST_38                                    ; $63CA: $FF
    nop                                           ; $63CB: $00
    rst RST_38                                    ; $63CC: $FF
    nop                                           ; $63CD: $00
    rst RST_38                                    ; $63CE: $FF
    nop                                           ; $63CF: $00
    ld sp, $0000                                  ; $63D0: $31 $00 $00
    adc $00                                       ; $63D3: $CE $00
    ldh [c], a                                    ; $63D5: $E2
    nop                                           ; $63D6: $00
    rst RST_38                                    ; $63D7: $FF
    rst RST_38                                    ; $63D8: $FF
    rst RST_38                                    ; $63D9: $FF
    rst RST_38                                    ; $63DA: $FF
    ld bc, $01FF                                  ; $63DB: $01 $FF $01
    rst RST_38                                    ; $63DE: $FF
    ld bc, $01FF                                  ; $63DF: $01 $FF $01
    rst RST_38                                    ; $63E2: $FF
    ld bc, $017F                                  ; $63E3: $01 $7F $01
    ccf                                           ; $63E6: $3F
    add c                                         ; $63E7: $81
    add b                                         ; $63E8: $80
    db $E3                                        ; $63E9: $E3
    add b                                         ; $63EA: $80
    db $FD                                        ; $63EB: $FD
    add b                                         ; $63EC: $80
    sbc e                                         ; $63ED: $9B
    add b                                         ; $63EE: $80
    sbc l                                         ; $63EF: $9D
    add b                                         ; $63F0: $80
    rst RST_38                                    ; $63F1: $FF
    add b                                         ; $63F2: $80
    rst RST_28                                    ; $63F3: $EF
    add b                                         ; $63F4: $80
    rst RST_38                                    ; $63F5: $FF
    add b                                         ; $63F6: $80
    sbc $00                                       ; $63F7: $DE $00
    rst RST_38                                    ; $63F9: $FF
    nop                                           ; $63FA: $00
    add [hl]                                      ; $63FB: $86
    ld e, c                                       ; $63FC: $59
    rst RST_18                                    ; $63FD: $DF
    nop                                           ; $63FE: $00
    add [hl]                                      ; $63FF: $86
    nop                                           ; $6400: $00
    rst RST_38                                    ; $6401: $FF
    nop                                           ; $6402: $00
    db $E3                                        ; $6403: $E3
    nop                                           ; $6404: $00
    rst RST_38                                    ; $6405: $FF
    nop                                           ; $6406: $00
    db $E3                                        ; $6407: $E3
    ccf                                           ; $6408: $3F
    add c                                         ; $6409: $81
    ccf                                           ; $640A: $3F
    ld bc, $415F                                  ; $640B: $01 $5F $41
    rlca                                          ; $640E: $07
    ld hl, $F103                                  ; $640F: $21 $03 $F1
    rlca                                          ; $6412: $07
    ld de, $B103                                  ; $6413: $11 $03 $B1
    rlca                                          ; $6416: $07
    and c                                         ; $6417: $A1
    add b                                         ; $6418: $80
    rst RST_38                                    ; $6419: $FF
    add b                                         ; $641A: $80
    di                                            ; $641B: $F3
    add b                                         ; $641C: $80
    jp nc, $DE80                                  ; $641D: $D2 $80 $DE

    add b                                         ; $6420: $80
    sbc $80                                       ; $6421: $DE $80
    adc a                                         ; $6423: $8F
    ldh [$FF87], a                                ; $6424: $E0 $87
    rst RST_38                                    ; $6426: $FF
    rst RST_38                                    ; $6427: $FF
    nop                                           ; $6428: $00
    ccf                                           ; $6429: $3F
    nop                                           ; $642A: $00
    rrca                                          ; $642B: $0F
    nop                                           ; $642C: $00
    ldh [$FF03], a                                ; $642D: $E0 $03
    ret nc                                        ; $642F: $D0

    nop                                           ; $6430: $00
    ld hl, sp+$00                                 ; $6431: $F8 $00
    ccf                                           ; $6433: $3F
    nop                                           ; $6434: $00
    add hl, bc                                    ; $6435: $09
    rst RST_38                                    ; $6436: $FF
    rst RST_38                                    ; $6437: $FF
    rrca                                          ; $6438: $0F
    ld bc, $C11F                                  ; $6439: $01 $1F $C1
    ccf                                           ; $643C: $3F
    ld bc, $01FF                                  ; $643D: $01 $FF $01
    ccf                                           ; $6440: $3F
    ld bc, $C11F                                  ; $6441: $01 $1F $C1
    rra                                           ; $6444: $1F
    pop bc                                        ; $6445: $C1
    rst RST_38                                    ; $6446: $FF
    rst RST_38                                    ; $6447: $FF
    rst RST_38                                    ; $6448: $FF
    rst RST_38                                    ; $6449: $FF
    db $FC                                        ; $644A: $FC
    add c                                         ; $644B: $81
    ld hl, sp-$7D                                 ; $644C: $F8 $83
    ldh a, [$FF80]                                ; $644E: $F0 $80
    xor $8F                                       ; $6450: $EE $8F
    di                                            ; $6452: $F3
    add e                                         ; $6453: $83
    pop af                                        ; $6454: $F1
    add l                                         ; $6455: $85
    ld hl, sp-$7E                                 ; $6456: $F8 $82
    rst RST_38                                    ; $6458: $FF
    rst RST_38                                    ; $6459: $FF
    nop                                           ; $645A: $00
    rst RST_38                                    ; $645B: $FF
    nop                                           ; $645C: $00
    add e                                         ; $645D: $83
    ld a, b                                       ; $645E: $78
    ld a, h                                       ; $645F: $7C
    ld e, $1F                                     ; $6460: $1E $1F
    rlca                                          ; $6462: $07
    and a                                         ; $6463: $A7
    add e                                         ; $6464: $83
    db $DB                                        ; $6465: $DB
    nop                                           ; $6466: $00
    inc a                                         ; $6467: $3C
    rst RST_38                                    ; $6468: $FF
    rst RST_38                                    ; $6469: $FF
    rra                                           ; $646A: $1F
    add c                                         ; $646B: $81
    rrca                                          ; $646C: $0F
    pop hl                                        ; $646D: $E1
    rlca                                          ; $646E: $07
    pop af                                        ; $646F: $F1
    inc bc                                        ; $6470: $03
    ld a, c                                       ; $6471: $79
    inc bc                                        ; $6472: $03
    cp c                                          ; $6473: $B9
    add c                                         ; $6474: $81
    cp l                                          ; $6475: $BD
    ld bc, $BC7D                                  ; $6476: $01 $7D $BC
    add c                                         ; $6479: $81
    ret c                                         ; $647A: $D8

    ret nz                                        ; $647B: $C0

    and $E6                                       ; $647C: $E6 $E6
    cp c                                          ; $647E: $B9
    ld sp, hl                                     ; $647F: $F9
    cp [hl]                                       ; $6480: $BE
    cp [hl]                                       ; $6481: $BE
    sbc [hl]                                      ; $6482: $9E
    cp [hl]                                       ; $6483: $BE
    call z, $C09D                                 ; $6484: $CC $9D $C0
    add e                                         ; $6487: $83
    nop                                           ; $6488: $00
    rst RST_38                                    ; $6489: $FF
    nop                                           ; $648A: $00
    ld [hl], b                                    ; $648B: $70
    adc l                                         ; $648C: $8D
    xor l                                         ; $648D: $AD
    adc a                                         ; $648E: $8F
    xor a                                         ; $648F: $AF
    nop                                           ; $6490: $00
    ld [hl], b                                    ; $6491: $70
    nop                                           ; $6492: $00
    rst RST_38                                    ; $6493: $FF
    nop                                           ; $6494: $00
    rst RST_38                                    ; $6495: $FF
    nop                                           ; $6496: $00
    rst RST_38                                    ; $6497: $FF
    inc bc                                        ; $6498: $03
    db $FD                                        ; $6499: $FD
    inc bc                                        ; $649A: $03
    dec a                                         ; $649B: $3D
    jp $C3DD                                      ; $649C: $C3 $DD $C3


    db $DD                                        ; $649F: $DD
    dec b                                         ; $64A0: $05
    add hl, sp                                    ; $64A1: $39
    dec b                                         ; $64A2: $05
    ld sp, hl                                     ; $64A3: $F9
    dec bc                                        ; $64A4: $0B
    pop af                                        ; $64A5: $F1
    inc bc                                        ; $64A6: $03
    pop af                                        ; $64A7: $F1
    ret nc                                        ; $64A8: $D0

    adc a                                         ; $64A9: $8F
    ret nc                                        ; $64AA: $D0

    add l                                         ; $64AB: $85
    add sp, -$79                                  ; $64AC: $E8 $87
    ldh a, [$FF80]                                ; $64AE: $F0 $80
    ld a, [$FD80]                                 ; $64B0: $FA $80 $FD
    add b                                         ; $64B3: $80
    cp $80                                        ; $64B4: $FE $80
    rst RST_38                                    ; $64B6: $FF
    rst RST_38                                    ; $64B7: $FF
    nop                                           ; $64B8: $00
    rst RST_38                                    ; $64B9: $FF
    nop                                           ; $64BA: $00
    db $FC                                        ; $64BB: $FC
    nop                                           ; $64BC: $00
    ldh a, [rSB]                                  ; $64BD: $F0 $01
    nop                                           ; $64BF: $00
    inc bc                                        ; $64C0: $03
    nop                                           ; $64C1: $00
    ld b, $00                                     ; $64C2: $06 $00
    db $FC                                        ; $64C4: $FC
    nop                                           ; $64C5: $00
    rst RST_38                                    ; $64C6: $FF
    rst RST_38                                    ; $64C7: $FF
    rla                                           ; $64C8: $17
    ld h, c                                       ; $64C9: $61
    rst RST_28                                    ; $64CA: $EF
    ld bc, $01DF                                  ; $64CB: $01 $DF $01
    cp a                                          ; $64CE: $BF
    ld bc, $1927                                  ; $64CF: $01 $27 $19
    ld b, e                                       ; $64D2: $43
    dec a                                         ; $64D3: $3D
    jp $FF3D                                      ; $64D4: $C3 $3D $FF


    rst RST_38                                    ; $64D7: $FF
    rst RST_38                                    ; $64D8: $FF
    rst RST_38                                    ; $64D9: $FF
    rst RST_38                                    ; $64DA: $FF
    add b                                         ; $64DB: $80
    cp $80                                        ; $64DC: $FE $80
    ld hl, sp-$80                                 ; $64DE: $F8 $80
    ldh a, [$FF80]                                ; $64E0: $F0 $80
    ldh [$FF80], a                                ; $64E2: $E0 $80
    ldh [$FF81], a                                ; $64E4: $E0 $81
    ret nz                                        ; $64E6: $C0

    add e                                         ; $64E7: $83
    rst RST_38                                    ; $64E8: $FF
    rst RST_38                                    ; $64E9: $FF
    rst RST_38                                    ; $64EA: $FF
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    nop                                           ; $64EE: $00
    nop                                           ; $64EF: $00
    nop                                           ; $64F0: $00
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    jp $FF00                                      ; $64F3: $C3 $00 $FF


    nop                                           ; $64F6: $00
    rst RST_38                                    ; $64F7: $FF
    rst RST_38                                    ; $64F8: $FF
    rst RST_38                                    ; $64F9: $FF
    rst RST_38                                    ; $64FA: $FF
    ld bc, $01FF                                  ; $64FB: $01 $FF $01
    ccf                                           ; $64FE: $3F
    ld bc, $011F                                  ; $64FF: $01 $1F $01
    rrca                                          ; $6502: $0F
    ld bc, $8107                                  ; $6503: $01 $07 $81
    rlca                                          ; $6506: $07
    pop bc                                        ; $6507: $C1
    ret nz                                        ; $6508: $C0

    sub d                                         ; $6509: $92
    ret nz                                        ; $650A: $C0

    sub e                                         ; $650B: $93
    add b                                         ; $650C: $80
    add a                                         ; $650D: $87
    add b                                         ; $650E: $80
    add a                                         ; $650F: $87
    add b                                         ; $6510: $80
    adc a                                         ; $6511: $8F
    add b                                         ; $6512: $80
    adc h                                         ; $6513: $8C
    add b                                         ; $6514: $80
    adc [hl]                                      ; $6515: $8E
    ret nz                                        ; $6516: $C0

    add a                                         ; $6517: $87
    nop                                           ; $6518: $00
    inc e                                         ; $6519: $1C
    nop                                           ; $651A: $00
    rst RST_38                                    ; $651B: $FF
    nop                                           ; $651C: $00
    rst RST_10                                    ; $651D: $D7
    nop                                           ; $651E: $00
    rst RST_10                                    ; $651F: $D7
    nop                                           ; $6520: $00
    rst RST_38                                    ; $6521: $FF
    nop                                           ; $6522: $00
    rst RST_38                                    ; $6523: $FF
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    rst RST_38                                    ; $6527: $FF
    inc bc                                        ; $6528: $03
    ld c, c                                       ; $6529: $49
    inc bc                                        ; $652A: $03
    ret                                           ; $652B: $C9


    inc bc                                        ; $652C: $03
    pop hl                                        ; $652D: $E1
    inc bc                                        ; $652E: $03
    pop hl                                        ; $652F: $E1
    inc bc                                        ; $6530: $03
    pop af                                        ; $6531: $F1
    inc bc                                        ; $6532: $03
    ld de, $7103                                  ; $6533: $11 $03 $71
    rlca                                          ; $6536: $07
    pop hl                                        ; $6537: $E1
    ldh [$FF80], a                                ; $6538: $E0 $80
    ret nz                                        ; $653A: $C0

    add b                                         ; $653B: $80
    add b                                         ; $653C: $80
    add b                                         ; $653D: $80
    add b                                         ; $653E: $80
    adc a                                         ; $653F: $8F
    add b                                         ; $6540: $80
    sbc a                                         ; $6541: $9F
    add b                                         ; $6542: $80
    sbc a                                         ; $6543: $9F
    add b                                         ; $6544: $80
    adc a                                         ; $6545: $8F
    rst RST_38                                    ; $6546: $FF
    rst RST_38                                    ; $6547: $FF
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654A: $00
    nop                                           ; $654B: $00
    nop                                           ; $654C: $00
    nop                                           ; $654D: $00
    nop                                           ; $654E: $00
    rst RST_00                                    ; $654F: $C7
    nop                                           ; $6550: $00
    rst RST_28                                    ; $6551: $EF
    nop                                           ; $6552: $00
    rst RST_38                                    ; $6553: $FF
    nop                                           ; $6554: $00
    rst RST_38                                    ; $6555: $FF
    rst RST_38                                    ; $6556: $FF
    rst RST_38                                    ; $6557: $FF
    rlca                                          ; $6558: $07
    ld bc, $0103                                  ; $6559: $01 $03 $01
    ld bc, $0101                                  ; $655C: $01 $01 $01
    pop bc                                        ; $655F: $C1
    ld bc, $01E1                                  ; $6560: $01 $E1 $01
    pop hl                                        ; $6563: $E1
    ld bc, $FFC1                                  ; $6564: $01 $C1 $FF
    rst RST_38                                    ; $6567: $FF
    rst RST_38                                    ; $6568: $FF
    rst RST_38                                    ; $6569: $FF
    rst RST_38                                    ; $656A: $FF
    add b                                         ; $656B: $80
    rst RST_38                                    ; $656C: $FF
    add b                                         ; $656D: $80
    cp $80                                        ; $656E: $FE $80
    ldh a, [$FF81]                                ; $6570: $F0 $81
    ldh [$FF8F], a                                ; $6572: $E0 $8F
    ret nz                                        ; $6574: $C0

    sub a                                         ; $6575: $97
    ret nz                                        ; $6576: $C0

    sbc a                                         ; $6577: $9F
    rst RST_38                                    ; $6578: $FF
    rst RST_38                                    ; $6579: $FF
    rst RST_38                                    ; $657A: $FF
    nop                                           ; $657B: $00
    db $FC                                        ; $657C: $FC
    nop                                           ; $657D: $00
    inc bc                                        ; $657E: $03
    inc bc                                        ; $657F: $03
    rlca                                          ; $6580: $07
    rst RST_30                                    ; $6581: $F7
    ld b, $F6                                     ; $6582: $06 $F6
    ld b, $F6                                     ; $6584: $06 $F6
    ld [bc], a                                    ; $6586: $02
    ld a, [$FFFF]                                 ; $6587: $FA $FF $FF
    rst RST_38                                    ; $658A: $FF
    ld bc, $017F                                  ; $658B: $01 $7F $01
    cp a                                          ; $658E: $BF
    add c                                         ; $658F: $81
    rst RST_18                                    ; $6590: $DF
    pop bc                                        ; $6591: $C1
    ld e, a                                       ; $6592: $5F
    ld b, c                                       ; $6593: $41
    cpl                                           ; $6594: $2F
    ld hl, $212F                                  ; $6595: $21 $2F $21
    ret nz                                        ; $6598: $C0

    sbc a                                         ; $6599: $9F
    add sp, -$79                                  ; $659A: $E8 $87
    or c                                          ; $659C: $B1
    ret nz                                        ; $659D: $C0

    call nc, $AAAA                                ; $659E: $D4 $AA $AA
    push de                                       ; $65A1: $D5
    ret nc                                        ; $65A2: $D0

    and b                                         ; $65A3: $A0
    and b                                         ; $65A4: $A0
    rst RST_08                                    ; $65A5: $CF
    ldh a, [$FF80]                                ; $65A6: $F0 $80
    inc bc                                        ; $65A8: $03
    ei                                            ; $65A9: $FB
    ld bc, $00FD                                  ; $65AA: $01 $FD $00
    cp $20                                        ; $65AD: $FE $20
    rra                                           ; $65AF: $1F
    adc b                                         ; $65B0: $88
    ld b, a                                       ; $65B1: $47
    nop                                           ; $65B2: $00
    inc bc                                        ; $65B3: $03
    nop                                           ; $65B4: $00
    rst RST_38                                    ; $65B5: $FF
    ld [$2F07], sp                                ; $65B6: $08 $07 $2F
    ld hl, $E1EF                                  ; $65B9: $21 $EF $E1
    rst RST_10                                    ; $65BC: $D7
    pop bc                                        ; $65BD: $C1
    daa                                           ; $65BE: $27
    ld de, $F10B                                  ; $65BF: $11 $0B $F1
    dec b                                         ; $65C2: $05
    ld sp, hl                                     ; $65C3: $F9
    inc bc                                        ; $65C4: $03
    db $FD                                        ; $65C5: $FD
    ld bc, $FFFF                                  ; $65C6: $01 $FF $FF
    add b                                         ; $65C9: $80
    rst RST_38                                    ; $65CA: $FF
    add b                                         ; $65CB: $80
    rst RST_38                                    ; $65CC: $FF
    add b                                         ; $65CD: $80
    rst RST_38                                    ; $65CE: $FF
    add b                                         ; $65CF: $80
    rst RST_38                                    ; $65D0: $FF
    add b                                         ; $65D1: $80
    rst RST_38                                    ; $65D2: $FF
    add b                                         ; $65D3: $80
    rst RST_38                                    ; $65D4: $FF
    add b                                         ; $65D5: $80
    rst RST_38                                    ; $65D6: $FF
    rst RST_38                                    ; $65D7: $FF
    db $F4                                        ; $65D8: $F4
    inc bc                                        ; $65D9: $03
    ei                                            ; $65DA: $FB
    nop                                           ; $65DB: $00
    add b                                         ; $65DC: $80
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    add hl, sp                                    ; $65DF: $39
    nop                                           ; $65E0: $00
    ld a, a                                       ; $65E1: $7F
    nop                                           ; $65E2: $00
    ld d, e                                       ; $65E3: $53
    xor h                                         ; $65E4: $AC
    nop                                           ; $65E5: $00
    rst RST_38                                    ; $65E6: $FF
    rst RST_38                                    ; $65E7: $FF
    ld bc, $01FF                                  ; $65E8: $01 $FF $01
    ld a, a                                       ; $65EB: $7F
    dec b                                         ; $65EC: $05
    ei                                            ; $65ED: $FB
    add hl, de                                    ; $65EE: $19
    rst RST_20                                    ; $65EF: $E7
    ld de, $21CF                                  ; $65F0: $11 $CF $21
    sbc a                                         ; $65F3: $9F
    ld h, c                                       ; $65F4: $61
    rra                                           ; $65F5: $1F
    rst RST_38                                    ; $65F6: $FF
    rst RST_38                                    ; $65F7: $FF
    rst RST_38                                    ; $65F8: $FF
    rst RST_38                                    ; $65F9: $FF
    db $FC                                        ; $65FA: $FC
    db $FD                                        ; $65FB: $FD
    db $FC                                        ; $65FC: $FC
    db $FD                                        ; $65FD: $FD
    db $FC                                        ; $65FE: $FC
    db $FD                                        ; $65FF: $FD
    ld hl, sp-$07                                 ; $6600: $F8 $F9
    add h                                         ; $6602: $84
    add l                                         ; $6603: $85
    ld hl, sp-$08                                 ; $6604: $F8 $F8
    add [hl]                                      ; $6606: $86
    add [hl]                                      ; $6607: $86
    rst RST_38                                    ; $6608: $FF
    rst RST_38                                    ; $6609: $FF
    ld a, a                                       ; $660A: $7F
    ld a, a                                       ; $660B: $7F
    xor d                                         ; $660C: $AA
    ld a, [hl+]                                   ; $660D: $2A
    nop                                           ; $660E: $00
    sub l                                         ; $660F: $95
    ld c, d                                       ; $6610: $4A
    push de                                       ; $6611: $D5
    ld e, a                                       ; $6612: $5F
    ret nz                                        ; $6613: $C0

    ld h, b                                       ; $6614: $60
    ret nz                                        ; $6615: $C0

    ld b, [hl]                                    ; $6616: $46
    or $FF                                        ; $6617: $F6 $FF
    rst RST_38                                    ; $6619: $FF
    db $EB                                        ; $661A: $EB
    db $E3                                        ; $661B: $E3
    adc e                                         ; $661C: $8B
    sub e                                         ; $661D: $93
    dec bc                                        ; $661E: $0B
    ld d, e                                       ; $661F: $53
    adc e                                         ; $6620: $8B
    inc sp                                        ; $6621: $33
    adc e                                         ; $6622: $8B
    inc sp                                        ; $6623: $33
    rla                                           ; $6624: $17
    ld h, a                                       ; $6625: $67
    ld d, a                                       ; $6626: $57
    rst RST_20                                    ; $6627: $E7
    ld hl, sp-$08                                 ; $6628: $F8 $F8
    rst RST_30                                    ; $662A: $F7
    ldh a, [$FFD8]                                ; $662B: $F0 $D8
    rst RST_08                                    ; $662D: $CF
    and a                                         ; $662E: $A7
    sbc a                                         ; $662F: $9F
    sbc $BF                                       ; $6630: $DE $BF
    or c                                          ; $6632: $B1
    rst RST_38                                    ; $6633: $FF
    and a                                         ; $6634: $A7
    ld hl, sp-$01                                 ; $6635: $F8 $FF
    cp $40                                        ; $6637: $FE $40
    ld b, b                                       ; $6639: $40
    pop af                                        ; $663A: $F1
    ld b, a                                       ; $663B: $47
    ld a, d                                       ; $663C: $7A
    jp $E7DC                                      ; $663D: $C3 $DC $E7


    ld e, h                                       ; $6640: $5C
    jp hl                                         ; $6641: $E9


    db $FC                                        ; $6642: $FC
    ld de, $01FC                                  ; $6643: $11 $FC $01
    rst RST_38                                    ; $6646: $FF
    rrca                                          ; $6647: $0F
    add c                                         ; $6648: $81
    add c                                         ; $6649: $81
    db $DB                                        ; $664A: $DB
    db $DB                                        ; $664B: $DB
    ld [hl], a                                    ; $664C: $77
    ld [hl], a                                    ; $664D: $77
    rrca                                          ; $664E: $0F
    adc a                                         ; $664F: $8F
    cpl                                           ; $6650: $2F
    rst RST_08                                    ; $6651: $CF
    ld e, a                                       ; $6652: $5F
    sbc a                                         ; $6653: $9F
    ccf                                           ; $6654: $3F
    cp a                                          ; $6655: $BF
    rst RST_38                                    ; $6656: $FF
    rst RST_38                                    ; $6657: $FF
    rst RST_38                                    ; $6658: $FF
    add b                                         ; $6659: $80
    rst RST_38                                    ; $665A: $FF
    add c                                         ; $665B: $81
    cp $82                                        ; $665C: $FE $82
    db $FC                                        ; $665E: $FC
    add l                                         ; $665F: $85
    ld sp, hl                                     ; $6660: $F9
    adc [hl]                                      ; $6661: $8E
    di                                            ; $6662: $F3
    sub h                                         ; $6663: $94
    di                                            ; $6664: $F3
    and b                                         ; $6665: $A0
    rst RST_38                                    ; $6666: $FF
    rst RST_38                                    ; $6667: $FF
    ldh [rSB], a                                  ; $6668: $E0 $01
    sbc h                                         ; $666A: $9C
    db $10                                        ; $666B: $10
    ld a, h                                       ; $666C: $7C
    ld c, b                                       ; $666D: $48
    ld a, h                                       ; $666E: $7C
    call nz, Call_029_43FA                        ; $666F: $C4 $FA $43
    pop hl                                        ; $6672: $E1
    ld b, e                                       ; $6673: $43
    ret nz                                        ; $6674: $C0

    ld b, a                                       ; $6675: $47
    rst RST_38                                    ; $6676: $FF
    rst RST_38                                    ; $6677: $FF
    ccf                                           ; $6678: $3F
    ccf                                           ; $6679: $3F
    ccf                                           ; $667A: $3F
    ccf                                           ; $667B: $3F
    cp a                                          ; $667C: $BF
    ccf                                           ; $667D: $3F
    ld d, c                                       ; $667E: $51
    sub c                                         ; $667F: $91
    rrca                                          ; $6680: $0F
    pop bc                                        ; $6681: $C1
    rlca                                          ; $6682: $07
    pop bc                                        ; $6683: $C1
    cp e                                          ; $6684: $BB
    add c                                         ; $6685: $81
    rst RST_38                                    ; $6686: $FF
    rst RST_38                                    ; $6687: $FF
    rst RST_38                                    ; $6688: $FF
    rst RST_38                                    ; $6689: $FF
    and b                                         ; $668A: $A0
    sub d                                         ; $668B: $92
    ldh a, [$FF8A]                                ; $668C: $F0 $8A
    ldh a, [$FF88]                                ; $668E: $F0 $88
    db $E4                                        ; $6690: $E4
    sub e                                         ; $6691: $93
    rst RST_20                                    ; $6692: $E7
    sub b                                         ; $6693: $90
    rst RST_20                                    ; $6694: $E7
    sub b                                         ; $6695: $90
    db $E4                                        ; $6696: $E4
    sub b                                         ; $6697: $90
    rst RST_38                                    ; $6698: $FF
    rst RST_38                                    ; $6699: $FF
    ld c, a                                       ; $669A: $4F
    ccf                                           ; $669B: $3F
    jr nz, jr_029_66AF                            ; $669C: $20 $11

    nop                                           ; $669E: $00
    inc c                                         ; $669F: $0C
    inc c                                         ; $66A0: $0C
    inc sp                                        ; $66A1: $33
    inc a                                         ; $66A2: $3C
    jp Jump_000_03FC                              ; $66A3: $C3 $FC $03


    ld a, h                                       ; $66A6: $7C
    inc bc                                        ; $66A7: $03
    rst RST_38                                    ; $66A8: $FF
    rst RST_38                                    ; $66A9: $FF
    add hl, bc                                    ; $66AA: $09
    and a                                         ; $66AB: $A7
    dec c                                         ; $66AC: $0D
    inc hl                                        ; $66AD: $23
    dec b                                         ; $66AE: $05

jr_029_66AF:
    inc bc                                        ; $66AF: $03
    dec b                                         ; $66B0: $05
    inc sp                                        ; $66B1: $33
    dec b                                         ; $66B2: $05
    di                                            ; $66B3: $F3
    rlca                                          ; $66B4: $07
    pop af                                        ; $66B5: $F1
    inc bc                                        ; $66B6: $03
    ld de, $A3C0                                  ; $66B7: $11 $C0 $A3
    pop bc                                        ; $66BA: $C1
    and a                                         ; $66BB: $A7
    jp $C0AF                                      ; $66BC: $C3 $AF $C0


    and b                                         ; $66BF: $A0
    add a                                         ; $66C0: $87
    rst RST_08                                    ; $66C1: $CF
    add a                                         ; $66C2: $87
    rst RST_08                                    ; $66C3: $CF
    add a                                         ; $66C4: $87
    rst RST_08                                    ; $66C5: $CF
    add a                                         ; $66C6: $87
    rst RST_10                                    ; $66C7: $D7
    inc e                                         ; $66C8: $1C
    add d                                         ; $66C9: $82
    ret                                           ; $66CA: $C9


    push hl                                       ; $66CB: $E5
    db $E3                                        ; $66CC: $E3
    di                                            ; $66CD: $F3
    ld e, $1E                                     ; $66CE: $1E $1E
    rst RST_38                                    ; $66D0: $FF
    rst RST_38                                    ; $66D1: $FF
    rst RST_38                                    ; $66D2: $FF
    rst RST_38                                    ; $66D3: $FF
    cp a                                          ; $66D4: $BF
    cp a                                          ; $66D5: $BF
    pop af                                        ; $66D6: $F1
    rst RST_38                                    ; $66D7: $FF
    inc bc                                        ; $66D8: $03
    pop hl                                        ; $66D9: $E1
    db $E3                                        ; $66DA: $E3
    pop af                                        ; $66DB: $F1
    di                                            ; $66DC: $F3
    ld sp, hl                                     ; $66DD: $F9
    ld bc, $F501                                  ; $66DE: $01 $01 $F5
    pop af                                        ; $66E1: $F1
    push af                                       ; $66E2: $F5
    pop af                                        ; $66E3: $F1
    cp c                                          ; $66E4: $B9
    cp c                                          ; $66E5: $B9
    ld sp, hl                                     ; $66E6: $F9
    ld sp, hl                                     ; $66E7: $F9
    and a                                         ; $66E8: $A7
    sub a                                         ; $66E9: $97
    or d                                          ; $66EA: $B2
    adc e                                         ; $66EB: $8B
    and b                                         ; $66EC: $A0
    add l                                         ; $66ED: $85
    add c                                         ; $66EE: $81
    sbc l                                         ; $66EF: $9D
    add b                                         ; $66F0: $80
    call z, $F0E0                                 ; $66F1: $CC $E0 $F0
    ld hl, sp-$01                                 ; $66F4: $F8 $FF
    rst RST_38                                    ; $66F6: $FF
    rst RST_38                                    ; $66F7: $FF
    ldh [rIE], a                                  ; $66F8: $E0 $FF
    cp a                                          ; $66FA: $BF
    rst RST_38                                    ; $66FB: $FF
    cp a                                          ; $66FC: $BF
    rst RST_38                                    ; $66FD: $FF
    rst RST_38                                    ; $66FE: $FF
    rst RST_38                                    ; $66FF: $FF
    ccf                                           ; $6700: $3F
    ccf                                           ; $6701: $3F

jr_029_6702:
    nop                                           ; $6702: $00
    ld b, b                                       ; $6703: $40
    ld c, $1E                                     ; $6704: $0E $1E
    rst RST_38                                    ; $6706: $FF
    rst RST_38                                    ; $6707: $FF
    ld sp, hl                                     ; $6708: $F9
    ld sp, hl                                     ; $6709: $F9
    ld d, l                                       ; $670A: $55
    pop af                                        ; $670B: $F1
    ld d, a                                       ; $670C: $57
    pop af                                        ; $670D: $F1
    rst RST_00                                    ; $670E: $C7
    pop bc                                        ; $670F: $C1
    ld bc, $1D01                                  ; $6710: $01 $01 $1D
    dec a                                         ; $6713: $3D
    rrca                                          ; $6714: $0F
    ld a, a                                       ; $6715: $7F
    rst RST_38                                    ; $6716: $FF
    rst RST_38                                    ; $6717: $FF
    ld c, $00                                     ; $6718: $0E $00
    ld hl, $01FF                                  ; $671A: $21 $FF $01
    db $10                                        ; $671D: $10
    ld a, a                                       ; $671E: $7F
    ret nz                                        ; $671F: $C0

    ld a, [hl]                                    ; $6720: $7E
    call c, $5012                                 ; $6721: $DC $12 $50
    call z, Call_029_5E11                         ; $6724: $CC $11 $5E
    db $10                                        ; $6727: $10
    sbc $0C                                       ; $6728: $DE $0C
    ld e, $00                                     ; $672A: $1E $00
    ret z                                         ; $672C: $C8

    ld de, $FF0A                                  ; $672D: $11 $0A $FF
    add b                                         ; $6730: $80
    db $10                                        ; $6731: $10
    cp $03                                        ; $6732: $FE $03
    ld a, [hl]                                    ; $6734: $7E
    ld d, l                                       ; $6735: $55
    add hl, sp                                    ; $6736: $39
    jr nc, jr_029_6786                            ; $6737: $30 $4D

    db $10                                        ; $6739: $10
    dec c                                         ; $673A: $0D
    ld d, b                                       ; $673B: $50
    dec sp                                        ; $673C: $3B
    jr nc, @+$58                                  ; $673D: $30 $56

    ld h, c                                       ; $673F: $61
    ret nz                                        ; $6740: $C0

    ld a, h                                       ; $6741: $7C
    jr nc, jr_029_6744                            ; $6742: $30 $00

jr_029_6744:
    ld de, $FF0A                                  ; $6744: $11 $0A $FF
    ld b, d                                       ; $6747: $42
    ld bc, $7F10                                  ; $6748: $01 $10 $7F
    ret nz                                        ; $674B: $C0

    ld a, [hl]                                    ; $674C: $7E
    sbc h                                         ; $674D: $9C
    jr nc, jr_029_6702                            ; $674E: $30 $B2

    cp d                                          ; $6750: $BA
    db $10                                        ; $6751: $10
    or b                                          ; $6752: $B0
    ld [de], a                                    ; $6753: $12
    ld d, b                                       ; $6754: $50
    ret nz                                        ; $6755: $C0

    inc e                                         ; $6756: $1C
    jr nc, jr_029_6759                            ; $6757: $30 $00

jr_029_6759:
    ld h, h                                       ; $6759: $64
    ld a, $10                                     ; $675A: $3E $10
    ld a, [bc]                                    ; $675C: $0A
    rst RST_38                                    ; $675D: $FF
    add b                                         ; $675E: $80
    db $10                                        ; $675F: $10
    cp $03                                        ; $6760: $FE $03
    dec hl                                        ; $6762: $2B
    ld a, [hl]                                    ; $6763: $7E
    add hl, sp                                    ; $6764: $39
    jr nc, jr_029_67CC                            ; $6765: $30 $65

    db $10                                        ; $6767: $10
    ld h, c                                       ; $6768: $61
    ld [de], a                                    ; $6769: $12
    ld d, b                                       ; $676A: $50
    and [hl]                                      ; $676B: $A6
    ret nz                                        ; $676C: $C0

    jr c, @+$32                                   ; $676D: $38 $30

    nop                                           ; $676F: $00
    ld a, h                                       ; $6770: $7C
    db $10                                        ; $6771: $10
    ld a, [bc]                                    ; $6772: $0A
    inc bc                                        ; $6773: $03
    and h                                         ; $6774: $A4
    ld bc, $1702                                  ; $6775: $01 $02 $17
    rst RST_38                                    ; $6778: $FF
    cp $10                                        ; $6779: $FE $10
    add b                                         ; $677B: $80
    nop                                           ; $677C: $00
    call $070F                                    ; $677D: $CD $0F $07
    ld a, [hl]                                    ; $6780: $7E
    inc c                                         ; $6781: $0C
    rra                                           ; $6782: $1F
    inc d                                         ; $6783: $14
    nop                                           ; $6784: $00
    rlca                                          ; $6785: $07

jr_029_6786:
    ld a, [de]                                    ; $6786: $1A
    rst RST_38                                    ; $6787: $FF
    ccf                                           ; $6788: $3F
    ret nz                                        ; $6789: $C0

    rra                                           ; $678A: $1F
    inc de                                        ; $678B: $13
    nop                                           ; $678C: $00
    rlca                                          ; $678D: $07
    rst RST_38                                    ; $678E: $FF
    db $FC                                        ; $678F: $FC
    nop                                           ; $6790: $00
    ld hl, $121F                                  ; $6791: $21 $1F $12
    ld [$FEA0], sp                                ; $6794: $08 $A0 $FE
    ld bc, $1FD3                                  ; $6797: $01 $D3 $1F
    inc de                                        ; $679A: $13
    nop                                           ; $679B: $00
    rlca                                          ; $679C: $07
    rst RST_38                                    ; $679D: $FF
    ld a, $1F                                     ; $679E: $3E $1F
    inc d                                         ; $67A0: $14
    nop                                           ; $67A1: $00
    inc c                                         ; $67A2: $0C
    ld b, b                                       ; $67A3: $40
    ld l, d                                       ; $67A4: $6A
    nop                                           ; $67A5: $00
    rlca                                          ; $67A6: $07
    ld b, $7E                                     ; $67A7: $06 $7E
    nop                                           ; $67A9: $00
    add b                                         ; $67AA: $80
    ld [bc], a                                    ; $67AB: $02
    ld a, h                                       ; $67AC: $7C
    xor l                                         ; $67AD: $AD
    nop                                           ; $67AE: $00
    ld [bc], a                                    ; $67AF: $02
    ld [bc], a                                    ; $67B0: $02
    db $FC                                        ; $67B1: $FC
    nop                                           ; $67B2: $00
    ld a, c                                       ; $67B3: $79
    ld c, b                                       ; $67B4: $48
    nop                                           ; $67B5: $00
    ld d, a                                       ; $67B6: $57
    ld c, h                                       ; $67B7: $4C
    nop                                           ; $67B8: $00
    ld c, d                                       ; $67B9: $4A
    nop                                           ; $67BA: $00
    ld c, c                                       ; $67BB: $49
    nop                                           ; $67BC: $00
    add hl, sp                                    ; $67BD: $39
    inc bc                                        ; $67BE: $03
    db $DD                                        ; $67BF: $DD
    ld a, c                                       ; $67C0: $79
    sbc c                                         ; $67C1: $99
    add d                                         ; $67C2: $82
    ld [bc], a                                    ; $67C3: $02
    cpl                                           ; $67C4: $2F
    ld a, c                                       ; $67C5: $79
    daa                                           ; $67C6: $27
    nop                                           ; $67C7: $00
    ld d, l                                       ; $67C8: $55
    jr z, jr_029_67CD                             ; $67C9: $28 $02

    add hl, hl                                    ; $67CB: $29

jr_029_67CC:
    nop                                           ; $67CC: $00

jr_029_67CD:
    xor b                                         ; $67CD: $A8
    nop                                           ; $67CE: $00
    ld l, b                                       ; $67CF: $68
    nop                                           ; $67D0: $00
    sub $59                                       ; $67D1: $D6 $59
    ld a, c                                       ; $67D3: $79
    jr c, jr_029_67D6                             ; $67D4: $38 $00

jr_029_67D6:
    ld b, h                                       ; $67D6: $44
    nop                                           ; $67D7: $00
    ret                                           ; $67D8: $C9


    cp $F6                                        ; $67D9: $FE $F6
    nop                                           ; $67DB: $00
    ei                                            ; $67DC: $FB
    ld bc, $C879                                  ; $67DD: $01 $79 $C8
    nop                                           ; $67E0: $00
    jp hl                                         ; $67E1: $E9


    ld [$00BB], sp                                ; $67E2: $08 $BB $00
    add sp, $00                                   ; $67E5: $E8 $00
    add hl, hl                                    ; $67E7: $29
    ld bc, $00CF                                  ; $67E8: $01 $CF $00
    ld a, c                                       ; $67EB: $79
    cp e                                          ; $67EC: $BB
    ret                                           ; $67ED: $C9


    db $10                                        ; $67EE: $10
    rlca                                          ; $67EF: $07
    ld [bc], a                                    ; $67F0: $02
    ld a, c                                       ; $67F1: $79
    rrca                                          ; $67F2: $0F
    nop                                           ; $67F3: $00
    jp hl                                         ; $67F4: $E9


    sbc $01                                       ; $67F5: $DE $01
    dec l                                         ; $67F7: $2D
    rst RST_28                                    ; $67F8: $EF
    nop                                           ; $67F9: $00
    rst RST_38                                    ; $67FA: $FF
    rlca                                          ; $67FB: $07
    ld a, c                                       ; $67FC: $79
    ldh [$FFEE], a                                ; $67FD: $E0 $EE
    nop                                           ; $67FF: $00
    add hl, de                                    ; $6800: $19
    ld bc, $00C0                                  ; $6801: $01 $C0 $00
    dec hl                                        ; $6804: $2B
    ld e, e                                       ; $6805: $5B
    add b                                         ; $6806: $80
    sbc $07                                       ; $6807: $DE $07
    ld [bc], a                                    ; $6809: $02
    cp $00                                        ; $680A: $FE $00
    ld a, c                                       ; $680C: $79
    add hl, de                                    ; $680D: $19
    ld c, e                                       ; $680E: $4B
    db $FC                                        ; $680F: $FC
    ldh a, [rP1]                                  ; $6810: $F0 $00
    ld a, a                                       ; $6812: $7F
    rlca                                          ; $6813: $07
    rlca                                          ; $6814: $07
    nop                                           ; $6815: $00
    rlca                                          ; $6816: $07
    nop                                           ; $6817: $00
    ld d, [hl]                                    ; $6818: $56
    nop                                           ; $6819: $00
    ld c, $FE                                     ; $681A: $0E $FE
    nop                                           ; $681C: $00
    db $10                                        ; $681D: $10
    ld a, [bc]                                    ; $681E: $0A
    di                                            ; $681F: $F3
    add b                                         ; $6820: $80
    cp [hl]                                       ; $6821: $BE
    ld [bc], a                                    ; $6822: $02
    db $FC                                        ; $6823: $FC
    nop                                           ; $6824: $00
    ld d, e                                       ; $6825: $53
    or c                                          ; $6826: $B1
    pop af                                        ; $6827: $F1
    sub c                                         ; $6828: $91
    add d                                         ; $6829: $82
    db $EB                                        ; $682A: $EB
    ld [bc], a                                    ; $682B: $02
    ld d, a                                       ; $682C: $57
    pop af                                        ; $682D: $F1
    jr c, jr_029_6830                             ; $682E: $38 $00

jr_029_6830:
    ld b, h                                       ; $6830: $44
    nop                                           ; $6831: $00
    sub c                                         ; $6832: $91
    ld a, [hl]                                    ; $6833: $7E
    cp $00                                        ; $6834: $FE $00
    di                                            ; $6836: $F3
    ld bc, $F1FF                                  ; $6837: $01 $FF $F1
    ld sp, $ADC6                                  ; $683A: $31 $C6 $AD
    nop                                           ; $683D: $00
    xor d                                         ; $683E: $AA
    nop                                           ; $683F: $00
    sub d                                         ; $6840: $92
    nop                                           ; $6841: $00
    rst RST_30                                    ; $6842: $F7
    cp $00                                        ; $6843: $FE $00
    ld a, d                                       ; $6845: $7A
    db $10                                        ; $6846: $10
    ld a, [bc]                                    ; $6847: $0A
    rst RST_38                                    ; $6848: $FF
    pop af                                        ; $6849: $F1
    rrca                                          ; $684A: $0F
    add b                                         ; $684B: $80
    ld a, [bc]                                    ; $684C: $0A
    cp $EA                                        ; $684D: $FE $EA
    nop                                           ; $684F: $00
    pop af                                        ; $6850: $F1
    rrca                                          ; $6851: $0F
    cp $00                                        ; $6852: $FE $00
    add b                                         ; $6854: $80
    ld [bc], a                                    ; $6855: $02
    db $FC                                        ; $6856: $FC
    ld hl, sp+$00                                 ; $6857: $F8 $00
    ld d, e                                       ; $6859: $53
    or c                                          ; $685A: $B1
    pop af                                        ; $685B: $F1
    rrca                                          ; $685C: $0F
    nop                                           ; $685D: $00
    dec bc                                        ; $685E: $0B
    ld b, b                                       ; $685F: $40
    ld l, d                                       ; $6860: $6A
    nop                                           ; $6861: $00
    rlca                                          ; $6862: $07
    ld b, $7C                                     ; $6863: $06 $7C
    nop                                           ; $6865: $00
    add d                                         ; $6866: $82
    ld b, $8A                                     ; $6867: $06 $8A
    rst RST_18                                    ; $6869: $DF
    nop                                           ; $686A: $00
    ld e, c                                       ; $686B: $59
    ld [bc], a                                    ; $686C: $02
    nop                                           ; $686D: $00
    ld l, a                                       ; $686E: $6F
    inc bc                                        ; $686F: $03
    ld a, c                                       ; $6870: $79
    ld sp, hl                                     ; $6871: $F9
    ld e, [hl]                                    ; $6872: $5E
    rrca                                          ; $6873: $0F
    nop                                           ; $6874: $00
    ld [$0007], sp                                ; $6875: $08 $07 $00
    ld e, c                                       ; $6878: $59
    ld a, c                                       ; $6879: $79
    ld b, a                                       ; $687A: $47
    cp l                                          ; $687B: $BD
    nop                                           ; $687C: $00
    ld c, b                                       ; $687D: $48
    rlca                                          ; $687E: $07
    nop                                           ; $687F: $00
    ld e, c                                       ; $6880: $59
    ld a, c                                       ; $6881: $79
    rst RST_08                                    ; $6882: $CF
    nop                                           ; $6883: $00
    ld e, e                                       ; $6884: $5B
    jr z, jr_029_6889                             ; $6885: $28 $02

    cpl                                           ; $6887: $2F
    nop                                           ; $6888: $00

jr_029_6889:
    dec hl                                        ; $6889: $2B
    ret z                                         ; $688A: $C8

    nop                                           ; $688B: $00
    ld a, c                                       ; $688C: $79
    ld d, a                                       ; $688D: $57
    add sp, $00                                   ; $688E: $E8 $00
    ld [$0F02], sp                                ; $6890: $08 $02 $0F
    nop                                           ; $6893: $00
    dec hl                                        ; $6894: $2B
    ld e, c                                       ; $6895: $59
    xor l                                         ; $6896: $AD
    ld a, c                                       ; $6897: $79
    jp $2400                                      ; $6898: $C3 $00 $24


    nop                                           ; $689B: $00
    ret                                           ; $689C: $C9


    rst RST_08                                    ; $689D: $CF
    nop                                           ; $689E: $00
    ld a, d                                       ; $689F: $7A
    ld c, b                                       ; $68A0: $48
    nop                                           ; $68A1: $00
    add hl, hl                                    ; $68A2: $29
    ld bc, $2079                                  ; $68A3: $01 $79 $20
    nop                                           ; $68A6: $00
    ld b, b                                       ; $68A7: $40
    cp a                                          ; $68A8: $BF
    nop                                           ; $68A9: $00
    add b                                         ; $68AA: $80
    nop                                           ; $68AB: $00
    add hl, sp                                    ; $68AC: $39
    add hl, de                                    ; $68AD: $19
    add hl, sp                                    ; $68AE: $39
    ld e, c                                       ; $68AF: $59
    add hl, sp                                    ; $68B0: $39
    ld l, d                                       ; $68B1: $6A
    adc b                                         ; $68B2: $88
    nop                                           ; $68B3: $00
    set 5, b                                      ; $68B4: $CB $E8
    nop                                           ; $68B6: $00
    add hl, hl                                    ; $68B7: $29
    nop                                           ; $68B8: $00
    ld a, [hl+]                                   ; $68B9: $2A
    cp d                                          ; $68BA: $BA
    nop                                           ; $68BB: $00
    inc h                                         ; $68BC: $24
    nop                                           ; $68BD: $00
    ei                                            ; $68BE: $FB
    rlca                                          ; $68BF: $07
    and b                                         ; $68C0: $A0
    nop                                           ; $68C1: $00
    ld b, b                                       ; $68C2: $40
    ldh a, [rP1]                                  ; $68C3: $F0 $00
    ld a, c                                       ; $68C5: $79
    rlca                                          ; $68C6: $07
    rlca                                          ; $68C7: $07
    ld d, $80                                     ; $68C8: $16 $80
    ld b, l                                       ; $68CA: $45
    rst RST_38                                    ; $68CB: $FF
    nop                                           ; $68CC: $00
    sub b                                         ; $68CD: $90
    add b                                         ; $68CE: $80
    or b                                          ; $68CF: $B0
    inc b                                         ; $68D0: $04
    cp b                                          ; $68D1: $B8
    ld b, $56                                     ; $68D2: $06 $56
    cp h                                          ; $68D4: $BC
    inc b                                         ; $68D5: $04
    cp l                                          ; $68D6: $BD
    inc b                                         ; $68D7: $04
    cp a                                          ; $68D8: $BF
    inc b                                         ; $68D9: $04
    dec a                                         ; $68DA: $3D
    nop                                           ; $68DB: $00
    sbc $03                                       ; $68DC: $DE $03
    ld [bc], a                                    ; $68DE: $02
    ld a, [hl]                                    ; $68DF: $7E
    inc b                                         ; $68E0: $04
    add hl, hl                                    ; $68E1: $29
    ld b, $00                                     ; $68E2: $06 $00
    add hl, bc                                    ; $68E4: $09
    dec hl                                        ; $68E5: $2B
    ld bc, $040D                                  ; $68E6: $01 $0D $04
    dec e                                         ; $68E9: $1D
    ld b, $3D                                     ; $68EA: $06 $3D
    inc b                                         ; $68EC: $04
    ld a, h                                       ; $68ED: $7C
    cp l                                          ; $68EE: $BD
    inc b                                         ; $68EF: $04
    db $FD                                        ; $68F0: $FD
    inc b                                         ; $68F1: $04
    add l                                         ; $68F2: $85
    dec b                                         ; $68F3: $05
    and l                                         ; $68F4: $A5
    sbc h                                         ; $68F5: $9C
    inc b                                         ; $68F6: $04
    ld d, a                                       ; $68F7: $57
    adc [hl]                                      ; $68F8: $8E
    inc b                                         ; $68F9: $04
    sub a                                         ; $68FA: $97
    inc b                                         ; $68FB: $04
    sbc e                                         ; $68FC: $9B
    ld e, $8F                                     ; $68FD: $1E $8F
    dec b                                         ; $68FF: $05
    ld l, a                                       ; $6900: $6F
    jr jr_029_690A                                ; $6901: $18 $07

    inc b                                         ; $6903: $04
    db $DB                                        ; $6904: $DB
    ld h, $85                                     ; $6905: $26 $85
    dec b                                         ; $6907: $05
    and l                                         ; $6908: $A5
    ld d, l                                       ; $6909: $55

jr_029_690A:
    add hl, sp                                    ; $690A: $39
    inc b                                         ; $690B: $04
    ld [hl], c                                    ; $690C: $71
    inc b                                         ; $690D: $04
    jp hl                                         ; $690E: $E9


    inc b                                         ; $690F: $04
    reti                                          ; $6910: $D9


    ld e, $D7                                     ; $6911: $1E $D7
    sbc l                                         ; $6913: $9D
    dec b                                         ; $6914: $05
    add l                                         ; $6915: $85
    inc b                                         ; $6916: $04
    add c                                         ; $6917: $81
    ld b, $03                                     ; $6918: $06 $03
    ld a, h                                       ; $691A: $7C
    db $ED                                        ; $691B: $ED
    ld bc, $04BF                                  ; $691C: $01 $BF $04
    jp $0407                                      ; $691F: $C3 $07 $04


    ld b, d                                       ; $6922: $42
    dec h                                         ; $6923: $25
    rst RST_28                                    ; $6924: $EF
    nop                                           ; $6925: $00
    sbc l                                         ; $6926: $9D
    dec b                                         ; $6927: $05
    and c                                         ; $6928: $A1
    inc b                                         ; $6929: $04
    ld [hl], h                                    ; $692A: $74
    ld b, $03                                     ; $692B: $06 $03
    ld [$007E], a                                 ; $692D: $EA $7E $00
    sub l                                         ; $6930: $95
    adc b                                         ; $6931: $88
    inc b                                         ; $6932: $04
    sbc l                                         ; $6933: $9D
    inc b                                         ; $6934: $04
    cp h                                          ; $6935: $BC
    xor a                                         ; $6936: $AF
    inc b                                         ; $6937: $04
    add [hl]                                      ; $6938: $86
    inc b                                         ; $6939: $04
    adc e                                         ; $693A: $8B
    ld e, $C2                                     ; $693B: $1E $C2
    cp a                                          ; $693D: $BF
    ld c, $BA                                     ; $693E: $0E $BA
    or l                                          ; $6940: $B5
    ld a, [hl]                                    ; $6941: $7E
    rra                                           ; $6942: $1F
    nop                                           ; $6943: $00
    sub l                                         ; $6944: $95
    ld de, $B904                                  ; $6945: $11 $04 $B9
    xor d                                         ; $6948: $AA
    inc b                                         ; $6949: $04
    dec a                                         ; $694A: $3D
    inc b                                         ; $694B: $04
    ld h, c                                       ; $694C: $61
    inc b                                         ; $694D: $04
    pop de                                        ; $694E: $D1
    ld e, $9C                                     ; $694F: $1E $9C
    xor l                                         ; $6951: $AD
    add h                                         ; $6952: $84
    cp [hl]                                       ; $6953: $BE
    inc b                                         ; $6954: $04
    cp a                                          ; $6955: $BF
    rlca                                          ; $6956: $07
    inc b                                         ; $6957: $04
    sbc a                                         ; $6958: $9F
    ld b, $75                                     ; $6959: $06 $75
    adc a                                         ; $695B: $8F
    cp l                                          ; $695C: $BD
    sbc a                                         ; $695D: $9F
    inc b                                         ; $695E: $04
    sbc c                                         ; $695F: $99
    inc b                                         ; $6960: $04
    db $DB                                        ; $6961: $DB
    rlca                                          ; $6962: $07
    xor d                                         ; $6963: $AA
    inc b                                         ; $6964: $04
    cp l                                          ; $6965: $BD
    inc b                                         ; $6966: $04
    add hl, sp                                    ; $6967: $39
    add h                                         ; $6968: $84
    ld a, l                                       ; $6969: $7D
    inc b                                         ; $696A: $04
    db $FD                                        ; $696B: $FD
    push de                                       ; $696C: $D5
    rlca                                          ; $696D: $07
    inc b                                         ; $696E: $04
    ld sp, hl                                     ; $696F: $F9
    ld b, $F1                                     ; $6970: $06 $F1
    inc b                                         ; $6972: $04
    add [hl]                                      ; $6973: $86
    add h                                         ; $6974: $84
    ld d, a                                       ; $6975: $57
    sub c                                         ; $6976: $91
    sub [hl]                                      ; $6977: $96
    add a                                         ; $6978: $87
    inc b                                         ; $6979: $04
    add e                                         ; $697A: $83
    inc b                                         ; $697B: $04
    inc bc                                        ; $697C: $03
    or h                                          ; $697D: $B4
    push af                                       ; $697E: $F5
    nop                                           ; $697F: $00
    xor l                                         ; $6980: $AD
    push bc                                       ; $6981: $C5
    sub l                                         ; $6982: $95
    inc a                                         ; $6983: $3C
    inc b                                         ; $6984: $04
    jr jr_029_698E                                ; $6985: $18 $07

    push de                                       ; $6987: $D5
    dec l                                         ; $6988: $2D
    nop                                           ; $6989: $00
    ld h, c                                       ; $698A: $61
    add h                                         ; $698B: $84
    adc c                                         ; $698C: $89
    sub [hl]                                      ; $698D: $96

jr_029_698E:
    pop hl                                        ; $698E: $E1
    inc b                                         ; $698F: $04
    ld [hl], b                                    ; $6990: $70
    pop bc                                        ; $6991: $C1
    inc b                                         ; $6992: $04
    inc bc                                        ; $6993: $03
    dec a                                         ; $6994: $3D
    nop                                           ; $6995: $00
    ld b, $00                                     ; $6996: $06 $00
    ld d, d                                       ; $6998: $52
    nop                                           ; $6999: $00
    ld bc, $1066                                  ; $699A: $01 $66 $10
    halt                                          ; $699D: $76
    ld a, [hl]                                    ; $699E: $7E
    nop                                           ; $699F: $00
    ld l, [hl]                                    ; $69A0: $6E
    ld a, [$6000]                                 ; $69A1: $FA $00 $60
    ld [hl], c                                    ; $69A4: $71
    inc de                                        ; $69A5: $13
    ld bc, $10FC                                  ; $69A6: $01 $FC $10
    call z, $0594                                 ; $69A9: $CC $94 $05
    ld bc, $10CD                                  ; $69AC: $01 $CD $10
    db $FD                                        ; $69AF: $FD
    pop hl                                        ; $69B0: $E1
    db $10                                        ; $69B1: $10
    inc e                                         ; $69B2: $1C
    dec h                                         ; $69B3: $25
    jr nz, jr_029_69F2                            ; $69B4: $20 $3C

    ld de, $0C08                                  ; $69B6: $11 $08 $0C
    ld [de], a                                    ; $69B9: $12
    adc h                                         ; $69BA: $8C
    ld de, $F1D2                                  ; $69BB: $11 $D2 $F1
    or b                                          ; $69BE: $B0
    ld a, $11                                     ; $69BF: $3E $11
    inc b                                         ; $69C1: $04
    ld b, $D1                                     ; $69C2: $06 $D1
    db $10                                        ; $69C4: $10
    ld e, l                                       ; $69C5: $5D
    jr jr_029_6A38                                ; $69C6: $18 $70

    cp [hl]                                       ; $69C8: $BE
    ld de, $D0F7                                  ; $69C9: $11 $F7 $D0
    ld e, $31                                     ; $69CC: $1E $31
    add b                                         ; $69CE: $80
    di                                            ; $69CF: $F3
    ld h, $00                                     ; $69D0: $26 $00
    ld e, [hl]                                    ; $69D2: $5E
    nop                                           ; $69D3: $00
    inc bc                                        ; $69D4: $03
    rst RST_38                                    ; $69D5: $FF
    rla                                           ; $69D6: $17
    inc hl                                        ; $69D7: $23
    rrca                                          ; $69D8: $0F
    ld bc, $AEFE                                  ; $69D9: $01 $FE $AE
    ld de, $20F1                                  ; $69DC: $11 $F1 $20
    ldh a, [rNR13]                                ; $69DF: $F0 $13
    ld [hl], d                                    ; $69E1: $72
    ld [bc], a                                    ; $69E2: $02
    ei                                            ; $69E3: $FB
    adc d                                         ; $69E4: $8A
    ld de, $7BC6                                  ; $69E5: $11 $C6 $7B
    add [hl]                                      ; $69E8: $86
    jr nc, jr_029_69F1                            ; $69E9: $30 $06

    ld de, $68BB                                  ; $69EB: $11 $BB $68
    ld b, [hl]                                    ; $69EE: $46
    di                                            ; $69EF: $F3
    ld [bc], a                                    ; $69F0: $02

jr_029_69F1:
    nop                                           ; $69F1: $00

jr_029_69F2:
    ld de, $3FC0                                  ; $69F2: $11 $C0 $3F
    rst RST_18                                    ; $69F5: $DF
    sub h                                         ; $69F6: $94
    db $10                                        ; $69F7: $10
    cp $01                                        ; $69F8: $FE $01
    jp $117B                                      ; $69FA: $C3 $7B $11


    rst RST_00                                    ; $69FD: $C7
    ld a, l                                       ; $69FE: $7D
    ld [de], a                                    ; $69FF: $12
    jp nz, $C07F                                  ; $6A00: $C2 $7F $C0

    ld de, $C57A                                  ; $6A03: $11 $7A $C5
    di                                            ; $6A06: $F3
    rst RST_28                                    ; $6A07: $EF
    or h                                          ; $6A08: $B4
    ld de, $1718                                  ; $6A09: $11 $18 $17
    di                                            ; $6A0C: $F3
    ei                                            ; $6A0D: $FB
    db $10                                        ; $6A0E: $10
    ld sp, hl                                     ; $6A0F: $F9
    rlca                                          ; $6A10: $07
    rlca                                          ; $6A11: $07
    db $FD                                        ; $6A12: $FD
    inc bc                                        ; $6A13: $03
    dec e                                         ; $6A14: $1D
    db $E3                                        ; $6A15: $E3
    ld a, l                                       ; $6A16: $7D
    db $10                                        ; $6A17: $10
    sub b                                         ; $6A18: $90
    ld [hl], b                                    ; $6A19: $70
    pop de                                        ; $6A1A: $D1
    di                                            ; $6A1B: $F3
    ld [bc], a                                    ; $6A1C: $02
    nop                                           ; $6A1D: $00
    ld de, $1FE0                                  ; $6A1E: $11 $E0 $1F
    rst RST_28                                    ; $6A21: $EF
    db $10                                        ; $6A22: $10
    call nc, $0272                                ; $6A23: $D4 $72 $02
    cp a                                          ; $6A26: $BF
    ld de, $1160                                  ; $6A27: $11 $60 $11
    inc a                                         ; $6A2A: $3C
    db $E3                                        ; $6A2B: $E3
    ld c, d                                       ; $6A2C: $4A
    cp l                                          ; $6A2D: $BD
    db $10                                        ; $6A2E: $10
    ccf                                           ; $6A2F: $3F
    ldh [$FFF3], a                                ; $6A30: $E0 $F3
    rst RST_28                                    ; $6A32: $EF
    db $10                                        ; $6A33: $10
    rst RST_20                                    ; $6A34: $E7
    rlca                                          ; $6A35: $07
    rra                                           ; $6A36: $1F
    rst RST_30                                    ; $6A37: $F7

jr_029_6A38:
    rrca                                          ; $6A38: $0F
    ld [hl], a                                    ; $6A39: $77
    adc a                                         ; $6A3A: $8F
    jr nc, jr_029_6A4E                            ; $6A3B: $30 $11

    ld d, b                                       ; $6A3D: $50
    pop de                                        ; $6A3E: $D1
    di                                            ; $6A3F: $F3
    ld [bc], a                                    ; $6A40: $02
    ld hl, sp+$10                                 ; $6A41: $F8 $10
    ldh a, [$FFFE]                                ; $6A43: $F0 $FE
    pop af                                        ; $6A45: $F1
    ld de, $51D5                                  ; $6A46: $11 $D5 $51
    jp $11FB                                      ; $6A49: $C3 $FB $11


    ld b, $11                                     ; $6A4C: $06 $11

jr_029_6A4E:
    inc bc                                        ; $6A4E: $03
    ldh [$FFCA], a                                ; $6A4F: $E0 $CA
    ld h, b                                       ; $6A51: $60
    db $10                                        ; $6A52: $10
    rst RST_30                                    ; $6A53: $F7
    ld c, $F3                                     ; $6A54: $0E $F3
    ld a, e                                       ; $6A56: $7B
    ld de, $EDC7                                  ; $6A57: $11 $C7 $ED
    rla                                           ; $6A5A: $17
    di                                            ; $6A5B: $F3
    ld [bc], a                                    ; $6A5C: $02
    ld hl, sp+$18                                 ; $6A5D: $F8 $18
    ld [bc], a                                    ; $6A5F: $02
    db $FD                                        ; $6A60: $FD
    ld de, $0354                                  ; $6A61: $11 $54 $03
    ld de, $5001                                  ; $6A64: $11 $01 $50
    ld a, l                                       ; $6A67: $7D
    db $10                                        ; $6A68: $10
    ld sp, hl                                     ; $6A69: $F9
    rlca                                          ; $6A6A: $07
    ret nc                                        ; $6A6B: $D0

    di                                            ; $6A6C: $F3
    ld [bc], a                                    ; $6A6D: $02
    add b                                         ; $6A6E: $80
    stop                                          ; $6A6F: $10 $00
    ldh [$FF1F], a                                ; $6A71: $E0 $1F
    rst RST_28                                    ; $6A73: $EF
    call nc, $C312                                ; $6A74: $D4 $12 $C3
    cp a                                          ; $6A77: $BF
    ld de, $1160                                  ; $6A78: $11 $60 $11
    inc hl                                        ; $6A7B: $23
    db $FC                                        ; $6A7C: $FC
    ld [$1360], a                                 ; $6A7D: $EA $60 $13

jr_029_6A80:
    ld [bc], a                                    ; $6A80: $02
    rst RST_30                                    ; $6A81: $F7
    ld de, $110F                                  ; $6A82: $11 $0F $11
    add a                                         ; $6A85: $87
    inc h                                         ; $6A86: $24
    ld a, a                                       ; $6A87: $7F
    cp a                                          ; $6A88: $BF
    ld [de], a                                    ; $6A89: $12
    cp $F1                                        ; $6A8A: $FE $F1
    rla                                           ; $6A8C: $17
    ldh a, [rIE]                                  ; $6A8D: $F0 $FF
    adc d                                         ; $6A8F: $8A
    inc bc                                        ; $6A90: $03
    dec sp                                        ; $6A91: $3B
    add $FB                                       ; $6A92: $C6 $FB
    ld d, $C2                                     ; $6A94: $16 $C2
    db $F4                                        ; $6A96: $F4
    cp $0D                                        ; $6A97: $FE $0D
    ld bc, $3FC0                                  ; $6A99: $01 $C0 $3F
    rst RST_18                                    ; $6A9C: $DF
    db $10                                        ; $6A9D: $10
    ld h, b                                       ; $6A9E: $60
    nop                                           ; $6A9F: $00
    ld de, $21C5                                  ; $6AA0: $11 $C5 $21
    inc bc                                        ; $6AA3: $03
    ld a, b                                       ; $6AA4: $78
    rst RST_00                                    ; $6AA5: $C7
    ld a, e                                       ; $6AA6: $7B
    ld d, $43                                     ; $6AA7: $16 $43
    db $F4                                        ; $6AA9: $F4
    jr z, @-$0F                                   ; $6AAA: $28 $EF

    jr jr_029_6AC5                                ; $6AAC: $18 $17

    ld [$FBF4], sp                                ; $6AAE: $08 $F4 $FB
    rlca                                          ; $6AB1: $07
    dec e                                         ; $6AB2: $1D
    inc hl                                        ; $6AB3: $23
    db $E3                                        ; $6AB4: $E3
    ld a, l                                       ; $6AB5: $7D
    db $10                                        ; $6AB6: $10
    db $FD                                        ; $6AB7: $FD
    inc bc                                        ; $6AB8: $03
    ld sp, hl                                     ; $6AB9: $F9
    ld [hl], b                                    ; $6ABA: $70
    jr nz, jr_029_6A80                            ; $6ABB: $20 $C3

    db $F4                                        ; $6ABD: $F4
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    ldh [$FF1F], a                                ; $6AC0: $E0 $1F
    rst RST_28                                    ; $6AC2: $EF
    db $10                                        ; $6AC3: $10
    ld d, c                                       ; $6AC4: $51

jr_029_6AC5:
    add sp, $11                                   ; $6AC5: $E8 $11
    ld hl, $3F03                                  ; $6AC7: $21 $03 $3F
    ldh [$FF3C], a                                ; $6ACA: $E0 $3C
    db $E3                                        ; $6ACC: $E3
    cp l                                          ; $6ACD: $BD
    xor b                                         ; $6ACE: $A8
    ld de, $1163                                  ; $6ACF: $11 $63 $11
    ld hl, $E7F4                                  ; $6AD2: $21 $F4 $E7
    rra                                           ; $6AD5: $1F
    ld [hl], a                                    ; $6AD6: $77
    dec l                                         ; $6AD7: $2D
    adc a                                         ; $6AD8: $8F
    rst RST_30                                    ; $6AD9: $F7
    inc d                                         ; $6ADA: $14
    add a                                         ; $6ADB: $87
    db $F4                                        ; $6ADC: $F4
    ld [hl], b                                    ; $6ADD: $70
    ld hl, sp+$00                                 ; $6ADE: $F8 $00
    cp b                                          ; $6AE0: $B8
    ld h, e                                       ; $6AE1: $63
    ldh a, [rNR11]                                ; $6AE2: $F0 $11
    ld hl, $FB03                                  ; $6AE4: $21 $03 $FB
    ld b, $3B                                     ; $6AE7: $06 $3B
    ld [hl], e                                    ; $6AE9: $73
    add $30                                       ; $6AEA: $C6 $30
    ld de, $F350                                  ; $6AEC: $11 $50 $F3
    ld c, $20                                     ; $6AEF: $0E $20
    db $F4                                        ; $6AF1: $F4
    dec h                                         ; $6AF2: $25
    ld a, e                                       ; $6AF3: $7B
    rst RST_00                                    ; $6AF4: $C7
    inc de                                        ; $6AF5: $13
    ld a, a                                       ; $6AF6: $7F
    ret nz                                        ; $6AF7: $C0

    ld de, $F440                                  ; $6AF8: $11 $40 $F4
    xor d                                         ; $6AFB: $AA
    nop                                           ; $6AFC: $00
    ld hl, sp+$11                                 ; $6AFD: $F8 $11
    rst RST_28                                    ; $6AFF: $EF
    ld de, $1118                                  ; $6B00: $11 $18 $11
    ld [$E48A], sp                                ; $6B03: $08 $8A $E4
    ld sp, hl                                     ; $6B06: $F9
    rlca                                          ; $6B07: $07
    ld bc, $7D30                                  ; $6B08: $01 $30 $7D
    db $10                                        ; $6B0B: $10
    db $FD                                        ; $6B0C: $FD
    ld [hl], e                                    ; $6B0D: $73
    inc bc                                        ; $6B0E: $03
    ld de, $0371                                  ; $6B0F: $11 $71 $03
    rst RST_28                                    ; $6B12: $EF
    rra                                           ; $6B13: $1F
    inc de                                        ; $6B14: $13
    ld h, b                                       ; $6B15: $60
    dec e                                         ; $6B16: $1D
    nop                                           ; $6B17: $00
    ld a, a                                       ; $6B18: $7F
    add b                                         ; $6B19: $80
    nop                                           ; $6B1A: $00
    db $F4                                        ; $6B1B: $F4
    nop                                           ; $6B1C: $00
    db $FC                                        ; $6B1D: $FC
    ld de, $BF56                                  ; $6B1E: $11 $56 $BF
    ld de, $117C                                  ; $6B21: $11 $7C $11
    inc a                                         ; $6B24: $3C
    db $E4                                        ; $6B25: $E4
    ld [hl], b                                    ; $6B26: $70
    ld a, a                                       ; $6B27: $7F
    or a                                          ; $6B28: $B7
    rla                                           ; $6B29: $17
    ccf                                           ; $6B2A: $3F
    db $F4                                        ; $6B2B: $F4
    ld bc, $2300                                  ; $6B2C: $01 $00 $23
    inc d                                         ; $6B2F: $14
    inc bc                                        ; $6B30: $03
    nop                                           ; $6B31: $00
    nop                                           ; $6B32: $00
    nop                                           ; $6B33: $00
    nop                                           ; $6B34: $00
    nop                                           ; $6B35: $00
    nop                                           ; $6B36: $00
    nop                                           ; $6B37: $00
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    nop                                           ; $6B3A: $00
    nop                                           ; $6B3B: $00
    nop                                           ; $6B3C: $00
    nop                                           ; $6B3D: $00
    nop                                           ; $6B3E: $00
    nop                                           ; $6B3F: $00
    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    nop                                           ; $6B48: $00
    nop                                           ; $6B49: $00
    nop                                           ; $6B4A: $00
    nop                                           ; $6B4B: $00
    nop                                           ; $6B4C: $00
    nop                                           ; $6B4D: $00
    nop                                           ; $6B4E: $00
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    nop                                           ; $6B52: $00
    nop                                           ; $6B53: $00
    nop                                           ; $6B54: $00
    nop                                           ; $6B55: $00
    nop                                           ; $6B56: $00
    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    nop                                           ; $6B5A: $00
    ld bc, $0200                                  ; $6B5B: $01 $00 $02
    nop                                           ; $6B5E: $00
    inc bc                                        ; $6B5F: $03
    nop                                           ; $6B60: $00
    inc b                                         ; $6B61: $04
    nop                                           ; $6B62: $00
    dec b                                         ; $6B63: $05
    nop                                           ; $6B64: $00
    ld b, $00                                     ; $6B65: $06 $00
    rlca                                          ; $6B67: $07
    nop                                           ; $6B68: $00
    ld [$0900], sp                                ; $6B69: $08 $00 $09
    nop                                           ; $6B6C: $00
    ld a, [bc]                                    ; $6B6D: $0A
    nop                                           ; $6B6E: $00
    dec bc                                        ; $6B6F: $0B
    nop                                           ; $6B70: $00
    inc c                                         ; $6B71: $0C
    nop                                           ; $6B72: $00
    inc b                                         ; $6B73: $04
    nop                                           ; $6B74: $00
    dec c                                         ; $6B75: $0D
    nop                                           ; $6B76: $00
    ld c, $00                                     ; $6B77: $0E $00
    rrca                                          ; $6B79: $0F
    nop                                           ; $6B7A: $00
    stop                                          ; $6B7B: $10 $00
    ld de, $1200                                  ; $6B7D: $11 $00 $12
    nop                                           ; $6B80: $00
    ld bc, $0100                                  ; $6B81: $01 $00 $01
    nop                                           ; $6B84: $00
    inc de                                        ; $6B85: $13
    nop                                           ; $6B86: $00
    inc d                                         ; $6B87: $14
    nop                                           ; $6B88: $00
    dec d                                         ; $6B89: $15
    nop                                           ; $6B8A: $00
    ld d, $00                                     ; $6B8B: $16 $00
    rla                                           ; $6B8D: $17
    nop                                           ; $6B8E: $00
    jr jr_029_6B91                                ; $6B8F: $18 $00

jr_029_6B91:
    add hl, de                                    ; $6B91: $19
    nop                                           ; $6B92: $00
    ld a, [de]                                    ; $6B93: $1A
    nop                                           ; $6B94: $00
    dec de                                        ; $6B95: $1B
    nop                                           ; $6B96: $00
    inc e                                         ; $6B97: $1C
    nop                                           ; $6B98: $00
    dec e                                         ; $6B99: $1D
    nop                                           ; $6B9A: $00
    dec d                                         ; $6B9B: $15
    nop                                           ; $6B9C: $00
    ld e, $00                                     ; $6B9D: $1E $00
    rra                                           ; $6B9F: $1F
    nop                                           ; $6BA0: $00
    jr nz, jr_029_6BA3                            ; $6BA1: $20 $00

jr_029_6BA3:
    ld hl, $2200                                  ; $6BA3: $21 $00 $22
    nop                                           ; $6BA6: $00
    inc hl                                        ; $6BA7: $23
    nop                                           ; $6BA8: $00
    ld bc, $2400                                  ; $6BA9: $01 $00 $24
    nop                                           ; $6BAC: $00
    inc h                                         ; $6BAD: $24
    nop                                           ; $6BAE: $00
    inc h                                         ; $6BAF: $24
    nop                                           ; $6BB0: $00
    inc h                                         ; $6BB1: $24
    nop                                           ; $6BB2: $00
    inc h                                         ; $6BB3: $24
    nop                                           ; $6BB4: $00
    inc h                                         ; $6BB5: $24
    nop                                           ; $6BB6: $00
    inc h                                         ; $6BB7: $24
    nop                                           ; $6BB8: $00
    inc h                                         ; $6BB9: $24
    nop                                           ; $6BBA: $00
    inc h                                         ; $6BBB: $24
    nop                                           ; $6BBC: $00
    inc h                                         ; $6BBD: $24
    nop                                           ; $6BBE: $00
    inc h                                         ; $6BBF: $24
    nop                                           ; $6BC0: $00
    inc h                                         ; $6BC1: $24
    nop                                           ; $6BC2: $00
    inc h                                         ; $6BC3: $24
    nop                                           ; $6BC4: $00
    inc h                                         ; $6BC5: $24
    nop                                           ; $6BC6: $00
    inc h                                         ; $6BC7: $24
    nop                                           ; $6BC8: $00
    inc h                                         ; $6BC9: $24
    nop                                           ; $6BCA: $00
    inc h                                         ; $6BCB: $24
    nop                                           ; $6BCC: $00
    inc h                                         ; $6BCD: $24
    nop                                           ; $6BCE: $00
    inc h                                         ; $6BCF: $24
    nop                                           ; $6BD0: $00
    inc h                                         ; $6BD1: $24
    ld bc, $0100                                  ; $6BD2: $01 $00 $01
    ld bc, $0201                                  ; $6BD5: $01 $01 $02
    ld bc, $0103                                  ; $6BD8: $01 $03 $01
    inc b                                         ; $6BDB: $04
    ld bc, $0105                                  ; $6BDC: $01 $05 $01
    ld b, $01                                     ; $6BDF: $06 $01
    rlca                                          ; $6BE1: $07
    ld bc, $0208                                  ; $6BE2: $01 $08 $02
    nop                                           ; $6BE5: $00
    ld [bc], a                                    ; $6BE6: $02
    ld bc, $0202                                  ; $6BE7: $01 $02 $02
    ld [bc], a                                    ; $6BEA: $02
    inc bc                                        ; $6BEB: $03
    ld [bc], a                                    ; $6BEC: $02
    inc b                                         ; $6BED: $04
    ld [bc], a                                    ; $6BEE: $02
    dec b                                         ; $6BEF: $05
    ld [bc], a                                    ; $6BF0: $02
    ld b, $02                                     ; $6BF1: $06 $02
    rlca                                          ; $6BF3: $07
    ld [bc], a                                    ; $6BF4: $02
    ld [$0004], sp                                ; $6BF5: $08 $04 $00
    inc b                                         ; $6BF8: $04
    ld bc, $0204                                  ; $6BF9: $01 $04 $02
    inc b                                         ; $6BFC: $04
    inc bc                                        ; $6BFD: $03
    inc b                                         ; $6BFE: $04
    inc b                                         ; $6BFF: $04
    inc b                                         ; $6C00: $04
    dec b                                         ; $6C01: $05
    inc b                                         ; $6C02: $04
    ld b, $04                                     ; $6C03: $06 $04
    rlca                                          ; $6C05: $07
    inc b                                         ; $6C06: $04
    ld [$0003], sp                                ; $6C07: $08 $03 $00
    inc bc                                        ; $6C0A: $03
    ld bc, $0203                                  ; $6C0B: $01 $03 $02
    inc bc                                        ; $6C0E: $03
    inc bc                                        ; $6C0F: $03
    inc bc                                        ; $6C10: $03
    inc b                                         ; $6C11: $04
    inc bc                                        ; $6C12: $03
    dec b                                         ; $6C13: $05
    inc bc                                        ; $6C14: $03
    ld b, $03                                     ; $6C15: $06 $03
    rlca                                          ; $6C17: $07
    inc bc                                        ; $6C18: $03
    ld [$0001], sp                                ; $6C19: $08 $01 $00
    ld bc, $0101                                  ; $6C1C: $01 $01 $01
    ld [bc], a                                    ; $6C1F: $02
    ld bc, $0103                                  ; $6C20: $01 $03 $01
    inc b                                         ; $6C23: $04
    ld bc, $0105                                  ; $6C24: $01 $05 $01
    ld b, $01                                     ; $6C27: $06 $01
    rlca                                          ; $6C29: $07
    ld bc, $0108                                  ; $6C2A: $01 $08 $01
    nop                                           ; $6C2D: $00
    ld bc, $0101                                  ; $6C2E: $01 $01 $01
    ld [bc], a                                    ; $6C31: $02
    ld bc, $0103                                  ; $6C32: $01 $03 $01
    inc b                                         ; $6C35: $04
    ld bc, $0105                                  ; $6C36: $01 $05 $01
    ld b, $01                                     ; $6C39: $06 $01
    rlca                                          ; $6C3B: $07
    ld bc, $0508                                  ; $6C3C: $01 $08 $05
    nop                                           ; $6C3F: $00
    dec b                                         ; $6C40: $05
    ld bc, $0205                                  ; $6C41: $01 $05 $02
    dec b                                         ; $6C44: $05
    inc bc                                        ; $6C45: $03
    dec b                                         ; $6C46: $05
    inc b                                         ; $6C47: $04
    dec b                                         ; $6C48: $05
    dec b                                         ; $6C49: $05
    dec b                                         ; $6C4A: $05
    ld b, $05                                     ; $6C4B: $06 $05
    rlca                                          ; $6C4D: $07
    dec b                                         ; $6C4E: $05
    ld [$0002], sp                                ; $6C4F: $08 $02 $00
    ld [bc], a                                    ; $6C52: $02
    ld bc, $0202                                  ; $6C53: $01 $02 $02
    ld [bc], a                                    ; $6C56: $02
    inc bc                                        ; $6C57: $03
    ld [bc], a                                    ; $6C58: $02
    inc b                                         ; $6C59: $04
    ld [bc], a                                    ; $6C5A: $02
    dec b                                         ; $6C5B: $05
    ld [bc], a                                    ; $6C5C: $02
    ld b, $02                                     ; $6C5D: $06 $02
    rlca                                          ; $6C5F: $07
    ld [bc], a                                    ; $6C60: $02
    ld [$0004], sp                                ; $6C61: $08 $04 $00
    inc b                                         ; $6C64: $04
    ld bc, $0204                                  ; $6C65: $01 $04 $02
    inc b                                         ; $6C68: $04
    inc bc                                        ; $6C69: $03
    inc b                                         ; $6C6A: $04
    inc b                                         ; $6C6B: $04
    inc b                                         ; $6C6C: $04
    dec b                                         ; $6C6D: $05
    inc b                                         ; $6C6E: $04
    ld b, $04                                     ; $6C6F: $06 $04
    rlca                                          ; $6C71: $07
    inc b                                         ; $6C72: $04
    ld [$0003], sp                                ; $6C73: $08 $03 $00
    inc bc                                        ; $6C76: $03
    ld bc, $0203                                  ; $6C77: $01 $03 $02
    inc bc                                        ; $6C7A: $03
    inc bc                                        ; $6C7B: $03
    inc bc                                        ; $6C7C: $03
    inc b                                         ; $6C7D: $04
    inc bc                                        ; $6C7E: $03
    dec b                                         ; $6C7F: $05
    inc bc                                        ; $6C80: $03
    ld b, $03                                     ; $6C81: $06 $03
    rlca                                          ; $6C83: $07
    inc bc                                        ; $6C84: $03
    ld [$0006], sp                                ; $6C85: $08 $06 $00
    ld b, $01                                     ; $6C88: $06 $01
    ld b, $02                                     ; $6C8A: $06 $02
    ld b, $03                                     ; $6C8C: $06 $03
    ld b, $04                                     ; $6C8E: $06 $04
    ld b, $05                                     ; $6C90: $06 $05
    ld b, $06                                     ; $6C92: $06 $06
    ld b, $07                                     ; $6C94: $06 $07
    ld b, $08                                     ; $6C96: $06 $08
    rlca                                          ; $6C98: $07
    add hl, bc                                    ; $6C99: $09
    rlca                                          ; $6C9A: $07
    ld a, [bc]                                    ; $6C9B: $0A
    rlca                                          ; $6C9C: $07
    dec bc                                        ; $6C9D: $0B
    rlca                                          ; $6C9E: $07
    inc c                                         ; $6C9F: $0C
    rlca                                          ; $6CA0: $07
    dec c                                         ; $6CA1: $0D
    rlca                                          ; $6CA2: $07
    ld c, $07                                     ; $6CA3: $0E $07
    rrca                                          ; $6CA5: $0F
    rlca                                          ; $6CA6: $07
    db $10                                        ; $6CA7: $10
    rlca                                          ; $6CA8: $07
    ld de, $0000                                  ; $6CA9: $11 $00 $00
    nop                                           ; $6CAC: $00
    nop                                           ; $6CAD: $00
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    nop                                           ; $6CB0: $00
    nop                                           ; $6CB1: $00
    nop                                           ; $6CB2: $00
    nop                                           ; $6CB3: $00
    nop                                           ; $6CB4: $00
    nop                                           ; $6CB5: $00
    nop                                           ; $6CB6: $00
    nop                                           ; $6CB7: $00
    nop                                           ; $6CB8: $00
    nop                                           ; $6CB9: $00
    nop                                           ; $6CBA: $00
    nop                                           ; $6CBB: $00
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    jr z, jr_029_6CC2                             ; $6CC0: $28 $00

jr_029_6CC2:
    ld b, b                                       ; $6CC2: $40
    nop                                           ; $6CC3: $00
    nop                                           ; $6CC4: $00
    nop                                           ; $6CC5: $00
    nop                                           ; $6CC6: $00
    nop                                           ; $6CC7: $00
    nop                                           ; $6CC8: $00
    nop                                           ; $6CC9: $00
    db $EC                                        ; $6CCA: $EC
    nop                                           ; $6CCB: $00
    add b                                         ; $6CCC: $80
    add hl, hl                                    ; $6CCD: $29
    call c, Call_000_006C                         ; $6CCE: $DC $6C $00
    nop                                           ; $6CD1: $00
    call c, Call_000_006C                         ; $6CD2: $DC $6C $00
    nop                                           ; $6CD5: $00
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    nop                                           ; $6CD8: $00
    nop                                           ; $6CD9: $00
    ret nz                                        ; $6CDA: $C0

    ret c                                         ; $6CDB: $D8

    cp $6C                                        ; $6CDC: $FE $6C
    rst RST_38                                    ; $6CDE: $FF
    rst RST_38                                    ; $6CDF: $FF
    jr nz, jr_029_6D4F                            ; $6CE0: $20 $6D

    rst RST_38                                    ; $6CE2: $FF
    rst RST_38                                    ; $6CE3: $FF
    ld b, d                                       ; $6CE4: $42
    ld l, l                                       ; $6CE5: $6D
    rst RST_38                                    ; $6CE6: $FF
    rst RST_38                                    ; $6CE7: $FF
    ld h, h                                       ; $6CE8: $64
    ld l, l                                       ; $6CE9: $6D
    rst RST_38                                    ; $6CEA: $FF
    rst RST_38                                    ; $6CEB: $FF
    rrca                                          ; $6CEC: $0F
    ld l, l                                       ; $6CED: $6D
    rst RST_38                                    ; $6CEE: $FF
    rst RST_38                                    ; $6CEF: $FF
    ld sp, $FF6D                                  ; $6CF0: $31 $6D $FF
    rst RST_38                                    ; $6CF3: $FF
    ld d, e                                       ; $6CF4: $53
    ld l, l                                       ; $6CF5: $6D
    rst RST_38                                    ; $6CF6: $FF
    rst RST_38                                    ; $6CF7: $FF
    ld [hl], l                                    ; $6CF8: $75
    ld l, l                                       ; $6CF9: $6D
    rst RST_38                                    ; $6CFA: $FF
    rst RST_38                                    ; $6CFB: $FF
    rst RST_38                                    ; $6CFC: $FF
    rst RST_38                                    ; $6CFD: $FF
    sub b                                         ; $6CFE: $90
    nop                                           ; $6CFF: $00
    nop                                           ; $6D00: $00
    rst RST_38                                    ; $6D01: $FF
    rst RST_38                                    ; $6D02: $FF
    rst RST_38                                    ; $6D03: $FF
    ld [$006D], sp                                ; $6D04: $08 $6D $00
    nop                                           ; $6D07: $00
    ld [bc], a                                    ; $6D08: $02
    jr z, jr_029_6D13                             ; $6D09: $28 $08

    nop                                           ; $6D0B: $00
    jr c, jr_029_6D26                             ; $6D0C: $38 $18

    ld [$0090], sp                                ; $6D0E: $08 $90 $00
    nop                                           ; $6D11: $00
    rst RST_38                                    ; $6D12: $FF

jr_029_6D13:
    rst RST_38                                    ; $6D13: $FF
    rst RST_38                                    ; $6D14: $FF
    add hl, de                                    ; $6D15: $19
    ld l, l                                       ; $6D16: $6D
    nop                                           ; $6D17: $00
    nop                                           ; $6D18: $00
    ld [bc], a                                    ; $6D19: $02
    jr z, jr_029_6D24                             ; $6D1A: $28 $08

    nop                                           ; $6D1C: $00
    sbc b                                         ; $6D1D: $98
    jr jr_029_6D28                                ; $6D1E: $18 $08

    sub b                                         ; $6D20: $90
    nop                                           ; $6D21: $00
    nop                                           ; $6D22: $00
    rst RST_38                                    ; $6D23: $FF

jr_029_6D24:
    rst RST_38                                    ; $6D24: $FF
    rst RST_38                                    ; $6D25: $FF

jr_029_6D26:
    ld a, [hl+]                                   ; $6D26: $2A
    ld l, l                                       ; $6D27: $6D

jr_029_6D28:
    nop                                           ; $6D28: $00
    nop                                           ; $6D29: $00
    ld [bc], a                                    ; $6D2A: $02
    jr z, jr_029_6D45                             ; $6D2B: $28 $18

    ld [bc], a                                    ; $6D2D: $02
    jr c, jr_029_6D38                             ; $6D2E: $38 $08

    ld c, b                                       ; $6D30: $48
    sub b                                         ; $6D31: $90
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    rst RST_38                                    ; $6D34: $FF
    rst RST_38                                    ; $6D35: $FF
    rst RST_38                                    ; $6D36: $FF
    dec sp                                        ; $6D37: $3B

jr_029_6D38:
    ld l, l                                       ; $6D38: $6D
    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    ld [bc], a                                    ; $6D3B: $02
    jr z, jr_029_6D56                             ; $6D3C: $28 $18

    ld [bc], a                                    ; $6D3E: $02
    sbc b                                         ; $6D3F: $98
    ld [$9048], sp                                ; $6D40: $08 $48 $90
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00

jr_029_6D45:
    rst RST_38                                    ; $6D45: $FF
    rst RST_38                                    ; $6D46: $FF
    rst RST_38                                    ; $6D47: $FF
    ld c, h                                       ; $6D48: $4C
    ld l, l                                       ; $6D49: $6D
    nop                                           ; $6D4A: $00
    nop                                           ; $6D4B: $00
    ld [bc], a                                    ; $6D4C: $02
    jr z, jr_029_6D57                             ; $6D4D: $28 $08

jr_029_6D4F:
    inc b                                         ; $6D4F: $04
    jr c, jr_029_6D6A                             ; $6D50: $38 $18

    ld [$0090], sp                                ; $6D52: $08 $90 $00
    nop                                           ; $6D55: $00

jr_029_6D56:
    rst RST_38                                    ; $6D56: $FF

jr_029_6D57:
    rst RST_38                                    ; $6D57: $FF
    rst RST_38                                    ; $6D58: $FF
    ld e, l                                       ; $6D59: $5D
    ld l, l                                       ; $6D5A: $6D
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    ld [bc], a                                    ; $6D5D: $02
    jr z, jr_029_6D68                             ; $6D5E: $28 $08

    inc b                                         ; $6D60: $04
    sbc b                                         ; $6D61: $98
    jr jr_029_6D6C                                ; $6D62: $18 $08

    sub b                                         ; $6D64: $90
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    rst RST_38                                    ; $6D67: $FF

jr_029_6D68:
    rst RST_38                                    ; $6D68: $FF
    rst RST_38                                    ; $6D69: $FF

jr_029_6D6A:
    ld l, [hl]                                    ; $6D6A: $6E
    ld l, l                                       ; $6D6B: $6D

jr_029_6D6C:
    nop                                           ; $6D6C: $00
    nop                                           ; $6D6D: $00
    ld [bc], a                                    ; $6D6E: $02
    jr z, jr_029_6D89                             ; $6D6F: $28 $18

    ld b, $38                                     ; $6D71: $06 $38
    ld [$9048], sp                                ; $6D73: $08 $48 $90
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    rst RST_38                                    ; $6D78: $FF
    rst RST_38                                    ; $6D79: $FF
    rst RST_38                                    ; $6D7A: $FF
    ld a, a                                       ; $6D7B: $7F
    ld l, l                                       ; $6D7C: $6D
    nop                                           ; $6D7D: $00
    nop                                           ; $6D7E: $00
    ld [bc], a                                    ; $6D7F: $02
    jr z, jr_029_6D9A                             ; $6D80: $28 $18

    ld b, $98                                     ; $6D82: $06 $98
    ld [$F448], sp                                ; $6D84: $08 $48 $F4
    ld l, l                                       ; $6D87: $6D
    rst RST_38                                    ; $6D88: $FF

jr_029_6D89:
    rst RST_38                                    ; $6D89: $FF
    cp $6D                                        ; $6D8A: $FE $6D
    rst RST_38                                    ; $6D8C: $FF
    rst RST_38                                    ; $6D8D: $FF
    ld [$FF6E], sp                                ; $6D8E: $08 $6E $FF
    rst RST_38                                    ; $6D91: $FF
    ld [de], a                                    ; $6D92: $12
    ld l, [hl]                                    ; $6D93: $6E
    rst RST_38                                    ; $6D94: $FF
    rst RST_38                                    ; $6D95: $FF
    ld b, h                                       ; $6D96: $44
    ld l, [hl]                                    ; $6D97: $6E
    rst RST_38                                    ; $6D98: $FF
    rst RST_38                                    ; $6D99: $FF

jr_029_6D9A:
    ld c, [hl]                                    ; $6D9A: $4E
    ld l, [hl]                                    ; $6D9B: $6E
    rst RST_38                                    ; $6D9C: $FF
    rst RST_38                                    ; $6D9D: $FF
    ld e, b                                       ; $6D9E: $58
    ld l, [hl]                                    ; $6D9F: $6E
    rst RST_38                                    ; $6DA0: $FF
    rst RST_38                                    ; $6DA1: $FF
    ld h, d                                       ; $6DA2: $62
    ld l, [hl]                                    ; $6DA3: $6E
    rst RST_38                                    ; $6DA4: $FF
    rst RST_38                                    ; $6DA5: $FF
    sub h                                         ; $6DA6: $94
    ld l, [hl]                                    ; $6DA7: $6E
    rst RST_38                                    ; $6DA8: $FF
    rst RST_38                                    ; $6DA9: $FF
    ldh [$FF6D], a                                ; $6DAA: $E0 $6D
    rst RST_38                                    ; $6DAC: $FF
    rst RST_38                                    ; $6DAD: $FF
    ldh [$FF6D], a                                ; $6DAE: $E0 $6D
    rst RST_38                                    ; $6DB0: $FF
    rst RST_38                                    ; $6DB1: $FF
    ld [$FF6D], a                                 ; $6DB2: $EA $6D $FF
    rst RST_38                                    ; $6DB5: $FF
    ld [$FF6D], a                                 ; $6DB6: $EA $6D $FF
    rst RST_38                                    ; $6DB9: $FF
    sbc [hl]                                      ; $6DBA: $9E
    ld l, [hl]                                    ; $6DBB: $6E
    rst RST_38                                    ; $6DBC: $FF
    rst RST_38                                    ; $6DBD: $FF
    adc d                                         ; $6DBE: $8A
    ld l, [hl]                                    ; $6DBF: $6E
    rst RST_38                                    ; $6DC0: $FF
    rst RST_38                                    ; $6DC1: $FF
    add b                                         ; $6DC2: $80
    ld l, [hl]                                    ; $6DC3: $6E
    rst RST_38                                    ; $6DC4: $FF
    rst RST_38                                    ; $6DC5: $FF
    halt                                          ; $6DC6: $76
    ld l, [hl]                                    ; $6DC7: $6E
    rst RST_38                                    ; $6DC8: $FF
    rst RST_38                                    ; $6DC9: $FF
    ld l, h                                       ; $6DCA: $6C
    ld l, [hl]                                    ; $6DCB: $6E
    rst RST_38                                    ; $6DCC: $FF
    rst RST_38                                    ; $6DCD: $FF
    ld a, [hl-]                                   ; $6DCE: $3A
    ld l, [hl]                                    ; $6DCF: $6E
    rst RST_38                                    ; $6DD0: $FF
    rst RST_38                                    ; $6DD1: $FF
    jr nc, jr_029_6E42                            ; $6DD2: $30 $6E

    rst RST_38                                    ; $6DD4: $FF
    rst RST_38                                    ; $6DD5: $FF
    ld h, $6E                                     ; $6DD6: $26 $6E
    rst RST_38                                    ; $6DD8: $FF
    rst RST_38                                    ; $6DD9: $FF
    inc e                                         ; $6DDA: $1C
    ld l, [hl]                                    ; $6DDB: $6E
    rst RST_38                                    ; $6DDC: $FF
    rst RST_38                                    ; $6DDD: $FF
    rst RST_38                                    ; $6DDE: $FF
    rst RST_38                                    ; $6DDF: $FF
    sub b                                         ; $6DE0: $90
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00
    rst RST_38                                    ; $6DE3: $FF
    rst RST_38                                    ; $6DE4: $FF
    rst RST_38                                    ; $6DE5: $FF
    xor b                                         ; $6DE6: $A8
    ld l, [hl]                                    ; $6DE7: $6E
    nop                                           ; $6DE8: $00
    db $FC                                        ; $6DE9: $FC
    or b                                          ; $6DEA: $B0
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00
    rst RST_38                                    ; $6DED: $FF
    rst RST_38                                    ; $6DEE: $FF
    rst RST_38                                    ; $6DEF: $FF

jr_029_6DF0:
    xor b                                         ; $6DF0: $A8
    ld l, [hl]                                    ; $6DF1: $6E
    jr z, jr_029_6DF0                             ; $6DF2: $28 $FC

    sub b                                         ; $6DF4: $90
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    rst RST_38                                    ; $6DF7: $FF
    rst RST_38                                    ; $6DF8: $FF
    rst RST_38                                    ; $6DF9: $FF
    xor a                                         ; $6DFA: $AF
    ld l, [hl]                                    ; $6DFB: $6E
    nop                                           ; $6DFC: $00
    db $FC                                        ; $6DFD: $FC
    sub b                                         ; $6DFE: $90
    nop                                           ; $6DFF: $00
    nop                                           ; $6E00: $00
    rst RST_38                                    ; $6E01: $FF
    rst RST_38                                    ; $6E02: $FF
    rst RST_38                                    ; $6E03: $FF
    jp nz, $006E                                  ; $6E04: $C2 $6E $00

    db $FC                                        ; $6E07: $FC
    sub b                                         ; $6E08: $90
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    rst RST_38                                    ; $6E0B: $FF
    rst RST_38                                    ; $6E0C: $FF
    rst RST_38                                    ; $6E0D: $FF
    push de                                       ; $6E0E: $D5
    ld l, [hl]                                    ; $6E0F: $6E
    nop                                           ; $6E10: $00
    db $FC                                        ; $6E11: $FC
    sub b                                         ; $6E12: $90
    nop                                           ; $6E13: $00
    nop                                           ; $6E14: $00
    rst RST_38                                    ; $6E15: $FF
    rst RST_38                                    ; $6E16: $FF
    rst RST_38                                    ; $6E17: $FF
    add sp, $6E                                   ; $6E18: $E8 $6E
    nop                                           ; $6E1A: $00
    db $FC                                        ; $6E1B: $FC
    or b                                          ; $6E1C: $B0
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    rst RST_38                                    ; $6E1F: $FF
    rst RST_38                                    ; $6E20: $FF
    rst RST_38                                    ; $6E21: $FF

jr_029_6E22:
    xor a                                         ; $6E22: $AF
    ld l, [hl]                                    ; $6E23: $6E
    jr z, jr_029_6E22                             ; $6E24: $28 $FC

    or b                                          ; $6E26: $B0
    nop                                           ; $6E27: $00
    nop                                           ; $6E28: $00
    rst RST_38                                    ; $6E29: $FF
    rst RST_38                                    ; $6E2A: $FF
    rst RST_38                                    ; $6E2B: $FF
    jp nz, Jump_000_286E                          ; $6E2C: $C2 $6E $28

    db $FC                                        ; $6E2F: $FC
    or b                                          ; $6E30: $B0
    nop                                           ; $6E31: $00
    nop                                           ; $6E32: $00
    rst RST_38                                    ; $6E33: $FF
    rst RST_38                                    ; $6E34: $FF
    rst RST_38                                    ; $6E35: $FF

jr_029_6E36:
    push de                                       ; $6E36: $D5
    ld l, [hl]                                    ; $6E37: $6E
    jr z, jr_029_6E36                             ; $6E38: $28 $FC

    or b                                          ; $6E3A: $B0
    nop                                           ; $6E3B: $00
    nop                                           ; $6E3C: $00
    rst RST_38                                    ; $6E3D: $FF
    rst RST_38                                    ; $6E3E: $FF
    rst RST_38                                    ; $6E3F: $FF

jr_029_6E40:
    add sp, $6E                                   ; $6E40: $E8 $6E

jr_029_6E42:
    jr z, jr_029_6E40                             ; $6E42: $28 $FC

    sub b                                         ; $6E44: $90
    nop                                           ; $6E45: $00
    nop                                           ; $6E46: $00
    rst RST_38                                    ; $6E47: $FF
    rst RST_38                                    ; $6E48: $FF
    rst RST_38                                    ; $6E49: $FF
    ei                                            ; $6E4A: $FB
    ld l, [hl]                                    ; $6E4B: $6E
    nop                                           ; $6E4C: $00
    db $FC                                        ; $6E4D: $FC
    sub b                                         ; $6E4E: $90
    nop                                           ; $6E4F: $00
    nop                                           ; $6E50: $00
    rst RST_38                                    ; $6E51: $FF
    rst RST_38                                    ; $6E52: $FF
    rst RST_38                                    ; $6E53: $FF
    ld [$006F], sp                                ; $6E54: $08 $6F $00
    db $FC                                        ; $6E57: $FC
    sub b                                         ; $6E58: $90
    nop                                           ; $6E59: $00
    nop                                           ; $6E5A: $00
    rst RST_38                                    ; $6E5B: $FF
    rst RST_38                                    ; $6E5C: $FF
    rst RST_38                                    ; $6E5D: $FF
    dec d                                         ; $6E5E: $15
    ld l, a                                       ; $6E5F: $6F
    nop                                           ; $6E60: $00
    db $FC                                        ; $6E61: $FC
    sub b                                         ; $6E62: $90
    nop                                           ; $6E63: $00
    nop                                           ; $6E64: $00
    rst RST_38                                    ; $6E65: $FF
    rst RST_38                                    ; $6E66: $FF
    rst RST_38                                    ; $6E67: $FF
    ld [hl+], a                                   ; $6E68: $22
    ld l, a                                       ; $6E69: $6F
    nop                                           ; $6E6A: $00
    db $FC                                        ; $6E6B: $FC
    or b                                          ; $6E6C: $B0
    nop                                           ; $6E6D: $00
    nop                                           ; $6E6E: $00
    rst RST_38                                    ; $6E6F: $FF
    rst RST_38                                    ; $6E70: $FF
    rst RST_38                                    ; $6E71: $FF

jr_029_6E72:
    ei                                            ; $6E72: $FB
    ld l, [hl]                                    ; $6E73: $6E
    jr z, jr_029_6E72                             ; $6E74: $28 $FC

    or b                                          ; $6E76: $B0
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    rst RST_38                                    ; $6E79: $FF
    rst RST_38                                    ; $6E7A: $FF
    rst RST_38                                    ; $6E7B: $FF
    ld [$286F], sp                                ; $6E7C: $08 $6F $28
    db $FC                                        ; $6E7F: $FC
    or b                                          ; $6E80: $B0
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    rst RST_38                                    ; $6E83: $FF
    rst RST_38                                    ; $6E84: $FF
    rst RST_38                                    ; $6E85: $FF

jr_029_6E86:
    dec d                                         ; $6E86: $15
    ld l, a                                       ; $6E87: $6F
    jr z, jr_029_6E86                             ; $6E88: $28 $FC

    or b                                          ; $6E8A: $B0
    nop                                           ; $6E8B: $00
    nop                                           ; $6E8C: $00
    rst RST_38                                    ; $6E8D: $FF
    rst RST_38                                    ; $6E8E: $FF
    rst RST_38                                    ; $6E8F: $FF

jr_029_6E90:
    ld [hl+], a                                   ; $6E90: $22
    ld l, a                                       ; $6E91: $6F
    jr z, jr_029_6E90                             ; $6E92: $28 $FC

    sub b                                         ; $6E94: $90
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    rst RST_38                                    ; $6E97: $FF
    rst RST_38                                    ; $6E98: $FF
    rst RST_38                                    ; $6E99: $FF
    cpl                                           ; $6E9A: $2F
    ld l, a                                       ; $6E9B: $6F
    nop                                           ; $6E9C: $00
    db $FC                                        ; $6E9D: $FC
    or b                                          ; $6E9E: $B0
    nop                                           ; $6E9F: $00
    nop                                           ; $6EA0: $00
    rst RST_38                                    ; $6EA1: $FF
    rst RST_38                                    ; $6EA2: $FF
    rst RST_38                                    ; $6EA3: $FF

jr_029_6EA4:
    cpl                                           ; $6EA4: $2F
    ld l, a                                       ; $6EA5: $6F
    jr z, jr_029_6EA4                             ; $6EA6: $28 $FC

    ld [bc], a                                    ; $6EA8: $02
    jr z, jr_029_6EBB                             ; $6EA9: $28 $10

    ld a, [bc]                                    ; $6EAB: $0A
    jr c, jr_029_6EBE                             ; $6EAC: $38 $10

    adc d                                         ; $6EAE: $8A
    ld b, $28                                     ; $6EAF: $06 $28
    ld [$280C], sp                                ; $6EB1: $08 $0C $28
    jr jr_029_6EC6                                ; $6EB4: $18 $10

    jr c, jr_029_6EC0                             ; $6EB6: $38 $08

    adc h                                         ; $6EB8: $8C
    jr c, jr_029_6ED3                             ; $6EB9: $38 $18

jr_029_6EBB:
    sub b                                         ; $6EBB: $90
    jr z, jr_029_6ECE                             ; $6EBC: $28 $10

jr_029_6EBE:
    ld c, $38                                     ; $6EBE: $0E $38

jr_029_6EC0:
    db $10                                        ; $6EC0: $10
    adc [hl]                                      ; $6EC1: $8E
    ld b, $28                                     ; $6EC2: $06 $28
    add hl, bc                                    ; $6EC4: $09
    inc c                                         ; $6EC5: $0C

jr_029_6EC6:
    jr z, jr_029_6EDF                             ; $6EC6: $28 $17

    db $10                                        ; $6EC8: $10
    jr c, jr_029_6ED4                             ; $6EC9: $38 $09

    adc h                                         ; $6ECB: $8C
    jr c, @+$19                                   ; $6ECC: $38 $17

jr_029_6ECE:
    sub b                                         ; $6ECE: $90
    jr z, jr_029_6EE1                             ; $6ECF: $28 $10

    ld c, $38                                     ; $6ED1: $0E $38

jr_029_6ED3:
    db $10                                        ; $6ED3: $10

jr_029_6ED4:
    adc [hl]                                      ; $6ED4: $8E
    ld b, $28                                     ; $6ED5: $06 $28
    ld a, [bc]                                    ; $6ED7: $0A
    inc c                                         ; $6ED8: $0C
    jr z, jr_029_6EF1                             ; $6ED9: $28 $16

    db $10                                        ; $6EDB: $10
    jr c, jr_029_6EE8                             ; $6EDC: $38 $0A

    adc h                                         ; $6EDE: $8C

jr_029_6EDF:
    jr c, jr_029_6EF7                             ; $6EDF: $38 $16

jr_029_6EE1:
    sub b                                         ; $6EE1: $90
    jr z, jr_029_6EF4                             ; $6EE2: $28 $10

    ld c, $38                                     ; $6EE4: $0E $38
    db $10                                        ; $6EE6: $10
    adc [hl]                                      ; $6EE7: $8E

jr_029_6EE8:
    ld b, $28                                     ; $6EE8: $06 $28
    dec bc                                        ; $6EEA: $0B
    inc c                                         ; $6EEB: $0C
    jr z, @+$17                                   ; $6EEC: $28 $15

    db $10                                        ; $6EEE: $10
    jr c, jr_029_6EFC                             ; $6EEF: $38 $0B

jr_029_6EF1:
    adc h                                         ; $6EF1: $8C
    jr c, jr_029_6F09                             ; $6EF2: $38 $15

jr_029_6EF4:
    sub b                                         ; $6EF4: $90
    jr z, jr_029_6F07                             ; $6EF5: $28 $10

jr_029_6EF7:
    ld c, $38                                     ; $6EF7: $0E $38
    db $10                                        ; $6EF9: $10
    adc [hl]                                      ; $6EFA: $8E
    inc b                                         ; $6EFB: $04

jr_029_6EFC:
    jr z, @+$0E                                   ; $6EFC: $28 $0C

    inc c                                         ; $6EFE: $0C
    jr z, jr_029_6F15                             ; $6EFF: $28 $14

    db $10                                        ; $6F01: $10
    jr c, @+$0E                                   ; $6F02: $38 $0C

    adc h                                         ; $6F04: $8C
    jr c, jr_029_6F1B                             ; $6F05: $38 $14

jr_029_6F07:
    sub b                                         ; $6F07: $90
    inc b                                         ; $6F08: $04

jr_029_6F09:
    jr z, jr_029_6F18                             ; $6F09: $28 $0D

    inc c                                         ; $6F0B: $0C
    jr z, jr_029_6F21                             ; $6F0C: $28 $13

    db $10                                        ; $6F0E: $10
    jr c, jr_029_6F1E                             ; $6F0F: $38 $0D

    adc h                                         ; $6F11: $8C
    jr c, @+$15                                   ; $6F12: $38 $13

    sub b                                         ; $6F14: $90

jr_029_6F15:
    inc b                                         ; $6F15: $04

jr_029_6F16:
    jr z, jr_029_6F26                             ; $6F16: $28 $0E

jr_029_6F18:
    inc c                                         ; $6F18: $0C
    jr z, @+$14                                   ; $6F19: $28 $12

jr_029_6F1B:
    db $10                                        ; $6F1B: $10
    jr c, jr_029_6F2C                             ; $6F1C: $38 $0E

jr_029_6F1E:
    adc h                                         ; $6F1E: $8C
    jr c, jr_029_6F33                             ; $6F1F: $38 $12

jr_029_6F21:
    sub b                                         ; $6F21: $90
    inc b                                         ; $6F22: $04
    jr z, @+$11                                   ; $6F23: $28 $0F

    inc c                                         ; $6F25: $0C

jr_029_6F26:
    jr z, jr_029_6F39                             ; $6F26: $28 $11

    db $10                                        ; $6F28: $10
    jr c, jr_029_6F3A                             ; $6F29: $38 $0F

    adc h                                         ; $6F2B: $8C

jr_029_6F2C:
    jr c, jr_029_6F3F                             ; $6F2C: $38 $11

    sub b                                         ; $6F2E: $90
    ld [bc], a                                    ; $6F2F: $02
    jr z, jr_029_6F42                             ; $6F30: $28 $10

    ld [de], a                                    ; $6F32: $12

jr_029_6F33:
    jr c, jr_029_6F45                             ; $6F33: $38 $10

    sub d                                         ; $6F35: $92
    ld b, h                                       ; $6F36: $44
    ld l, a                                       ; $6F37: $6F
    rst RST_38                                    ; $6F38: $FF

jr_029_6F39:
    rst RST_38                                    ; $6F39: $FF

jr_029_6F3A:
    ld h, h                                       ; $6F3A: $64
    ld l, a                                       ; $6F3B: $6F
    rst RST_38                                    ; $6F3C: $FF
    rst RST_38                                    ; $6F3D: $FF
    add h                                         ; $6F3E: $84

jr_029_6F3F:
    ld l, a                                       ; $6F3F: $6F
    rst RST_38                                    ; $6F40: $FF
    rst RST_38                                    ; $6F41: $FF

jr_029_6F42:
    rst RST_38                                    ; $6F42: $FF
    rst RST_38                                    ; $6F43: $FF
    sub b                                         ; $6F44: $90

jr_029_6F45:
    nop                                           ; $6F45: $00
    nop                                           ; $6F46: $00
    rst RST_38                                    ; $6F47: $FF
    rst RST_38                                    ; $6F48: $FF
    rst RST_38                                    ; $6F49: $FF
    ld c, [hl]                                    ; $6F4A: $4E
    ld l, a                                       ; $6F4B: $6F
    jr nz, @-$76                                  ; $6F4C: $20 $88

    rlca                                          ; $6F4E: $07
    ld hl, sp+$00                                 ; $6F4F: $F8 $00
    nop                                           ; $6F51: $00
    nop                                           ; $6F52: $00
    ld [$0002], sp                                ; $6F53: $08 $02 $00
    db $10                                        ; $6F56: $10
    inc b                                         ; $6F57: $04
    nop                                           ; $6F58: $00
    jr jr_029_6F61                                ; $6F59: $18 $06

    nop                                           ; $6F5B: $00
    jr nz, jr_029_6F66                            ; $6F5C: $20 $08

    nop                                           ; $6F5E: $00
    jr z, jr_029_6F6B                             ; $6F5F: $28 $0A

jr_029_6F61:
    ld [$0C30], sp                                ; $6F61: $08 $30 $0C
    sub b                                         ; $6F64: $90
    nop                                           ; $6F65: $00

jr_029_6F66:
    nop                                           ; $6F66: $00
    rst RST_38                                    ; $6F67: $FF
    rst RST_38                                    ; $6F68: $FF
    rst RST_38                                    ; $6F69: $FF
    ld l, [hl]                                    ; $6F6A: $6E

jr_029_6F6B:
    ld l, a                                       ; $6F6B: $6F
    jr nz, @-$76                                  ; $6F6C: $20 $88

    rlca                                          ; $6F6E: $07
    ld hl, sp+$00                                 ; $6F6F: $F8 $00
    nop                                           ; $6F71: $00
    nop                                           ; $6F72: $00
    ld [$0002], sp                                ; $6F73: $08 $02 $00
    db $10                                        ; $6F76: $10
    inc b                                         ; $6F77: $04
    nop                                           ; $6F78: $00
    jr jr_029_6F81                                ; $6F79: $18 $06

    ld [$0820], sp                                ; $6F7B: $08 $20 $08
    ld [$0A28], sp                                ; $6F7E: $08 $28 $0A

jr_029_6F81:
    ld [$0C30], sp                                ; $6F81: $08 $30 $0C
    sub b                                         ; $6F84: $90
    nop                                           ; $6F85: $00
    nop                                           ; $6F86: $00
    rst RST_38                                    ; $6F87: $FF
    rst RST_38                                    ; $6F88: $FF
    rst RST_38                                    ; $6F89: $FF
    adc [hl]                                      ; $6F8A: $8E
    ld l, a                                       ; $6F8B: $6F
    jr nz, jr_029_6F16                            ; $6F8C: $20 $88

    ld b, $F8                                     ; $6F8E: $06 $F8
    nop                                           ; $6F90: $00
    nop                                           ; $6F91: $00
    nop                                           ; $6F92: $00
    ld [$0002], sp                                ; $6F93: $08 $02 $00
    db $10                                        ; $6F96: $10
    inc b                                         ; $6F97: $04
    nop                                           ; $6F98: $00
    jr jr_029_6FA1                                ; $6F99: $18 $06

    nop                                           ; $6F9B: $00
    jr nz, jr_029_6FA6                            ; $6F9C: $20 $08

    ld [$0A28], sp                                ; $6F9E: $08 $28 $0A

jr_029_6FA1:
    or e                                          ; $6FA1: $B3
    ld l, a                                       ; $6FA2: $6F
    rst RST_38                                    ; $6FA3: $FF
    rst RST_38                                    ; $6FA4: $FF
    ld [hl-], a                                   ; $6FA5: $32

jr_029_6FA6:
    ld [hl], b                                    ; $6FA6: $70
    rst RST_38                                    ; $6FA7: $FF
    rst RST_38                                    ; $6FA8: $FF
    xor $6F                                       ; $6FA9: $EE $6F
    rst RST_38                                    ; $6FAB: $FF
    rst RST_38                                    ; $6FAC: $FF
    ld l, l                                       ; $6FAD: $6D
    ld [hl], b                                    ; $6FAE: $70
    rst RST_38                                    ; $6FAF: $FF
    rst RST_38                                    ; $6FB0: $FF
    rst RST_38                                    ; $6FB1: $FF
    rst RST_38                                    ; $6FB2: $FF
    sub b                                         ; $6FB3: $90
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    rst RST_38                                    ; $6FB6: $FF
    rst RST_38                                    ; $6FB7: $FF
    rst RST_38                                    ; $6FB8: $FF
    cp l                                          ; $6FB9: $BD
    ld l, a                                       ; $6FBA: $6F
    nop                                           ; $6FBB: $00
    db $10                                        ; $6FBC: $10
    db $10                                        ; $6FBD: $10
    ld c, b                                       ; $6FBE: $48
    ld b, b                                       ; $6FBF: $40
    nop                                           ; $6FC0: $00
    jr c, jr_029_7003                             ; $6FC1: $38 $40

    ld [bc], a                                    ; $6FC3: $02
    ld d, b                                       ; $6FC4: $50
    ld c, b                                       ; $6FC5: $48
    nop                                           ; $6FC6: $00
    ld b, b                                       ; $6FC7: $40
    ld c, b                                       ; $6FC8: $48
    ld [bc], a                                    ; $6FC9: $02
    ld e, b                                       ; $6FCA: $58
    ld d, b                                       ; $6FCB: $50
    nop                                           ; $6FCC: $00
    ld c, b                                       ; $6FCD: $48
    ld d, b                                       ; $6FCE: $50
    ld [bc], a                                    ; $6FCF: $02
    jr c, jr_029_700A                             ; $6FD0: $38 $38

    ld [$5850], sp                                ; $6FD2: $08 $50 $58
    ld a, [bc]                                    ; $6FD5: $0A
    jr z, jr_029_7010                             ; $6FD6: $28 $38

    db $10                                        ; $6FD8: $10
    jr jr_029_7013                                ; $6FD9: $18 $38

    db $10                                        ; $6FDB: $10
    ld [$1038], sp                                ; $6FDC: $08 $38 $10
    ld hl, sp+$38                                 ; $6FDF: $F8 $38
    db $10                                        ; $6FE1: $10
    add sp, $38                                   ; $6FE2: $E8 $38
    db $10                                        ; $6FE4: $10
    ld h, b                                       ; $6FE5: $60
    ld e, b                                       ; $6FE6: $58
    db $10                                        ; $6FE7: $10
    ld [hl], b                                    ; $6FE8: $70
    ld e, b                                       ; $6FE9: $58
    db $10                                        ; $6FEA: $10
    add b                                         ; $6FEB: $80
    ld e, b                                       ; $6FEC: $58
    db $10                                        ; $6FED: $10
    sub b                                         ; $6FEE: $90
    nop                                           ; $6FEF: $00
    nop                                           ; $6FF0: $00
    rst RST_38                                    ; $6FF1: $FF
    rst RST_38                                    ; $6FF2: $FF
    rst RST_38                                    ; $6FF3: $FF
    ld hl, sp+$6F                                 ; $6FF4: $F8 $6F
    nop                                           ; $6FF6: $00
    db $10                                        ; $6FF7: $10
    inc de                                        ; $6FF8: $13
    ld c, b                                       ; $6FF9: $48
    ld b, b                                       ; $6FFA: $40
    nop                                           ; $6FFB: $00
    jr c, @+$42                                   ; $6FFC: $38 $40

    ld [bc], a                                    ; $6FFE: $02
    ld d, b                                       ; $6FFF: $50
    ld c, b                                       ; $7000: $48
    nop                                           ; $7001: $00
    ld b, b                                       ; $7002: $40

jr_029_7003:
    ld c, b                                       ; $7003: $48
    ld [bc], a                                    ; $7004: $02
    ld e, b                                       ; $7005: $58
    ld d, b                                       ; $7006: $50
    nop                                           ; $7007: $00
    ld c, b                                       ; $7008: $48
    ld d, b                                       ; $7009: $50

jr_029_700A:
    ld [bc], a                                    ; $700A: $02
    jr c, jr_029_7045                             ; $700B: $38 $38

    ld [$5850], sp                                ; $700D: $08 $50 $58

jr_029_7010:
    ld a, [bc]                                    ; $7010: $0A
    jr z, jr_029_704B                             ; $7011: $28 $38

jr_029_7013:
    db $10                                        ; $7013: $10
    jr jr_029_704E                                ; $7014: $18 $38

    db $10                                        ; $7016: $10
    ld [$1038], sp                                ; $7017: $08 $38 $10
    ld hl, sp+$38                                 ; $701A: $F8 $38
    db $10                                        ; $701C: $10
    add sp, $38                                   ; $701D: $E8 $38
    db $10                                        ; $701F: $10
    ret c                                         ; $7020: $D8

    jr c, jr_029_7033                             ; $7021: $38 $10

    ret z                                         ; $7023: $C8

    jr c, jr_029_7036                             ; $7024: $38 $10

    cp b                                          ; $7026: $B8
    jr c, jr_029_7039                             ; $7027: $38 $10

    ld h, b                                       ; $7029: $60
    ld e, b                                       ; $702A: $58
    db $10                                        ; $702B: $10
    ld [hl], b                                    ; $702C: $70
    ld e, b                                       ; $702D: $58
    db $10                                        ; $702E: $10
    add b                                         ; $702F: $80
    ld e, b                                       ; $7030: $58
    db $10                                        ; $7031: $10
    sub b                                         ; $7032: $90

jr_029_7033:
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    rst RST_38                                    ; $7035: $FF

jr_029_7036:
    rst RST_38                                    ; $7036: $FF
    rst RST_38                                    ; $7037: $FF
    inc a                                         ; $7038: $3C

jr_029_7039:
    ld [hl], b                                    ; $7039: $70
    ldh [rNR10], a                                ; $703A: $E0 $10
    db $10                                        ; $703C: $10
    jr z, jr_029_70A7                             ; $703D: $28 $68

    inc b                                         ; $703F: $04
    jr c, jr_029_70AA                             ; $7040: $38 $68

    ld b, $30                                     ; $7042: $06 $30
    ld [hl], b                                    ; $7044: $70

jr_029_7045:
    inc b                                         ; $7045: $04
    ld b, b                                       ; $7046: $40
    ld [hl], b                                    ; $7047: $70
    ld b, $38                                     ; $7048: $06 $38
    ld a, b                                       ; $704A: $78

jr_029_704B:
    inc b                                         ; $704B: $04
    ld c, b                                       ; $704C: $48
    ld a, b                                       ; $704D: $78

jr_029_704E:
    ld b, $30                                     ; $704E: $06 $30
    ld h, b                                       ; $7050: $60
    inc c                                         ; $7051: $0C
    ld c, b                                       ; $7052: $48
    add b                                         ; $7053: $80
    ld c, $20                                     ; $7054: $0E $20
    ld h, b                                       ; $7056: $60
    ld [de], a                                    ; $7057: $12
    db $10                                        ; $7058: $10
    ld h, b                                       ; $7059: $60
    ld [de], a                                    ; $705A: $12
    nop                                           ; $705B: $00
    ld h, b                                       ; $705C: $60
    ld [de], a                                    ; $705D: $12
    ld e, b                                       ; $705E: $58
    add b                                         ; $705F: $80
    ld [de], a                                    ; $7060: $12
    ld l, b                                       ; $7061: $68
    add b                                         ; $7062: $80
    ld [de], a                                    ; $7063: $12
    ld a, b                                       ; $7064: $78
    add b                                         ; $7065: $80
    ld [de], a                                    ; $7066: $12
    adc b                                         ; $7067: $88
    add b                                         ; $7068: $80
    ld [de], a                                    ; $7069: $12
    sbc b                                         ; $706A: $98
    add b                                         ; $706B: $80
    ld [de], a                                    ; $706C: $12
    sub b                                         ; $706D: $90
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    rst RST_38                                    ; $7070: $FF
    rst RST_38                                    ; $7071: $FF
    rst RST_38                                    ; $7072: $FF
    ld [hl], a                                    ; $7073: $77
    ld [hl], b                                    ; $7074: $70
    ldh [rNR10], a                                ; $7075: $E0 $10
    inc de                                        ; $7077: $13
    jr z, jr_029_70E2                             ; $7078: $28 $68

    inc b                                         ; $707A: $04
    jr c, jr_029_70E5                             ; $707B: $38 $68

    ld b, $30                                     ; $707D: $06 $30
    ld [hl], b                                    ; $707F: $70
    inc b                                         ; $7080: $04
    ld b, b                                       ; $7081: $40
    ld [hl], b                                    ; $7082: $70
    ld b, $38                                     ; $7083: $06 $38
    ld a, b                                       ; $7085: $78
    inc b                                         ; $7086: $04
    ld c, b                                       ; $7087: $48
    ld a, b                                       ; $7088: $78
    ld b, $30                                     ; $7089: $06 $30
    ld h, b                                       ; $708B: $60
    inc c                                         ; $708C: $0C
    ld c, b                                       ; $708D: $48
    add b                                         ; $708E: $80
    ld c, $20                                     ; $708F: $0E $20
    ld h, b                                       ; $7091: $60
    ld [de], a                                    ; $7092: $12
    db $10                                        ; $7093: $10
    ld h, b                                       ; $7094: $60
    ld [de], a                                    ; $7095: $12
    nop                                           ; $7096: $00
    ld h, b                                       ; $7097: $60
    ld [de], a                                    ; $7098: $12
    ld e, b                                       ; $7099: $58
    add b                                         ; $709A: $80
    ld [de], a                                    ; $709B: $12
    ld l, b                                       ; $709C: $68
    add b                                         ; $709D: $80
    ld [de], a                                    ; $709E: $12
    ld a, b                                       ; $709F: $78
    add b                                         ; $70A0: $80
    ld [de], a                                    ; $70A1: $12
    adc b                                         ; $70A2: $88
    add b                                         ; $70A3: $80
    ld [de], a                                    ; $70A4: $12
    sbc b                                         ; $70A5: $98
    add b                                         ; $70A6: $80

jr_029_70A7:
    ld [de], a                                    ; $70A7: $12
    xor b                                         ; $70A8: $A8
    add b                                         ; $70A9: $80

jr_029_70AA:
    ld [de], a                                    ; $70AA: $12
    cp b                                          ; $70AB: $B8
    add b                                         ; $70AC: $80
    ld [de], a                                    ; $70AD: $12
    ret z                                         ; $70AE: $C8

    add b                                         ; $70AF: $80
    ld [de], a                                    ; $70B0: $12
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

jr_029_70E2:
    rst RST_38                                    ; $70E2: $FF
    rst RST_38                                    ; $70E3: $FF
    rst RST_38                                    ; $70E4: $FF

jr_029_70E5:
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

Call_029_7E61:
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
