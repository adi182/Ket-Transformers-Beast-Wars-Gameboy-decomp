; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    ld de, $5002                                  ; $4000: $11 $02 $50
    ld hl, $9800                                  ; $4003: $21 $00 $98
    ld b, $14                                     ; $4006: $06 $14
    ld c, $20                                     ; $4008: $0E $20
    jp Jump_000_10C0                              ; $400A: $C3 $C0 $10


    ld hl, $C34D                                  ; $400D: $21 $4D $C3
    ld e, [hl]                                    ; $4010: $5E
    inc hl                                        ; $4011: $23
    ld d, [hl]                                    ; $4012: $56
    inc hl                                        ; $4013: $23
    ld c, [hl]                                    ; $4014: $4E
    inc hl                                        ; $4015: $23
    ld b, [hl]                                    ; $4016: $46
    ld hl, $9800                                  ; $4017: $21 $00 $98
    add hl, bc                                    ; $401A: $09
    ld b, $14                                     ; $401B: $06 $14
    ld c, $01                                     ; $401D: $0E $01
    call Call_000_10C0                            ; $401F: $CD $C0 $10
    ld bc, $C34D                                  ; $4022: $01 $4D $C3
    ld a, [bc]                                    ; $4025: $0A
    ld e, a                                       ; $4026: $5F
    inc bc                                        ; $4027: $03
    ld a, [bc]                                    ; $4028: $0A
    ld d, a                                       ; $4029: $57
    ld hl, $FFD8                                  ; $402A: $21 $D8 $FF
    add hl, de                                    ; $402D: $19
    ld a, h                                       ; $402E: $7C
    ld [bc], a                                    ; $402F: $02
    dec bc                                        ; $4030: $0B
    ld a, l                                       ; $4031: $7D
    ld [bc], a                                    ; $4032: $02
    ld de, $4101                                  ; $4033: $11 $01 $41
    ld a, d                                       ; $4036: $7A
    cp h                                          ; $4037: $BC
    jr c, jr_035_4043                             ; $4038: $38 $09

    ld a, e                                       ; $403A: $7B
    cp l                                          ; $403B: $BD
    jr c, jr_035_4043                             ; $403C: $38 $05

    ld a, $FF                                     ; $403E: $3E $FF
    ld [$C352], a                                 ; $4040: $EA $52 $C3

jr_035_4043:
    inc bc                                        ; $4043: $03
    inc bc                                        ; $4044: $03
    ld a, [bc]                                    ; $4045: $0A
    ld e, a                                       ; $4046: $5F
    inc bc                                        ; $4047: $03
    ld a, [bc]                                    ; $4048: $0A
    ld d, a                                       ; $4049: $57
    ld hl, $FFE0                                  ; $404A: $21 $E0 $FF
    add hl, de                                    ; $404D: $19
    ld a, h                                       ; $404E: $7C
    and $03                                       ; $404F: $E6 $03
    ld [bc], a                                    ; $4051: $02
    dec bc                                        ; $4052: $0B
    ld a, l                                       ; $4053: $7D
    ld [bc], a                                    ; $4054: $02
    ret                                           ; $4055: $C9


    ld hl, $C34B                                  ; $4056: $21 $4B $C3
    ld e, [hl]                                    ; $4059: $5E
    inc hl                                        ; $405A: $23
    ld d, [hl]                                    ; $405B: $56
    ld a, [$D686]                                 ; $405C: $FA $86 $D6
    add e                                         ; $405F: $83
    jr nc, jr_035_4063                            ; $4060: $30 $01

    inc d                                         ; $4062: $14

jr_035_4063:
    and $F8                                       ; $4063: $E6 $F8
    ld e, a                                       ; $4065: $5F
    ld hl, $4102                                  ; $4066: $21 $02 $41
    add hl, de                                    ; $4069: $19
    add hl, de                                    ; $406A: $19
    add hl, de                                    ; $406B: $19
    add hl, de                                    ; $406C: $19
    add hl, de                                    ; $406D: $19
    ld a, [$D684]                                 ; $406E: $FA $84 $D6
    and $F8                                       ; $4071: $E6 $F8
    srl a                                         ; $4073: $CB $3F
    srl a                                         ; $4075: $CB $3F
    ld e, a                                       ; $4077: $5F
    ld d, $00                                     ; $4078: $16 $00
    add hl, de                                    ; $407A: $19
    inc hl                                        ; $407B: $23
    ld a, [hl]                                    ; $407C: $7E
    ld [$D6AD], a                                 ; $407D: $EA $AD $D6
    ret                                           ; $4080: $C9


    ld de, $6402                                  ; $4081: $11 $02 $64
    ld hl, $9800                                  ; $4084: $21 $00 $98
    ld b, $14                                     ; $4087: $06 $14
    ld c, $20                                     ; $4089: $0E $20
    jp Jump_000_10C0                              ; $408B: $C3 $C0 $10


    ld hl, $C34D                                  ; $408E: $21 $4D $C3
    ld e, [hl]                                    ; $4091: $5E
    inc hl                                        ; $4092: $23
    ld d, [hl]                                    ; $4093: $56
    inc hl                                        ; $4094: $23
    ld c, [hl]                                    ; $4095: $4E
    inc hl                                        ; $4096: $23
    ld b, [hl]                                    ; $4097: $46
    ld hl, $9800                                  ; $4098: $21 $00 $98
    add hl, bc                                    ; $409B: $09
    ld b, $14                                     ; $409C: $06 $14
    ld c, $01                                     ; $409E: $0E $01
    call Call_000_10C0                            ; $40A0: $CD $C0 $10
    ld bc, $C34D                                  ; $40A3: $01 $4D $C3
    ld a, [bc]                                    ; $40A6: $0A
    ld e, a                                       ; $40A7: $5F
    inc bc                                        ; $40A8: $03
    ld a, [bc]                                    ; $40A9: $0A
    ld d, a                                       ; $40AA: $57
    ld hl, $FFD8                                  ; $40AB: $21 $D8 $FF
    add hl, de                                    ; $40AE: $19
    ld a, h                                       ; $40AF: $7C
    ld [bc], a                                    ; $40B0: $02
    dec bc                                        ; $40B1: $0B
    ld a, l                                       ; $40B2: $7D
    ld [bc], a                                    ; $40B3: $02
    ld de, $5501                                  ; $40B4: $11 $01 $55
    ld a, d                                       ; $40B7: $7A
    cp h                                          ; $40B8: $BC
    jr c, jr_035_40C4                             ; $40B9: $38 $09

    ld a, e                                       ; $40BB: $7B
    cp l                                          ; $40BC: $BD
    jr c, jr_035_40C4                             ; $40BD: $38 $05

    ld a, $FF                                     ; $40BF: $3E $FF
    ld [$C352], a                                 ; $40C1: $EA $52 $C3

jr_035_40C4:
    inc bc                                        ; $40C4: $03
    inc bc                                        ; $40C5: $03
    ld a, [bc]                                    ; $40C6: $0A
    ld e, a                                       ; $40C7: $5F
    inc bc                                        ; $40C8: $03
    ld a, [bc]                                    ; $40C9: $0A
    ld d, a                                       ; $40CA: $57
    ld hl, $FFE0                                  ; $40CB: $21 $E0 $FF
    add hl, de                                    ; $40CE: $19
    ld a, h                                       ; $40CF: $7C
    and $03                                       ; $40D0: $E6 $03
    ld [bc], a                                    ; $40D2: $02
    dec bc                                        ; $40D3: $0B
    ld a, l                                       ; $40D4: $7D
    ld [bc], a                                    ; $40D5: $02
    ret                                           ; $40D6: $C9


    ld hl, $C34B                                  ; $40D7: $21 $4B $C3
    ld e, [hl]                                    ; $40DA: $5E
    inc hl                                        ; $40DB: $23
    ld d, [hl]                                    ; $40DC: $56
    ld a, [$D686]                                 ; $40DD: $FA $86 $D6
    add e                                         ; $40E0: $83
    jr nc, jr_035_40E4                            ; $40E1: $30 $01

    inc d                                         ; $40E3: $14

jr_035_40E4:
    and $F8                                       ; $40E4: $E6 $F8
    ld e, a                                       ; $40E6: $5F
    ld hl, $5502                                  ; $40E7: $21 $02 $55
    add hl, de                                    ; $40EA: $19
    add hl, de                                    ; $40EB: $19
    add hl, de                                    ; $40EC: $19
    add hl, de                                    ; $40ED: $19
    add hl, de                                    ; $40EE: $19
    ld a, [$D684]                                 ; $40EF: $FA $84 $D6
    and $F8                                       ; $40F2: $E6 $F8
    srl a                                         ; $40F4: $CB $3F
    srl a                                         ; $40F6: $CB $3F
    ld e, a                                       ; $40F8: $5F
    ld d, $00                                     ; $40F9: $16 $00
    add hl, de                                    ; $40FB: $19
    inc hl                                        ; $40FC: $23
    ld a, [hl]                                    ; $40FD: $7E
    ld [$D6AD], a                                 ; $40FE: $EA $AD $D6
    ret                                           ; $4101: $C9


    ld bc, $0101                                  ; $4102: $01 $01 $01
    ld bc, $0B02                                  ; $4105: $01 $02 $0B
    ld [bc], a                                    ; $4108: $02
    ld a, [bc]                                    ; $4109: $0A
    ld [bc], a                                    ; $410A: $02
    dec bc                                        ; $410B: $0B
    ld bc, $0101                                  ; $410C: $01 $01 $01
    ld bc, $0A02                                  ; $410F: $01 $02 $0A
    ld bc, $0101                                  ; $4112: $01 $01 $01
    ld bc, $0101                                  ; $4115: $01 $01 $01
    ld bc, $0201                                  ; $4118: $01 $01 $02
    ld a, [bc]                                    ; $411B: $0A
    ld [bc], a                                    ; $411C: $02
    ld a, [bc]                                    ; $411D: $0A
    ld bc, $0201                                  ; $411E: $01 $01 $02
    ld a, [bc]                                    ; $4121: $0A
    ld [bc], a                                    ; $4122: $02
    dec bc                                        ; $4123: $0B
    ld [bc], a                                    ; $4124: $02
    ld a, [bc]                                    ; $4125: $0A
    ld bc, $0101                                  ; $4126: $01 $01 $01
    ld bc, $0901                                  ; $4129: $01 $01 $09
    ld bc, $0101                                  ; $412C: $01 $01 $01
    ld bc, $0101                                  ; $412F: $01 $01 $01
    ld bc, $0204                                  ; $4132: $01 $04 $02
    ld a, [bc]                                    ; $4135: $0A
    ld [bc], a                                    ; $4136: $02
    dec bc                                        ; $4137: $0B
    ld [bc], a                                    ; $4138: $02
    inc c                                         ; $4139: $0C
    ld [bc], a                                    ; $413A: $02
    inc c                                         ; $413B: $0C
    ld [bc], a                                    ; $413C: $02
    inc c                                         ; $413D: $0C
    ld [bc], a                                    ; $413E: $02
    inc c                                         ; $413F: $0C
    ld [bc], a                                    ; $4140: $02
    inc c                                         ; $4141: $0C
    ld [bc], a                                    ; $4142: $02
    dec bc                                        ; $4143: $0B
    ld [bc], a                                    ; $4144: $02
    dec bc                                        ; $4145: $0B
    ld [bc], a                                    ; $4146: $02
    dec bc                                        ; $4147: $0B
    ld [bc], a                                    ; $4148: $02
    ld a, [bc]                                    ; $4149: $0A
    ld bc, $0101                                  ; $414A: $01 $01 $01
    add hl, bc                                    ; $414D: $09
    inc b                                         ; $414E: $04
    ld bc, $0901                                  ; $414F: $01 $01 $09
    ld bc, $0101                                  ; $4152: $01 $01 $01
    ld bc, $0A02                                  ; $4155: $01 $02 $0A
    ld [bc], a                                    ; $4158: $02
    dec bc                                        ; $4159: $0B
    ld [bc], a                                    ; $415A: $02
    dec c                                         ; $415B: $0D
    ld [bc], a                                    ; $415C: $02
    inc c                                         ; $415D: $0C
    ld [bc], a                                    ; $415E: $02
    inc c                                         ; $415F: $0C
    ld [bc], a                                    ; $4160: $02
    inc c                                         ; $4161: $0C
    ld [bc], a                                    ; $4162: $02
    inc c                                         ; $4163: $0C
    ld [bc], a                                    ; $4164: $02
    inc c                                         ; $4165: $0C
    ld [bc], a                                    ; $4166: $02
    inc c                                         ; $4167: $0C
    ld [bc], a                                    ; $4168: $02
    dec bc                                        ; $4169: $0B
    ld [bc], a                                    ; $416A: $02
    dec bc                                        ; $416B: $0B
    ld [bc], a                                    ; $416C: $02
    dec bc                                        ; $416D: $0B
    ld [bc], a                                    ; $416E: $02
    inc c                                         ; $416F: $0C
    ld [bc], a                                    ; $4170: $02
    inc c                                         ; $4171: $0C
    ld [bc], a                                    ; $4172: $02
    inc c                                         ; $4173: $0C
    ld [bc], a                                    ; $4174: $02
    ld a, [bc]                                    ; $4175: $0A
    inc b                                         ; $4176: $04
    ld bc, $0101                                  ; $4177: $01 $01 $01
    inc b                                         ; $417A: $04
    ld bc, $0A02                                  ; $417B: $01 $02 $0A
    ld [bc], a                                    ; $417E: $02
    dec bc                                        ; $417F: $0B
    ld [bc], a                                    ; $4180: $02
    dec c                                         ; $4181: $0D
    ld [bc], a                                    ; $4182: $02
    inc c                                         ; $4183: $0C
    ld [bc], a                                    ; $4184: $02
    inc c                                         ; $4185: $0C
    ld [bc], a                                    ; $4186: $02
    dec bc                                        ; $4187: $0B
    ld [bc], a                                    ; $4188: $02
    inc c                                         ; $4189: $0C
    ld [bc], a                                    ; $418A: $02
    dec c                                         ; $418B: $0D
    ld [bc], a                                    ; $418C: $02
    dec c                                         ; $418D: $0D
    ld [bc], a                                    ; $418E: $02
    dec c                                         ; $418F: $0D
    ld [bc], a                                    ; $4190: $02
    dec bc                                        ; $4191: $0B
    ld [bc], a                                    ; $4192: $02
    dec c                                         ; $4193: $0D
    ld [bc], a                                    ; $4194: $02
    dec bc                                        ; $4195: $0B
    ld [bc], a                                    ; $4196: $02
    inc c                                         ; $4197: $0C
    ld [bc], a                                    ; $4198: $02
    dec bc                                        ; $4199: $0B
    ld [bc], a                                    ; $419A: $02
    dec bc                                        ; $419B: $0B
    ld [bc], a                                    ; $419C: $02
    dec bc                                        ; $419D: $0B
    ld bc, $0101                                  ; $419E: $01 $01 $01
    ld bc, HeaderLogo                             ; $41A1: $01 $04 $01
    ld [bc], a                                    ; $41A4: $02
    dec bc                                        ; $41A5: $0B
    ld [bc], a                                    ; $41A6: $02
    inc c                                         ; $41A7: $0C
    ld [bc], a                                    ; $41A8: $02
    inc c                                         ; $41A9: $0C
    ld [bc], a                                    ; $41AA: $02
    inc c                                         ; $41AB: $0C
    ld [bc], a                                    ; $41AC: $02
    inc c                                         ; $41AD: $0C
    ld [bc], a                                    ; $41AE: $02
    dec bc                                        ; $41AF: $0B
    ld [bc], a                                    ; $41B0: $02
    dec c                                         ; $41B1: $0D
    ld [bc], a                                    ; $41B2: $02
    dec c                                         ; $41B3: $0D
    ld [bc], a                                    ; $41B4: $02
    dec c                                         ; $41B5: $0D
    ld [bc], a                                    ; $41B6: $02
    inc c                                         ; $41B7: $0C
    ld [bc], a                                    ; $41B8: $02
    dec c                                         ; $41B9: $0D
    ld [bc], a                                    ; $41BA: $02
    dec c                                         ; $41BB: $0D
    ld [bc], a                                    ; $41BC: $02
    inc c                                         ; $41BD: $0C
    ld [bc], a                                    ; $41BE: $02
    inc c                                         ; $41BF: $0C
    ld [bc], a                                    ; $41C0: $02
    dec bc                                        ; $41C1: $0B
    ld [bc], a                                    ; $41C2: $02
    dec bc                                        ; $41C3: $0B
    ld [bc], a                                    ; $41C4: $02
    dec bc                                        ; $41C5: $0B
    ld [bc], a                                    ; $41C6: $02
    ld a, [bc]                                    ; $41C7: $0A
    ld bc, $0401                                  ; $41C8: $01 $01 $04
    ld bc, $0A02                                  ; $41CB: $01 $02 $0A
    ld [bc], a                                    ; $41CE: $02
    ld a, [bc]                                    ; $41CF: $0A
    ld [bc], a                                    ; $41D0: $02
    dec c                                         ; $41D1: $0D
    ld [bc], a                                    ; $41D2: $02
    dec c                                         ; $41D3: $0D
    ld [bc], a                                    ; $41D4: $02
    dec bc                                        ; $41D5: $0B
    ld [bc], a                                    ; $41D6: $02
    dec c                                         ; $41D7: $0D
    ld [bc], a                                    ; $41D8: $02
    dec c                                         ; $41D9: $0D
    ld [bc], a                                    ; $41DA: $02
    dec bc                                        ; $41DB: $0B
    ld [bc], a                                    ; $41DC: $02
    dec bc                                        ; $41DD: $0B
    ld [bc], a                                    ; $41DE: $02
    inc c                                         ; $41DF: $0C
    ld [bc], a                                    ; $41E0: $02
    ld a, [bc]                                    ; $41E1: $0A
    ld [bc], a                                    ; $41E2: $02
    dec c                                         ; $41E3: $0D
    ld [bc], a                                    ; $41E4: $02
    dec c                                         ; $41E5: $0D
    ld [bc], a                                    ; $41E6: $02
    dec bc                                        ; $41E7: $0B
    ld [bc], a                                    ; $41E8: $02
    dec c                                         ; $41E9: $0D
    ld [bc], a                                    ; $41EA: $02
    inc c                                         ; $41EB: $0C
    ld [bc], a                                    ; $41EC: $02
    dec bc                                        ; $41ED: $0B
    ld [bc], a                                    ; $41EE: $02
    dec bc                                        ; $41EF: $0B
    ld bc, $0101                                  ; $41F0: $01 $01 $01
    ld bc, $0A02                                  ; $41F3: $01 $02 $0A
    ld [bc], a                                    ; $41F6: $02
    dec bc                                        ; $41F7: $0B
    ld [bc], a                                    ; $41F8: $02
    dec c                                         ; $41F9: $0D
    ld [bc], a                                    ; $41FA: $02
    dec c                                         ; $41FB: $0D
    ld [bc], a                                    ; $41FC: $02
    dec bc                                        ; $41FD: $0B
    ld [bc], a                                    ; $41FE: $02
    inc c                                         ; $41FF: $0C
    ld [bc], a                                    ; $4200: $02
    dec c                                         ; $4201: $0D
    ld [bc], a                                    ; $4202: $02
    dec bc                                        ; $4203: $0B
    ld [bc], a                                    ; $4204: $02
    ld a, [bc]                                    ; $4205: $0A
    ld [bc], a                                    ; $4206: $02
    inc c                                         ; $4207: $0C
    ld [bc], a                                    ; $4208: $02
    dec c                                         ; $4209: $0D
    ld [bc], a                                    ; $420A: $02
    dec c                                         ; $420B: $0D
    ld [bc], a                                    ; $420C: $02
    dec bc                                        ; $420D: $0B
    ld [bc], a                                    ; $420E: $02
    dec c                                         ; $420F: $0D
    ld [bc], a                                    ; $4210: $02
    dec c                                         ; $4211: $0D
    ld [bc], a                                    ; $4212: $02
    inc c                                         ; $4213: $0C
    ld [bc], a                                    ; $4214: $02
    dec bc                                        ; $4215: $0B
    ld [bc], a                                    ; $4216: $02
    dec bc                                        ; $4217: $0B
    ld bc, $0101                                  ; $4218: $01 $01 $01
    ld bc, $0A02                                  ; $421B: $01 $02 $0A
    ld [bc], a                                    ; $421E: $02
    dec bc                                        ; $421F: $0B
    ld [bc], a                                    ; $4220: $02
    dec c                                         ; $4221: $0D
    ld [bc], a                                    ; $4222: $02
    ld a, [bc]                                    ; $4223: $0A
    ld [bc], a                                    ; $4224: $02
    inc c                                         ; $4225: $0C
    ld [bc], a                                    ; $4226: $02
    ld a, [bc]                                    ; $4227: $0A
    ld [bc], a                                    ; $4228: $02
    inc c                                         ; $4229: $0C
    ld [bc], a                                    ; $422A: $02
    dec bc                                        ; $422B: $0B
    ld [bc], a                                    ; $422C: $02
    dec c                                         ; $422D: $0D
    ld [bc], a                                    ; $422E: $02
    inc c                                         ; $422F: $0C
    ld [bc], a                                    ; $4230: $02
    inc c                                         ; $4231: $0C
    ld [bc], a                                    ; $4232: $02
    dec c                                         ; $4233: $0D
    ld [bc], a                                    ; $4234: $02
    inc c                                         ; $4235: $0C
    ld [bc], a                                    ; $4236: $02
    inc c                                         ; $4237: $0C
    ld [bc], a                                    ; $4238: $02
    ld a, [bc]                                    ; $4239: $0A
    ld [bc], a                                    ; $423A: $02
    dec c                                         ; $423B: $0D
    ld [bc], a                                    ; $423C: $02
    ld a, [bc]                                    ; $423D: $0A
    ld [bc], a                                    ; $423E: $02
    dec bc                                        ; $423F: $0B
    ld bc, $0201                                  ; $4240: $01 $01 $02
    ld a, [bc]                                    ; $4243: $0A
    ld [bc], a                                    ; $4244: $02
    dec bc                                        ; $4245: $0B
    ld [bc], a                                    ; $4246: $02
    dec c                                         ; $4247: $0D
    ld [bc], a                                    ; $4248: $02
    dec c                                         ; $4249: $0D
    ld [bc], a                                    ; $424A: $02
    inc c                                         ; $424B: $0C
    ld [bc], a                                    ; $424C: $02
    dec c                                         ; $424D: $0D
    ld [bc], a                                    ; $424E: $02
    dec c                                         ; $424F: $0D
    ld [bc], a                                    ; $4250: $02
    inc c                                         ; $4251: $0C
    ld [bc], a                                    ; $4252: $02
    dec c                                         ; $4253: $0D
    ld [bc], a                                    ; $4254: $02
    inc c                                         ; $4255: $0C
    ld [bc], a                                    ; $4256: $02
    ld a, [bc]                                    ; $4257: $0A
    ld [bc], a                                    ; $4258: $02
    inc c                                         ; $4259: $0C
    ld [bc], a                                    ; $425A: $02
    inc c                                         ; $425B: $0C
    ld [bc], a                                    ; $425C: $02
    dec c                                         ; $425D: $0D
    ld [bc], a                                    ; $425E: $02
    ld a, [bc]                                    ; $425F: $0A
    ld [bc], a                                    ; $4260: $02
    dec c                                         ; $4261: $0D
    ld [bc], a                                    ; $4262: $02
    dec c                                         ; $4263: $0D
    ld [bc], a                                    ; $4264: $02
    dec bc                                        ; $4265: $0B
    ld [bc], a                                    ; $4266: $02
    ld a, [bc]                                    ; $4267: $0A
    ld bc, $0101                                  ; $4268: $01 $01 $01
    ld bc, $0B02                                  ; $426B: $01 $02 $0B
    ld [bc], a                                    ; $426E: $02
    dec c                                         ; $426F: $0D
    ld [bc], a                                    ; $4270: $02
    dec c                                         ; $4271: $0D
    ld [bc], a                                    ; $4272: $02
    dec bc                                        ; $4273: $0B
    ld [bc], a                                    ; $4274: $02
    inc c                                         ; $4275: $0C
    ld [bc], a                                    ; $4276: $02
    inc c                                         ; $4277: $0C
    ld [bc], a                                    ; $4278: $02
    inc c                                         ; $4279: $0C
    ld [bc], a                                    ; $427A: $02
    dec c                                         ; $427B: $0D
    ld [bc], a                                    ; $427C: $02
    dec c                                         ; $427D: $0D
    ld [bc], a                                    ; $427E: $02
    inc c                                         ; $427F: $0C
    ld [bc], a                                    ; $4280: $02
    dec bc                                        ; $4281: $0B
    ld [bc], a                                    ; $4282: $02
    dec c                                         ; $4283: $0D
    ld [bc], a                                    ; $4284: $02
    dec c                                         ; $4285: $0D
    ld [bc], a                                    ; $4286: $02
    dec c                                         ; $4287: $0D
    ld [bc], a                                    ; $4288: $02
    dec c                                         ; $4289: $0D
    ld [bc], a                                    ; $428A: $02
    dec bc                                        ; $428B: $0B
    ld [bc], a                                    ; $428C: $02
    ld a, [bc]                                    ; $428D: $0A
    ld bc, $0101                                  ; $428E: $01 $01 $01
    ld bc, $0101                                  ; $4291: $01 $01 $01
    ld [bc], a                                    ; $4294: $02
    ld a, [bc]                                    ; $4295: $0A
    ld [bc], a                                    ; $4296: $02
    dec c                                         ; $4297: $0D
    ld [bc], a                                    ; $4298: $02
    ld a, [bc]                                    ; $4299: $0A
    ld [bc], a                                    ; $429A: $02
    inc c                                         ; $429B: $0C
    ld [bc], a                                    ; $429C: $02
    dec c                                         ; $429D: $0D
    ld [bc], a                                    ; $429E: $02
    dec bc                                        ; $429F: $0B
    ld [bc], a                                    ; $42A0: $02
    dec bc                                        ; $42A1: $0B
    ld [bc], a                                    ; $42A2: $02
    dec c                                         ; $42A3: $0D
    ld [bc], a                                    ; $42A4: $02
    inc c                                         ; $42A5: $0C
    ld [bc], a                                    ; $42A6: $02
    dec bc                                        ; $42A7: $0B
    ld [bc], a                                    ; $42A8: $02
    dec bc                                        ; $42A9: $0B
    ld [bc], a                                    ; $42AA: $02
    dec c                                         ; $42AB: $0D
    ld [bc], a                                    ; $42AC: $02
    dec bc                                        ; $42AD: $0B
    ld [bc], a                                    ; $42AE: $02
    dec bc                                        ; $42AF: $0B
    ld [bc], a                                    ; $42B0: $02
    dec bc                                        ; $42B1: $0B
    ld [bc], a                                    ; $42B2: $02
    inc c                                         ; $42B3: $0C
    ld [bc], a                                    ; $42B4: $02
    inc c                                         ; $42B5: $0C
    ld bc, $0101                                  ; $42B6: $01 $01 $01
    ld bc, $0101                                  ; $42B9: $01 $01 $01
    ld [bc], a                                    ; $42BC: $02
    ld a, [bc]                                    ; $42BD: $0A
    ld [bc], a                                    ; $42BE: $02
    dec bc                                        ; $42BF: $0B
    ld [bc], a                                    ; $42C0: $02
    dec c                                         ; $42C1: $0D
    ld [bc], a                                    ; $42C2: $02
    dec c                                         ; $42C3: $0D
    ld [bc], a                                    ; $42C4: $02
    dec c                                         ; $42C5: $0D
    ld [bc], a                                    ; $42C6: $02
    dec c                                         ; $42C7: $0D
    ld [bc], a                                    ; $42C8: $02
    dec c                                         ; $42C9: $0D
    ld [bc], a                                    ; $42CA: $02
    dec c                                         ; $42CB: $0D
    ld [bc], a                                    ; $42CC: $02
    dec bc                                        ; $42CD: $0B
    ld [bc], a                                    ; $42CE: $02
    inc c                                         ; $42CF: $0C
    ld [bc], a                                    ; $42D0: $02
    dec c                                         ; $42D1: $0D
    ld [bc], a                                    ; $42D2: $02
    dec c                                         ; $42D3: $0D
    ld [bc], a                                    ; $42D4: $02
    dec bc                                        ; $42D5: $0B
    ld [bc], a                                    ; $42D6: $02
    dec bc                                        ; $42D7: $0B
    ld [bc], a                                    ; $42D8: $02
    dec c                                         ; $42D9: $0D
    ld [bc], a                                    ; $42DA: $02
    inc c                                         ; $42DB: $0C
    ld [bc], a                                    ; $42DC: $02
    dec bc                                        ; $42DD: $0B
    ld [bc], a                                    ; $42DE: $02
    dec bc                                        ; $42DF: $0B
    ld bc, $0101                                  ; $42E0: $01 $01 $01
    ld [bc], a                                    ; $42E3: $02
    ld [bc], a                                    ; $42E4: $02
    dec bc                                        ; $42E5: $0B
    ld [bc], a                                    ; $42E6: $02
    dec c                                         ; $42E7: $0D
    ld [bc], a                                    ; $42E8: $02
    dec c                                         ; $42E9: $0D
    ld [bc], a                                    ; $42EA: $02
    dec c                                         ; $42EB: $0D
    ld [bc], a                                    ; $42EC: $02
    dec c                                         ; $42ED: $0D
    ld [bc], a                                    ; $42EE: $02
    dec c                                         ; $42EF: $0D
    ld [bc], a                                    ; $42F0: $02
    dec c                                         ; $42F1: $0D
    ld [bc], a                                    ; $42F2: $02
    inc c                                         ; $42F3: $0C
    ld [bc], a                                    ; $42F4: $02
    inc c                                         ; $42F5: $0C
    ld [bc], a                                    ; $42F6: $02
    dec c                                         ; $42F7: $0D
    ld [bc], a                                    ; $42F8: $02
    dec c                                         ; $42F9: $0D
    ld [bc], a                                    ; $42FA: $02
    dec c                                         ; $42FB: $0D
    ld [bc], a                                    ; $42FC: $02
    dec c                                         ; $42FD: $0D
    ld [bc], a                                    ; $42FE: $02
    inc c                                         ; $42FF: $0C
    ld [bc], a                                    ; $4300: $02
    inc c                                         ; $4301: $0C
    ld [bc], a                                    ; $4302: $02
    dec bc                                        ; $4303: $0B
    ld [bc], a                                    ; $4304: $02
    dec bc                                        ; $4305: $0B
    ld [bc], a                                    ; $4306: $02
    ld a, [bc]                                    ; $4307: $0A
    ld bc, $0101                                  ; $4308: $01 $01 $01
    ld bc, $0101                                  ; $430B: $01 $01 $01
    ld [bc], a                                    ; $430E: $02
    ld a, [bc]                                    ; $430F: $0A
    ld [bc], a                                    ; $4310: $02
    ld a, [bc]                                    ; $4311: $0A
    ld [bc], a                                    ; $4312: $02
    inc c                                         ; $4313: $0C
    ld [bc], a                                    ; $4314: $02
    inc c                                         ; $4315: $0C
    ld [bc], a                                    ; $4316: $02
    ld a, [bc]                                    ; $4317: $0A
    ld [bc], a                                    ; $4318: $02
    dec bc                                        ; $4319: $0B
    ld [bc], a                                    ; $431A: $02
    dec bc                                        ; $431B: $0B
    ld [bc], a                                    ; $431C: $02
    dec c                                         ; $431D: $0D
    ld [bc], a                                    ; $431E: $02
    dec bc                                        ; $431F: $0B
    ld [bc], a                                    ; $4320: $02
    dec c                                         ; $4321: $0D
    ld [bc], a                                    ; $4322: $02
    inc c                                         ; $4323: $0C
    ld [bc], a                                    ; $4324: $02
    dec bc                                        ; $4325: $0B
    ld [bc], a                                    ; $4326: $02
    dec bc                                        ; $4327: $0B
    ld [bc], a                                    ; $4328: $02
    inc c                                         ; $4329: $0C
    ld [bc], a                                    ; $432A: $02
    dec bc                                        ; $432B: $0B
    ld [bc], a                                    ; $432C: $02
    ld a, [bc]                                    ; $432D: $0A
    ld bc, $0109                                  ; $432E: $01 $09 $01
    ld bc, $0101                                  ; $4331: $01 $01 $01
    ld bc, $0109                                  ; $4334: $01 $09 $01
    dec b                                         ; $4337: $05
    ld bc, $0205                                  ; $4338: $01 $05 $02
    dec bc                                        ; $433B: $0B
    ld [bc], a                                    ; $433C: $02
    ld a, [bc]                                    ; $433D: $0A
    ld bc, $0105                                  ; $433E: $01 $05 $01
    add hl, bc                                    ; $4341: $09
    ld bc, $0201                                  ; $4342: $01 $01 $02
    ld a, [bc]                                    ; $4345: $0A
    ld [bc], a                                    ; $4346: $02
    inc c                                         ; $4347: $0C
    ld [bc], a                                    ; $4348: $02
    dec bc                                        ; $4349: $0B
    ld [bc], a                                    ; $434A: $02
    dec bc                                        ; $434B: $0B
    ld [bc], a                                    ; $434C: $02
    ld a, [bc]                                    ; $434D: $0A
    ld [bc], a                                    ; $434E: $02
    ld a, [bc]                                    ; $434F: $0A
    ld bc, $0101                                  ; $4350: $01 $01 $01
    ld [bc], a                                    ; $4353: $02
    ld bc, $0109                                  ; $4354: $01 $09 $01
    ld bc, $0101                                  ; $4357: $01 $01 $01
    ld bc, $0101                                  ; $435A: $01 $01 $01
    ld bc, $0501                                  ; $435D: $01 $01 $05
    ld bc, $0109                                  ; $4360: $01 $09 $01
    ld bc, $0101                                  ; $4363: $01 $01 $01
    ld bc, $0105                                  ; $4366: $01 $05 $01
    ld bc, $0301                                  ; $4369: $01 $01 $03
    ld bc, $0101                                  ; $436C: $01 $01 $01
    ld bc, $0501                                  ; $436F: $01 $01 $05
    ld bc, $0105                                  ; $4372: $01 $05 $01
    ld bc, $0101                                  ; $4375: $01 $01 $01
    ld bc, $0102                                  ; $4378: $01 $02 $01
    dec b                                         ; $437B: $05
    ld bc, $0105                                  ; $437C: $01 $05 $01
    ld bc, $0101                                  ; $437F: $01 $01 $01
    ld bc, $0101                                  ; $4382: $01 $01 $01
    ld bc, $0101                                  ; $4385: $01 $01 $01
    ld bc, $0101                                  ; $4388: $01 $01 $01
    ld bc, $0101                                  ; $438B: $01 $01 $01
    ld bc, $0101                                  ; $438E: $01 $01 $01
    ld bc, $0101                                  ; $4391: $01 $01 $01
    ld bc, $0101                                  ; $4394: $01 $01 $01
    ld bc, $0101                                  ; $4397: $01 $01 $01
    ld bc, $0101                                  ; $439A: $01 $01 $01
    ld bc, $0201                                  ; $439D: $01 $01 $02
    ld bc, $0101                                  ; $43A0: $01 $01 $01
    ld bc, $0101                                  ; $43A3: $01 $01 $01
    ld bc, $0101                                  ; $43A6: $01 $01 $01
    ld bc, $2B05                                  ; $43A9: $01 $05 $2B
    ld bc, $0601                                  ; $43AC: $01 $01 $06
    rlca                                          ; $43AF: $07
    ld b, $28                                     ; $43B0: $06 $28
    ld b, $29                                     ; $43B2: $06 $29
    ld b, $2A                                     ; $43B4: $06 $2A
    ld b, $08                                     ; $43B6: $06 $08
    ld bc, $0401                                  ; $43B8: $01 $01 $04
    ld bc, $0B02                                  ; $43BB: $01 $02 $0B
    ld bc, $0101                                  ; $43BE: $01 $01 $01
    ld bc, $0101                                  ; $43C1: $01 $01 $01
    ld bc, $0101                                  ; $43C4: $01 $01 $01
    ld bc, $0101                                  ; $43C7: $01 $01 $01
    ld bc, $0101                                  ; $43CA: $01 $01 $01
    ld bc, $0A02                                  ; $43CD: $01 $02 $0A
    ld bc, $0101                                  ; $43D0: $01 $01 $01
    inc h                                         ; $43D3: $24
    ld bc, $0127                                  ; $43D4: $01 $27 $01
    inc h                                         ; $43D7: $24
    ld bc, $0126                                  ; $43D8: $01 $26 $01
    ld h, $01                                     ; $43DB: $26 $01
    inc h                                         ; $43DD: $24
    ld bc, $0124                                  ; $43DE: $01 $24 $01
    inc h                                         ; $43E1: $24
    ld bc, $0124                                  ; $43E2: $01 $24 $01
    dec h                                         ; $43E5: $25
    ld bc, $0124                                  ; $43E6: $01 $24 $01
    inc h                                         ; $43E9: $24
    ld bc, $0126                                  ; $43EA: $01 $26 $01
    inc h                                         ; $43ED: $24
    ld bc, $0124                                  ; $43EE: $01 $24 $01
    ld h, $01                                     ; $43F1: $26 $01
    inc h                                         ; $43F3: $24
    ld bc, $0125                                  ; $43F4: $01 $25 $01
    inc h                                         ; $43F7: $24
    ld bc, $0324                                  ; $43F8: $01 $24 $03
    ld l, $03                                     ; $43FB: $2E $03
    ld l, $03                                     ; $43FD: $2E $03
    ld l, $03                                     ; $43FF: $2E $03
    ld l, $03                                     ; $4401: $2E $03
    ld l, $03                                     ; $4403: $2E $03
    ld l, $03                                     ; $4405: $2E $03
    ld l, $03                                     ; $4407: $2E $03
    ld l, $03                                     ; $4409: $2E $03
    ld l, $03                                     ; $440B: $2E $03
    ld l, $03                                     ; $440D: $2E $03
    ld l, $03                                     ; $440F: $2E $03
    ld l, $03                                     ; $4411: $2E $03
    ld l, $03                                     ; $4413: $2E $03
    ld l, $03                                     ; $4415: $2E $03
    ld l, $03                                     ; $4417: $2E $03
    ld l, $03                                     ; $4419: $2E $03
    ld l, $03                                     ; $441B: $2E $03
    ld l, $03                                     ; $441D: $2E $03
    ld l, $03                                     ; $441F: $2E $03
    ld l, $03                                     ; $4421: $2E $03
    ld l, $03                                     ; $4423: $2E $03
    ld l, $03                                     ; $4425: $2E $03
    ld l, $03                                     ; $4427: $2E $03
    ld l, $03                                     ; $4429: $2E $03
    ld l, $03                                     ; $442B: $2E $03
    ld l, $03                                     ; $442D: $2E $03
    ld l, $03                                     ; $442F: $2E $03
    ld l, $03                                     ; $4431: $2E $03
    ld l, $03                                     ; $4433: $2E $03
    ld l, $03                                     ; $4435: $2E $03
    ld l, $03                                     ; $4437: $2E $03
    ld l, $03                                     ; $4439: $2E $03
    ld l, $03                                     ; $443B: $2E $03
    ld l, $03                                     ; $443D: $2E $03
    ld l, $03                                     ; $443F: $2E $03
    ld l, $03                                     ; $4441: $2E $03
    ld l, $03                                     ; $4443: $2E $03
    ld l, $03                                     ; $4445: $2E $03
    ld l, $03                                     ; $4447: $2E $03
    ld l, $01                                     ; $4449: $2E $01
    jr nz, jr_035_444E                            ; $444B: $20 $01

    ld [hl+], a                                   ; $444D: $22

jr_035_444E:
    ld bc, $0121                                  ; $444E: $01 $21 $01
    inc hl                                        ; $4451: $23
    ld bc, $0121                                  ; $4452: $01 $21 $01
    ld [hl+], a                                   ; $4455: $22
    ld bc, $0120                                  ; $4456: $01 $20 $01
    jr nz, @+$03                                  ; $4459: $20 $01

    ld hl, $2301                                  ; $445B: $21 $01 $23
    ld bc, $0120                                  ; $445E: $01 $20 $01
    ld [hl+], a                                   ; $4461: $22
    ld bc, $0120                                  ; $4462: $01 $20 $01
    jr nz, @+$03                                  ; $4465: $20 $01

    ld hl, $2201                                  ; $4467: $21 $01 $22
    ld bc, $0121                                  ; $446A: $01 $21 $01
    ld [hl+], a                                   ; $446D: $22
    ld bc, $0120                                  ; $446E: $01 $20 $01
    jr nz, @+$03                                  ; $4471: $20 $01

    ld bc, $0201                                  ; $4473: $01 $01 $02
    ld bc, $0101                                  ; $4476: $01 $01 $01
    ld bc, $0101                                  ; $4479: $01 $01 $01
    ld bc, $0101                                  ; $447C: $01 $01 $01
    ld [bc], a                                    ; $447F: $02
    ld bc, $0101                                  ; $4480: $01 $01 $01
    ld bc, $0101                                  ; $4483: $01 $01 $01
    ld bc, $0101                                  ; $4486: $01 $01 $01
    ld bc, $0101                                  ; $4489: $01 $01 $01
    ld bc, $0102                                  ; $448C: $01 $02 $01
    ld bc, $0101                                  ; $448F: $01 $01 $01
    ld bc, $0101                                  ; $4492: $01 $01 $01
    ld bc, $0101                                  ; $4495: $01 $01 $01
    ld bc, $0101                                  ; $4498: $01 $01 $01
    ld bc, $0101                                  ; $449B: $01 $01 $01
    ld bc, $0101                                  ; $449E: $01 $01 $01
    ld bc, $0201                                  ; $44A1: $01 $01 $02
    ld bc, $0101                                  ; $44A4: $01 $01 $01
    ld bc, $0101                                  ; $44A7: $01 $01 $01
    ld bc, $0101                                  ; $44AA: $01 $01 $01
    ld bc, $0101                                  ; $44AD: $01 $01 $01
    ld bc, $0101                                  ; $44B0: $01 $01 $01
    ld [bc], a                                    ; $44B3: $02
    ld bc, HeaderLogo                             ; $44B4: $01 $04 $01
    ld [bc], a                                    ; $44B7: $02
    ld bc, $0102                                  ; $44B8: $01 $02 $01
    ld [bc], a                                    ; $44BB: $02
    ld bc, HeaderLogo                             ; $44BC: $01 $04 $01
    ld bc, $0101                                  ; $44BF: $01 $01 $01
    ld bc, $0101                                  ; $44C2: $01 $01 $01
    ld bc, $0101                                  ; $44C5: $01 $01 $01
    ld bc, $0101                                  ; $44C8: $01 $01 $01
    ld bc, $0101                                  ; $44CB: $01 $01 $01
    ld bc, $0101                                  ; $44CE: $01 $01 $01
    ld bc, $0101                                  ; $44D1: $01 $01 $01
    ld bc, $0102                                  ; $44D4: $01 $02 $01
    ld bc, $0201                                  ; $44D7: $01 $01 $02
    ld bc, $0102                                  ; $44DA: $01 $02 $01
    inc b                                         ; $44DD: $04
    ld bc, $0102                                  ; $44DE: $01 $02 $01
    inc b                                         ; $44E1: $04
    ld bc, $0102                                  ; $44E2: $01 $02 $01
    ld bc, $0101                                  ; $44E5: $01 $01 $01
    ld bc, $0101                                  ; $44E8: $01 $01 $01
    ld [bc], a                                    ; $44EB: $02
    ld [bc], a                                    ; $44EC: $02
    ld a, [bc]                                    ; $44ED: $0A
    ld bc, $0101                                  ; $44EE: $01 $01 $01
    ld [bc], a                                    ; $44F1: $02
    ld bc, $0102                                  ; $44F2: $01 $02 $01
    ld bc, $0101                                  ; $44F5: $01 $01 $01
    ld bc, $0201                                  ; $44F8: $01 $01 $02
    ld a, [bc]                                    ; $44FB: $0A
    ld bc, $0202                                  ; $44FC: $01 $02 $02
    ld a, [bc]                                    ; $44FF: $0A
    ld bc, $0101                                  ; $4500: $01 $01 $01
    ld bc, $0101                                  ; $4503: $01 $01 $01
    ld bc, $0101                                  ; $4506: $01 $01 $01
    ld [bc], a                                    ; $4509: $02
    ld bc, $0201                                  ; $450A: $01 $01 $02
    ld a, [bc]                                    ; $450D: $0A
    ld bc, $0102                                  ; $450E: $01 $02 $01
    dec b                                         ; $4511: $05
    ld bc, HeaderLogo                             ; $4512: $01 $04 $01
    ld bc, $0101                                  ; $4515: $01 $01 $01
    ld bc, $010E                                  ; $4518: $01 $0E $01
    ld a, [de]                                    ; $451B: $1A
    ld bc, $011A                                  ; $451C: $01 $1A $01
    ld a, [de]                                    ; $451F: $1A
    ld bc, $010F                                  ; $4520: $01 $0F $01
    inc b                                         ; $4523: $04
    ld bc, $0101                                  ; $4524: $01 $01 $01
    ld [bc], a                                    ; $4527: $02
    ld bc, $0101                                  ; $4528: $01 $01 $01
    ld c, $01                                     ; $452B: $0E $01
    jr jr_035_4530                                ; $452D: $18 $01

    add hl, de                                    ; $452F: $19

jr_035_4530:
    ld bc, $011A                                  ; $4530: $01 $1A $01
    rrca                                          ; $4533: $0F
    ld bc, $0102                                  ; $4534: $01 $02 $01
    inc bc                                        ; $4537: $03
    inc b                                         ; $4538: $04
    inc b                                         ; $4539: $04
    inc b                                         ; $453A: $04
    ld bc, $0101                                  ; $453B: $01 $01 $01
    ld bc, $0101                                  ; $453E: $01 $01 $01
    dec e                                         ; $4541: $1D
    inc bc                                        ; $4542: $03
    cpl                                           ; $4543: $2F
    inc bc                                        ; $4544: $03
    cpl                                           ; $4545: $2F
    inc bc                                        ; $4546: $03
    cpl                                           ; $4547: $2F
    ld bc, $041F                                  ; $4548: $01 $1F $04
    ld bc, $0201                                  ; $454B: $01 $01 $02
    ld bc, HeaderLogo                             ; $454E: $01 $04 $01
    ld bc, $1D01                                  ; $4551: $01 $01 $1D
    inc bc                                        ; $4554: $03
    cpl                                           ; $4555: $2F
    inc bc                                        ; $4556: $03
    cpl                                           ; $4557: $2F
    inc bc                                        ; $4558: $03
    cpl                                           ; $4559: $2F
    ld bc, $041F                                  ; $455A: $01 $1F $04
    ld bc, HeaderLogo                             ; $455D: $01 $04 $01
    ld bc, $0101                                  ; $4560: $01 $01 $01
    ld bc, HeaderLogo                             ; $4563: $01 $04 $01
    ld bc, $0102                                  ; $4566: $01 $02 $01
    dec e                                         ; $4569: $1D
    inc bc                                        ; $456A: $03
    cpl                                           ; $456B: $2F
    inc bc                                        ; $456C: $03
    cpl                                           ; $456D: $2F
    inc bc                                        ; $456E: $03
    cpl                                           ; $456F: $2F
    ld bc, $021E                                  ; $4570: $01 $1E $02
    ld a, [bc]                                    ; $4573: $0A
    ld bc, $0401                                  ; $4574: $01 $01 $04
    ld bc, $0201                                  ; $4577: $01 $01 $02
    ld bc, $031D                                  ; $457A: $01 $1D $03
    cpl                                           ; $457D: $2F
    inc bc                                        ; $457E: $03
    cpl                                           ; $457F: $2F
    inc bc                                        ; $4580: $03
    cpl                                           ; $4581: $2F
    ld bc, $021E                                  ; $4582: $01 $1E $02
    ld a, [bc]                                    ; $4585: $0A
    ld bc, $0401                                  ; $4586: $01 $01 $04
    ld bc, $0201                                  ; $4589: $01 $01 $02
    ld bc, $0101                                  ; $458C: $01 $01 $01
    ld bc, $1D01                                  ; $458F: $01 $01 $1D
    inc bc                                        ; $4592: $03
    cpl                                           ; $4593: $2F
    inc bc                                        ; $4594: $03
    cpl                                           ; $4595: $2F
    inc bc                                        ; $4596: $03
    cpl                                           ; $4597: $2F
    ld bc, $011E                                  ; $4598: $01 $1E $01
    ld [bc], a                                    ; $459B: $02
    ld bc, HeaderLogo                             ; $459C: $01 $04 $01
    ld [bc], a                                    ; $459F: $02
    ld bc, $0101                                  ; $45A0: $01 $01 $01
    dec e                                         ; $45A3: $1D
    inc bc                                        ; $45A4: $03
    cpl                                           ; $45A5: $2F
    inc bc                                        ; $45A6: $03
    cpl                                           ; $45A7: $2F
    inc bc                                        ; $45A8: $03
    cpl                                           ; $45A9: $2F
    ld bc, $011E                                  ; $45AA: $01 $1E $01
    dec b                                         ; $45AD: $05
    ld bc, $0102                                  ; $45AE: $01 $02 $01
    ld bc, $0101                                  ; $45B1: $01 $01 $01
    inc b                                         ; $45B4: $04
    ld bc, $0101                                  ; $45B5: $01 $01 $01
    ld bc, $0114                                  ; $45B8: $01 $14 $01
    inc de                                        ; $45BB: $13
    ld bc, $0112                                  ; $45BC: $01 $12 $01
    inc de                                        ; $45BF: $13
    ld bc, $0115                                  ; $45C0: $01 $15 $01
    ld bc, $0101                                  ; $45C3: $01 $01 $01
    inc b                                         ; $45C6: $04
    ld bc, $0101                                  ; $45C7: $01 $01 $01
    ld bc, $0114                                  ; $45CA: $01 $14 $01
    db $10                                        ; $45CD: $10
    ld bc, $0111                                  ; $45CE: $01 $11 $01
    ld [de], a                                    ; $45D1: $12
    ld bc, $0115                                  ; $45D2: $01 $15 $01
    ld bc, $0101                                  ; $45D5: $01 $01 $01
    inc b                                         ; $45D8: $04
    ld bc, $0101                                  ; $45D9: $01 $01 $01
    ld bc, $0101                                  ; $45DC: $01 $01 $01
    ld bc, $0101                                  ; $45DF: $01 $01 $01
    ld bc, $0101                                  ; $45E2: $01 $01 $01
    ld [bc], a                                    ; $45E5: $02
    ld bc, $0101                                  ; $45E6: $01 $01 $01
    ld bc, $0101                                  ; $45E9: $01 $01 $01
    ld bc, $0201                                  ; $45EC: $01 $01 $02
    ld a, [bc]                                    ; $45EF: $0A
    ld [bc], a                                    ; $45F0: $02
    inc c                                         ; $45F1: $0C
    ld [bc], a                                    ; $45F2: $02
    dec c                                         ; $45F3: $0D
    ld [bc], a                                    ; $45F4: $02
    dec c                                         ; $45F5: $0D
    ld [bc], a                                    ; $45F6: $02
    dec bc                                        ; $45F7: $0B
    ld [bc], a                                    ; $45F8: $02
    ld a, [bc]                                    ; $45F9: $0A
    ld bc, $0101                                  ; $45FA: $01 $01 $01
    ld bc, $0101                                  ; $45FD: $01 $01 $01
    ld bc, $0101                                  ; $4600: $01 $01 $01
    ld bc, $0201                                  ; $4603: $01 $01 $02
    inc b                                         ; $4606: $04
    ld bc, $0101                                  ; $4607: $01 $01 $01
    ld bc, $0101                                  ; $460A: $01 $01 $01
    ld [bc], a                                    ; $460D: $02
    ld bc, $0101                                  ; $460E: $01 $01 $01
    ld bc, $0101                                  ; $4611: $01 $01 $01
    ld bc, $0101                                  ; $4614: $01 $01 $01
    ld bc, $0A02                                  ; $4617: $01 $02 $0A
    ld [bc], a                                    ; $461A: $02
    dec bc                                        ; $461B: $0B
    ld [bc], a                                    ; $461C: $02
    dec bc                                        ; $461D: $0B
    ld [bc], a                                    ; $461E: $02
    ld a, [bc]                                    ; $461F: $0A
    ld [bc], a                                    ; $4620: $02
    ld [bc], a                                    ; $4621: $02
    ld bc, $0101                                  ; $4622: $01 $01 $01
    ld bc, $0101                                  ; $4625: $01 $01 $01
    dec b                                         ; $4628: $05
    dec hl                                        ; $4629: $2B
    ld bc, $0101                                  ; $462A: $01 $01 $01
    ld bc, $0201                                  ; $462D: $01 $01 $02
    ld bc, $0101                                  ; $4630: $01 $01 $01
    ld bc, HeaderLogo                             ; $4633: $01 $04 $01
    ld bc, $0101                                  ; $4636: $01 $01 $01
    ld bc, $0101                                  ; $4639: $01 $01 $01
    ld bc, $0102                                  ; $463C: $01 $02 $01
    ld bc, $0101                                  ; $463F: $01 $01 $01
    ld [bc], a                                    ; $4642: $02
    ld a, [bc]                                    ; $4643: $0A
    ld [bc], a                                    ; $4644: $02
    ld a, [bc]                                    ; $4645: $0A
    ld bc, $0101                                  ; $4646: $01 $01 $01
    ld bc, $0201                                  ; $4649: $01 $01 $02
    ld bc, $0101                                  ; $464C: $01 $01 $01
    ld bc, $0101                                  ; $464F: $01 $01 $01
    ld bc, $0101                                  ; $4652: $01 $01 $01
    ld bc, $0101                                  ; $4655: $01 $01 $01
    ld bc, $0101                                  ; $4658: $01 $01 $01
    ld bc, $0101                                  ; $465B: $01 $01 $01
    ld bc, $0109                                  ; $465E: $01 $09 $01
    ld bc, $0101                                  ; $4661: $01 $01 $01
    ld bc, $0101                                  ; $4664: $01 $01 $01
    ld bc, $0101                                  ; $4667: $01 $01 $01
    ld bc, $0101                                  ; $466A: $01 $01 $01
    ld bc, $0101                                  ; $466D: $01 $01 $01
    ld bc, $0101                                  ; $4670: $01 $01 $01
    ld bc, $0101                                  ; $4673: $01 $01 $01
    ld bc, $0101                                  ; $4676: $01 $01 $01
    ld bc, $1B01                                  ; $4679: $01 $01 $1B
    ld bc, $011A                                  ; $467C: $01 $1A $01
    ld a, [de]                                    ; $467F: $1A
    ld bc, $010F                                  ; $4680: $01 $0F $01
    ld bc, $0101                                  ; $4683: $01 $01 $01
    ld bc, $0101                                  ; $4686: $01 $01 $01
    ld c, $01                                     ; $4689: $0E $01
    jr jr_035_468E                                ; $468B: $18 $01

    dec de                                        ; $468D: $1B

jr_035_468E:
    ld bc, $011A                                  ; $468E: $01 $1A $01
    jr jr_035_4694                                ; $4691: $18 $01

    ld a, [de]                                    ; $4693: $1A

jr_035_4694:
    ld bc, $010F                                  ; $4694: $01 $0F $01
    ld bc, $0101                                  ; $4697: $01 $01 $01
    ld bc, $0401                                  ; $469A: $01 $01 $04
    ld c, $04                                     ; $469D: $0E $04
    jr jr_035_46A5                                ; $469F: $18 $04

    add hl, de                                    ; $46A1: $19
    inc bc                                        ; $46A2: $03
    cpl                                           ; $46A3: $2F
    inc bc                                        ; $46A4: $03

jr_035_46A5:
    cpl                                           ; $46A5: $2F
    inc bc                                        ; $46A6: $03
    cpl                                           ; $46A7: $2F
    ld bc, $011E                                  ; $46A8: $01 $1E $01
    inc b                                         ; $46AB: $04
    ld bc, $0204                                  ; $46AC: $01 $04 $02
    dec bc                                        ; $46AF: $0B
    ld bc, $031D                                  ; $46B0: $01 $1D $03
    cpl                                           ; $46B3: $2F
    inc bc                                        ; $46B4: $03
    cpl                                           ; $46B5: $2F
    inc bc                                        ; $46B6: $03
    cpl                                           ; $46B7: $2F
    inc bc                                        ; $46B8: $03
    cpl                                           ; $46B9: $2F
    inc bc                                        ; $46BA: $03
    cpl                                           ; $46BB: $2F
    ld bc, $011E                                  ; $46BC: $01 $1E $01
    ld bc, $0201                                  ; $46BF: $01 $01 $02
    inc b                                         ; $46C2: $04
    ld bc, $1D04                                  ; $46C3: $01 $04 $1D
    inc bc                                        ; $46C6: $03
    cpl                                           ; $46C7: $2F
    inc bc                                        ; $46C8: $03
    cpl                                           ; $46C9: $2F
    inc bc                                        ; $46CA: $03
    cpl                                           ; $46CB: $2F
    inc bc                                        ; $46CC: $03
    cpl                                           ; $46CD: $2F
    inc bc                                        ; $46CE: $03
    cpl                                           ; $46CF: $2F
    ld bc, $011F                                  ; $46D0: $01 $1F $01
    ld bc, $0101                                  ; $46D3: $01 $01 $01
    ld bc, HeaderLogo                             ; $46D6: $01 $04 $01
    dec e                                         ; $46D9: $1D
    inc bc                                        ; $46DA: $03
    cpl                                           ; $46DB: $2F
    inc bc                                        ; $46DC: $03
    cpl                                           ; $46DD: $2F
    inc bc                                        ; $46DE: $03
    cpl                                           ; $46DF: $2F
    inc bc                                        ; $46E0: $03
    cpl                                           ; $46E1: $2F
    inc bc                                        ; $46E2: $03
    cpl                                           ; $46E3: $2F
    ld bc, $011F                                  ; $46E4: $01 $1F $01
    ld bc, $0101                                  ; $46E7: $01 $01 $01
    ld bc, $0401                                  ; $46EA: $01 $01 $04
    dec e                                         ; $46ED: $1D
    inc bc                                        ; $46EE: $03
    cpl                                           ; $46EF: $2F
    inc bc                                        ; $46F0: $03
    cpl                                           ; $46F1: $2F
    inc bc                                        ; $46F2: $03
    cpl                                           ; $46F3: $2F
    inc bc                                        ; $46F4: $03
    cpl                                           ; $46F5: $2F
    inc bc                                        ; $46F6: $03
    cpl                                           ; $46F7: $2F
    ld bc, $011E                                  ; $46F8: $01 $1E $01
    ld bc, $0101                                  ; $46FB: $01 $01 $01
    ld bc, $0101                                  ; $46FE: $01 $01 $01
    dec e                                         ; $4701: $1D
    inc bc                                        ; $4702: $03
    cpl                                           ; $4703: $2F
    inc bc                                        ; $4704: $03
    cpl                                           ; $4705: $2F
    inc bc                                        ; $4706: $03
    cpl                                           ; $4707: $2F
    inc bc                                        ; $4708: $03
    cpl                                           ; $4709: $2F
    inc bc                                        ; $470A: $03
    cpl                                           ; $470B: $2F
    ld bc, $011E                                  ; $470C: $01 $1E $01
    ld bc, $0101                                  ; $470F: $01 $01 $01
    ld bc, $0401                                  ; $4712: $01 $01 $04
    dec e                                         ; $4715: $1D
    inc bc                                        ; $4716: $03
    cpl                                           ; $4717: $2F
    inc bc                                        ; $4718: $03
    cpl                                           ; $4719: $2F
    ld bc, $0113                                  ; $471A: $01 $13 $01
    ld [de], a                                    ; $471D: $12
    ld bc, $0113                                  ; $471E: $01 $13 $01
    dec d                                         ; $4721: $15
    inc b                                         ; $4722: $04
    ld bc, HeaderLogo                             ; $4723: $01 $04 $01
    inc b                                         ; $4726: $04
    ld bc, $1401                                  ; $4727: $01 $01 $14
    ld bc, $0110                                  ; $472A: $01 $10 $01
    inc de                                        ; $472D: $13
    ld bc, $0112                                  ; $472E: $01 $12 $01
    ld de, $1301                                  ; $4731: $11 $01 $13
    ld bc, $0115                                  ; $4734: $01 $15 $01
    ld bc, $0101                                  ; $4737: $01 $01 $01
    ld bc, $0401                                  ; $473A: $01 $01 $04
    inc d                                         ; $473D: $14
    inc b                                         ; $473E: $04
    db $10                                        ; $473F: $10
    inc b                                         ; $4740: $04
    ld de, $0101                                  ; $4741: $11 $01 $01
    ld bc, $0101                                  ; $4744: $01 $01 $01
    ld bc, $0101                                  ; $4747: $01 $01 $01
    inc b                                         ; $474A: $04
    ld bc, $0101                                  ; $474B: $01 $01 $01
    ld bc, $0101                                  ; $474E: $01 $01 $01
    ld bc, $0101                                  ; $4751: $01 $01 $01
    ld bc, $0101                                  ; $4754: $01 $01 $01
    ld bc, $0101                                  ; $4757: $01 $01 $01
    ld bc, $0101                                  ; $475A: $01 $01 $01
    ld bc, $0A02                                  ; $475D: $01 $02 $0A
    ld bc, $0101                                  ; $4760: $01 $01 $01
    ld bc, $0101                                  ; $4763: $01 $01 $01
    ld bc, $0101                                  ; $4766: $01 $01 $01
    ld bc, $0101                                  ; $4769: $01 $01 $01
    ld bc, $0101                                  ; $476C: $01 $01 $01
    ld bc, $0101                                  ; $476F: $01 $01 $01
    inc b                                         ; $4772: $04
    ld bc, $0101                                  ; $4773: $01 $01 $01
    ld bc, $0101                                  ; $4776: $01 $01 $01
    ld bc, $0101                                  ; $4779: $01 $01 $01
    ld bc, $0101                                  ; $477C: $01 $01 $01
    ld bc, $0101                                  ; $477F: $01 $01 $01
    ld bc, $0101                                  ; $4782: $01 $01 $01
    ld bc, $0B02                                  ; $4785: $01 $02 $0B
    ld bc, $0101                                  ; $4788: $01 $01 $01
    ld bc, $0101                                  ; $478B: $01 $01 $01
    ld bc, $0101                                  ; $478E: $01 $01 $01
    ld bc, $0101                                  ; $4791: $01 $01 $01
    ld bc, $0101                                  ; $4794: $01 $01 $01
    ld bc, $0101                                  ; $4797: $01 $01 $01
    ld bc, $0101                                  ; $479A: $01 $01 $01
    ld bc, $0101                                  ; $479D: $01 $01 $01
    ld bc, $0101                                  ; $47A0: $01 $01 $01
    ld bc, $0101                                  ; $47A3: $01 $01 $01
    ld bc, $0101                                  ; $47A6: $01 $01 $01
    ld bc, $0101                                  ; $47A9: $01 $01 $01
    ld bc, $0101                                  ; $47AC: $01 $01 $01
    ld bc, $0501                                  ; $47AF: $01 $01 $05
    ld bc, $0101                                  ; $47B2: $01 $01 $01
    ld bc, $0101                                  ; $47B5: $01 $01 $01
    ld bc, $0101                                  ; $47B8: $01 $01 $01
    ld bc, $0101                                  ; $47BB: $01 $01 $01
    ld bc, $0101                                  ; $47BE: $01 $01 $01
    ld bc, $0101                                  ; $47C1: $01 $01 $01
    ld bc, $0101                                  ; $47C4: $01 $01 $01
    ld bc, $0101                                  ; $47C7: $01 $01 $01
    ld bc, $0101                                  ; $47CA: $01 $01 $01
    ld bc, $0101                                  ; $47CD: $01 $01 $01
    ld bc, $0101                                  ; $47D0: $01 $01 $01
    ld bc, $0101                                  ; $47D3: $01 $01 $01
    ld bc, $0101                                  ; $47D6: $01 $01 $01
    dec b                                         ; $47D9: $05
    ld bc, $0101                                  ; $47DA: $01 $01 $01
    ld bc, $0101                                  ; $47DD: $01 $01 $01
    ld bc, $0101                                  ; $47E0: $01 $01 $01
    ld bc, $0201                                  ; $47E3: $01 $01 $02
    ld bc, $0401                                  ; $47E6: $01 $01 $04
    ld c, $04                                     ; $47E9: $0E $04
    dec de                                        ; $47EB: $1B

Call_035_47EC:
    inc b                                         ; $47EC: $04
    add hl, de                                    ; $47ED: $19
    inc b                                         ; $47EE: $04
    add hl, de                                    ; $47EF: $19
    inc b                                         ; $47F0: $04
    rrca                                          ; $47F1: $0F
    ld bc, $0101                                  ; $47F2: $01 $01 $01
    ld bc, $0A02                                  ; $47F5: $01 $02 $0A
    ld bc, $0101                                  ; $47F8: $01 $01 $01
    ld c, $01                                     ; $47FB: $0E $01
    jr jr_035_4800                                ; $47FD: $18 $01

    add hl, de                                    ; $47FF: $19

jr_035_4800:
    ld bc, $011A                                  ; $4800: $01 $1A $01
    rrca                                          ; $4803: $0F
    ld bc, $0101                                  ; $4804: $01 $01 $01
    ld bc, $0101                                  ; $4807: $01 $01 $01
    ld bc, $0101                                  ; $480A: $01 $01 $01
    ld bc, $0101                                  ; $480D: $01 $01 $01
    inc b                                         ; $4810: $04
    inc e                                         ; $4811: $1C
    inc bc                                        ; $4812: $03
    cpl                                           ; $4813: $2F
    inc bc                                        ; $4814: $03
    cpl                                           ; $4815: $2F
    inc bc                                        ; $4816: $03
    cpl                                           ; $4817: $2F
    inc b                                         ; $4818: $04
    ld e, $01                                     ; $4819: $1E $01
    ld bc, $0101                                  ; $481B: $01 $01 $01
    ld bc, $0101                                  ; $481E: $01 $01 $01
    ld bc, $1D01                                  ; $4821: $01 $01 $1D
    inc bc                                        ; $4824: $03
    cpl                                           ; $4825: $2F
    inc bc                                        ; $4826: $03
    cpl                                           ; $4827: $2F
    inc bc                                        ; $4828: $03
    cpl                                           ; $4829: $2F
    ld bc, $011E                                  ; $482A: $01 $1E $01
    ld bc, $0101                                  ; $482D: $01 $01 $01
    ld bc, $0101                                  ; $4830: $01 $01 $01
    ld bc, $0101                                  ; $4833: $01 $01 $01
    ld bc, $0401                                  ; $4836: $01 $01 $04
    dec e                                         ; $4839: $1D
    inc bc                                        ; $483A: $03
    cpl                                           ; $483B: $2F
    inc bc                                        ; $483C: $03
    cpl                                           ; $483D: $2F
    inc bc                                        ; $483E: $03
    cpl                                           ; $483F: $2F
    inc b                                         ; $4840: $04
    rra                                           ; $4841: $1F
    ld bc, $0109                                  ; $4842: $01 $09 $01
    add hl, bc                                    ; $4845: $09
    ld bc, $0101                                  ; $4846: $01 $01 $01
    ld bc, $1D01                                  ; $4849: $01 $01 $1D
    inc bc                                        ; $484C: $03
    cpl                                           ; $484D: $2F
    inc bc                                        ; $484E: $03
    cpl                                           ; $484F: $2F
    inc bc                                        ; $4850: $03
    cpl                                           ; $4851: $2F
    ld bc, $011F                                  ; $4852: $01 $1F $01
    ld bc, $0101                                  ; $4855: $01 $01 $01
    ld bc, $0101                                  ; $4858: $01 $01 $01
    ld bc, $0101                                  ; $485B: $01 $01 $01
    ld bc, $0401                                  ; $485E: $01 $01 $04
    dec e                                         ; $4861: $1D
    inc bc                                        ; $4862: $03
    cpl                                           ; $4863: $2F
    inc bc                                        ; $4864: $03
    cpl                                           ; $4865: $2F
    inc bc                                        ; $4866: $03
    cpl                                           ; $4867: $2F
    inc b                                         ; $4868: $04
    ld e, $01                                     ; $4869: $1E $01
    ld bc, $0101                                  ; $486B: $01 $01 $01
    ld bc, $0101                                  ; $486E: $01 $01 $01
    ld bc, $1D01                                  ; $4871: $01 $01 $1D
    inc bc                                        ; $4874: $03
    cpl                                           ; $4875: $2F
    inc bc                                        ; $4876: $03
    cpl                                           ; $4877: $2F
    inc bc                                        ; $4878: $03
    cpl                                           ; $4879: $2F
    ld bc, $011E                                  ; $487A: $01 $1E $01
    ld bc, $0101                                  ; $487D: $01 $01 $01
    ld bc, $0101                                  ; $4880: $01 $01 $01
    ld bc, $0101                                  ; $4883: $01 $01 $01
    ld bc, $0401                                  ; $4886: $01 $01 $04
    inc d                                         ; $4889: $14
    inc b                                         ; $488A: $04
    db $10                                        ; $488B: $10
    inc b                                         ; $488C: $04
    inc de                                        ; $488D: $13
    inc b                                         ; $488E: $04
    ld [de], a                                    ; $488F: $12
    inc b                                         ; $4890: $04
    dec d                                         ; $4891: $15
    ld bc, $0101                                  ; $4892: $01 $01 $01
    ld bc, $0901                                  ; $4895: $01 $01 $09
    ld bc, $0101                                  ; $4898: $01 $01 $01
    inc d                                         ; $489B: $14
    ld bc, $0110                                  ; $489C: $01 $10 $01
    ld de, $1301                                  ; $489F: $11 $01 $13
    ld bc, $0115                                  ; $48A2: $01 $15 $01
    ld bc, $0101                                  ; $48A5: $01 $01 $01
    ld bc, $0501                                  ; $48A8: $01 $01 $05
    dec hl                                        ; $48AB: $2B
    ld bc, $0101                                  ; $48AC: $01 $01 $01
    ld bc, $0201                                  ; $48AF: $01 $01 $02
    ld bc, $0102                                  ; $48B2: $01 $02 $01
    inc b                                         ; $48B5: $04
    ld bc, HeaderLogo                             ; $48B6: $01 $04 $01
    dec b                                         ; $48B9: $05
    ld bc, $0105                                  ; $48BA: $01 $05 $01
    ld bc, HeaderLogo                             ; $48BD: $01 $04 $01
    ld bc, $0101                                  ; $48C0: $01 $01 $01
    ld bc, HeaderLogo                             ; $48C3: $01 $04 $01
    ld [bc], a                                    ; $48C6: $02
    ld a, [bc]                                    ; $48C7: $0A
    ld [bc], a                                    ; $48C8: $02
    dec bc                                        ; $48C9: $0B
    ld bc, $0101                                  ; $48CA: $01 $01 $01
    ld bc, $0201                                  ; $48CD: $01 $01 $02
    ld bc, $0101                                  ; $48D0: $01 $01 $01
    ld bc, $0101                                  ; $48D3: $01 $01 $01
    ld bc, $0102                                  ; $48D6: $01 $02 $01
    dec b                                         ; $48D9: $05
    ld bc, $0105                                  ; $48DA: $01 $05 $01
    inc b                                         ; $48DD: $04
    ld bc, HeaderLogo                             ; $48DE: $01 $04 $01
    inc b                                         ; $48E1: $04
    inc b                                         ; $48E2: $04
    dec b                                         ; $48E3: $05
    ld bc, $0101                                  ; $48E4: $01 $01 $01
    ld bc, HeaderLogo                             ; $48E7: $01 $04 $01
    inc b                                         ; $48EA: $04
    ld bc, $0B02                                  ; $48EB: $01 $02 $0B
    ld [bc], a                                    ; $48EE: $02
    inc c                                         ; $48EF: $0C
    ld [bc], a                                    ; $48F0: $02
    inc c                                         ; $48F1: $0C
    ld [bc], a                                    ; $48F2: $02
    dec bc                                        ; $48F3: $0B
    ld bc, $0401                                  ; $48F4: $01 $01 $04
    ld bc, $0101                                  ; $48F7: $01 $01 $01
    ld bc, $0101                                  ; $48FA: $01 $01 $01
    ld bc, $0501                                  ; $48FD: $01 $01 $05
    ld bc, $0105                                  ; $4900: $01 $05 $01
    inc b                                         ; $4903: $04
    ld bc, HeaderLogo                             ; $4904: $01 $04 $01
    ld [bc], a                                    ; $4907: $02
    ld bc, $0102                                  ; $4908: $01 $02 $01
    ld bc, HeaderLogo                             ; $490B: $01 $04 $01
    ld bc, $0401                                  ; $490E: $01 $01 $04
    ld bc, $0A02                                  ; $4911: $01 $02 $0A
    ld [bc], a                                    ; $4914: $02
    inc c                                         ; $4915: $0C
    ld [bc], a                                    ; $4916: $02
    dec c                                         ; $4917: $0D
    ld [bc], a                                    ; $4918: $02
    dec c                                         ; $4919: $0D
    ld [bc], a                                    ; $491A: $02
    ld a, [bc]                                    ; $491B: $0A
    ld bc, $0101                                  ; $491C: $01 $01 $01
    ld bc, $0101                                  ; $491F: $01 $01 $01
    ld bc, $0101                                  ; $4922: $01 $01 $01
    ld bc, $0101                                  ; $4925: $01 $01 $01
    ld bc, $0102                                  ; $4928: $01 $02 $01
    ld [bc], a                                    ; $492B: $02
    ld bc, HeaderLogo                             ; $492C: $01 $04 $01
    add hl, bc                                    ; $492F: $09
    ld bc, $0101                                  ; $4930: $01 $01 $01
    ld bc, $0101                                  ; $4933: $01 $01 $01
    ld bc, $0105                                  ; $4936: $01 $05 $01
    ld bc, $0A02                                  ; $4939: $01 $02 $0A
    ld [bc], a                                    ; $493C: $02
    dec bc                                        ; $493D: $0B
    ld [bc], a                                    ; $493E: $02
    dec bc                                        ; $493F: $0B
    ld [bc], a                                    ; $4940: $02
    ld a, [bc]                                    ; $4941: $0A
    ld bc, $0101                                  ; $4942: $01 $01 $01
    ld bc, $0101                                  ; $4945: $01 $01 $01
    ld bc, $0101                                  ; $4948: $01 $01 $01
    inc h                                         ; $494B: $24
    ld bc, $0127                                  ; $494C: $01 $27 $01
    inc h                                         ; $494F: $24
    ld bc, $0126                                  ; $4950: $01 $26 $01
    ld h, $01                                     ; $4953: $26 $01
    inc h                                         ; $4955: $24
    ld bc, $0124                                  ; $4956: $01 $24 $01
    inc h                                         ; $4959: $24
    ld bc, $0125                                  ; $495A: $01 $25 $01
    inc h                                         ; $495D: $24
    inc b                                         ; $495E: $04
    daa                                           ; $495F: $27
    ld bc, $0124                                  ; $4960: $01 $24 $01
    ld h, $01                                     ; $4963: $26 $01
    inc h                                         ; $4965: $24
    ld bc, $0124                                  ; $4966: $01 $24 $01
    ld h, $01                                     ; $4969: $26 $01
    inc h                                         ; $496B: $24
    ld bc, $0125                                  ; $496C: $01 $25 $01
    inc h                                         ; $496F: $24
    ld bc, $0324                                  ; $4970: $01 $24 $03
    ld l, $03                                     ; $4973: $2E $03
    ld l, $03                                     ; $4975: $2E $03
    ld l, $03                                     ; $4977: $2E $03
    ld l, $03                                     ; $4979: $2E $03
    ld l, $03                                     ; $497B: $2E $03
    ld l, $03                                     ; $497D: $2E $03
    ld l, $03                                     ; $497F: $2E $03
    ld l, $03                                     ; $4981: $2E $03
    ld l, $03                                     ; $4983: $2E $03
    ld l, $03                                     ; $4985: $2E $03
    ld l, $03                                     ; $4987: $2E $03
    ld l, $03                                     ; $4989: $2E $03
    ld l, $03                                     ; $498B: $2E $03
    ld l, $03                                     ; $498D: $2E $03
    ld l, $03                                     ; $498F: $2E $03
    ld l, $03                                     ; $4991: $2E $03
    ld l, $03                                     ; $4993: $2E $03
    ld l, $03                                     ; $4995: $2E $03
    ld l, $03                                     ; $4997: $2E $03
    ld l, $03                                     ; $4999: $2E $03
    ld l, $03                                     ; $499B: $2E $03
    ld l, $03                                     ; $499D: $2E $03
    ld l, $03                                     ; $499F: $2E $03
    ld l, $03                                     ; $49A1: $2E $03
    ld l, $03                                     ; $49A3: $2E $03
    ld l, $03                                     ; $49A5: $2E $03
    ld l, $03                                     ; $49A7: $2E $03
    ld l, $03                                     ; $49A9: $2E $03
    ld l, $03                                     ; $49AB: $2E $03
    ld l, $03                                     ; $49AD: $2E $03
    ld l, $03                                     ; $49AF: $2E $03
    ld l, $03                                     ; $49B1: $2E $03
    ld l, $03                                     ; $49B3: $2E $03
    ld l, $03                                     ; $49B5: $2E $03
    ld l, $03                                     ; $49B7: $2E $03
    ld l, $03                                     ; $49B9: $2E $03
    ld l, $03                                     ; $49BB: $2E $03
    ld l, $03                                     ; $49BD: $2E $03
    ld l, $03                                     ; $49BF: $2E $03
    ld l, $03                                     ; $49C1: $2E $03
    ld l, $03                                     ; $49C3: $2E $03
    ld l, $03                                     ; $49C5: $2E $03
    ld l, $03                                     ; $49C7: $2E $03
    ld l, $03                                     ; $49C9: $2E $03
    ld l, $03                                     ; $49CB: $2E $03
    ld l, $03                                     ; $49CD: $2E $03
    ld l, $03                                     ; $49CF: $2E $03
    ld l, $03                                     ; $49D1: $2E $03
    ld l, $03                                     ; $49D3: $2E $03
    ld l, $03                                     ; $49D5: $2E $03
    ld l, $03                                     ; $49D7: $2E $03
    ld l, $03                                     ; $49D9: $2E $03
    ld l, $03                                     ; $49DB: $2E $03
    ld l, $03                                     ; $49DD: $2E $03
    ld l, $03                                     ; $49DF: $2E $03
    ld l, $03                                     ; $49E1: $2E $03
    ld l, $03                                     ; $49E3: $2E $03
    ld l, $03                                     ; $49E5: $2E $03
    ld l, $03                                     ; $49E7: $2E $03
    ld l, $03                                     ; $49E9: $2E $03
    ld l, $03                                     ; $49EB: $2E $03
    ld l, $03                                     ; $49ED: $2E $03
    ld l, $03                                     ; $49EF: $2E $03
    ld l, $03                                     ; $49F1: $2E $03
    ld l, $03                                     ; $49F3: $2E $03
    ld l, $03                                     ; $49F5: $2E $03
    ld l, $03                                     ; $49F7: $2E $03
    ld l, $03                                     ; $49F9: $2E $03
    ld l, $03                                     ; $49FB: $2E $03
    ld l, $03                                     ; $49FD: $2E $03
    ld l, $03                                     ; $49FF: $2E $03
    ld l, $03                                     ; $4A01: $2E $03
    ld l, $03                                     ; $4A03: $2E $03
    ld l, $03                                     ; $4A05: $2E $03
    ld l, $03                                     ; $4A07: $2E $03
    ld l, $03                                     ; $4A09: $2E $03
    ld l, $03                                     ; $4A0B: $2E $03
    ld l, $03                                     ; $4A0D: $2E $03
    ld l, $03                                     ; $4A0F: $2E $03
    ld l, $03                                     ; $4A11: $2E $03
    ld l, $03                                     ; $4A13: $2E $03
    ld l, $03                                     ; $4A15: $2E $03
    ld l, $03                                     ; $4A17: $2E $03
    ld l, $03                                     ; $4A19: $2E $03
    ld l, $03                                     ; $4A1B: $2E $03
    ld l, $03                                     ; $4A1D: $2E $03
    ld l, $03                                     ; $4A1F: $2E $03
    ld l, $03                                     ; $4A21: $2E $03
    ld l, $03                                     ; $4A23: $2E $03
    ld l, $03                                     ; $4A25: $2E $03
    ld l, $03                                     ; $4A27: $2E $03
    ld l, $03                                     ; $4A29: $2E $03
    ld l, $03                                     ; $4A2B: $2E $03
    ld l, $03                                     ; $4A2D: $2E $03
    ld l, $03                                     ; $4A2F: $2E $03
    ld l, $03                                     ; $4A31: $2E $03
    ld l, $03                                     ; $4A33: $2E $03
    ld l, $03                                     ; $4A35: $2E $03
    ld l, $03                                     ; $4A37: $2E $03
    ld l, $03                                     ; $4A39: $2E $03
    ld l, $03                                     ; $4A3B: $2E $03
    ld l, $03                                     ; $4A3D: $2E $03
    ld l, $03                                     ; $4A3F: $2E $03
    ld l, $03                                     ; $4A41: $2E $03
    ld l, $03                                     ; $4A43: $2E $03
    ld l, $03                                     ; $4A45: $2E $03
    ld l, $03                                     ; $4A47: $2E $03
    ld l, $03                                     ; $4A49: $2E $03
    ld l, $03                                     ; $4A4B: $2E $03
    ld l, $03                                     ; $4A4D: $2E $03
    ld l, $03                                     ; $4A4F: $2E $03
    ld l, $03                                     ; $4A51: $2E $03
    ld l, $03                                     ; $4A53: $2E $03
    ld l, $03                                     ; $4A55: $2E $03
    ld l, $03                                     ; $4A57: $2E $03
    ld l, $03                                     ; $4A59: $2E $03
    ld l, $03                                     ; $4A5B: $2E $03
    ld l, $03                                     ; $4A5D: $2E $03
    ld l, $03                                     ; $4A5F: $2E $03
    ld l, $03                                     ; $4A61: $2E $03
    ld l, $03                                     ; $4A63: $2E $03
    ld l, $03                                     ; $4A65: $2E $03
    ld l, $03                                     ; $4A67: $2E $03
    ld l, $03                                     ; $4A69: $2E $03
    ld l, $03                                     ; $4A6B: $2E $03
    ld l, $03                                     ; $4A6D: $2E $03
    ld l, $03                                     ; $4A6F: $2E $03
    ld l, $03                                     ; $4A71: $2E $03
    ld l, $03                                     ; $4A73: $2E $03
    ld l, $03                                     ; $4A75: $2E $03
    ld l, $03                                     ; $4A77: $2E $03
    ld l, $03                                     ; $4A79: $2E $03
    ld l, $03                                     ; $4A7B: $2E $03
    ld l, $03                                     ; $4A7D: $2E $03
    ld l, $03                                     ; $4A7F: $2E $03
    ld l, $03                                     ; $4A81: $2E $03
    ld l, $03                                     ; $4A83: $2E $03
    ld l, $03                                     ; $4A85: $2E $03
    ld l, $03                                     ; $4A87: $2E $03
    ld l, $03                                     ; $4A89: $2E $03
    ld l, $03                                     ; $4A8B: $2E $03
    ld l, $03                                     ; $4A8D: $2E $03
    ld l, $03                                     ; $4A8F: $2E $03
    ld l, $03                                     ; $4A91: $2E $03
    ld l, $03                                     ; $4A93: $2E $03
    ld l, $03                                     ; $4A95: $2E $03
    ld l, $03                                     ; $4A97: $2E $03
    ld l, $03                                     ; $4A99: $2E $03
    ld l, $03                                     ; $4A9B: $2E $03
    ld l, $03                                     ; $4A9D: $2E $03
    ld l, $03                                     ; $4A9F: $2E $03
    ld l, $03                                     ; $4AA1: $2E $03
    ld l, $03                                     ; $4AA3: $2E $03
    ld l, $03                                     ; $4AA5: $2E $03
    ld l, $03                                     ; $4AA7: $2E $03
    ld l, $03                                     ; $4AA9: $2E $03
    ld l, $03                                     ; $4AAB: $2E $03
    ld l, $03                                     ; $4AAD: $2E $03
    ld l, $03                                     ; $4AAF: $2E $03
    ld l, $03                                     ; $4AB1: $2E $03
    ld l, $03                                     ; $4AB3: $2E $03
    ld l, $03                                     ; $4AB5: $2E $03
    ld l, $03                                     ; $4AB7: $2E $03
    ld l, $03                                     ; $4AB9: $2E $03
    ld l, $03                                     ; $4ABB: $2E $03
    ld l, $03                                     ; $4ABD: $2E $03
    ld l, $03                                     ; $4ABF: $2E $03
    ld l, $03                                     ; $4AC1: $2E $03
    ld l, $03                                     ; $4AC3: $2E $03
    ld l, $03                                     ; $4AC5: $2E $03
    ld l, $03                                     ; $4AC7: $2E $03
    ld l, $03                                     ; $4AC9: $2E $03
    ld l, $03                                     ; $4ACB: $2E $03
    ld l, $03                                     ; $4ACD: $2E $03
    ld l, $03                                     ; $4ACF: $2E $03
    ld l, $03                                     ; $4AD1: $2E $03
    ld l, $03                                     ; $4AD3: $2E $03
    ld l, $03                                     ; $4AD5: $2E $03
    ld l, $03                                     ; $4AD7: $2E $03
    ld l, $01                                     ; $4AD9: $2E $01
    jr nz, jr_035_4ADE                            ; $4ADB: $20 $01

    ld [hl+], a                                   ; $4ADD: $22

jr_035_4ADE:
    ld bc, $0121                                  ; $4ADE: $01 $21 $01
    inc hl                                        ; $4AE1: $23
    ld bc, $0121                                  ; $4AE2: $01 $21 $01
    ld [hl+], a                                   ; $4AE5: $22
    ld bc, $0122                                  ; $4AE6: $01 $22 $01
    ld [hl+], a                                   ; $4AE9: $22
    ld bc, $0122                                  ; $4AEA: $01 $22 $01
    inc hl                                        ; $4AED: $23
    ld bc, $0120                                  ; $4AEE: $01 $20 $01
    ld [hl+], a                                   ; $4AF1: $22
    ld bc, $0122                                  ; $4AF2: $01 $22 $01
    jr nz, @+$03                                  ; $4AF5: $20 $01

    ld hl, $2201                                  ; $4AF7: $21 $01 $22
    ld bc, $0122                                  ; $4AFA: $01 $22 $01
    ld [hl+], a                                   ; $4AFD: $22
    ld bc, $0120                                  ; $4AFE: $01 $20 $01
    jr nz, @+$03                                  ; $4B01: $20 $01

    ld bc, $0101                                  ; $4B03: $01 $01 $01
    ld bc, $0101                                  ; $4B06: $01 $01 $01
    ld bc, $0101                                  ; $4B09: $01 $01 $01
    ld [bc], a                                    ; $4B0C: $02
    ld a, [bc]                                    ; $4B0D: $0A
    ld bc, $0101                                  ; $4B0E: $01 $01 $01
    ld bc, $0101                                  ; $4B11: $01 $01 $01
    ld bc, $0101                                  ; $4B14: $01 $01 $01
    ld bc, $0101                                  ; $4B17: $01 $01 $01
    ld bc, $0101                                  ; $4B1A: $01 $01 $01
    ld bc, $0101                                  ; $4B1D: $01 $01 $01
    ld bc, $0106                                  ; $4B20: $01 $06 $01
    ld bc, $0101                                  ; $4B23: $01 $01 $01
    ld bc, $0101                                  ; $4B26: $01 $01 $01
    ld bc, $0101                                  ; $4B29: $01 $01 $01
    ld bc, $0101                                  ; $4B2C: $01 $01 $01
    ld bc, $0101                                  ; $4B2F: $01 $01 $01
    ld bc, $0101                                  ; $4B32: $01 $01 $01
    ld bc, $0101                                  ; $4B35: $01 $01 $01
    ld bc, $0101                                  ; $4B38: $01 $01 $01
    ld bc, $0601                                  ; $4B3B: $01 $01 $06
    ld bc, $0101                                  ; $4B3E: $01 $01 $01
    ld bc, $0901                                  ; $4B41: $01 $01 $09
    ld bc, $0101                                  ; $4B44: $01 $01 $01
    ld bc, $0101                                  ; $4B47: $01 $01 $01
    ld bc, $0101                                  ; $4B4A: $01 $01 $01
    add hl, bc                                    ; $4B4D: $09
    ld bc, $0501                                  ; $4B4E: $01 $01 $05
    dec hl                                        ; $4B51: $2B
    ld bc, $0101                                  ; $4B52: $01 $01 $01
    ld bc, $0201                                  ; $4B55: $01 $01 $02
    ld bc, $0101                                  ; $4B58: $01 $01 $01
    ld bc, $0101                                  ; $4B5B: $01 $01 $01
    ld bc, $0101                                  ; $4B5E: $01 $01 $01
    ld bc, $0101                                  ; $4B61: $01 $01 $01
    ld bc, $0101                                  ; $4B64: $01 $01 $01
    ld bc, $0201                                  ; $4B67: $01 $01 $02
    ld bc, $0406                                  ; $4B6A: $01 $06 $04
    ld bc, $0101                                  ; $4B6D: $01 $01 $01
    ld bc, $0101                                  ; $4B70: $01 $01 $01
    ld bc, $0101                                  ; $4B73: $01 $01 $01
    ld bc, $0101                                  ; $4B76: $01 $01 $01
    ld bc, $0101                                  ; $4B79: $01 $01 $01
    ld bc, $0101                                  ; $4B7C: $01 $01 $01
    ld bc, $0201                                  ; $4B7F: $01 $01 $02
    ld bc, $0101                                  ; $4B82: $01 $01 $01
    ld bc, $0101                                  ; $4B85: $01 $01 $01
    ld bc, $0101                                  ; $4B88: $01 $01 $01
    ld bc, $0101                                  ; $4B8B: $01 $01 $01
    inc b                                         ; $4B8E: $04
    ld bc, $0101                                  ; $4B8F: $01 $01 $01
    ld bc, $0101                                  ; $4B92: $01 $01 $01
    ld [bc], a                                    ; $4B95: $02
    ld bc, $0101                                  ; $4B96: $01 $01 $01
    ld bc, $0101                                  ; $4B99: $01 $01 $01
    ld bc, $0101                                  ; $4B9C: $01 $01 $01
    ld bc, $0101                                  ; $4B9F: $01 $01 $01
    ld bc, $0101                                  ; $4BA2: $01 $01 $01
    ld bc, $0101                                  ; $4BA5: $01 $01 $01
    ld bc, $0101                                  ; $4BA8: $01 $01 $01
    ld bc, $0901                                  ; $4BAB: $01 $01 $09
    ld bc, $0101                                  ; $4BAE: $01 $01 $01
    ld bc, $0201                                  ; $4BB1: $01 $01 $02
    ld bc, $0102                                  ; $4BB4: $01 $02 $01
    ld bc, $0101                                  ; $4BB7: $01 $01 $01
    ld bc, $0401                                  ; $4BBA: $01 $01 $04
    ld bc, $0101                                  ; $4BBD: $01 $01 $01
    ld bc, $0101                                  ; $4BC0: $01 $01 $01
    ld bc, HeaderLogo                             ; $4BC3: $01 $04 $01
    ld bc, $0101                                  ; $4BC6: $01 $01 $01
    ld bc, $0101                                  ; $4BC9: $01 $01 $01
    ld bc, $0101                                  ; $4BCC: $01 $01 $01
    ld bc, $0101                                  ; $4BCF: $01 $01 $01
    ld bc, $0101                                  ; $4BD2: $01 $01 $01
    ld bc, $0101                                  ; $4BD5: $01 $01 $01
    ld bc, $0101                                  ; $4BD8: $01 $01 $01
    ld bc, $0101                                  ; $4BDB: $01 $01 $01
    ld bc, $0101                                  ; $4BDE: $01 $01 $01
    ld bc, $0101                                  ; $4BE1: $01 $01 $01
    ld bc, $0101                                  ; $4BE4: $01 $01 $01
    ld bc, $0101                                  ; $4BE7: $01 $01 $01
    ld bc, $0109                                  ; $4BEA: $01 $09 $01
    ld bc, $0101                                  ; $4BED: $01 $01 $01
    ld bc, $0101                                  ; $4BF0: $01 $01 $01
    ld bc, $0101                                  ; $4BF3: $01 $01 $01
    ld bc, $0109                                  ; $4BF6: $01 $09 $01
    ld bc, HeaderLogo                             ; $4BF9: $01 $04 $01
    ld bc, $0102                                  ; $4BFC: $01 $02 $01
    ld bc, $0101                                  ; $4BFF: $01 $01 $01
    ld bc, $0101                                  ; $4C02: $01 $01 $01
    ld [bc], a                                    ; $4C05: $02
    ld bc, $0401                                  ; $4C06: $01 $01 $04
    ld bc, $0101                                  ; $4C09: $01 $01 $01
    inc b                                         ; $4C0C: $04
    add hl, bc                                    ; $4C0D: $09
    ld bc, $0401                                  ; $4C0E: $01 $01 $04
    add hl, bc                                    ; $4C11: $09
    ld bc, $0101                                  ; $4C12: $01 $01 $01
    ld bc, $0101                                  ; $4C15: $01 $01 $01
    ld bc, $0101                                  ; $4C18: $01 $01 $01
    ld bc, $0101                                  ; $4C1B: $01 $01 $01
    inc b                                         ; $4C1E: $04
    ld bc, $0101                                  ; $4C1F: $01 $01 $01
    ld bc, $0101                                  ; $4C22: $01 $01 $01
    ld bc, $0101                                  ; $4C25: $01 $01 $01
    ld bc, $0101                                  ; $4C28: $01 $01 $01
    ld [bc], a                                    ; $4C2B: $02
    ld bc, $0101                                  ; $4C2C: $01 $01 $01
    ld bc, $0101                                  ; $4C2F: $01 $01 $01
    ld bc, $0101                                  ; $4C32: $01 $01 $01
    ld bc, $0101                                  ; $4C35: $01 $01 $01
    ld bc, $0401                                  ; $4C38: $01 $01 $04
    add hl, bc                                    ; $4C3B: $09
    ld bc, $0101                                  ; $4C3C: $01 $01 $01
    ld bc, $0101                                  ; $4C3F: $01 $01 $01
    ld bc, $0101                                  ; $4C42: $01 $01 $01
    ld bc, HeaderLogo                             ; $4C45: $01 $04 $01
    ld bc, $0102                                  ; $4C48: $01 $02 $01
    ld bc, $0101                                  ; $4C4B: $01 $01 $01
    ld bc, $0101                                  ; $4C4E: $01 $01 $01
    ld bc, $0101                                  ; $4C51: $01 $01 $01
    ld bc, $0101                                  ; $4C54: $01 $01 $01
    ld bc, $0101                                  ; $4C57: $01 $01 $01
    ld bc, $0101                                  ; $4C5A: $01 $01 $01
    ld bc, $0101                                  ; $4C5D: $01 $01 $01
    ld bc, $0101                                  ; $4C60: $01 $01 $01
    ld bc, $0101                                  ; $4C63: $01 $01 $01
    inc b                                         ; $4C66: $04
    ld bc, $0101                                  ; $4C67: $01 $01 $01
    ld bc, $0101                                  ; $4C6A: $01 $01 $01
    ld bc, $0101                                  ; $4C6D: $01 $01 $01
    ld bc, $0101                                  ; $4C70: $01 $01 $01
    ld bc, $0101                                  ; $4C73: $01 $01 $01
    ld bc, $0101                                  ; $4C76: $01 $01 $01
    ld bc, $0904                                  ; $4C79: $01 $04 $09
    ld bc, $0101                                  ; $4C7C: $01 $01 $01
    ld [bc], a                                    ; $4C7F: $02
    ld bc, $0101                                  ; $4C80: $01 $01 $01
    ld bc, HeaderLogo                             ; $4C83: $01 $04 $01
    ld bc, $0101                                  ; $4C86: $01 $01 $01
    ld bc, $0101                                  ; $4C89: $01 $01 $01
    ld bc, $0101                                  ; $4C8C: $01 $01 $01
    ld bc, $0101                                  ; $4C8F: $01 $01 $01
    ld bc, $0101                                  ; $4C92: $01 $01 $01
    ld bc, $0101                                  ; $4C95: $01 $01 $01
    ld bc, $0101                                  ; $4C98: $01 $01 $01
    ld bc, $0101                                  ; $4C9B: $01 $01 $01
    ld bc, $0101                                  ; $4C9E: $01 $01 $01
    ld bc, $0101                                  ; $4CA1: $01 $01 $01
    ld bc, $0101                                  ; $4CA4: $01 $01 $01
    ld bc, $0101                                  ; $4CA7: $01 $01 $01
    ld bc, $0101                                  ; $4CAA: $01 $01 $01
    ld bc, $0101                                  ; $4CAD: $01 $01 $01
    ld bc, $0101                                  ; $4CB0: $01 $01 $01
    ld bc, $0101                                  ; $4CB3: $01 $01 $01
    inc b                                         ; $4CB6: $04
    ld bc, $0101                                  ; $4CB7: $01 $01 $01
    ld bc, $0101                                  ; $4CBA: $01 $01 $01
    ld bc, $0101                                  ; $4CBD: $01 $01 $01
    ld bc, $0101                                  ; $4CC0: $01 $01 $01
    ld bc, $0904                                  ; $4CC3: $01 $04 $09
    ld bc, $0101                                  ; $4CC6: $01 $01 $01
    ld bc, $0201                                  ; $4CC9: $01 $01 $02
    ld bc, $0101                                  ; $4CCC: $01 $01 $01
    ld bc, $0101                                  ; $4CCF: $01 $01 $01
    ld bc, $0109                                  ; $4CD2: $01 $09 $01
    ld bc, $0101                                  ; $4CD5: $01 $01 $01
    ld bc, $0101                                  ; $4CD8: $01 $01 $01
    ld bc, $0101                                  ; $4CDB: $01 $01 $01
    ld bc, $0101                                  ; $4CDE: $01 $01 $01
    ld bc, $0101                                  ; $4CE1: $01 $01 $01
    ld bc, $0401                                  ; $4CE4: $01 $01 $04
    add hl, bc                                    ; $4CE7: $09
    ld bc, $0101                                  ; $4CE8: $01 $01 $01
    ld bc, HeaderLogo                             ; $4CEB: $01 $04 $01
    ld bc, $0109                                  ; $4CEE: $01 $09 $01
    ld bc, $0101                                  ; $4CF1: $01 $01 $01
    ld bc, $0101                                  ; $4CF4: $01 $01 $01
    ld bc, $0101                                  ; $4CF7: $01 $01 $01
    ld bc, $0101                                  ; $4CFA: $01 $01 $01
    ld bc, $0A02                                  ; $4CFD: $01 $02 $0A
    ld [bc], a                                    ; $4D00: $02
    dec bc                                        ; $4D01: $0B
    ld bc, $0101                                  ; $4D02: $01 $01 $01
    ld bc, $0101                                  ; $4D05: $01 $01 $01
    ld bc, $0101                                  ; $4D08: $01 $01 $01
    ld bc, $0101                                  ; $4D0B: $01 $01 $01
    inc b                                         ; $4D0E: $04
    ld bc, $0201                                  ; $4D0F: $01 $01 $02
    ld bc, $0101                                  ; $4D12: $01 $01 $01
    ld bc, $0101                                  ; $4D15: $01 $01 $01
    ld bc, $0101                                  ; $4D18: $01 $01 $01
    ld bc, $0A02                                  ; $4D1B: $01 $02 $0A
    ld bc, $0101                                  ; $4D1E: $01 $01 $01
    ld bc, $0101                                  ; $4D21: $01 $01 $01
    ld [bc], a                                    ; $4D24: $02
    dec bc                                        ; $4D25: $0B
    ld [bc], a                                    ; $4D26: $02
    inc c                                         ; $4D27: $0C
    ld [bc], a                                    ; $4D28: $02
    inc c                                         ; $4D29: $0C
    ld [bc], a                                    ; $4D2A: $02
    dec bc                                        ; $4D2B: $0B
    inc b                                         ; $4D2C: $04
    ld bc, $0101                                  ; $4D2D: $01 $01 $01
    ld bc, $0101                                  ; $4D30: $01 $01 $01
    ld bc, $0101                                  ; $4D33: $01 $01 $01
    ld bc, $0401                                  ; $4D36: $01 $01 $04
    ld bc, $0101                                  ; $4D39: $01 $01 $01
    ld bc, $0101                                  ; $4D3C: $01 $01 $01
    ld bc, $0101                                  ; $4D3F: $01 $01 $01
    ld bc, $0101                                  ; $4D42: $01 $01 $01
    ld bc, $0101                                  ; $4D45: $01 $01 $01
    ld bc, $0201                                  ; $4D48: $01 $01 $02
    dec bc                                        ; $4D4B: $0B
    ld [bc], a                                    ; $4D4C: $02
    inc c                                         ; $4D4D: $0C
    ld [bc], a                                    ; $4D4E: $02
    dec c                                         ; $4D4F: $0D
    ld [bc], a                                    ; $4D50: $02
    inc c                                         ; $4D51: $0C
    ld [bc], a                                    ; $4D52: $02
    ld a, [bc]                                    ; $4D53: $0A
    inc b                                         ; $4D54: $04
    ld bc, $0101                                  ; $4D55: $01 $01 $01
    ld bc, $0101                                  ; $4D58: $01 $01 $01
    ld bc, $0101                                  ; $4D5B: $01 $01 $01
    inc b                                         ; $4D5E: $04
    ld bc, $0201                                  ; $4D5F: $01 $01 $02
    ld bc, $0101                                  ; $4D62: $01 $01 $01
    ld bc, $0101                                  ; $4D65: $01 $01 $01
    ld bc, $0101                                  ; $4D68: $01 $01 $01
    ld bc, $0901                                  ; $4D6B: $01 $01 $09
    ld bc, $0201                                  ; $4D6E: $01 $01 $02
    ld a, [bc]                                    ; $4D71: $0A
    ld [bc], a                                    ; $4D72: $02
    dec bc                                        ; $4D73: $0B
    ld [bc], a                                    ; $4D74: $02
    inc c                                         ; $4D75: $0C
    ld [bc], a                                    ; $4D76: $02
    inc c                                         ; $4D77: $0C
    ld [bc], a                                    ; $4D78: $02
    dec bc                                        ; $4D79: $0B
    ld bc, $0102                                  ; $4D7A: $01 $02 $01
    add hl, bc                                    ; $4D7D: $09
    inc b                                         ; $4D7E: $04
    ld bc, $0101                                  ; $4D7F: $01 $01 $01
    ld bc, $0101                                  ; $4D82: $01 $01 $01
    add hl, bc                                    ; $4D85: $09
    ld bc, $0101                                  ; $4D86: $01 $01 $01
    ld bc, $0101                                  ; $4D89: $01 $01 $01
    ld bc, $0101                                  ; $4D8C: $01 $01 $01
    inc bc                                        ; $4D8F: $03
    ld bc, $0101                                  ; $4D90: $01 $01 $01
    ld bc, $0101                                  ; $4D93: $01 $01 $01
    ld bc, $0101                                  ; $4D96: $01 $01 $01
    ld bc, $0A02                                  ; $4D99: $01 $02 $0A
    ld [bc], a                                    ; $4D9C: $02
    dec bc                                        ; $4D9D: $0B
    ld [bc], a                                    ; $4D9E: $02
    dec bc                                        ; $4D9F: $0B
    ld bc, $0101                                  ; $4DA0: $01 $01 $01
    ld bc, $0101                                  ; $4DA3: $01 $01 $01
    ld bc, $0101                                  ; $4DA6: $01 $01 $01
    ld bc, $2B05                                  ; $4DA9: $01 $05 $2B
    ld bc, $0101                                  ; $4DAC: $01 $01 $01
    ld bc, $0201                                  ; $4DAF: $01 $01 $02
    ld bc, $0102                                  ; $4DB2: $01 $02 $01
    ld [bc], a                                    ; $4DB5: $02
    ld bc, $0101                                  ; $4DB6: $01 $01 $01
    ld bc, $0101                                  ; $4DB9: $01 $01 $01
    ld bc, $0101                                  ; $4DBC: $01 $01 $01
    ld bc, $0101                                  ; $4DBF: $01 $01 $01
    ld bc, $0101                                  ; $4DC2: $01 $01 $01
    ld bc, $0101                                  ; $4DC5: $01 $01 $01
    ld bc, $0401                                  ; $4DC8: $01 $01 $04
    ld bc, $0101                                  ; $4DCB: $01 $01 $01
    ld bc, $0101                                  ; $4DCE: $01 $01 $01
    ld bc, $0101                                  ; $4DD1: $01 $01 $01
    ld bc, $0101                                  ; $4DD4: $01 $01 $01
    ld [bc], a                                    ; $4DD7: $02
    ld bc, $0101                                  ; $4DD8: $01 $01 $01
    ld bc, $0101                                  ; $4DDB: $01 $01 $01
    inc b                                         ; $4DDE: $04
    ld bc, HeaderLogo                             ; $4DDF: $01 $04 $01
    inc b                                         ; $4DE2: $04
    ld bc, HeaderLogo                             ; $4DE3: $01 $04 $01
    ld bc, $0101                                  ; $4DE6: $01 $01 $01
    ld bc, $0101                                  ; $4DE9: $01 $01 $01
    ld [bc], a                                    ; $4DEC: $02
    ld a, [bc]                                    ; $4DED: $0A
    ld bc, $0101                                  ; $4DEE: $01 $01 $01
    ld bc, $0101                                  ; $4DF1: $01 $01 $01
    ld bc, $0101                                  ; $4DF4: $01 $01 $01
    ld bc, $0101                                  ; $4DF7: $01 $01 $01
    ld bc, $0124                                  ; $4DFA: $01 $24 $01
    daa                                           ; $4DFD: $27
    ld bc, $0124                                  ; $4DFE: $01 $24 $01
    ld h, $01                                     ; $4E01: $26 $01
    ld h, $01                                     ; $4E03: $26 $01
    inc h                                         ; $4E05: $24
    ld bc, $0124                                  ; $4E06: $01 $24 $01
    inc h                                         ; $4E09: $24
    ld bc, $0125                                  ; $4E0A: $01 $25 $01
    inc h                                         ; $4E0D: $24
    ld bc, $0127                                  ; $4E0E: $01 $27 $01
    inc h                                         ; $4E11: $24
    ld bc, $0126                                  ; $4E12: $01 $26 $01
    inc h                                         ; $4E15: $24
    ld bc, $0124                                  ; $4E16: $01 $24 $01
    ld h, $01                                     ; $4E19: $26 $01
    inc h                                         ; $4E1B: $24
    ld bc, $0125                                  ; $4E1C: $01 $25 $01
    inc h                                         ; $4E1F: $24
    ld bc, $0324                                  ; $4E20: $01 $24 $03
    ld l, $03                                     ; $4E23: $2E $03
    ld l, $03                                     ; $4E25: $2E $03
    ld l, $03                                     ; $4E27: $2E $03
    ld l, $03                                     ; $4E29: $2E $03
    ld l, $03                                     ; $4E2B: $2E $03
    ld l, $03                                     ; $4E2D: $2E $03
    ld l, $03                                     ; $4E2F: $2E $03
    ld l, $03                                     ; $4E31: $2E $03
    ld l, $03                                     ; $4E33: $2E $03
    ld l, $03                                     ; $4E35: $2E $03
    ld l, $03                                     ; $4E37: $2E $03
    ld l, $03                                     ; $4E39: $2E $03
    ld l, $03                                     ; $4E3B: $2E $03
    ld l, $03                                     ; $4E3D: $2E $03
    ld l, $03                                     ; $4E3F: $2E $03
    ld l, $03                                     ; $4E41: $2E $03
    ld l, $03                                     ; $4E43: $2E $03
    ld l, $03                                     ; $4E45: $2E $03
    ld l, $03                                     ; $4E47: $2E $03
    ld l, $03                                     ; $4E49: $2E $03
    ld l, $03                                     ; $4E4B: $2E $03
    ld l, $03                                     ; $4E4D: $2E $03
    ld l, $03                                     ; $4E4F: $2E $03
    ld l, $03                                     ; $4E51: $2E $03
    ld l, $03                                     ; $4E53: $2E $03
    ld l, $03                                     ; $4E55: $2E $03
    ld l, $03                                     ; $4E57: $2E $03
    ld l, $03                                     ; $4E59: $2E $03
    ld l, $03                                     ; $4E5B: $2E $03
    ld l, $03                                     ; $4E5D: $2E $03
    ld l, $03                                     ; $4E5F: $2E $03
    ld l, $03                                     ; $4E61: $2E $03
    ld l, $03                                     ; $4E63: $2E $03
    ld l, $03                                     ; $4E65: $2E $03
    ld l, $03                                     ; $4E67: $2E $03
    ld l, $03                                     ; $4E69: $2E $03
    ld l, $03                                     ; $4E6B: $2E $03
    ld l, $03                                     ; $4E6D: $2E $03
    ld l, $03                                     ; $4E6F: $2E $03
    ld l, $03                                     ; $4E71: $2E $03
    ld l, $03                                     ; $4E73: $2E $03
    ld l, $03                                     ; $4E75: $2E $03
    ld l, $03                                     ; $4E77: $2E $03
    ld l, $03                                     ; $4E79: $2E $03
    ld l, $03                                     ; $4E7B: $2E $03
    ld l, $03                                     ; $4E7D: $2E $03
    ld l, $03                                     ; $4E7F: $2E $03
    ld l, $03                                     ; $4E81: $2E $03
    ld l, $03                                     ; $4E83: $2E $03
    ld l, $03                                     ; $4E85: $2E $03
    ld l, $03                                     ; $4E87: $2E $03
    ld l, $03                                     ; $4E89: $2E $03
    ld l, $03                                     ; $4E8B: $2E $03
    ld l, $03                                     ; $4E8D: $2E $03
    ld l, $03                                     ; $4E8F: $2E $03
    ld l, $03                                     ; $4E91: $2E $03
    ld l, $03                                     ; $4E93: $2E $03
    ld l, $03                                     ; $4E95: $2E $03
    ld l, $03                                     ; $4E97: $2E $03
    ld l, $03                                     ; $4E99: $2E $03
    ld l, $03                                     ; $4E9B: $2E $03
    ld l, $03                                     ; $4E9D: $2E $03
    ld l, $03                                     ; $4E9F: $2E $03
    ld l, $03                                     ; $4EA1: $2E $03
    ld l, $03                                     ; $4EA3: $2E $03
    ld l, $03                                     ; $4EA5: $2E $03
    ld l, $03                                     ; $4EA7: $2E $03
    ld l, $03                                     ; $4EA9: $2E $03
    ld l, $03                                     ; $4EAB: $2E $03
    ld l, $03                                     ; $4EAD: $2E $03
    ld l, $03                                     ; $4EAF: $2E $03
    ld l, $03                                     ; $4EB1: $2E $03
    ld l, $03                                     ; $4EB3: $2E $03
    ld l, $03                                     ; $4EB5: $2E $03
    ld l, $03                                     ; $4EB7: $2E $03
    ld l, $03                                     ; $4EB9: $2E $03
    ld l, $03                                     ; $4EBB: $2E $03
    ld l, $03                                     ; $4EBD: $2E $03
    ld l, $03                                     ; $4EBF: $2E $03
    ld l, $01                                     ; $4EC1: $2E $01
    jr nz, jr_035_4EC6                            ; $4EC3: $20 $01

    ld [hl+], a                                   ; $4EC5: $22

jr_035_4EC6:
    ld bc, $0121                                  ; $4EC6: $01 $21 $01
    inc hl                                        ; $4EC9: $23
    ld bc, $0121                                  ; $4ECA: $01 $21 $01
    ld [hl+], a                                   ; $4ECD: $22
    ld bc, $0122                                  ; $4ECE: $01 $22 $01
    ld [hl+], a                                   ; $4ED1: $22
    ld bc, $0122                                  ; $4ED2: $01 $22 $01
    inc hl                                        ; $4ED5: $23
    ld bc, $0120                                  ; $4ED6: $01 $20 $01
    ld [hl+], a                                   ; $4ED9: $22
    ld bc, $0122                                  ; $4EDA: $01 $22 $01
    jr nz, @+$03                                  ; $4EDD: $20 $01

    ld hl, $2201                                  ; $4EDF: $21 $01 $22
    ld bc, $0122                                  ; $4EE2: $01 $22 $01
    ld [hl+], a                                   ; $4EE5: $22
    ld bc, $0120                                  ; $4EE6: $01 $20 $01
    jr nz, @+$03                                  ; $4EE9: $20 $01

    ld bc, $0101                                  ; $4EEB: $01 $01 $01
    ld bc, $0101                                  ; $4EEE: $01 $01 $01
    ld bc, $0101                                  ; $4EF1: $01 $01 $01
    ld bc, $0101                                  ; $4EF4: $01 $01 $01
    ld bc, $0101                                  ; $4EF7: $01 $01 $01
    ld bc, $0101                                  ; $4EFA: $01 $01 $01
    ld bc, HeaderLogo                             ; $4EFD: $01 $04 $01
    ld bc, $0101                                  ; $4F00: $01 $01 $01
    ld bc, $0101                                  ; $4F03: $01 $01 $01
    ld bc, $0101                                  ; $4F06: $01 $01 $01
    ld bc, $0101                                  ; $4F09: $01 $01 $01
    ld bc, $0109                                  ; $4F0C: $01 $09 $01
    ld bc, $0101                                  ; $4F0F: $01 $01 $01
    ld bc, $0101                                  ; $4F12: $01 $01 $01
    ld bc, HeaderLogo                             ; $4F15: $01 $04 $01
    ld [bc], a                                    ; $4F18: $02
    ld a, [bc]                                    ; $4F19: $0A
    ld bc, $0101                                  ; $4F1A: $01 $01 $01
    ld bc, $0101                                  ; $4F1D: $01 $01 $01
    ld bc, $0109                                  ; $4F20: $01 $09 $01
    ld bc, $0101                                  ; $4F23: $01 $01 $01
    ld bc, $0101                                  ; $4F26: $01 $01 $01
    ld bc, $0101                                  ; $4F29: $01 $01 $01
    ld bc, $0101                                  ; $4F2C: $01 $01 $01
    ld bc, $0101                                  ; $4F2F: $01 $01 $01
    inc b                                         ; $4F32: $04
    ld bc, $0101                                  ; $4F33: $01 $01 $01
    ld bc, $0101                                  ; $4F36: $01 $01 $01
    ld bc, $0101                                  ; $4F39: $01 $01 $01
    ld bc, $0101                                  ; $4F3C: $01 $01 $01
    ld [bc], a                                    ; $4F3F: $02
    ld bc, $0401                                  ; $4F40: $01 $01 $04
    ld bc, $0101                                  ; $4F43: $01 $01 $01
    ld bc, $0101                                  ; $4F46: $01 $01 $01
    ld bc, $0101                                  ; $4F49: $01 $01 $01
    ld bc, $0101                                  ; $4F4C: $01 $01 $01
    ld bc, HeaderLogo                             ; $4F4F: $01 $04 $01
    ld bc, $0101                                  ; $4F52: $01 $01 $01
    add hl, bc                                    ; $4F55: $09
    ld bc, $0101                                  ; $4F56: $01 $01 $01
    ld bc, $0101                                  ; $4F59: $01 $01 $01
    ld bc, $0101                                  ; $4F5C: $01 $01 $01
    ld bc, $0101                                  ; $4F5F: $01 $01 $01
    ld bc, $0101                                  ; $4F62: $01 $01 $01
    ld bc, $0101                                  ; $4F65: $01 $01 $01
    inc b                                         ; $4F68: $04
    ld bc, $0101                                  ; $4F69: $01 $01 $01
    ld bc, $0101                                  ; $4F6C: $01 $01 $01
    ld bc, $0101                                  ; $4F6F: $01 $01 $01
    ld bc, $0101                                  ; $4F72: $01 $01 $01
    ld bc, $0101                                  ; $4F75: $01 $01 $01
    inc b                                         ; $4F78: $04
    ld bc, $0101                                  ; $4F79: $01 $01 $01
    inc b                                         ; $4F7C: $04
    ld bc, $0101                                  ; $4F7D: $01 $01 $01
    ld bc, $0101                                  ; $4F80: $01 $01 $01
    ld bc, $0101                                  ; $4F83: $01 $01 $01
    ld bc, $0101                                  ; $4F86: $01 $01 $01
    ld bc, $0101                                  ; $4F89: $01 $01 $01
    inc b                                         ; $4F8C: $04
    ld bc, $0101                                  ; $4F8D: $01 $01 $01
    inc b                                         ; $4F90: $04
    ld bc, $0401                                  ; $4F91: $01 $01 $04
    ld bc, $0101                                  ; $4F94: $01 $01 $01
    ld bc, $0101                                  ; $4F97: $01 $01 $01
    ld bc, $0101                                  ; $4F9A: $01 $01 $01
    add hl, bc                                    ; $4F9D: $09
    ld bc, $0101                                  ; $4F9E: $01 $01 $01
    ld bc, $0101                                  ; $4FA1: $01 $01 $01
    ld bc, $0401                                  ; $4FA4: $01 $01 $04
    ld bc, $0101                                  ; $4FA7: $01 $01 $01
    inc b                                         ; $4FAA: $04
    ld bc, $0101                                  ; $4FAB: $01 $01 $01
    ld bc, $0101                                  ; $4FAE: $01 $01 $01
    ld bc, $0101                                  ; $4FB1: $01 $01 $01
    ld bc, $0101                                  ; $4FB4: $01 $01 $01
    ld bc, $0101                                  ; $4FB7: $01 $01 $01
    ld bc, $0101                                  ; $4FBA: $01 $01 $01
    ld bc, $0101                                  ; $4FBD: $01 $01 $01
    ld bc, $0101                                  ; $4FC0: $01 $01 $01
    ld bc, $0101                                  ; $4FC3: $01 $01 $01
    ld bc, $0401                                  ; $4FC6: $01 $01 $04
    ld bc, $0101                                  ; $4FC9: $01 $01 $01
    ld bc, $0102                                  ; $4FCC: $01 $02 $01
    ld bc, $0101                                  ; $4FCF: $01 $01 $01
    ld bc, $0101                                  ; $4FD2: $01 $01 $01
    ld bc, $0901                                  ; $4FD5: $01 $01 $09
    ld bc, $0101                                  ; $4FD8: $01 $01 $01
    ld bc, $0101                                  ; $4FDB: $01 $01 $01
    ld bc, $0101                                  ; $4FDE: $01 $01 $01
    ld bc, $0101                                  ; $4FE1: $01 $01 $01
    ld bc, $0101                                  ; $4FE4: $01 $01 $01
    ld bc, $0A02                                  ; $4FE7: $01 $02 $0A
    ld bc, $0101                                  ; $4FEA: $01 $01 $01
    ld bc, $0201                                  ; $4FED: $01 $01 $02
    ld bc, $0401                                  ; $4FF0: $01 $01 $04
    ld bc, $0101                                  ; $4FF3: $01 $01 $01
    ld bc, $0101                                  ; $4FF6: $01 $01 $01
    ld bc, $0101                                  ; $4FF9: $01 $01 $01
    ld bc, $0101                                  ; $4FFC: $01 $01 $01
    ld bc, $0101                                  ; $4FFF: $01 $01 $01
    ld bc, $0401                                  ; $5002: $01 $01 $04
    ld bc, $0101                                  ; $5005: $01 $01 $01
    ld bc, $0101                                  ; $5008: $01 $01 $01
    ld bc, $0A02                                  ; $500B: $01 $02 $0A
    ld [bc], a                                    ; $500E: $02
    dec bc                                        ; $500F: $0B
    ld [bc], a                                    ; $5010: $02
    dec c                                         ; $5011: $0D
    ld [bc], a                                    ; $5012: $02
    dec bc                                        ; $5013: $0B
    ld [bc], a                                    ; $5014: $02
    ld a, [bc]                                    ; $5015: $0A
    ld bc, $0101                                  ; $5016: $01 $01 $01
    ld bc, $0101                                  ; $5019: $01 $01 $01
    ld bc, $0101                                  ; $501C: $01 $01 $01
    ld bc, $0301                                  ; $501F: $01 $01 $03
    ld bc, $0101                                  ; $5022: $01 $01 $01
    ld bc, $0101                                  ; $5025: $01 $01 $01
    ld bc, $0101                                  ; $5028: $01 $01 $01
    ld bc, $0101                                  ; $502B: $01 $01 $01
    ld bc, $0101                                  ; $502E: $01 $01 $01
    ld bc, $0B02                                  ; $5031: $01 $02 $0B
    ld [bc], a                                    ; $5034: $02
    inc c                                         ; $5035: $0C
    ld [bc], a                                    ; $5036: $02
    dec c                                         ; $5037: $0D
    ld [bc], a                                    ; $5038: $02
    dec c                                         ; $5039: $0D
    ld [bc], a                                    ; $503A: $02
    inc c                                         ; $503B: $0C
    ld [bc], a                                    ; $503C: $02
    dec bc                                        ; $503D: $0B
    ld bc, $0102                                  ; $503E: $01 $02 $01
    ld bc, $0101                                  ; $5041: $01 $01 $01
    ld bc, $0101                                  ; $5044: $01 $01 $01
    ld bc, $0101                                  ; $5047: $01 $01 $01
    ld bc, $0101                                  ; $504A: $01 $01 $01
    ld bc, $0301                                  ; $504D: $01 $01 $03
    dec b                                         ; $5050: $05
    dec hl                                        ; $5051: $2B
    ld bc, $0101                                  ; $5052: $01 $01 $01
    ld bc, $0A02                                  ; $5055: $01 $02 $0A
    ld [bc], a                                    ; $5058: $02
    dec bc                                        ; $5059: $0B
    ld [bc], a                                    ; $505A: $02
    dec c                                         ; $505B: $0D
    ld [bc], a                                    ; $505C: $02
    dec c                                         ; $505D: $0D
    ld [bc], a                                    ; $505E: $02
    dec c                                         ; $505F: $0D
    ld [bc], a                                    ; $5060: $02
    dec c                                         ; $5061: $0D
    ld [bc], a                                    ; $5062: $02
    inc c                                         ; $5063: $0C
    ld [bc], a                                    ; $5064: $02
    dec bc                                        ; $5065: $0B
    ld bc, $0201                                  ; $5066: $01 $01 $02
    ld a, [bc]                                    ; $5069: $0A
    ld bc, $0102                                  ; $506A: $01 $02 $01
    inc bc                                        ; $506D: $03
    ld bc, $0103                                  ; $506E: $01 $03 $01
    inc bc                                        ; $5071: $03
    ld bc, $0103                                  ; $5072: $01 $03 $01
    ld c, $01                                     ; $5075: $0E $01
    ld a, [de]                                    ; $5077: $1A
    ld bc, $0119                                  ; $5078: $01 $19 $01
    ld bc, $0B02                                  ; $507B: $01 $02 $0B
    ld [bc], a                                    ; $507E: $02
    dec bc                                        ; $507F: $0B
    ld [bc], a                                    ; $5080: $02
    dec c                                         ; $5081: $0D
    ld [bc], a                                    ; $5082: $02
    dec c                                         ; $5083: $0D
    ld [bc], a                                    ; $5084: $02
    dec c                                         ; $5085: $0D
    ld [bc], a                                    ; $5086: $02
    dec c                                         ; $5087: $0D
    ld [bc], a                                    ; $5088: $02
    inc c                                         ; $5089: $0C
    ld [bc], a                                    ; $508A: $02
    dec bc                                        ; $508B: $0B
    ld [bc], a                                    ; $508C: $02
    ld a, [bc]                                    ; $508D: $0A
    inc b                                         ; $508E: $04
    ld bc, $0201                                  ; $508F: $01 $01 $02
    ld bc, $0103                                  ; $5092: $01 $03 $01
    ld [bc], a                                    ; $5095: $02
    ld bc, $0101                                  ; $5096: $01 $01 $01
    inc bc                                        ; $5099: $03
    ld bc, $0103                                  ; $509A: $01 $03 $01
    dec e                                         ; $509D: $1D
    ld bc, $012F                                  ; $509E: $01 $2F $01
    cpl                                           ; $50A1: $2F
    ld bc, $0201                                  ; $50A2: $01 $01 $02
    ld a, [bc]                                    ; $50A5: $0A
    ld [bc], a                                    ; $50A6: $02
    dec c                                         ; $50A7: $0D
    ld [bc], a                                    ; $50A8: $02
    dec c                                         ; $50A9: $0D
    ld [bc], a                                    ; $50AA: $02
    dec c                                         ; $50AB: $0D
    ld [bc], a                                    ; $50AC: $02
    dec c                                         ; $50AD: $0D
    ld [bc], a                                    ; $50AE: $02
    inc c                                         ; $50AF: $0C
    ld [bc], a                                    ; $50B0: $02
    ld a, [bc]                                    ; $50B1: $0A
    ld [bc], a                                    ; $50B2: $02
    ld a, [bc]                                    ; $50B3: $0A
    ld bc, $0402                                  ; $50B4: $01 $02 $04
    ld bc, $0201                                  ; $50B7: $01 $01 $02
    ld bc, $0101                                  ; $50BA: $01 $01 $01
    ld [bc], a                                    ; $50BD: $02
    ld bc, $0102                                  ; $50BE: $01 $02 $01
    ld [bc], a                                    ; $50C1: $02
    ld bc, $0101                                  ; $50C2: $01 $01 $01
    inc e                                         ; $50C5: $1C
    ld bc, $012F                                  ; $50C6: $01 $2F $01
    cpl                                           ; $50C9: $2F
    ld bc, $0101                                  ; $50CA: $01 $01 $01
    ld bc, $0B02                                  ; $50CD: $01 $02 $0B
    ld [bc], a                                    ; $50D0: $02
    ld a, [bc]                                    ; $50D1: $0A
    ld [bc], a                                    ; $50D2: $02
    dec c                                         ; $50D3: $0D
    ld [bc], a                                    ; $50D4: $02
    dec c                                         ; $50D5: $0D
    ld [bc], a                                    ; $50D6: $02
    inc c                                         ; $50D7: $0C
    ld bc, $0101                                  ; $50D8: $01 $01 $01
    ld bc, $0101                                  ; $50DB: $01 $01 $01
    ld bc, $0401                                  ; $50DE: $01 $01 $04
    ld bc, $0101                                  ; $50E1: $01 $01 $01
    ld bc, $0101                                  ; $50E4: $01 $01 $01
    ld [bc], a                                    ; $50E7: $02
    ld bc, $0102                                  ; $50E8: $01 $02 $01
    ld [bc], a                                    ; $50EB: $02
    ld bc, $011D                                  ; $50EC: $01 $1D $01
    cpl                                           ; $50EF: $2F
    ld bc, $012F                                  ; $50F0: $01 $2F $01
    ld bc, $0101                                  ; $50F3: $01 $01 $01
    ld bc, $0201                                  ; $50F6: $01 $01 $02
    dec bc                                        ; $50F9: $0B
    ld [bc], a                                    ; $50FA: $02
    dec bc                                        ; $50FB: $0B
    ld [bc], a                                    ; $50FC: $02
    inc c                                         ; $50FD: $0C
    ld [bc], a                                    ; $50FE: $02
    ld a, [bc]                                    ; $50FF: $0A
    ld bc, $0101                                  ; $5100: $01 $01 $01
    ld [bc], a                                    ; $5103: $02
    ld bc, $0101                                  ; $5104: $01 $01 $01
    ld bc, $0901                                  ; $5107: $01 $01 $09
    ld bc, $0102                                  ; $510A: $01 $02 $01
    ld bc, $0101                                  ; $510D: $01 $01 $01
    ld bc, $0101                                  ; $5110: $01 $01 $01
    ld bc, $1401                                  ; $5113: $01 $01 $14
    ld bc, $0111                                  ; $5116: $01 $11 $01
    ld [de], a                                    ; $5119: $12
    ld bc, $0101                                  ; $511A: $01 $01 $01
    ld [bc], a                                    ; $511D: $02
    ld bc, $0101                                  ; $511E: $01 $01 $01
    ld bc, $0101                                  ; $5121: $01 $01 $01
    ld bc, $0101                                  ; $5124: $01 $01 $01
    ld bc, HeaderLogo                             ; $5127: $01 $04 $01
    ld bc, $0101                                  ; $512A: $01 $01 $01
    ld bc, $0101                                  ; $512D: $01 $01 $01
    ld bc, $0101                                  ; $5130: $01 $01 $01
    ld bc, $0901                                  ; $5133: $01 $01 $09
    ld bc, $0102                                  ; $5136: $01 $02 $01
    ld bc, $0101                                  ; $5139: $01 $01 $01
    ld bc, $0102                                  ; $513C: $01 $02 $01
    ld bc, $0101                                  ; $513F: $01 $01 $01
    ld bc, $0101                                  ; $5142: $01 $01 $01
    ld bc, $0101                                  ; $5145: $01 $01 $01
    ld bc, $0102                                  ; $5148: $01 $02 $01
    ld bc, $0101                                  ; $514B: $01 $01 $01
    ld bc, $0101                                  ; $514E: $01 $01 $01
    ld bc, $0101                                  ; $5151: $01 $01 $01
    ld bc, $0109                                  ; $5154: $01 $09 $01
    ld [bc], a                                    ; $5157: $02
    ld bc, $0101                                  ; $5158: $01 $01 $01
    ld bc, $0101                                  ; $515B: $01 $01 $01
    ld bc, $0101                                  ; $515E: $01 $01 $01
    ld bc, $0101                                  ; $5161: $01 $01 $01
    ld bc, $0102                                  ; $5164: $01 $02 $01
    ld [bc], a                                    ; $5167: $02
    ld bc, $0101                                  ; $5168: $01 $01 $01
    dec de                                        ; $516B: $1B
    ld bc, $011A                                  ; $516C: $01 $1A $01
    rrca                                          ; $516F: $0F
    ld bc, $0109                                  ; $5170: $01 $09 $01
    ld [bc], a                                    ; $5173: $02
    ld bc, $0102                                  ; $5174: $01 $02 $01
    ld bc, $0101                                  ; $5177: $01 $01 $01
    ld bc, $0102                                  ; $517A: $01 $02 $01
    ld [bc], a                                    ; $517D: $02
    ld bc, $0101                                  ; $517E: $01 $01 $01
    ld [bc], a                                    ; $5181: $02
    ld bc, $0101                                  ; $5182: $01 $01 $01
    ld bc, $0101                                  ; $5185: $01 $01 $01
    ld bc, $0102                                  ; $5188: $01 $02 $01
    ld [bc], a                                    ; $518B: $02
    ld bc, $0102                                  ; $518C: $01 $02 $01
    ld bc, $0101                                  ; $518F: $01 $01 $01
    ld bc, $012F                                  ; $5192: $01 $2F $01
    cpl                                           ; $5195: $2F
    ld bc, $021E                                  ; $5196: $01 $1E $02
    ld a, [bc]                                    ; $5199: $0A
    ld bc, $0101                                  ; $519A: $01 $01 $01
    ld bc, $0101                                  ; $519D: $01 $01 $01
    ld bc, $0101                                  ; $51A0: $01 $01 $01
    ld bc, $0201                                  ; $51A3: $01 $01 $02
    ld bc, $0102                                  ; $51A6: $01 $02 $01
    ld bc, $0101                                  ; $51A9: $01 $01 $01
    ld bc, $0109                                  ; $51AC: $01 $09 $01
    ld [bc], a                                    ; $51AF: $02
    ld bc, $0101                                  ; $51B0: $01 $01 $01
    ld [bc], a                                    ; $51B3: $02
    ld bc, $0102                                  ; $51B4: $01 $02 $01
    ld bc, $0101                                  ; $51B7: $01 $01 $01
    ld bc, $012F                                  ; $51BA: $01 $2F $01
    cpl                                           ; $51BD: $2F
    ld bc, $011F                                  ; $51BE: $01 $1F $01
    ld bc, $0201                                  ; $51C1: $01 $01 $02
    inc b                                         ; $51C4: $04
    ld bc, $0101                                  ; $51C5: $01 $01 $01
    ld bc, $0102                                  ; $51C8: $01 $02 $01
    ld bc, $0201                                  ; $51CB: $01 $01 $02
    ld bc, $0102                                  ; $51CE: $01 $02 $01
    ld bc, $0101                                  ; $51D1: $01 $01 $01
    ld bc, $0102                                  ; $51D4: $01 $02 $01
    ld bc, $0101                                  ; $51D7: $01 $01 $01
    ld bc, $0102                                  ; $51DA: $01 $02 $01
    ld bc, $0101                                  ; $51DD: $01 $01 $01
    ld bc, $0101                                  ; $51E0: $01 $01 $01
    cpl                                           ; $51E3: $2F
    ld bc, $012F                                  ; $51E4: $01 $2F $01
    ld e, $01                                     ; $51E7: $1E $01
    ld bc, $0101                                  ; $51E9: $01 $01 $01
    ld bc, $0101                                  ; $51EC: $01 $01 $01
    ld bc, HeaderLogo                             ; $51EF: $01 $04 $01
    ld bc, $0101                                  ; $51F2: $01 $01 $01
    ld bc, $0101                                  ; $51F5: $01 $01 $01
    inc b                                         ; $51F8: $04
    ld bc, $0101                                  ; $51F9: $01 $01 $01
    ld bc, $0101                                  ; $51FC: $01 $01 $01
    ld [bc], a                                    ; $51FF: $02
    ld bc, $0102                                  ; $5200: $01 $02 $01
    ld bc, $0101                                  ; $5203: $01 $01 $01
    ld bc, $0101                                  ; $5206: $01 $01 $01
    ld bc, $2F01                                  ; $5209: $01 $01 $2F
    ld bc, $012F                                  ; $520C: $01 $2F $01
    rra                                           ; $520F: $1F
    ld bc, $0102                                  ; $5210: $01 $02 $01
    ld [bc], a                                    ; $5213: $02
    ld bc, $0102                                  ; $5214: $01 $02 $01
    ld bc, $0901                                  ; $5217: $01 $01 $09
    ld bc, $0101                                  ; $521A: $01 $01 $01
    ld [bc], a                                    ; $521D: $02
    ld bc, $0101                                  ; $521E: $01 $01 $01
    ld bc, HeaderLogo                             ; $5221: $01 $04 $01
    ld bc, $0101                                  ; $5224: $01 $01 $01
    ld bc, $0201                                  ; $5227: $01 $01 $02
    ld bc, $0101                                  ; $522A: $01 $01 $01
    ld bc, $0101                                  ; $522D: $01 $01 $01
    ld bc, $0101                                  ; $5230: $01 $01 $01
    inc de                                        ; $5233: $13
    ld bc, $0113                                  ; $5234: $01 $13 $01
    dec d                                         ; $5237: $15
    ld bc, $0101                                  ; $5238: $01 $01 $01
    ld bc, $0101                                  ; $523B: $01 $01 $01
    inc b                                         ; $523E: $04
    ld bc, $0101                                  ; $523F: $01 $01 $01
    ld bc, $0101                                  ; $5242: $01 $01 $01
    ld [bc], a                                    ; $5245: $02
    ld bc, $0401                                  ; $5246: $01 $01 $04
    ld bc, $0101                                  ; $5249: $01 $01 $01
    ld [bc], a                                    ; $524C: $02
    ld a, [bc]                                    ; $524D: $0A
    ld bc, $0101                                  ; $524E: $01 $01 $01
    ld bc, $0101                                  ; $5251: $01 $01 $01
    ld bc, $0102                                  ; $5254: $01 $02 $01
    ld [bc], a                                    ; $5257: $02
    ld bc, $0101                                  ; $5258: $01 $01 $01
    ld bc, $0101                                  ; $525B: $01 $01 $01
    ld bc, $0101                                  ; $525E: $01 $01 $01
    ld [bc], a                                    ; $5261: $02
    ld bc, $0101                                  ; $5262: $01 $01 $01
    ld bc, $0101                                  ; $5265: $01 $01 $01
    ld bc, $0101                                  ; $5268: $01 $01 $01
    ld bc, $0201                                  ; $526B: $01 $01 $02
    ld bc, $0401                                  ; $526E: $01 $01 $04
    ld bc, $0101                                  ; $5271: $01 $01 $01
    ld bc, $0101                                  ; $5274: $01 $01 $01
    ld bc, $0101                                  ; $5277: $01 $01 $01
    ld bc, $0102                                  ; $527A: $01 $02 $01
    ld [bc], a                                    ; $527D: $02
    ld bc, $0102                                  ; $527E: $01 $02 $01
    ld bc, $2B05                                  ; $5281: $01 $05 $2B
    ld bc, $0101                                  ; $5284: $01 $01 $01
    dec b                                         ; $5287: $05
    ld bc, $0101                                  ; $5288: $01 $01 $01
    ld bc, $0101                                  ; $528B: $01 $01 $01
    ld bc, $0101                                  ; $528E: $01 $01 $01
    ld bc, $0901                                  ; $5291: $01 $01 $09
    ld bc, $0101                                  ; $5294: $01 $01 $01
    ld bc, $0101                                  ; $5297: $01 $01 $01
    ld bc, $0402                                  ; $529A: $01 $02 $04
    ld bc, $0201                                  ; $529D: $01 $01 $02
    ld bc, $0102                                  ; $52A0: $01 $02 $01
    inc bc                                        ; $52A3: $03
    ld bc, $0103                                  ; $52A4: $01 $03 $01
    ld [bc], a                                    ; $52A7: $02
    ld bc, $0101                                  ; $52A8: $01 $01 $01
    ld bc, $0201                                  ; $52AB: $01 $01 $02
    ld bc, $0101                                  ; $52AE: $01 $01 $01
    ld bc, $0101                                  ; $52B1: $01 $01 $01
    ld bc, $0101                                  ; $52B4: $01 $01 $01
    ld bc, HeaderLogo                             ; $52B7: $01 $04 $01
    ld bc, $0105                                  ; $52BA: $01 $05 $01
    dec b                                         ; $52BD: $05
    inc b                                         ; $52BE: $04
    ld bc, $0201                                  ; $52BF: $01 $01 $02
    ld bc, $0402                                  ; $52C2: $01 $02 $04
    ld [bc], a                                    ; $52C5: $02
    ld bc, $0102                                  ; $52C6: $01 $02 $01
    ld bc, $0301                                  ; $52C9: $01 $01 $03
    ld bc, $0102                                  ; $52CC: $01 $02 $01
    ld [bc], a                                    ; $52CF: $02
    ld bc, $0101                                  ; $52D0: $01 $01 $01
    ld [bc], a                                    ; $52D3: $02
    ld bc, $0101                                  ; $52D4: $01 $01 $01
    ld b, $01                                     ; $52D7: $06 $01
    ld bc, $0101                                  ; $52D9: $01 $01 $01
    ld bc, $0103                                  ; $52DC: $01 $03 $01
    dec b                                         ; $52DF: $05
    ld bc, $0105                                  ; $52E0: $01 $05 $01
    ld bc, $0601                                  ; $52E3: $01 $01 $06
    inc b                                         ; $52E6: $04
    ld bc, $0201                                  ; $52E7: $01 $01 $02
    ld bc, $0102                                  ; $52EA: $01 $02 $01
    ld [bc], a                                    ; $52ED: $02
    ld bc, $0102                                  ; $52EE: $01 $02 $01
    inc bc                                        ; $52F1: $03
    ld bc, $0103                                  ; $52F2: $01 $03 $01
    inc bc                                        ; $52F5: $03
    ld bc, $0102                                  ; $52F6: $01 $02 $01
    ld bc, $0101                                  ; $52F9: $01 $01 $01
    ld bc, $0401                                  ; $52FC: $01 $01 $04
    ld bc, HeaderLogo                             ; $52FF: $01 $04 $01
    ld bc, $0105                                  ; $5302: $01 $05 $01
    ld bc, $0501                                  ; $5305: $01 $01 $05
    ld bc, $0102                                  ; $5308: $01 $02 $01
    ld bc, $0201                                  ; $530B: $01 $01 $02
    inc b                                         ; $530E: $04
    ld bc, $0304                                  ; $530F: $01 $04 $03
    ld bc, $0102                                  ; $5312: $01 $02 $01
    ld b, $01                                     ; $5315: $06 $01
    inc bc                                        ; $5317: $03
    ld bc, $0403                                  ; $5318: $01 $03 $04
    ld bc, $0101                                  ; $531B: $01 $01 $01
    ld [bc], a                                    ; $531E: $02
    ld a, [bc]                                    ; $531F: $0A
    ld bc, $0101                                  ; $5320: $01 $01 $01
    ld bc, $0101                                  ; $5323: $01 $01 $01
    ld bc, $0102                                  ; $5326: $01 $02 $01
    ld [bc], a                                    ; $5329: $02
    ld bc, $0105                                  ; $532A: $01 $05 $01
    dec b                                         ; $532D: $05
    ld bc, $0109                                  ; $532E: $01 $09 $01
    ld [bc], a                                    ; $5331: $02
    ld bc, $0102                                  ; $5332: $01 $02 $01
    ld [bc], a                                    ; $5335: $02
    ld bc, $0103                                  ; $5336: $01 $03 $01
    inc bc                                        ; $5339: $03
    ld bc, $0102                                  ; $533A: $01 $02 $01
    ld [bc], a                                    ; $533D: $02
    inc b                                         ; $533E: $04
    inc bc                                        ; $533F: $03
    ld bc, $0103                                  ; $5340: $01 $03 $01
    inc bc                                        ; $5343: $03
    ld bc, $0101                                  ; $5344: $01 $01 $01
    ld [bc], a                                    ; $5347: $02
    ld bc, $0101                                  ; $5348: $01 $01 $01
    ld bc, $0101                                  ; $534B: $01 $01 $01
    inc b                                         ; $534E: $04
    ld bc, $0501                                  ; $534F: $01 $01 $05
    ld bc, $0101                                  ; $5352: $01 $01 $01
    ld [bc], a                                    ; $5355: $02
    ld bc, $0102                                  ; $5356: $01 $02 $01
    ld [bc], a                                    ; $5359: $02
    ld [bc], a                                    ; $535A: $02
    ld a, [bc]                                    ; $535B: $0A
    ld bc, $0103                                  ; $535C: $01 $03 $01
    inc bc                                        ; $535F: $03
    ld bc, $0103                                  ; $5360: $01 $03 $01
    ld [bc], a                                    ; $5363: $02
    ld bc, $0102                                  ; $5364: $01 $02 $01
    ld [bc], a                                    ; $5367: $02
    ld bc, $0103                                  ; $5368: $01 $03 $01
    ld bc, $0201                                  ; $536B: $01 $01 $02
    ld bc, $0102                                  ; $536E: $01 $02 $01
    ld bc, $0101                                  ; $5371: $01 $01 $01
    ld bc, $0101                                  ; $5374: $01 $01 $01
    ld [bc], a                                    ; $5377: $02
    ld bc, $0105                                  ; $5378: $01 $05 $01
    inc bc                                        ; $537B: $03
    inc b                                         ; $537C: $04
    ld bc, $0201                                  ; $537D: $01 $01 $02
    ld bc, $0102                                  ; $5380: $01 $02 $01
    inc bc                                        ; $5383: $03
    ld bc, $0103                                  ; $5384: $01 $03 $01
    inc bc                                        ; $5387: $03
    ld bc, $0102                                  ; $5388: $01 $02 $01
    add hl, bc                                    ; $538B: $09
    ld bc, $0102                                  ; $538C: $01 $02 $01
    ld [bc], a                                    ; $538F: $02
    ld bc, $0401                                  ; $5390: $01 $01 $04
    ld bc, $0201                                  ; $5393: $01 $01 $02
    inc b                                         ; $5396: $04
    ld [bc], a                                    ; $5397: $02
    ld bc, $0101                                  ; $5398: $01 $01 $01
    ld bc, $0201                                  ; $539B: $01 $01 $02
    ld bc, $0102                                  ; $539E: $01 $02 $01
    inc bc                                        ; $53A1: $03
    ld bc, $0101                                  ; $53A2: $01 $01 $01
    ld [bc], a                                    ; $53A5: $02
    ld bc, $0102                                  ; $53A6: $01 $02 $01
    inc bc                                        ; $53A9: $03
    ld bc, $0103                                  ; $53AA: $01 $03 $01
    inc bc                                        ; $53AD: $03
    ld bc, $0102                                  ; $53AE: $01 $02 $01
    ld [bc], a                                    ; $53B1: $02
    ld [bc], a                                    ; $53B2: $02
    ld a, [bc]                                    ; $53B3: $0A
    ld bc, $0105                                  ; $53B4: $01 $05 $01
    inc bc                                        ; $53B7: $03
    ld bc, $0102                                  ; $53B8: $01 $02 $01
    ld [bc], a                                    ; $53BB: $02
    ld bc, $0102                                  ; $53BC: $01 $02 $01
    ld bc, $0101                                  ; $53BF: $01 $01 $01
    ld bc, $0101                                  ; $53C2: $01 $01 $01
    ld [bc], a                                    ; $53C5: $02
    ld bc, $0102                                  ; $53C6: $01 $02 $01
    ld bc, HeaderLogo                             ; $53C9: $01 $04 $01
    ld bc, $0102                                  ; $53CC: $01 $02 $01
    ld [bc], a                                    ; $53CF: $02
    ld bc, $0103                                  ; $53D0: $01 $03 $01
    ld [bc], a                                    ; $53D3: $02
    ld bc, $0103                                  ; $53D4: $01 $03 $01
    ld [bc], a                                    ; $53D7: $02
    ld bc, $0102                                  ; $53D8: $01 $02 $01
    ld bc, $0301                                  ; $53DB: $01 $01 $03
    ld bc, $0101                                  ; $53DE: $01 $01 $01
    ld bc, $0101                                  ; $53E1: $01 $01 $01
    ld bc, $0101                                  ; $53E4: $01 $01 $01
    ld bc, $0101                                  ; $53E7: $01 $01 $01
    ld bc, $0201                                  ; $53EA: $01 $01 $02
    ld a, [bc]                                    ; $53ED: $0A
    ld bc, $0102                                  ; $53EE: $01 $02 $01
    ld [bc], a                                    ; $53F1: $02
    ld bc, $0102                                  ; $53F2: $01 $02 $01
    ld [bc], a                                    ; $53F5: $02
    inc b                                         ; $53F6: $04
    ld bc, $0201                                  ; $53F7: $01 $01 $02
    inc b                                         ; $53FA: $04
    inc bc                                        ; $53FB: $03
    ld bc, $0106                                  ; $53FC: $01 $06 $01
    ld [bc], a                                    ; $53FF: $02
    ld bc, $0103                                  ; $5400: $01 $03 $01
    dec b                                         ; $5403: $05
    ld bc, $0105                                  ; $5404: $01 $05 $01
    ld bc, $0601                                  ; $5407: $01 $01 $06
    ld bc, $0101                                  ; $540A: $01 $01 $01
    ld bc, $0101                                  ; $540D: $01 $01 $01
    ld bc, $0101                                  ; $5410: $01 $01 $01
    ld bc, $0201                                  ; $5413: $01 $01 $02
    ld bc, $0102                                  ; $5416: $01 $02 $01
    ld [bc], a                                    ; $5419: $02
    ld bc, $0102                                  ; $541A: $01 $02 $01
    ld [bc], a                                    ; $541D: $02
    ld bc, $0103                                  ; $541E: $01 $03 $01
    inc bc                                        ; $5421: $03
    ld bc, $0103                                  ; $5422: $01 $03 $01
    ld [bc], a                                    ; $5425: $02
    ld bc, $0105                                  ; $5426: $01 $05 $01
    ld bc, $0501                                  ; $5429: $01 $01 $05
    ld bc, $0105                                  ; $542C: $01 $05 $01
    ld [bc], a                                    ; $542F: $02
    ld bc, $0102                                  ; $5430: $01 $02 $01
    ld bc, $0101                                  ; $5433: $01 $01 $01
    ld bc, $0109                                  ; $5436: $01 $09 $01
    ld bc, $0101                                  ; $5439: $01 $01 $01
    ld bc, $0102                                  ; $543C: $01 $02 $01
    ld [bc], a                                    ; $543F: $02
    ld bc, $0102                                  ; $5440: $01 $02 $01
    ld [bc], a                                    ; $5443: $02
    ld bc, $0102                                  ; $5444: $01 $02 $01
    ld [bc], a                                    ; $5447: $02
    ld bc, $0101                                  ; $5448: $01 $01 $01
    ld bc, $0501                                  ; $544B: $01 $01 $05
    ld bc, $0103                                  ; $544E: $01 $03 $01
    dec b                                         ; $5451: $05
    ld bc, $0101                                  ; $5452: $01 $01 $01
    ld [bc], a                                    ; $5455: $02
    ld bc, $0102                                  ; $5456: $01 $02 $01
    ld [bc], a                                    ; $5459: $02
    ld bc, $0101                                  ; $545A: $01 $01 $01
    ld bc, $0101                                  ; $545D: $01 $01 $01
    ld bc, $0101                                  ; $5460: $01 $01 $01
    ld bc, $0201                                  ; $5463: $01 $01 $02
    ld bc, $0202                                  ; $5466: $01 $02 $02
    ld a, [bc]                                    ; $5469: $0A
    ld bc, $0102                                  ; $546A: $01 $02 $01
    ld bc, $0101                                  ; $546D: $01 $01 $01
    ld bc, $0102                                  ; $5470: $01 $02 $01
    dec b                                         ; $5473: $05
    ld bc, $0105                                  ; $5474: $01 $05 $01
    ld bc, $0101                                  ; $5477: $01 $01 $01
    ld bc, $0102                                  ; $547A: $01 $02 $01
    ld bc, $0101                                  ; $547D: $01 $01 $01
    ld bc, $0101                                  ; $5480: $01 $01 $01
    ld bc, $0201                                  ; $5483: $01 $01 $02
    ld bc, $0101                                  ; $5486: $01 $01 $01
    ld bc, $0101                                  ; $5489: $01 $01 $01
    ld bc, $0102                                  ; $548C: $01 $02 $01
    ld [bc], a                                    ; $548F: $02
    ld bc, $0102                                  ; $5490: $01 $02 $01
    ld bc, $0201                                  ; $5493: $01 $01 $02
    inc b                                         ; $5496: $04
    ld bc, $0201                                  ; $5497: $01 $01 $02
    ld bc, $0105                                  ; $549A: $01 $05 $01
    ld bc, $0101                                  ; $549D: $01 $01 $01
    ld bc, $0101                                  ; $54A0: $01 $01 $01
    ld bc, $0101                                  ; $54A3: $01 $01 $01
    ld bc, $0101                                  ; $54A6: $01 $01 $01
    dec b                                         ; $54A9: $05
    ld bc, $0102                                  ; $54AA: $01 $02 $01
    ld bc, $0201                                  ; $54AD: $01 $01 $02
    ld bc, $0101                                  ; $54B0: $01 $01 $01
    ld bc, $0A02                                  ; $54B3: $01 $02 $0A
    ld bc, $0102                                  ; $54B6: $01 $02 $01
    ld bc, $0101                                  ; $54B9: $01 $01 $01
    ld bc, $0106                                  ; $54BC: $01 $06 $01
    ld [bc], a                                    ; $54BF: $02
    ld bc, $0101                                  ; $54C0: $01 $01 $01
    ld bc, $0201                                  ; $54C3: $01 $01 $02
    inc b                                         ; $54C6: $04
    ld bc, $0201                                  ; $54C7: $01 $01 $02
    ld bc, $0101                                  ; $54CA: $01 $01 $01
    ld bc, $0101                                  ; $54CD: $01 $01 $01
    ld bc, $0101                                  ; $54D0: $01 $01 $01
    ld bc, $0901                                  ; $54D3: $01 $01 $09
    ld bc, $0101                                  ; $54D6: $01 $01 $01
    ld bc, $0101                                  ; $54D9: $01 $01 $01
    ld bc, $0101                                  ; $54DC: $01 $01 $01
    ld bc, $0101                                  ; $54DF: $01 $01 $01
    ld bc, $0101                                  ; $54E2: $01 $01 $01
    ld bc, $0101                                  ; $54E5: $01 $01 $01
    ld bc, $0101                                  ; $54E8: $01 $01 $01
    ld bc, $0101                                  ; $54EB: $01 $01 $01
    ld bc, $0101                                  ; $54EE: $01 $01 $01
    ld bc, $0101                                  ; $54F1: $01 $01 $01
    ld bc, $0101                                  ; $54F4: $01 $01 $01
    ld bc, $0101                                  ; $54F7: $01 $01 $01
    ld bc, $0101                                  ; $54FA: $01 $01 $01
    ld bc, $0101                                  ; $54FD: $01 $01 $01
    ld bc, $0501                                  ; $5500: $01 $01 $05
    dec hl                                        ; $5503: $2B
    dec b                                         ; $5504: $05
    dec hl                                        ; $5505: $2B
    dec b                                         ; $5506: $05
    dec hl                                        ; $5507: $2B
    dec b                                         ; $5508: $05
    dec hl                                        ; $5509: $2B
    dec b                                         ; $550A: $05
    dec hl                                        ; $550B: $2B
    dec b                                         ; $550C: $05
    dec hl                                        ; $550D: $2B
    dec b                                         ; $550E: $05
    dec hl                                        ; $550F: $2B
    dec b                                         ; $5510: $05
    dec hl                                        ; $5511: $2B
    dec b                                         ; $5512: $05
    dec hl                                        ; $5513: $2B
    dec b                                         ; $5514: $05
    dec hl                                        ; $5515: $2B
    dec b                                         ; $5516: $05
    dec hl                                        ; $5517: $2B
    dec b                                         ; $5518: $05
    dec hl                                        ; $5519: $2B
    dec b                                         ; $551A: $05
    dec hl                                        ; $551B: $2B
    dec b                                         ; $551C: $05
    dec hl                                        ; $551D: $2B
    dec b                                         ; $551E: $05
    dec hl                                        ; $551F: $2B
    dec b                                         ; $5520: $05
    dec hl                                        ; $5521: $2B
    dec b                                         ; $5522: $05
    dec hl                                        ; $5523: $2B
    dec b                                         ; $5524: $05
    dec hl                                        ; $5525: $2B
    dec b                                         ; $5526: $05
    dec hl                                        ; $5527: $2B
    dec b                                         ; $5528: $05
    dec hl                                        ; $5529: $2B
    dec b                                         ; $552A: $05
    dec hl                                        ; $552B: $2B
    dec b                                         ; $552C: $05
    dec hl                                        ; $552D: $2B
    dec b                                         ; $552E: $05
    dec hl                                        ; $552F: $2B
    dec b                                         ; $5530: $05
    dec hl                                        ; $5531: $2B
    dec b                                         ; $5532: $05
    dec hl                                        ; $5533: $2B
    dec b                                         ; $5534: $05
    dec hl                                        ; $5535: $2B
    dec b                                         ; $5536: $05
    dec hl                                        ; $5537: $2B
    dec b                                         ; $5538: $05
    dec hl                                        ; $5539: $2B
    dec b                                         ; $553A: $05
    dec hl                                        ; $553B: $2B
    dec b                                         ; $553C: $05
    dec hl                                        ; $553D: $2B
    dec b                                         ; $553E: $05
    dec hl                                        ; $553F: $2B
    dec b                                         ; $5540: $05
    dec hl                                        ; $5541: $2B
    dec b                                         ; $5542: $05
    dec hl                                        ; $5543: $2B
    dec b                                         ; $5544: $05
    dec hl                                        ; $5545: $2B
    dec b                                         ; $5546: $05
    dec hl                                        ; $5547: $2B
    dec b                                         ; $5548: $05
    dec hl                                        ; $5549: $2B
    dec b                                         ; $554A: $05
    dec hl                                        ; $554B: $2B
    dec b                                         ; $554C: $05
    dec hl                                        ; $554D: $2B
    dec b                                         ; $554E: $05
    dec hl                                        ; $554F: $2B
    dec b                                         ; $5550: $05
    dec hl                                        ; $5551: $2B
    dec b                                         ; $5552: $05
    dec hl                                        ; $5553: $2B
    dec b                                         ; $5554: $05
    dec hl                                        ; $5555: $2B
    dec b                                         ; $5556: $05
    dec hl                                        ; $5557: $2B
    dec b                                         ; $5558: $05
    dec hl                                        ; $5559: $2B
    dec b                                         ; $555A: $05
    dec hl                                        ; $555B: $2B
    dec b                                         ; $555C: $05
    dec hl                                        ; $555D: $2B
    dec b                                         ; $555E: $05
    dec hl                                        ; $555F: $2B
    dec b                                         ; $5560: $05
    dec hl                                        ; $5561: $2B
    dec b                                         ; $5562: $05
    dec hl                                        ; $5563: $2B
    dec b                                         ; $5564: $05
    dec hl                                        ; $5565: $2B
    dec b                                         ; $5566: $05
    dec hl                                        ; $5567: $2B
    dec b                                         ; $5568: $05
    dec hl                                        ; $5569: $2B
    dec b                                         ; $556A: $05
    dec hl                                        ; $556B: $2B
    dec b                                         ; $556C: $05
    dec hl                                        ; $556D: $2B
    dec b                                         ; $556E: $05
    dec hl                                        ; $556F: $2B
    dec b                                         ; $5570: $05
    dec hl                                        ; $5571: $2B
    dec b                                         ; $5572: $05
    dec hl                                        ; $5573: $2B
    dec b                                         ; $5574: $05
    dec hl                                        ; $5575: $2B
    dec b                                         ; $5576: $05
    dec hl                                        ; $5577: $2B
    dec b                                         ; $5578: $05
    dec hl                                        ; $5579: $2B
    dec b                                         ; $557A: $05
    dec hl                                        ; $557B: $2B
    dec b                                         ; $557C: $05
    dec hl                                        ; $557D: $2B
    dec b                                         ; $557E: $05
    dec hl                                        ; $557F: $2B
    dec b                                         ; $5580: $05
    dec hl                                        ; $5581: $2B
    dec b                                         ; $5582: $05
    dec hl                                        ; $5583: $2B
    dec b                                         ; $5584: $05
    dec hl                                        ; $5585: $2B
    dec b                                         ; $5586: $05
    dec hl                                        ; $5587: $2B
    dec b                                         ; $5588: $05
    dec hl                                        ; $5589: $2B
    dec b                                         ; $558A: $05
    dec hl                                        ; $558B: $2B
    dec b                                         ; $558C: $05
    dec hl                                        ; $558D: $2B
    dec b                                         ; $558E: $05
    dec hl                                        ; $558F: $2B
    dec b                                         ; $5590: $05
    dec hl                                        ; $5591: $2B
    dec b                                         ; $5592: $05
    dec hl                                        ; $5593: $2B
    dec b                                         ; $5594: $05
    dec hl                                        ; $5595: $2B
    dec b                                         ; $5596: $05
    dec hl                                        ; $5597: $2B
    dec b                                         ; $5598: $05
    dec hl                                        ; $5599: $2B
    dec b                                         ; $559A: $05
    dec hl                                        ; $559B: $2B
    dec b                                         ; $559C: $05
    dec hl                                        ; $559D: $2B
    dec b                                         ; $559E: $05
    dec hl                                        ; $559F: $2B
    dec b                                         ; $55A0: $05
    dec hl                                        ; $55A1: $2B
    dec b                                         ; $55A2: $05
    dec hl                                        ; $55A3: $2B
    dec b                                         ; $55A4: $05
    dec hl                                        ; $55A5: $2B
    dec b                                         ; $55A6: $05
    dec hl                                        ; $55A7: $2B
    dec b                                         ; $55A8: $05
    dec hl                                        ; $55A9: $2B
    dec b                                         ; $55AA: $05
    dec hl                                        ; $55AB: $2B
    dec b                                         ; $55AC: $05
    dec hl                                        ; $55AD: $2B
    dec b                                         ; $55AE: $05
    dec hl                                        ; $55AF: $2B
    dec b                                         ; $55B0: $05
    dec hl                                        ; $55B1: $2B
    dec b                                         ; $55B2: $05
    dec hl                                        ; $55B3: $2B
    dec b                                         ; $55B4: $05
    dec hl                                        ; $55B5: $2B
    dec b                                         ; $55B6: $05
    dec hl                                        ; $55B7: $2B
    dec b                                         ; $55B8: $05
    dec hl                                        ; $55B9: $2B
    dec b                                         ; $55BA: $05
    dec hl                                        ; $55BB: $2B
    dec b                                         ; $55BC: $05
    dec hl                                        ; $55BD: $2B
    dec b                                         ; $55BE: $05
    dec hl                                        ; $55BF: $2B
    dec b                                         ; $55C0: $05
    dec hl                                        ; $55C1: $2B
    dec b                                         ; $55C2: $05
    dec hl                                        ; $55C3: $2B
    dec b                                         ; $55C4: $05
    dec hl                                        ; $55C5: $2B
    dec b                                         ; $55C6: $05
    dec hl                                        ; $55C7: $2B
    dec b                                         ; $55C8: $05
    dec hl                                        ; $55C9: $2B
    dec b                                         ; $55CA: $05
    dec hl                                        ; $55CB: $2B
    dec b                                         ; $55CC: $05
    dec hl                                        ; $55CD: $2B
    dec b                                         ; $55CE: $05
    dec hl                                        ; $55CF: $2B
    dec b                                         ; $55D0: $05
    dec hl                                        ; $55D1: $2B
    dec b                                         ; $55D2: $05
    dec hl                                        ; $55D3: $2B
    dec b                                         ; $55D4: $05
    dec hl                                        ; $55D5: $2B
    dec b                                         ; $55D6: $05
    dec hl                                        ; $55D7: $2B
    dec b                                         ; $55D8: $05
    dec hl                                        ; $55D9: $2B
    dec b                                         ; $55DA: $05
    dec hl                                        ; $55DB: $2B
    dec b                                         ; $55DC: $05
    dec hl                                        ; $55DD: $2B
    dec b                                         ; $55DE: $05
    dec hl                                        ; $55DF: $2B
    dec b                                         ; $55E0: $05
    dec hl                                        ; $55E1: $2B
    dec b                                         ; $55E2: $05
    dec hl                                        ; $55E3: $2B
    dec b                                         ; $55E4: $05
    dec hl                                        ; $55E5: $2B
    dec b                                         ; $55E6: $05
    dec hl                                        ; $55E7: $2B
    dec b                                         ; $55E8: $05
    dec hl                                        ; $55E9: $2B
    dec b                                         ; $55EA: $05
    dec hl                                        ; $55EB: $2B
    dec b                                         ; $55EC: $05
    dec hl                                        ; $55ED: $2B
    dec b                                         ; $55EE: $05
    dec hl                                        ; $55EF: $2B
    dec b                                         ; $55F0: $05
    dec hl                                        ; $55F1: $2B
    dec b                                         ; $55F2: $05
    dec hl                                        ; $55F3: $2B
    dec b                                         ; $55F4: $05
    dec hl                                        ; $55F5: $2B
    dec b                                         ; $55F6: $05
    dec hl                                        ; $55F7: $2B
    dec b                                         ; $55F8: $05
    dec hl                                        ; $55F9: $2B
    dec b                                         ; $55FA: $05
    dec hl                                        ; $55FB: $2B
    dec b                                         ; $55FC: $05
    dec hl                                        ; $55FD: $2B
    dec b                                         ; $55FE: $05
    dec hl                                        ; $55FF: $2B
    dec b                                         ; $5600: $05
    dec hl                                        ; $5601: $2B
    dec b                                         ; $5602: $05
    dec hl                                        ; $5603: $2B
    dec b                                         ; $5604: $05
    dec hl                                        ; $5605: $2B
    dec b                                         ; $5606: $05
    dec hl                                        ; $5607: $2B
    dec b                                         ; $5608: $05
    dec hl                                        ; $5609: $2B
    dec b                                         ; $560A: $05
    dec hl                                        ; $560B: $2B
    dec b                                         ; $560C: $05
    dec hl                                        ; $560D: $2B
    dec b                                         ; $560E: $05
    dec hl                                        ; $560F: $2B
    dec b                                         ; $5610: $05
    dec hl                                        ; $5611: $2B
    dec b                                         ; $5612: $05
    dec hl                                        ; $5613: $2B
    dec b                                         ; $5614: $05
    dec hl                                        ; $5615: $2B
    dec b                                         ; $5616: $05
    dec hl                                        ; $5617: $2B
    dec b                                         ; $5618: $05
    dec hl                                        ; $5619: $2B
    dec b                                         ; $561A: $05
    dec hl                                        ; $561B: $2B
    dec b                                         ; $561C: $05
    dec hl                                        ; $561D: $2B
    dec b                                         ; $561E: $05
    dec hl                                        ; $561F: $2B
    dec b                                         ; $5620: $05
    dec hl                                        ; $5621: $2B
    dec b                                         ; $5622: $05
    dec hl                                        ; $5623: $2B
    dec b                                         ; $5624: $05
    dec hl                                        ; $5625: $2B
    dec b                                         ; $5626: $05
    dec hl                                        ; $5627: $2B
    dec b                                         ; $5628: $05
    dec hl                                        ; $5629: $2B
    dec b                                         ; $562A: $05
    dec hl                                        ; $562B: $2B
    dec b                                         ; $562C: $05
    dec hl                                        ; $562D: $2B
    dec b                                         ; $562E: $05
    dec hl                                        ; $562F: $2B
    dec b                                         ; $5630: $05
    dec hl                                        ; $5631: $2B
    dec b                                         ; $5632: $05
    dec hl                                        ; $5633: $2B
    dec b                                         ; $5634: $05
    dec hl                                        ; $5635: $2B
    dec b                                         ; $5636: $05
    dec hl                                        ; $5637: $2B
    dec b                                         ; $5638: $05
    dec hl                                        ; $5639: $2B
    dec b                                         ; $563A: $05
    dec hl                                        ; $563B: $2B
    dec b                                         ; $563C: $05
    dec hl                                        ; $563D: $2B
    dec b                                         ; $563E: $05
    dec hl                                        ; $563F: $2B
    dec b                                         ; $5640: $05
    dec hl                                        ; $5641: $2B
    dec b                                         ; $5642: $05
    dec hl                                        ; $5643: $2B
    dec b                                         ; $5644: $05
    dec hl                                        ; $5645: $2B
    dec b                                         ; $5646: $05
    dec hl                                        ; $5647: $2B
    dec b                                         ; $5648: $05
    dec hl                                        ; $5649: $2B
    dec b                                         ; $564A: $05
    dec hl                                        ; $564B: $2B
    dec b                                         ; $564C: $05
    dec hl                                        ; $564D: $2B
    dec b                                         ; $564E: $05
    dec hl                                        ; $564F: $2B
    dec b                                         ; $5650: $05
    dec hl                                        ; $5651: $2B
    dec b                                         ; $5652: $05
    dec hl                                        ; $5653: $2B
    dec b                                         ; $5654: $05
    dec hl                                        ; $5655: $2B
    dec b                                         ; $5656: $05
    dec hl                                        ; $5657: $2B
    dec b                                         ; $5658: $05
    dec hl                                        ; $5659: $2B
    dec b                                         ; $565A: $05
    dec hl                                        ; $565B: $2B
    dec b                                         ; $565C: $05
    dec hl                                        ; $565D: $2B
    dec b                                         ; $565E: $05
    dec hl                                        ; $565F: $2B
    dec b                                         ; $5660: $05
    dec hl                                        ; $5661: $2B
    dec b                                         ; $5662: $05
    dec hl                                        ; $5663: $2B
    dec b                                         ; $5664: $05
    dec hl                                        ; $5665: $2B
    dec b                                         ; $5666: $05
    dec hl                                        ; $5667: $2B
    dec b                                         ; $5668: $05
    dec hl                                        ; $5669: $2B
    dec b                                         ; $566A: $05
    dec hl                                        ; $566B: $2B
    dec b                                         ; $566C: $05
    dec hl                                        ; $566D: $2B
    dec b                                         ; $566E: $05
    dec hl                                        ; $566F: $2B
    dec b                                         ; $5670: $05
    dec hl                                        ; $5671: $2B
    dec b                                         ; $5672: $05
    dec hl                                        ; $5673: $2B
    dec b                                         ; $5674: $05
    dec hl                                        ; $5675: $2B
    dec b                                         ; $5676: $05
    dec hl                                        ; $5677: $2B
    dec b                                         ; $5678: $05
    dec hl                                        ; $5679: $2B
    dec b                                         ; $567A: $05
    dec hl                                        ; $567B: $2B
    dec b                                         ; $567C: $05
    dec hl                                        ; $567D: $2B
    dec b                                         ; $567E: $05
    dec hl                                        ; $567F: $2B
    dec b                                         ; $5680: $05
    dec hl                                        ; $5681: $2B
    dec b                                         ; $5682: $05
    dec hl                                        ; $5683: $2B
    dec b                                         ; $5684: $05
    dec hl                                        ; $5685: $2B
    dec b                                         ; $5686: $05
    dec hl                                        ; $5687: $2B
    dec b                                         ; $5688: $05
    dec hl                                        ; $5689: $2B
    dec b                                         ; $568A: $05
    dec hl                                        ; $568B: $2B
    dec b                                         ; $568C: $05
    dec hl                                        ; $568D: $2B
    dec b                                         ; $568E: $05
    dec hl                                        ; $568F: $2B
    dec b                                         ; $5690: $05
    dec hl                                        ; $5691: $2B
    dec b                                         ; $5692: $05
    dec hl                                        ; $5693: $2B
    dec b                                         ; $5694: $05
    dec hl                                        ; $5695: $2B
    dec b                                         ; $5696: $05
    dec hl                                        ; $5697: $2B
    dec b                                         ; $5698: $05
    dec hl                                        ; $5699: $2B
    dec b                                         ; $569A: $05
    dec hl                                        ; $569B: $2B
    dec b                                         ; $569C: $05
    dec hl                                        ; $569D: $2B
    dec b                                         ; $569E: $05
    dec hl                                        ; $569F: $2B
    dec b                                         ; $56A0: $05
    dec hl                                        ; $56A1: $2B
    dec b                                         ; $56A2: $05
    dec hl                                        ; $56A3: $2B
    dec b                                         ; $56A4: $05
    dec hl                                        ; $56A5: $2B
    dec b                                         ; $56A6: $05
    dec hl                                        ; $56A7: $2B
    dec b                                         ; $56A8: $05
    dec hl                                        ; $56A9: $2B
    dec b                                         ; $56AA: $05
    dec hl                                        ; $56AB: $2B
    dec b                                         ; $56AC: $05
    dec hl                                        ; $56AD: $2B
    dec b                                         ; $56AE: $05
    dec hl                                        ; $56AF: $2B
    dec b                                         ; $56B0: $05
    dec hl                                        ; $56B1: $2B
    dec b                                         ; $56B2: $05
    dec hl                                        ; $56B3: $2B
    dec b                                         ; $56B4: $05
    dec hl                                        ; $56B5: $2B
    dec b                                         ; $56B6: $05
    dec hl                                        ; $56B7: $2B
    dec b                                         ; $56B8: $05
    dec hl                                        ; $56B9: $2B
    dec b                                         ; $56BA: $05
    dec hl                                        ; $56BB: $2B
    dec b                                         ; $56BC: $05
    dec hl                                        ; $56BD: $2B
    dec b                                         ; $56BE: $05
    dec hl                                        ; $56BF: $2B
    dec b                                         ; $56C0: $05
    dec hl                                        ; $56C1: $2B
    dec b                                         ; $56C2: $05
    dec hl                                        ; $56C3: $2B
    dec b                                         ; $56C4: $05
    dec hl                                        ; $56C5: $2B
    dec b                                         ; $56C6: $05
    dec hl                                        ; $56C7: $2B
    dec b                                         ; $56C8: $05
    dec hl                                        ; $56C9: $2B
    dec b                                         ; $56CA: $05
    dec hl                                        ; $56CB: $2B
    dec b                                         ; $56CC: $05
    dec hl                                        ; $56CD: $2B
    dec b                                         ; $56CE: $05
    dec hl                                        ; $56CF: $2B
    dec b                                         ; $56D0: $05
    dec hl                                        ; $56D1: $2B
    dec b                                         ; $56D2: $05
    dec hl                                        ; $56D3: $2B
    dec b                                         ; $56D4: $05
    dec hl                                        ; $56D5: $2B
    dec b                                         ; $56D6: $05
    dec hl                                        ; $56D7: $2B
    dec b                                         ; $56D8: $05
    dec hl                                        ; $56D9: $2B
    dec b                                         ; $56DA: $05
    dec hl                                        ; $56DB: $2B
    dec b                                         ; $56DC: $05
    dec hl                                        ; $56DD: $2B
    dec b                                         ; $56DE: $05
    dec hl                                        ; $56DF: $2B
    dec b                                         ; $56E0: $05
    dec hl                                        ; $56E1: $2B
    dec b                                         ; $56E2: $05
    dec hl                                        ; $56E3: $2B
    dec b                                         ; $56E4: $05
    dec hl                                        ; $56E5: $2B
    dec b                                         ; $56E6: $05
    dec hl                                        ; $56E7: $2B
    dec b                                         ; $56E8: $05
    dec hl                                        ; $56E9: $2B
    dec b                                         ; $56EA: $05
    dec hl                                        ; $56EB: $2B
    dec b                                         ; $56EC: $05
    dec hl                                        ; $56ED: $2B
    dec b                                         ; $56EE: $05
    dec hl                                        ; $56EF: $2B
    dec b                                         ; $56F0: $05
    dec hl                                        ; $56F1: $2B
    dec b                                         ; $56F2: $05
    dec hl                                        ; $56F3: $2B
    dec b                                         ; $56F4: $05
    dec hl                                        ; $56F5: $2B
    dec b                                         ; $56F6: $05
    dec hl                                        ; $56F7: $2B
    dec b                                         ; $56F8: $05
    dec hl                                        ; $56F9: $2B
    dec b                                         ; $56FA: $05
    dec hl                                        ; $56FB: $2B
    dec b                                         ; $56FC: $05
    dec hl                                        ; $56FD: $2B
    dec b                                         ; $56FE: $05
    dec hl                                        ; $56FF: $2B
    dec b                                         ; $5700: $05
    dec hl                                        ; $5701: $2B
    dec b                                         ; $5702: $05
    dec hl                                        ; $5703: $2B
    dec b                                         ; $5704: $05
    dec hl                                        ; $5705: $2B
    dec b                                         ; $5706: $05
    dec hl                                        ; $5707: $2B
    dec b                                         ; $5708: $05
    dec hl                                        ; $5709: $2B
    dec b                                         ; $570A: $05
    dec hl                                        ; $570B: $2B
    dec b                                         ; $570C: $05
    dec hl                                        ; $570D: $2B
    dec b                                         ; $570E: $05
    dec hl                                        ; $570F: $2B
    dec b                                         ; $5710: $05
    dec hl                                        ; $5711: $2B
    dec b                                         ; $5712: $05
    dec hl                                        ; $5713: $2B
    dec b                                         ; $5714: $05
    dec hl                                        ; $5715: $2B
    dec b                                         ; $5716: $05
    dec hl                                        ; $5717: $2B
    dec b                                         ; $5718: $05
    dec hl                                        ; $5719: $2B
    dec b                                         ; $571A: $05
    dec hl                                        ; $571B: $2B
    dec b                                         ; $571C: $05
    dec hl                                        ; $571D: $2B
    dec b                                         ; $571E: $05
    dec hl                                        ; $571F: $2B
    dec b                                         ; $5720: $05
    dec hl                                        ; $5721: $2B
    dec b                                         ; $5722: $05
    dec hl                                        ; $5723: $2B
    dec b                                         ; $5724: $05
    dec hl                                        ; $5725: $2B
    dec b                                         ; $5726: $05
    dec hl                                        ; $5727: $2B
    dec b                                         ; $5728: $05
    dec hl                                        ; $5729: $2B
    dec b                                         ; $572A: $05
    dec hl                                        ; $572B: $2B
    dec b                                         ; $572C: $05
    dec hl                                        ; $572D: $2B
    dec b                                         ; $572E: $05
    dec hl                                        ; $572F: $2B
    dec b                                         ; $5730: $05
    dec hl                                        ; $5731: $2B
    dec b                                         ; $5732: $05
    dec hl                                        ; $5733: $2B
    dec b                                         ; $5734: $05
    dec hl                                        ; $5735: $2B
    dec b                                         ; $5736: $05
    dec hl                                        ; $5737: $2B
    dec b                                         ; $5738: $05
    dec hl                                        ; $5739: $2B
    dec b                                         ; $573A: $05
    dec hl                                        ; $573B: $2B
    dec b                                         ; $573C: $05
    dec hl                                        ; $573D: $2B
    dec b                                         ; $573E: $05
    dec hl                                        ; $573F: $2B
    dec b                                         ; $5740: $05
    dec hl                                        ; $5741: $2B
    dec b                                         ; $5742: $05
    dec hl                                        ; $5743: $2B
    dec b                                         ; $5744: $05
    dec hl                                        ; $5745: $2B
    dec b                                         ; $5746: $05
    dec hl                                        ; $5747: $2B
    dec b                                         ; $5748: $05
    dec hl                                        ; $5749: $2B
    dec b                                         ; $574A: $05
    dec hl                                        ; $574B: $2B
    dec b                                         ; $574C: $05
    dec hl                                        ; $574D: $2B
    dec b                                         ; $574E: $05
    dec hl                                        ; $574F: $2B
    dec b                                         ; $5750: $05
    dec hl                                        ; $5751: $2B
    dec b                                         ; $5752: $05
    dec hl                                        ; $5753: $2B
    dec b                                         ; $5754: $05
    dec hl                                        ; $5755: $2B
    dec b                                         ; $5756: $05
    dec hl                                        ; $5757: $2B
    dec b                                         ; $5758: $05
    dec hl                                        ; $5759: $2B
    dec b                                         ; $575A: $05
    dec hl                                        ; $575B: $2B
    dec b                                         ; $575C: $05
    dec hl                                        ; $575D: $2B
    dec b                                         ; $575E: $05
    dec hl                                        ; $575F: $2B
    dec b                                         ; $5760: $05
    dec hl                                        ; $5761: $2B
    dec b                                         ; $5762: $05
    dec hl                                        ; $5763: $2B
    dec b                                         ; $5764: $05
    dec hl                                        ; $5765: $2B
    dec b                                         ; $5766: $05
    dec hl                                        ; $5767: $2B
    dec b                                         ; $5768: $05
    dec hl                                        ; $5769: $2B
    dec b                                         ; $576A: $05
    dec hl                                        ; $576B: $2B
    dec b                                         ; $576C: $05
    dec hl                                        ; $576D: $2B
    dec b                                         ; $576E: $05
    dec hl                                        ; $576F: $2B
    dec b                                         ; $5770: $05
    dec hl                                        ; $5771: $2B
    dec b                                         ; $5772: $05
    dec hl                                        ; $5773: $2B
    dec b                                         ; $5774: $05
    dec hl                                        ; $5775: $2B
    dec b                                         ; $5776: $05
    dec hl                                        ; $5777: $2B
    dec b                                         ; $5778: $05
    dec hl                                        ; $5779: $2B
    dec b                                         ; $577A: $05
    dec hl                                        ; $577B: $2B
    dec b                                         ; $577C: $05
    dec hl                                        ; $577D: $2B
    dec b                                         ; $577E: $05
    dec hl                                        ; $577F: $2B
    dec b                                         ; $5780: $05
    dec hl                                        ; $5781: $2B
    ld bc, $0101                                  ; $5782: $01 $01 $01
    ld [bc], a                                    ; $5785: $02
    ld bc, $0101                                  ; $5786: $01 $01 $01
    ld bc, $0301                                  ; $5789: $01 $01 $03
    ld bc, $0101                                  ; $578C: $01 $01 $01
    ld bc, $0101                                  ; $578F: $01 $01 $01
    ld bc, $0102                                  ; $5792: $01 $02 $01
    ld bc, $0101                                  ; $5795: $01 $01 $01
    ld bc, $0102                                  ; $5798: $01 $02 $01
    inc bc                                        ; $579B: $03
    ld bc, $0102                                  ; $579C: $01 $02 $01
    inc bc                                        ; $579F: $03
    ld bc, $0101                                  ; $57A0: $01 $01 $01
    ld bc, $0B02                                  ; $57A3: $01 $02 $0B
    ld bc, $0101                                  ; $57A6: $01 $01 $01
    ld [bc], a                                    ; $57A9: $02
    ld bc, $0101                                  ; $57AA: $01 $01 $01
    ld bc, $0201                                  ; $57AD: $01 $01 $02
    ld bc, $0102                                  ; $57B0: $01 $02 $01
    ld bc, $0101                                  ; $57B3: $01 $01 $01
    ld bc, $0105                                  ; $57B6: $01 $05 $01
    ld bc, $0201                                  ; $57B9: $01 $01 $02
    ld bc, $0102                                  ; $57BC: $01 $02 $01
    ld bc, $0501                                  ; $57BF: $01 $01 $05
    ld bc, $0102                                  ; $57C2: $01 $02 $01
    ld bc, $0101                                  ; $57C5: $01 $01 $01
    ld bc, $0101                                  ; $57C8: $01 $01 $01
    inc bc                                        ; $57CB: $03
    ld bc, $0101                                  ; $57CC: $01 $01 $01
    inc bc                                        ; $57CF: $03
    ld bc, $0101                                  ; $57D0: $01 $01 $01
    ld a, [de]                                    ; $57D3: $1A
    ld bc, $010F                                  ; $57D4: $01 $0F $01
    ld bc, $0E01                                  ; $57D7: $01 $01 $0E
    ld bc, $011A                                  ; $57DA: $01 $1A $01
    add hl, de                                    ; $57DD: $19
    ld bc, $011A                                  ; $57DE: $01 $1A $01
    add hl, de                                    ; $57E1: $19
    ld bc, $011A                                  ; $57E2: $01 $1A $01
    ld a, [de]                                    ; $57E5: $1A
    ld bc, $011A                                  ; $57E6: $01 $1A $01
    add hl, de                                    ; $57E9: $19
    ld bc, $0119                                  ; $57EA: $01 $19 $01
    ld a, [de]                                    ; $57ED: $1A
    ld bc, $0119                                  ; $57EE: $01 $19 $01
    jr jr_035_57F4                                ; $57F1: $18 $01

    ld a, [de]                                    ; $57F3: $1A

jr_035_57F4:
    ld bc, $020F                                  ; $57F4: $01 $0F $02
    ld a, [bc]                                    ; $57F7: $0A
    ld bc, $010E                                  ; $57F8: $01 $0E $01
    cpl                                           ; $57FB: $2F
    ld bc, $011E                                  ; $57FC: $01 $1E $01
    ld bc, $1D01                                  ; $57FF: $01 $01 $1D
    ld bc, $012F                                  ; $5802: $01 $2F $01
    cpl                                           ; $5805: $2F
    ld bc, $012F                                  ; $5806: $01 $2F $01
    cpl                                           ; $5809: $2F
    ld bc, $012F                                  ; $580A: $01 $2F $01
    cpl                                           ; $580D: $2F
    ld bc, $012F                                  ; $580E: $01 $2F $01
    cpl                                           ; $5811: $2F
    ld bc, $012F                                  ; $5812: $01 $2F $01
    cpl                                           ; $5815: $2F
    ld bc, $012F                                  ; $5816: $01 $2F $01
    cpl                                           ; $5819: $2F
    ld bc, $012F                                  ; $581A: $01 $2F $01
    ld e, $02                                     ; $581D: $1E $02
    dec bc                                        ; $581F: $0B
    ld bc, $011D                                  ; $5820: $01 $1D $01
    cpl                                           ; $5823: $2F
    ld bc, $011E                                  ; $5824: $01 $1E $01
    ld bc, $1D01                                  ; $5827: $01 $01 $1D
    ld bc, $012F                                  ; $582A: $01 $2F $01
    cpl                                           ; $582D: $2F
    ld bc, $012F                                  ; $582E: $01 $2F $01
    cpl                                           ; $5831: $2F
    ld bc, $012F                                  ; $5832: $01 $2F $01
    cpl                                           ; $5835: $2F
    ld bc, $012F                                  ; $5836: $01 $2F $01
    cpl                                           ; $5839: $2F
    ld bc, $012F                                  ; $583A: $01 $2F $01
    cpl                                           ; $583D: $2F
    ld bc, $012F                                  ; $583E: $01 $2F $01
    ld d, $01                                     ; $5841: $16 $01
    inc de                                        ; $5843: $13
    ld bc, $0115                                  ; $5844: $01 $15 $01
    ld bc, $1D01                                  ; $5847: $01 $01 $1D
    ld bc, $0113                                  ; $584A: $01 $13 $01
    dec d                                         ; $584D: $15
    ld [bc], a                                    ; $584E: $02
    ld a, [bc]                                    ; $584F: $0A
    ld bc, $0114                                  ; $5850: $01 $14 $01
    ld de, $1001                                  ; $5853: $11 $01 $10
    ld bc, $0110                                  ; $5856: $01 $10 $01
    ld [de], a                                    ; $5859: $12
    ld bc, $0113                                  ; $585A: $01 $13 $01
    ld de, $1201                                  ; $585D: $11 $01 $12
    ld bc, $0110                                  ; $5860: $01 $10 $01
    ld de, $1301                                  ; $5863: $11 $01 $13
    ld bc, $0117                                  ; $5866: $01 $17 $01
    rra                                           ; $5869: $1F
    ld bc, $0201                                  ; $586A: $01 $01 $02
    ld a, [bc]                                    ; $586D: $0A
    ld bc, $0101                                  ; $586E: $01 $01 $01
    dec e                                         ; $5871: $1D
    ld bc, $0103                                  ; $5872: $01 $03 $01
    ld bc, $0101                                  ; $5875: $01 $01 $01
    ld bc, $0101                                  ; $5878: $01 $01 $01
    ld [bc], a                                    ; $587B: $02
    ld bc, $0101                                  ; $587C: $01 $01 $01
    ld bc, $0101                                  ; $587F: $01 $01 $01
    ld bc, $0101                                  ; $5882: $01 $01 $01
    ld bc, $0A02                                  ; $5885: $01 $02 $0A
    ld bc, $0101                                  ; $5888: $01 $01 $01
    ld bc, $0101                                  ; $588B: $01 $01 $01
    ld bc, $0114                                  ; $588E: $01 $14 $01
    dec d                                         ; $5891: $15
    ld [bc], a                                    ; $5892: $02
    dec bc                                        ; $5893: $0B
    ld bc, $010E                                  ; $5894: $01 $0E $01
    add hl, de                                    ; $5897: $19
    ld bc, $012C                                  ; $5898: $01 $2C $01
    ld a, [de]                                    ; $589B: $1A
    ld bc, $011A                                  ; $589C: $01 $1A $01
    add hl, de                                    ; $589F: $19
    ld bc, $011B                                  ; $58A0: $01 $1B $01
    dec de                                        ; $58A3: $1B
    ld bc, $020F                                  ; $58A4: $01 $0F $02
    ld a, [bc]                                    ; $58A7: $0A
    ld bc, $0101                                  ; $58A8: $01 $01 $01
    ld c, $01                                     ; $58AB: $0E $01
    dec de                                        ; $58AD: $1B
    ld bc, $011B                                  ; $58AE: $01 $1B $01
    dec de                                        ; $58B1: $1B
    ld bc, $011B                                  ; $58B2: $01 $1B $01
    rrca                                          ; $58B5: $0F
    ld bc, $0201                                  ; $58B6: $01 $01 $02
    dec bc                                        ; $58B9: $0B
    ld bc, $0101                                  ; $58BA: $01 $01 $01
    dec e                                         ; $58BD: $1D
    ld bc, $012F                                  ; $58BE: $01 $2F $01
    cpl                                           ; $58C1: $2F
    ld bc, $012F                                  ; $58C2: $01 $2F $01
    cpl                                           ; $58C5: $2F
    ld bc, $012F                                  ; $58C6: $01 $2F $01
    cpl                                           ; $58C9: $2F
    ld bc, $012F                                  ; $58CA: $01 $2F $01
    ld e, $01                                     ; $58CD: $1E $01
    ld bc, $0201                                  ; $58CF: $01 $01 $02
    ld bc, $011D                                  ; $58D2: $01 $1D $01
    cpl                                           ; $58D5: $2F
    ld bc, $012F                                  ; $58D6: $01 $2F $01
    cpl                                           ; $58D9: $2F
    ld bc, $012F                                  ; $58DA: $01 $2F $01
    ld e, $01                                     ; $58DD: $1E $01
    ld bc, $0101                                  ; $58DF: $01 $01 $01
    ld bc, $010E                                  ; $58E2: $01 $0E $01
    inc l                                         ; $58E5: $2C
    ld bc, $012F                                  ; $58E6: $01 $2F $01
    cpl                                           ; $58E9: $2F
    ld bc, $0112                                  ; $58EA: $01 $12 $01
    ld de, $1201                                  ; $58ED: $11 $01 $12
    ld bc, $0113                                  ; $58F0: $01 $13 $01
    ld de, $1501                                  ; $58F3: $11 $01 $15
    ld bc, $0101                                  ; $58F6: $01 $01 $01
    ld bc, $1D01                                  ; $58F9: $01 $01 $1D
    ld bc, $012F                                  ; $58FC: $01 $2F $01
    cpl                                           ; $58FF: $2F
    ld bc, $012F                                  ; $5900: $01 $2F $01
    cpl                                           ; $5903: $2F
    ld bc, $011F                                  ; $5904: $01 $1F $01
    ld bc, $0101                                  ; $5907: $01 $01 $01
    ld bc, $0114                                  ; $590A: $01 $14 $01
    inc de                                        ; $590D: $13
    ld bc, $0117                                  ; $590E: $01 $17 $01
    cpl                                           ; $5911: $2F
    ld bc, $0101                                  ; $5912: $01 $01 $01
    ld bc, $0101                                  ; $5915: $01 $01 $01
    ld bc, $0101                                  ; $5918: $01 $01 $01
    ld [bc], a                                    ; $591B: $02
    ld [bc], a                                    ; $591C: $02
    ld a, [bc]                                    ; $591D: $0A
    ld bc, $010E                                  ; $591E: $01 $0E $01
    dec de                                        ; $5921: $1B
    ld bc, $012C                                  ; $5922: $01 $2C $01
    cpl                                           ; $5925: $2F
    ld bc, $012F                                  ; $5926: $01 $2F $01
    cpl                                           ; $5929: $2F
    ld bc, $012F                                  ; $592A: $01 $2F $01
    dec l                                         ; $592D: $2D
    ld bc, $0119                                  ; $592E: $01 $19 $01
    rrca                                          ; $5931: $0F
    ld bc, $0201                                  ; $5932: $01 $01 $02
    dec bc                                        ; $5935: $0B
    ld bc, $011D                                  ; $5936: $01 $1D $01
    cpl                                           ; $5939: $2F
    ld bc, $0201                                  ; $593A: $01 $01 $02
    ld a, [bc]                                    ; $593D: $0A
    ld bc, $010E                                  ; $593E: $01 $0E $01
    ld a, [de]                                    ; $5941: $1A
    ld bc, $0119                                  ; $5942: $01 $19 $01
    dec de                                        ; $5945: $1B
    ld bc, $012C                                  ; $5946: $01 $2C $01
    cpl                                           ; $5949: $2F
    ld bc, $012F                                  ; $594A: $01 $2F $01
    cpl                                           ; $594D: $2F
    ld bc, $012F                                  ; $594E: $01 $2F $01
    cpl                                           ; $5951: $2F
    ld bc, $012F                                  ; $5952: $01 $2F $01
    cpl                                           ; $5955: $2F
    ld bc, $012F                                  ; $5956: $01 $2F $01
    ld e, $01                                     ; $5959: $1E $01
    ld bc, $0101                                  ; $595B: $01 $01 $01
    ld bc, $0114                                  ; $595E: $01 $14 $01
    inc de                                        ; $5961: $13
    ld bc, $0101                                  ; $5962: $01 $01 $01
    ld bc, $1D01                                  ; $5965: $01 $01 $1D
    ld bc, $012F                                  ; $5968: $01 $2F $01
    cpl                                           ; $596B: $2F
    ld bc, $012F                                  ; $596C: $01 $2F $01
    cpl                                           ; $596F: $2F
    ld bc, $0116                                  ; $5970: $01 $16 $01
    inc de                                        ; $5973: $13
    ld bc, $0110                                  ; $5974: $01 $10 $01
    rla                                           ; $5977: $17
    ld bc, $012F                                  ; $5978: $01 $2F $01
    cpl                                           ; $597B: $2F
    ld bc, $012F                                  ; $597C: $01 $2F $01
    cpl                                           ; $597F: $2F
    ld bc, $011F                                  ; $5980: $01 $1F $01
    ld bc, $0101                                  ; $5983: $01 $01 $01
    ld bc, $0101                                  ; $5986: $01 $01 $01
    ld bc, $0101                                  ; $5989: $01 $01 $01
    ld bc, $0101                                  ; $598C: $01 $01 $01
    inc e                                         ; $598F: $1C
    ld bc, $012F                                  ; $5990: $01 $2F $01
    cpl                                           ; $5993: $2F
    ld bc, $012F                                  ; $5994: $01 $2F $01
    cpl                                           ; $5997: $2F
    ld bc, $011E                                  ; $5998: $01 $1E $01
    ld bc, $0101                                  ; $599B: $01 $01 $01
    ld bc, $011C                                  ; $599E: $01 $1C $01
    cpl                                           ; $59A1: $2F
    ld bc, $012F                                  ; $59A2: $01 $2F $01
    cpl                                           ; $59A5: $2F
    ld bc, $012F                                  ; $59A6: $01 $2F $01
    dec l                                         ; $59A9: $2D
    ld bc, $011B                                  ; $59AA: $01 $1B $01
    jr jr_035_59B0                                ; $59AD: $18 $01

    rrca                                          ; $59AF: $0F

jr_035_59B0:
    ld [bc], a                                    ; $59B0: $02
    dec bc                                        ; $59B1: $0B
    ld bc, $0201                                  ; $59B2: $01 $01 $02
    ld a, [bc]                                    ; $59B5: $0A
    ld bc, $011D                                  ; $59B6: $01 $1D $01
    cpl                                           ; $59B9: $2F
    ld bc, $012F                                  ; $59BA: $01 $2F $01
    cpl                                           ; $59BD: $2F
    ld bc, $012F                                  ; $59BE: $01 $2F $01
    rra                                           ; $59C1: $1F
    ld bc, $0101                                  ; $59C2: $01 $01 $01
    ld [bc], a                                    ; $59C5: $02
    ld bc, $011D                                  ; $59C6: $01 $1D $01
    cpl                                           ; $59C9: $2F
    ld bc, $012F                                  ; $59CA: $01 $2F $01
    cpl                                           ; $59CD: $2F
    ld bc, $012F                                  ; $59CE: $01 $2F $01
    cpl                                           ; $59D1: $2F
    ld bc, $012F                                  ; $59D2: $01 $2F $01
    cpl                                           ; $59D5: $2F
    ld bc, $021E                                  ; $59D6: $01 $1E $02
    dec bc                                        ; $59D9: $0B
    ld bc, $0101                                  ; $59DA: $01 $01 $01
    ld bc, $1401                                  ; $59DD: $01 $01 $14
    ld bc, $0112                                  ; $59E0: $01 $12 $01
    ld [de], a                                    ; $59E3: $12
    ld bc, $0112                                  ; $59E4: $01 $12 $01
    ld [de], a                                    ; $59E7: $12
    ld bc, $0115                                  ; $59E8: $01 $15 $01
    ld bc, $0101                                  ; $59EB: $01 $01 $01
    ld bc, $0114                                  ; $59EE: $01 $14 $01
    ld [de], a                                    ; $59F1: $12
    ld bc, $0112                                  ; $59F2: $01 $12 $01
    ld [de], a                                    ; $59F5: $12
    ld bc, $0112                                  ; $59F6: $01 $12 $01
    ld [de], a                                    ; $59F9: $12
    ld bc, $0112                                  ; $59FA: $01 $12 $01
    ld [de], a                                    ; $59FD: $12
    ld bc, $0115                                  ; $59FE: $01 $15 $01
    ld bc, $2B05                                  ; $5A01: $01 $05 $2B
    ld bc, $0501                                  ; $5A04: $01 $01 $05
    dec hl                                        ; $5A07: $2B
    ld bc, $0501                                  ; $5A08: $01 $01 $05
    dec hl                                        ; $5A0B: $2B
    ld bc, $0501                                  ; $5A0C: $01 $01 $05
    dec hl                                        ; $5A0F: $2B
    ld bc, $0501                                  ; $5A10: $01 $01 $05
    dec hl                                        ; $5A13: $2B
    ld bc, $0502                                  ; $5A14: $01 $02 $05
    dec hl                                        ; $5A17: $2B
    ld bc, $0501                                  ; $5A18: $01 $01 $05
    dec hl                                        ; $5A1B: $2B
    ld bc, $0501                                  ; $5A1C: $01 $01 $05
    dec hl                                        ; $5A1F: $2B
    ld bc, $0502                                  ; $5A20: $01 $02 $05
    dec hl                                        ; $5A23: $2B
    ld bc, $0502                                  ; $5A24: $01 $02 $05
    dec hl                                        ; $5A27: $2B
    ld bc, $0101                                  ; $5A28: $01 $01 $01
    ld bc, $0101                                  ; $5A2B: $01 $01 $01
    ld bc, $0203                                  ; $5A2E: $01 $03 $02
    ld a, [bc]                                    ; $5A31: $0A
    ld bc, $0201                                  ; $5A32: $01 $01 $02
    ld a, [bc]                                    ; $5A35: $0A
    ld bc, $0103                                  ; $5A36: $01 $03 $01
    ld bc, $0101                                  ; $5A39: $01 $01 $01
    ld [bc], a                                    ; $5A3C: $02
    ld a, [bc]                                    ; $5A3D: $0A
    ld bc, $0101                                  ; $5A3E: $01 $01 $01
    ld bc, $0B02                                  ; $5A41: $01 $02 $0B
    ld bc, $0102                                  ; $5A44: $01 $02 $01
    ld bc, $0101                                  ; $5A47: $01 $01 $01
    ld [bc], a                                    ; $5A4A: $02
    dec bc                                        ; $5A4B: $0B
    ld bc, $0101                                  ; $5A4C: $01 $01 $01
    ld bc, $0101                                  ; $5A4F: $01 $01 $01
    ld bc, $0119                                  ; $5A52: $01 $19 $01
    add hl, de                                    ; $5A55: $19
    ld bc, $0119                                  ; $5A56: $01 $19 $01
    add hl, de                                    ; $5A59: $19
    ld bc, $0118                                  ; $5A5A: $01 $18 $01
    add hl, de                                    ; $5A5D: $19
    ld bc, $0118                                  ; $5A5E: $01 $18 $01
    add hl, de                                    ; $5A61: $19
    ld bc, $011A                                  ; $5A62: $01 $1A $01
    rrca                                          ; $5A65: $0F
    ld bc, $0101                                  ; $5A66: $01 $01 $01
    ld c, $01                                     ; $5A69: $0E $01
    ld a, [de]                                    ; $5A6B: $1A
    ld bc, $011A                                  ; $5A6C: $01 $1A $01
    ld a, [de]                                    ; $5A6F: $1A
    ld bc, $011A                                  ; $5A70: $01 $1A $01
    ld a, [de]                                    ; $5A73: $1A
    ld bc, $011A                                  ; $5A74: $01 $1A $01
    ld a, [de]                                    ; $5A77: $1A
    ld bc, $011A                                  ; $5A78: $01 $1A $01
    cpl                                           ; $5A7B: $2F
    ld bc, $012F                                  ; $5A7C: $01 $2F $01
    cpl                                           ; $5A7F: $2F
    ld bc, $012F                                  ; $5A80: $01 $2F $01
    cpl                                           ; $5A83: $2F
    ld bc, $012F                                  ; $5A84: $01 $2F $01
    cpl                                           ; $5A87: $2F
    ld bc, $012F                                  ; $5A88: $01 $2F $01
    cpl                                           ; $5A8B: $2F
    ld bc, $021E                                  ; $5A8C: $01 $1E $02
    dec bc                                        ; $5A8F: $0B
    ld bc, $011D                                  ; $5A90: $01 $1D $01
    cpl                                           ; $5A93: $2F
    ld bc, $012F                                  ; $5A94: $01 $2F $01
    cpl                                           ; $5A97: $2F
    ld bc, $012F                                  ; $5A98: $01 $2F $01
    cpl                                           ; $5A9B: $2F
    ld bc, $012F                                  ; $5A9C: $01 $2F $01
    cpl                                           ; $5A9F: $2F
    ld bc, $012F                                  ; $5AA0: $01 $2F $01
    cpl                                           ; $5AA3: $2F
    ld bc, $012F                                  ; $5AA4: $01 $2F $01
    cpl                                           ; $5AA7: $2F
    ld bc, $012F                                  ; $5AA8: $01 $2F $01
    cpl                                           ; $5AAB: $2F
    ld bc, $012F                                  ; $5AAC: $01 $2F $01
    cpl                                           ; $5AAF: $2F
    ld bc, $012F                                  ; $5AB0: $01 $2F $01
    cpl                                           ; $5AB3: $2F
    ld bc, $011E                                  ; $5AB4: $01 $1E $01
    ld bc, $1D01                                  ; $5AB7: $01 $01 $1D
    ld bc, $012F                                  ; $5ABA: $01 $2F $01
    cpl                                           ; $5ABD: $2F
    ld bc, $012F                                  ; $5ABE: $01 $2F $01
    cpl                                           ; $5AC1: $2F
    ld bc, $012F                                  ; $5AC2: $01 $2F $01
    cpl                                           ; $5AC5: $2F
    ld bc, $012F                                  ; $5AC6: $01 $2F $01
    cpl                                           ; $5AC9: $2F
    ld bc, $012F                                  ; $5ACA: $01 $2F $01
    cpl                                           ; $5ACD: $2F
    ld bc, $012F                                  ; $5ACE: $01 $2F $01
    cpl                                           ; $5AD1: $2F
    ld bc, $012F                                  ; $5AD2: $01 $2F $01
    cpl                                           ; $5AD5: $2F
    ld bc, $012F                                  ; $5AD6: $01 $2F $01
    cpl                                           ; $5AD9: $2F
    ld bc, $012F                                  ; $5ADA: $01 $2F $01
    ld e, $04                                     ; $5ADD: $1E $04
    ld bc, $1D01                                  ; $5ADF: $01 $01 $1D
    ld bc, $012F                                  ; $5AE2: $01 $2F $01
    cpl                                           ; $5AE5: $2F
    ld bc, $012F                                  ; $5AE6: $01 $2F $01
    cpl                                           ; $5AE9: $2F
    ld bc, $012F                                  ; $5AEA: $01 $2F $01
    cpl                                           ; $5AED: $2F
    ld bc, $012F                                  ; $5AEE: $01 $2F $01
    cpl                                           ; $5AF1: $2F
    ld bc, $012F                                  ; $5AF2: $01 $2F $01
    cpl                                           ; $5AF5: $2F
    ld bc, $012F                                  ; $5AF6: $01 $2F $01
    cpl                                           ; $5AF9: $2F
    ld bc, $012F                                  ; $5AFA: $01 $2F $01
    cpl                                           ; $5AFD: $2F
    ld bc, $012F                                  ; $5AFE: $01 $2F $01
    cpl                                           ; $5B01: $2F
    ld bc, $012F                                  ; $5B02: $01 $2F $01
    ld e, $01                                     ; $5B05: $1E $01
    ld bc, $1D01                                  ; $5B07: $01 $01 $1D
    ld bc, $012F                                  ; $5B0A: $01 $2F $01
    cpl                                           ; $5B0D: $2F
    ld bc, $012F                                  ; $5B0E: $01 $2F $01
    cpl                                           ; $5B11: $2F
    ld bc, $012F                                  ; $5B12: $01 $2F $01
    cpl                                           ; $5B15: $2F
    ld bc, $012F                                  ; $5B16: $01 $2F $01
    cpl                                           ; $5B19: $2F
    ld bc, $0113                                  ; $5B1A: $01 $13 $01
    inc de                                        ; $5B1D: $13
    ld bc, $0113                                  ; $5B1E: $01 $13 $01
    inc de                                        ; $5B21: $13
    ld bc, $0111                                  ; $5B22: $01 $11 $01
    inc de                                        ; $5B25: $13
    ld bc, $0110                                  ; $5B26: $01 $10 $01
    ld de, $1301                                  ; $5B29: $11 $01 $13
    ld bc, $0115                                  ; $5B2C: $01 $15 $01
    ld bc, $1401                                  ; $5B2F: $01 $01 $14
    ld bc, $0111                                  ; $5B32: $01 $11 $01
    db $10                                        ; $5B35: $10
    ld bc, $0110                                  ; $5B36: $01 $10 $01
    inc de                                        ; $5B39: $13
    ld bc, $0111                                  ; $5B3A: $01 $11 $01
    ld de, $1001                                  ; $5B3D: $11 $01 $10
    ld bc, $0113                                  ; $5B40: $01 $13 $01
    ld bc, $0101                                  ; $5B43: $01 $01 $01
    ld bc, $0201                                  ; $5B46: $01 $01 $02
    ld a, [bc]                                    ; $5B49: $0A
    ld bc, $0101                                  ; $5B4A: $01 $01 $01
    ld bc, $0101                                  ; $5B4D: $01 $01 $01
    ld bc, $0101                                  ; $5B50: $01 $01 $01
    ld bc, $0101                                  ; $5B53: $01 $01 $01
    ld [bc], a                                    ; $5B56: $02
    dec bc                                        ; $5B57: $0B
    ld bc, $0103                                  ; $5B58: $01 $03 $01
    inc bc                                        ; $5B5B: $03
    ld bc, $0103                                  ; $5B5C: $01 $03 $01
    inc bc                                        ; $5B5F: $03
    ld [bc], a                                    ; $5B60: $02
    dec bc                                        ; $5B61: $0B
    ld bc, $0101                                  ; $5B62: $01 $01 $01
    ld bc, $0101                                  ; $5B65: $01 $01 $01
    ld bc, $0101                                  ; $5B68: $01 $01 $01
    ld bc, $0101                                  ; $5B6B: $01 $01 $01
    ld bc, $0101                                  ; $5B6E: $01 $01 $01
    ld [bc], a                                    ; $5B71: $02
    ld bc, $0102                                  ; $5B72: $01 $02 $01
    ld bc, $0A02                                  ; $5B75: $01 $02 $0A
    ld bc, $0103                                  ; $5B78: $01 $03 $01
    inc bc                                        ; $5B7B: $03
    ld bc, $0101                                  ; $5B7C: $01 $01 $01
    ld bc, $0301                                  ; $5B7F: $01 $01 $03
    ld bc, $0101                                  ; $5B82: $01 $01 $01
    ld bc, $0101                                  ; $5B85: $01 $01 $01
    ld bc, $0101                                  ; $5B88: $01 $01 $01
    ld bc, $0101                                  ; $5B8B: $01 $01 $01
    ld [bc], a                                    ; $5B8E: $02
    dec bc                                        ; $5B8F: $0B
    ld bc, $0201                                  ; $5B90: $01 $01 $02
    ld a, [bc]                                    ; $5B93: $0A
    ld bc, $0101                                  ; $5B94: $01 $01 $01
    ld c, $01                                     ; $5B97: $0E $01
    ld a, [de]                                    ; $5B99: $1A
    ld bc, $011A                                  ; $5B9A: $01 $1A $01
    ld a, [de]                                    ; $5B9D: $1A
    ld bc, $0119                                  ; $5B9E: $01 $19 $01
    dec de                                        ; $5BA1: $1B
    ld bc, $011B                                  ; $5BA2: $01 $1B $01
    add hl, de                                    ; $5BA5: $19
    ld bc, $011B                                  ; $5BA6: $01 $1B $01
    ld a, [de]                                    ; $5BA9: $1A
    ld bc, $0119                                  ; $5BAA: $01 $19 $01
    ld a, [de]                                    ; $5BAD: $1A
    ld bc, $0119                                  ; $5BAE: $01 $19 $01
    ld a, [de]                                    ; $5BB1: $1A
    ld bc, $011A                                  ; $5BB2: $01 $1A $01
    rrca                                          ; $5BB5: $0F
    ld bc, $0101                                  ; $5BB6: $01 $01 $01
    ld bc, $0101                                  ; $5BB9: $01 $01 $01
    ld bc, $0101                                  ; $5BBC: $01 $01 $01
    dec e                                         ; $5BBF: $1D
    ld bc, $012F                                  ; $5BC0: $01 $2F $01
    cpl                                           ; $5BC3: $2F
    ld bc, $012F                                  ; $5BC4: $01 $2F $01
    cpl                                           ; $5BC7: $2F
    ld bc, $012F                                  ; $5BC8: $01 $2F $01
    cpl                                           ; $5BCB: $2F
    ld bc, $012F                                  ; $5BCC: $01 $2F $01
    cpl                                           ; $5BCF: $2F
    ld bc, $012F                                  ; $5BD0: $01 $2F $01
    cpl                                           ; $5BD3: $2F
    ld bc, $012F                                  ; $5BD4: $01 $2F $01
    cpl                                           ; $5BD7: $2F
    ld bc, $012F                                  ; $5BD8: $01 $2F $01
    cpl                                           ; $5BDB: $2F
    ld bc, $011E                                  ; $5BDC: $01 $1E $01
    ld bc, $0B02                                  ; $5BDF: $01 $02 $0B
    ld bc, $0101                                  ; $5BE2: $01 $01 $01
    ld bc, $1C01                                  ; $5BE5: $01 $01 $1C
    ld bc, $012F                                  ; $5BE8: $01 $2F $01
    cpl                                           ; $5BEB: $2F
    ld bc, $012F                                  ; $5BEC: $01 $2F $01
    cpl                                           ; $5BEF: $2F
    ld bc, $012F                                  ; $5BF0: $01 $2F $01
    cpl                                           ; $5BF3: $2F
    ld bc, $012F                                  ; $5BF4: $01 $2F $01
    cpl                                           ; $5BF7: $2F
    ld bc, $012F                                  ; $5BF8: $01 $2F $01
    cpl                                           ; $5BFB: $2F
    ld bc, $012F                                  ; $5BFC: $01 $2F $01
    cpl                                           ; $5BFF: $2F
    ld bc, $012F                                  ; $5C00: $01 $2F $01
    cpl                                           ; $5C03: $2F
    ld bc, $011F                                  ; $5C04: $01 $1F $01
    ld bc, $0101                                  ; $5C07: $01 $01 $01
    ld bc, $0201                                  ; $5C0A: $01 $01 $02
    ld a, [bc]                                    ; $5C0D: $0A
    ld bc, $011D                                  ; $5C0E: $01 $1D $01
    cpl                                           ; $5C11: $2F
    ld bc, $012F                                  ; $5C12: $01 $2F $01
    cpl                                           ; $5C15: $2F
    ld bc, $012F                                  ; $5C16: $01 $2F $01
    cpl                                           ; $5C19: $2F
    ld bc, $012F                                  ; $5C1A: $01 $2F $01
    cpl                                           ; $5C1D: $2F
    ld bc, $012F                                  ; $5C1E: $01 $2F $01
    cpl                                           ; $5C21: $2F
    ld bc, $012F                                  ; $5C22: $01 $2F $01
    cpl                                           ; $5C25: $2F
    ld bc, $012F                                  ; $5C26: $01 $2F $01
    cpl                                           ; $5C29: $2F
    ld bc, $012F                                  ; $5C2A: $01 $2F $01
    ld e, $02                                     ; $5C2D: $1E $02
    ld a, [bc]                                    ; $5C2F: $0A
    ld [bc], a                                    ; $5C30: $02
    dec bc                                        ; $5C31: $0B
    ld bc, $0101                                  ; $5C32: $01 $01 $01
    ld bc, $1401                                  ; $5C35: $01 $01 $14
    ld bc, $0112                                  ; $5C38: $01 $12 $01
    ld [de], a                                    ; $5C3B: $12
    ld bc, $0113                                  ; $5C3C: $01 $13 $01
    db $10                                        ; $5C3F: $10
    ld bc, $0112                                  ; $5C40: $01 $12 $01
    ld [de], a                                    ; $5C43: $12
    ld bc, $0110                                  ; $5C44: $01 $10 $01
    ld de, $1001                                  ; $5C47: $11 $01 $10
    ld bc, $0112                                  ; $5C4A: $01 $12 $01
    inc de                                        ; $5C4D: $13
    ld bc, $0112                                  ; $5C4E: $01 $12 $01
    ld de, $1201                                  ; $5C51: $11 $01 $12
    ld bc, $0115                                  ; $5C54: $01 $15 $01
    ld bc, $0101                                  ; $5C57: $01 $01 $01
    ld bc, $0101                                  ; $5C5A: $01 $01 $01
    ld bc, $0101                                  ; $5C5D: $01 $01 $01
    ld bc, $0101                                  ; $5C60: $01 $01 $01
    ld bc, $0A02                                  ; $5C63: $01 $02 $0A
    ld bc, $0101                                  ; $5C66: $01 $01 $01
    ld bc, $0101                                  ; $5C69: $01 $01 $01
    ld bc, $0101                                  ; $5C6C: $01 $01 $01
    ld bc, $0101                                  ; $5C6F: $01 $01 $01
    ld bc, $0101                                  ; $5C72: $01 $01 $01
    ld bc, $0101                                  ; $5C75: $01 $01 $01
    ld bc, $0101                                  ; $5C78: $01 $01 $01
    ld bc, $0101                                  ; $5C7B: $01 $01 $01
    ld [bc], a                                    ; $5C7E: $02
    dec bc                                        ; $5C7F: $0B
    ld bc, $0101                                  ; $5C80: $01 $01 $01
    ld bc, $2B05                                  ; $5C83: $01 $05 $2B
    ld bc, $0101                                  ; $5C86: $01 $01 $01
    ld [bc], a                                    ; $5C89: $02
    dec b                                         ; $5C8A: $05
    dec hl                                        ; $5C8B: $2B
    ld bc, $0102                                  ; $5C8C: $01 $02 $01
    ld [bc], a                                    ; $5C8F: $02
    dec b                                         ; $5C90: $05
    dec hl                                        ; $5C91: $2B
    ld bc, $0101                                  ; $5C92: $01 $01 $01
    ld bc, $2B05                                  ; $5C95: $01 $05 $2B
    ld bc, $0101                                  ; $5C98: $01 $01 $01
    ld bc, $2B05                                  ; $5C9B: $01 $05 $2B
    ld bc, $0102                                  ; $5C9E: $01 $02 $01
    ld bc, $2B05                                  ; $5CA1: $01 $05 $2B
    ld bc, $0101                                  ; $5CA4: $01 $01 $01
    ld bc, $2B05                                  ; $5CA7: $01 $05 $2B
    ld bc, $0201                                  ; $5CAA: $01 $01 $02
    ld a, [bc]                                    ; $5CAD: $0A
    ld bc, $0101                                  ; $5CAE: $01 $01 $01
    ld bc, $0101                                  ; $5CB1: $01 $01 $01
    ld bc, $0101                                  ; $5CB4: $01 $01 $01
    ld bc, $0101                                  ; $5CB7: $01 $01 $01
    ld bc, $0101                                  ; $5CBA: $01 $01 $01
    ld bc, $0101                                  ; $5CBD: $01 $01 $01
    ld [bc], a                                    ; $5CC0: $02
    dec bc                                        ; $5CC1: $0B
    ld bc, $0101                                  ; $5CC2: $01 $01 $01
    ld bc, $0101                                  ; $5CC5: $01 $01 $01
    ld bc, $0101                                  ; $5CC8: $01 $01 $01
    ld bc, $0101                                  ; $5CCB: $01 $01 $01
    ld bc, $0101                                  ; $5CCE: $01 $01 $01
    ld bc, $0101                                  ; $5CD1: $01 $01 $01
    ld bc, $0101                                  ; $5CD4: $01 $01 $01
    ld c, $01                                     ; $5CD7: $0E $01
    ld a, [de]                                    ; $5CD9: $1A
    ld bc, $011A                                  ; $5CDA: $01 $1A $01
    ld a, [de]                                    ; $5CDD: $1A
    ld bc, $010F                                  ; $5CDE: $01 $0F $01
    ld [bc], a                                    ; $5CE1: $02
    ld bc, $0102                                  ; $5CE2: $01 $02 $01
    ld [bc], a                                    ; $5CE5: $02
    ld [bc], a                                    ; $5CE6: $02
    dec bc                                        ; $5CE7: $0B
    ld bc, $0102                                  ; $5CE8: $01 $02 $01
    ld bc, $0101                                  ; $5CEB: $01 $01 $01
    ld bc, $010E                                  ; $5CEE: $01 $0E $01
    ld a, [de]                                    ; $5CF1: $1A
    ld bc, $011A                                  ; $5CF2: $01 $1A $01
    ld a, [de]                                    ; $5CF5: $1A
    ld bc, $011A                                  ; $5CF6: $01 $1A $01
    ld a, [de]                                    ; $5CF9: $1A
    ld bc, $0102                                  ; $5CFA: $01 $02 $01
    ld bc, $1D01                                  ; $5CFD: $01 $01 $1D
    ld bc, $012F                                  ; $5D00: $01 $2F $01
    cpl                                           ; $5D03: $2F
    ld bc, $012F                                  ; $5D04: $01 $2F $01
    ld e, $01                                     ; $5D07: $1E $01
    ld [bc], a                                    ; $5D09: $02
    ld bc, $0101                                  ; $5D0A: $01 $01 $01
    ld bc, $0101                                  ; $5D0D: $01 $01 $01
    ld bc, $0101                                  ; $5D10: $01 $01 $01
    ld bc, $0101                                  ; $5D13: $01 $01 $01
    ld bc, $011D                                  ; $5D16: $01 $1D $01
    cpl                                           ; $5D19: $2F
    ld bc, $012F                                  ; $5D1A: $01 $2F $01
    cpl                                           ; $5D1D: $2F
    ld bc, $012F                                  ; $5D1E: $01 $2F $01
    cpl                                           ; $5D21: $2F
    ld bc, $0102                                  ; $5D22: $01 $02 $01
    ld [bc], a                                    ; $5D25: $02
    ld bc, $011C                                  ; $5D26: $01 $1C $01
    cpl                                           ; $5D29: $2F
    ld bc, $012F                                  ; $5D2A: $01 $2F $01
    cpl                                           ; $5D2D: $2F
    ld bc, $011F                                  ; $5D2E: $01 $1F $01
    ld bc, $0101                                  ; $5D31: $01 $01 $01
    ld bc, $0101                                  ; $5D34: $01 $01 $01
    ld [bc], a                                    ; $5D37: $02
    ld [bc], a                                    ; $5D38: $02
    dec bc                                        ; $5D39: $0B
    ld bc, $0102                                  ; $5D3A: $01 $02 $01
    ld bc, $1C01                                  ; $5D3D: $01 $01 $1C
    ld bc, $012F                                  ; $5D40: $01 $2F $01
    cpl                                           ; $5D43: $2F
    ld bc, $012F                                  ; $5D44: $01 $2F $01
    cpl                                           ; $5D47: $2F
    ld bc, $012F                                  ; $5D48: $01 $2F $01
    ld bc, $0201                                  ; $5D4B: $01 $01 $02
    ld bc, $011D                                  ; $5D4E: $01 $1D $01
    cpl                                           ; $5D51: $2F
    ld bc, $012F                                  ; $5D52: $01 $2F $01
    cpl                                           ; $5D55: $2F
    ld bc, $012D                                  ; $5D56: $01 $2D $01
    ld a, [de]                                    ; $5D59: $1A
    ld bc, $011A                                  ; $5D5A: $01 $1A $01
    ld a, [de]                                    ; $5D5D: $1A
    ld bc, $010F                                  ; $5D5E: $01 $0F $01
    ld bc, $0A02                                  ; $5D61: $01 $02 $0A
    ld bc, $0101                                  ; $5D64: $01 $01 $01
    inc d                                         ; $5D67: $14
    ld bc, $0112                                  ; $5D68: $01 $12 $01
    ld de, $1201                                  ; $5D6B: $11 $01 $12
    ld bc, $0112                                  ; $5D6E: $01 $12 $01
    ld [de], a                                    ; $5D71: $12
    ld [bc], a                                    ; $5D72: $02
    ld a, [bc]                                    ; $5D73: $0A
    ld bc, $0101                                  ; $5D74: $01 $01 $01
    inc d                                         ; $5D77: $14
    ld bc, $0112                                  ; $5D78: $01 $12 $01
    ld de, $1701                                  ; $5D7B: $11 $01 $17
    ld bc, $012F                                  ; $5D7E: $01 $2F $01
    cpl                                           ; $5D81: $2F
    ld bc, $012F                                  ; $5D82: $01 $2F $01
    cpl                                           ; $5D85: $2F
    ld bc, $012D                                  ; $5D86: $01 $2D $01
    rrca                                          ; $5D89: $0F
    ld bc, $0102                                  ; $5D8A: $01 $02 $01
    ld [bc], a                                    ; $5D8D: $02
    ld [bc], a                                    ; $5D8E: $02
    dec bc                                        ; $5D8F: $0B
    ld bc, $0201                                  ; $5D90: $01 $01 $02
    dec bc                                        ; $5D93: $0B
    ld bc, $0101                                  ; $5D94: $01 $01 $01
    ld bc, $0101                                  ; $5D97: $01 $01 $01
    ld [bc], a                                    ; $5D9A: $02
    inc c                                         ; $5D9B: $0C
    ld [bc], a                                    ; $5D9C: $02
    ld a, [bc]                                    ; $5D9D: $0A
    ld bc, $0401                                  ; $5D9E: $01 $01 $04
    ld [bc], a                                    ; $5DA1: $02
    inc b                                         ; $5DA2: $04
    ld [bc], a                                    ; $5DA3: $02
    ld bc, $0114                                  ; $5DA4: $01 $14 $01
    ld [de], a                                    ; $5DA7: $12
    ld bc, $0117                                  ; $5DA8: $01 $17 $01
    cpl                                           ; $5DAB: $2F
    ld bc, $012F                                  ; $5DAC: $01 $2F $01
    cpl                                           ; $5DAF: $2F
    ld bc, $011E                                  ; $5DB0: $01 $1E $01
    ld [bc], a                                    ; $5DB3: $02
    inc b                                         ; $5DB4: $04
    ld bc, $0101                                  ; $5DB5: $01 $01 $01
    ld bc, $0101                                  ; $5DB8: $01 $01 $01
    ld bc, $0101                                  ; $5DBB: $01 $01 $01
    ld [bc], a                                    ; $5DBE: $02
    dec bc                                        ; $5DBF: $0B
    ld bc, $0201                                  ; $5DC0: $01 $01 $02
    dec c                                         ; $5DC3: $0D
    ld [bc], a                                    ; $5DC4: $02
    dec bc                                        ; $5DC5: $0B
    ld [bc], a                                    ; $5DC6: $02
    ld a, [bc]                                    ; $5DC7: $0A
    ld bc, $0101                                  ; $5DC8: $01 $01 $01
    ld bc, $0201                                  ; $5DCB: $01 $01 $02
    ld bc, $0101                                  ; $5DCE: $01 $01 $01
    inc d                                         ; $5DD1: $14
    ld bc, $0112                                  ; $5DD2: $01 $12 $01
    ld de, $1701                                  ; $5DD5: $11 $01 $17
    ld bc, $012D                                  ; $5DD8: $01 $2D $01
    ld a, [de]                                    ; $5DDB: $1A
    ld bc, $011A                                  ; $5DDC: $01 $1A $01
    ld a, [de]                                    ; $5DDF: $1A
    ld bc, $011A                                  ; $5DE0: $01 $1A $01
    ld a, [de]                                    ; $5DE3: $1A
    ld bc, $010F                                  ; $5DE4: $01 $0F $01
    ld bc, $0101                                  ; $5DE7: $01 $01 $01
    ld [bc], a                                    ; $5DEA: $02
    dec bc                                        ; $5DEB: $0B
    ld bc, $0401                                  ; $5DEC: $01 $01 $04
    ld [bc], a                                    ; $5DEF: $02
    ld bc, $0101                                  ; $5DF0: $01 $01 $01
    ld [bc], a                                    ; $5DF3: $02
    ld bc, $0101                                  ; $5DF4: $01 $01 $01
    ld bc, $0101                                  ; $5DF7: $01 $01 $01
    ld bc, $0101                                  ; $5DFA: $01 $01 $01
    ld [bc], a                                    ; $5DFD: $02
    ld bc, $011D                                  ; $5DFE: $01 $1D $01
    cpl                                           ; $5E01: $2F
    ld bc, $012F                                  ; $5E02: $01 $2F $01
    cpl                                           ; $5E05: $2F
    ld bc, $012F                                  ; $5E06: $01 $2F $01
    cpl                                           ; $5E09: $2F
    ld bc, $012F                                  ; $5E0A: $01 $2F $01
    ld e, $04                                     ; $5E0D: $1E $04
    ld bc, $0101                                  ; $5E0F: $01 $01 $01
    ld bc, $011A                                  ; $5E12: $01 $1A $01
    ld a, [de]                                    ; $5E15: $1A
    ld bc, $011A                                  ; $5E16: $01 $1A $01
    ld a, [de]                                    ; $5E19: $1A
    ld bc, $011A                                  ; $5E1A: $01 $1A $01
    ld a, [de]                                    ; $5E1D: $1A
    ld bc, $010F                                  ; $5E1E: $01 $0F $01
    ld [bc], a                                    ; $5E21: $02
    ld [bc], a                                    ; $5E22: $02
    ld a, [bc]                                    ; $5E23: $0A
    ld bc, $0102                                  ; $5E24: $01 $02 $01
    inc d                                         ; $5E27: $14
    ld bc, $0113                                  ; $5E28: $01 $13 $01
    rla                                           ; $5E2B: $17
    ld bc, $012F                                  ; $5E2C: $01 $2F $01
    cpl                                           ; $5E2F: $2F
    ld bc, $012F                                  ; $5E30: $01 $2F $01
    cpl                                           ; $5E33: $2F
    ld bc, $041F                                  ; $5E34: $01 $1F $04
    ld bc, $0B02                                  ; $5E37: $01 $02 $0B
    ld bc, $012F                                  ; $5E3A: $01 $2F $01
    cpl                                           ; $5E3D: $2F
    ld bc, $012F                                  ; $5E3E: $01 $2F $01
    cpl                                           ; $5E41: $2F
    ld bc, $012F                                  ; $5E42: $01 $2F $01
    cpl                                           ; $5E45: $2F
    ld bc, $021E                                  ; $5E46: $01 $1E $02
    ld a, [bc]                                    ; $5E49: $0A
    ld bc, $0101                                  ; $5E4A: $01 $01 $01
    ld bc, $0101                                  ; $5E4D: $01 $01 $01
    ld bc, $0102                                  ; $5E50: $01 $02 $01
    dec e                                         ; $5E53: $1D
    ld bc, $012F                                  ; $5E54: $01 $2F $01
    cpl                                           ; $5E57: $2F
    ld bc, $012F                                  ; $5E58: $01 $2F $01
    cpl                                           ; $5E5B: $2F
    ld bc, $011E                                  ; $5E5C: $01 $1E $01
    ld bc, $0101                                  ; $5E5F: $01 $01 $01
    ld bc, $012F                                  ; $5E62: $01 $2F $01
    cpl                                           ; $5E65: $2F
    ld bc, $012F                                  ; $5E66: $01 $2F $01
    cpl                                           ; $5E69: $2F
    ld bc, $012F                                  ; $5E6A: $01 $2F $01
    cpl                                           ; $5E6D: $2F
    ld bc, $011F                                  ; $5E6E: $01 $1F $01
    ld bc, $0101                                  ; $5E71: $01 $01 $01
    ld bc, $0201                                  ; $5E74: $01 $01 $02
    ld a, [bc]                                    ; $5E77: $0A
    ld bc, $0101                                  ; $5E78: $01 $01 $01
    inc d                                         ; $5E7B: $14
    ld bc, $0112                                  ; $5E7C: $01 $12 $01
    ld de, $1101                                  ; $5E7F: $11 $01 $11
    ld bc, $0112                                  ; $5E82: $01 $12 $01
    dec d                                         ; $5E85: $15
    ld bc, $0101                                  ; $5E86: $01 $01 $01
    ld bc, $2F01                                  ; $5E89: $01 $01 $2F
    ld bc, $012F                                  ; $5E8C: $01 $2F $01
    cpl                                           ; $5E8F: $2F
    ld bc, $012F                                  ; $5E90: $01 $2F $01
    cpl                                           ; $5E93: $2F
    ld bc, $012F                                  ; $5E94: $01 $2F $01
    ld e, $01                                     ; $5E97: $1E $01
    ld bc, $0101                                  ; $5E99: $01 $01 $01
    ld bc, $0101                                  ; $5E9C: $01 $01 $01
    ld bc, $0101                                  ; $5E9F: $01 $01 $01
    ld bc, $0102                                  ; $5EA2: $01 $02 $01
    ld bc, $0201                                  ; $5EA5: $01 $01 $02
    ld bc, $0402                                  ; $5EA8: $01 $02 $04
    ld bc, $0101                                  ; $5EAB: $01 $01 $01
    ld [bc], a                                    ; $5EAE: $02
    dec bc                                        ; $5EAF: $0B
    ld bc, $0101                                  ; $5EB0: $01 $01 $01
    ld [de], a                                    ; $5EB3: $12
    ld bc, $0112                                  ; $5EB4: $01 $12 $01
    ld [de], a                                    ; $5EB7: $12
    ld bc, $0112                                  ; $5EB8: $01 $12 $01
    ld [de], a                                    ; $5EBB: $12
    ld bc, $0111                                  ; $5EBC: $01 $11 $01
    dec d                                         ; $5EBF: $15
    ld bc, $0201                                  ; $5EC0: $01 $01 $02
    ld a, [bc]                                    ; $5EC3: $0A
    ld bc, $0201                                  ; $5EC4: $01 $01 $02
    ld a, [bc]                                    ; $5EC7: $0A
    inc b                                         ; $5EC8: $04
    ld bc, $0101                                  ; $5EC9: $01 $01 $01
    ld bc, $0101                                  ; $5ECC: $01 $01 $01
    ld bc, $0101                                  ; $5ECF: $01 $01 $01
    ld [bc], a                                    ; $5ED2: $02
    dec bc                                        ; $5ED3: $0B
    ld bc, $0101                                  ; $5ED4: $01 $01 $01
    ld bc, $0101                                  ; $5ED7: $01 $01 $01
    ld bc, $0101                                  ; $5EDA: $01 $01 $01
    ld bc, $0101                                  ; $5EDD: $01 $01 $01
    ld bc, $0101                                  ; $5EE0: $01 $01 $01
    ld bc, $0101                                  ; $5EE3: $01 $01 $01
    ld bc, $0101                                  ; $5EE6: $01 $01 $01
    ld bc, $0101                                  ; $5EE9: $01 $01 $01
    ld bc, $0101                                  ; $5EEC: $01 $01 $01
    ld bc, $0101                                  ; $5EEF: $01 $01 $01
    ld bc, $0101                                  ; $5EF2: $01 $01 $01
    ld bc, $0101                                  ; $5EF5: $01 $01 $01
    ld bc, $0101                                  ; $5EF8: $01 $01 $01
    ld bc, $0101                                  ; $5EFB: $01 $01 $01
    ld bc, $0101                                  ; $5EFE: $01 $01 $01
    ld bc, $0101                                  ; $5F01: $01 $01 $01
    dec b                                         ; $5F04: $05
    dec hl                                        ; $5F05: $2B
    ld bc, $0101                                  ; $5F06: $01 $01 $01
    ld bc, $0101                                  ; $5F09: $01 $01 $01
    dec b                                         ; $5F0C: $05
    dec hl                                        ; $5F0D: $2B
    ld bc, $0101                                  ; $5F0E: $01 $01 $01
    ld bc, $0101                                  ; $5F11: $01 $01 $01
    dec b                                         ; $5F14: $05
    dec hl                                        ; $5F15: $2B
    ld bc, $0401                                  ; $5F16: $01 $01 $04
    ld bc, $0101                                  ; $5F19: $01 $01 $01
    dec b                                         ; $5F1C: $05
    dec hl                                        ; $5F1D: $2B
    ld bc, $0101                                  ; $5F1E: $01 $01 $01
    ld bc, $0101                                  ; $5F21: $01 $01 $01
    dec b                                         ; $5F24: $05
    dec hl                                        ; $5F25: $2B
    ld bc, $0101                                  ; $5F26: $01 $01 $01
    ld bc, $0101                                  ; $5F29: $01 $01 $01
    ld bc, $0101                                  ; $5F2C: $01 $01 $01
    ld bc, $0A02                                  ; $5F2F: $01 $02 $0A
    ld bc, $0101                                  ; $5F32: $01 $01 $01
    ld bc, $0101                                  ; $5F35: $01 $01 $01
    ld bc, $0101                                  ; $5F38: $01 $01 $01
    ld bc, $0101                                  ; $5F3B: $01 $01 $01
    ld bc, $0101                                  ; $5F3E: $01 $01 $01
    ld bc, $0B02                                  ; $5F41: $01 $02 $0B
    ld bc, $0101                                  ; $5F44: $01 $01 $01
    ld bc, $0101                                  ; $5F47: $01 $01 $01
    ld bc, $0101                                  ; $5F4A: $01 $01 $01
    ld bc, $0101                                  ; $5F4D: $01 $01 $01
    ld bc, $0101                                  ; $5F50: $01 $01 $01
    ld bc, $0101                                  ; $5F53: $01 $01 $01
    ld bc, $0101                                  ; $5F56: $01 $01 $01
    ld bc, $0101                                  ; $5F59: $01 $01 $01
    ld bc, $0101                                  ; $5F5C: $01 $01 $01
    ld bc, $0101                                  ; $5F5F: $01 $01 $01
    ld bc, $0101                                  ; $5F62: $01 $01 $01
    ld bc, $0101                                  ; $5F65: $01 $01 $01
    ld [bc], a                                    ; $5F68: $02
    dec bc                                        ; $5F69: $0B
    ld bc, $0101                                  ; $5F6A: $01 $01 $01
    ld c, $01                                     ; $5F6D: $0E $01
    ld a, [de]                                    ; $5F6F: $1A
    ld bc, $011A                                  ; $5F70: $01 $1A $01
    ld a, [de]                                    ; $5F73: $1A
    ld bc, $011A                                  ; $5F74: $01 $1A $01
    rrca                                          ; $5F77: $0F
    ld bc, $0101                                  ; $5F78: $01 $01 $01
    ld a, [de]                                    ; $5F7B: $1A
    ld bc, $011A                                  ; $5F7C: $01 $1A $01
    ld a, [de]                                    ; $5F7F: $1A
    ld bc, $011A                                  ; $5F80: $01 $1A $01
    ld a, [de]                                    ; $5F83: $1A
    ld bc, $011A                                  ; $5F84: $01 $1A $01
    rrca                                          ; $5F87: $0F
    ld bc, $0202                                  ; $5F88: $01 $02 $02
    ld a, [bc]                                    ; $5F8B: $0A
    ld bc, $0102                                  ; $5F8C: $01 $02 $01
    ld bc, $0201                                  ; $5F8F: $01 $01 $02
    ld bc, $0101                                  ; $5F92: $01 $01 $01
    dec e                                         ; $5F95: $1D
    ld bc, $012F                                  ; $5F96: $01 $2F $01
    cpl                                           ; $5F99: $2F
    ld bc, $012F                                  ; $5F9A: $01 $2F $01
    cpl                                           ; $5F9D: $2F
    ld bc, $011E                                  ; $5F9E: $01 $1E $01
    ld bc, $2F01                                  ; $5FA1: $01 $01 $2F
    ld bc, $012F                                  ; $5FA4: $01 $2F $01
    cpl                                           ; $5FA7: $2F
    ld bc, $012F                                  ; $5FA8: $01 $2F $01
    cpl                                           ; $5FAB: $2F
    ld bc, $012F                                  ; $5FAC: $01 $2F $01
    ld e, $01                                     ; $5FAF: $1E $01
    ld [bc], a                                    ; $5FB1: $02
    ld bc, $0101                                  ; $5FB2: $01 $01 $01
    ld bc, $0101                                  ; $5FB5: $01 $01 $01
    ld [bc], a                                    ; $5FB8: $02
    dec bc                                        ; $5FB9: $0B
    ld bc, $0101                                  ; $5FBA: $01 $01 $01
    inc e                                         ; $5FBD: $1C
    ld bc, $012F                                  ; $5FBE: $01 $2F $01
    cpl                                           ; $5FC1: $2F
    ld bc, $012F                                  ; $5FC2: $01 $2F $01
    cpl                                           ; $5FC5: $2F
    ld bc, $011F                                  ; $5FC6: $01 $1F $01
    ld bc, $2F01                                  ; $5FC9: $01 $01 $2F
    ld bc, $012F                                  ; $5FCC: $01 $2F $01
    cpl                                           ; $5FCF: $2F
    ld bc, $012F                                  ; $5FD0: $01 $2F $01
    cpl                                           ; $5FD3: $2F
    ld bc, $012F                                  ; $5FD4: $01 $2F $01
    rra                                           ; $5FD7: $1F
    ld bc, $0101                                  ; $5FD8: $01 $01 $01
    ld bc, $0101                                  ; $5FDB: $01 $01 $01
    ld bc, $0102                                  ; $5FDE: $01 $02 $01
    ld [bc], a                                    ; $5FE1: $02
    ld bc, $0102                                  ; $5FE2: $01 $02 $01
    dec e                                         ; $5FE5: $1D
    ld bc, $012F                                  ; $5FE6: $01 $2F $01
    cpl                                           ; $5FE9: $2F
    ld bc, $012F                                  ; $5FEA: $01 $2F $01
    cpl                                           ; $5FED: $2F
    ld bc, $011E                                  ; $5FEE: $01 $1E $01
    ld bc, $2F01                                  ; $5FF1: $01 $01 $2F
    ld bc, $012F                                  ; $5FF4: $01 $2F $01
    cpl                                           ; $5FF7: $2F
    ld bc, $012F                                  ; $5FF8: $01 $2F $01
    cpl                                           ; $5FFB: $2F
    ld bc, $012F                                  ; $5FFC: $01 $2F $01
    ld e, $01                                     ; $5FFF: $1E $01
    ld [bc], a                                    ; $6001: $02
    ld bc, $010E                                  ; $6002: $01 $0E $01
    ld a, [de]                                    ; $6005: $1A
    ld bc, $011A                                  ; $6006: $01 $1A $01
    rrca                                          ; $6009: $0F
    ld bc, $0101                                  ; $600A: $01 $01 $01
    inc d                                         ; $600D: $14
    ld bc, $0112                                  ; $600E: $01 $12 $01
    ld de, $1101                                  ; $6011: $11 $01 $11
    ld bc, $0112                                  ; $6014: $01 $12 $01
    dec d                                         ; $6017: $15
    ld bc, $0101                                  ; $6018: $01 $01 $01
    ld [de], a                                    ; $601B: $12
    ld bc, $0111                                  ; $601C: $01 $11 $01
    ld de, $1101                                  ; $601F: $11 $01 $11
    ld bc, $0111                                  ; $6022: $01 $11 $01
    ld [de], a                                    ; $6025: $12
    ld bc, $0115                                  ; $6026: $01 $15 $01
    ld bc, $1D01                                  ; $6029: $01 $01 $1D
    ld bc, $012F                                  ; $602C: $01 $2F $01
    cpl                                           ; $602F: $2F
    ld bc, $021E                                  ; $6030: $01 $1E $02
    dec bc                                        ; $6033: $0B
    ld bc, $0102                                  ; $6034: $01 $02 $01
    ld bc, $0101                                  ; $6037: $01 $01 $01
    ld bc, $0101                                  ; $603A: $01 $01 $01
    ld bc, $0101                                  ; $603D: $01 $01 $01
    ld bc, $0101                                  ; $6040: $01 $01 $01
    ld bc, $0101                                  ; $6043: $01 $01 $01
    ld bc, $0401                                  ; $6046: $01 $01 $04
    ld [bc], a                                    ; $6049: $02
    inc b                                         ; $604A: $04
    ld [bc], a                                    ; $604B: $02
    ld bc, $0101                                  ; $604C: $01 $01 $01
    ld [bc], a                                    ; $604F: $02
    inc b                                         ; $6050: $04
    ld bc, $1D01                                  ; $6051: $01 $01 $1D
    ld bc, $012F                                  ; $6054: $01 $2F $01
    cpl                                           ; $6057: $2F
    ld bc, $011F                                  ; $6058: $01 $1F $01
    ld [bc], a                                    ; $605B: $02
    inc b                                         ; $605C: $04
    ld bc, $0101                                  ; $605D: $01 $01 $01
    ld bc, $0101                                  ; $6060: $01 $01 $01
    ld bc, $0101                                  ; $6063: $01 $01 $01
    ld bc, $0101                                  ; $6066: $01 $01 $01
    ld bc, $0101                                  ; $6069: $01 $01 $01
    ld bc, $0101                                  ; $606C: $01 $01 $01
    ld [bc], a                                    ; $606F: $02
    ld [bc], a                                    ; $6070: $02
    ld a, [bc]                                    ; $6071: $0A
    ld bc, $0101                                  ; $6072: $01 $01 $01
    ld [bc], a                                    ; $6075: $02
    ld bc, $0101                                  ; $6076: $01 $01 $01
    ld bc, $1401                                  ; $6079: $01 $01 $14
    ld bc, $0112                                  ; $607C: $01 $12 $01
    ld de, $1501                                  ; $607F: $11 $01 $15
    ld [bc], a                                    ; $6082: $02
    dec bc                                        ; $6083: $0B
    ld bc, $010E                                  ; $6084: $01 $0E $01
    ld a, [de]                                    ; $6087: $1A
    ld bc, $011A                                  ; $6088: $01 $1A $01
    ld a, [de]                                    ; $608B: $1A
    ld bc, $011A                                  ; $608C: $01 $1A $01
    ld a, [de]                                    ; $608F: $1A
    ld bc, $021A                                  ; $6090: $01 $1A $02
    dec bc                                        ; $6093: $0B
    ld [bc], a                                    ; $6094: $02
    ld a, [bc]                                    ; $6095: $0A
    inc b                                         ; $6096: $04
    ld [bc], a                                    ; $6097: $02
    ld bc, $0101                                  ; $6098: $01 $01 $01
    ld [bc], a                                    ; $609B: $02
    ld bc, $0101                                  ; $609C: $01 $01 $01
    ld bc, $0101                                  ; $609F: $01 $01 $01
    ld bc, $0101                                  ; $60A2: $01 $01 $01
    ld [bc], a                                    ; $60A5: $02
    ld bc, $0101                                  ; $60A6: $01 $01 $01
    ld bc, $0101                                  ; $60A9: $01 $01 $01
    ld bc, $011D                                  ; $60AC: $01 $1D $01
    cpl                                           ; $60AF: $2F
    ld bc, $012F                                  ; $60B0: $01 $2F $01
    cpl                                           ; $60B3: $2F
    ld bc, $012F                                  ; $60B4: $01 $2F $01
    cpl                                           ; $60B7: $2F
    ld bc, $022F                                  ; $60B8: $01 $2F $02
    inc c                                         ; $60BB: $0C
    ld [bc], a                                    ; $60BC: $02
    dec bc                                        ; $60BD: $0B
    inc b                                         ; $60BE: $04
    ld bc, $0E01                                  ; $60BF: $01 $01 $0E
    ld bc, $011A                                  ; $60C2: $01 $1A $01
    ld a, [de]                                    ; $60C5: $1A
    ld bc, $011A                                  ; $60C6: $01 $1A $01
    ld a, [de]                                    ; $60C9: $1A
    ld bc, $010F                                  ; $60CA: $01 $0F $01
    ld [bc], a                                    ; $60CD: $02
    ld bc, $0201                                  ; $60CE: $01 $01 $02
    dec bc                                        ; $60D1: $0B
    ld bc, $0101                                  ; $60D2: $01 $01 $01
    inc e                                         ; $60D5: $1C
    ld bc, $012F                                  ; $60D6: $01 $2F $01
    cpl                                           ; $60D9: $2F
    ld bc, $012F                                  ; $60DA: $01 $2F $01
    cpl                                           ; $60DD: $2F
    ld bc, $012F                                  ; $60DE: $01 $2F $01
    cpl                                           ; $60E1: $2F
    ld [bc], a                                    ; $60E2: $02
    inc c                                         ; $60E3: $0C
    ld [bc], a                                    ; $60E4: $02
    dec bc                                        ; $60E5: $0B
    ld bc, $0101                                  ; $60E6: $01 $01 $01
    dec e                                         ; $60E9: $1D
    ld bc, $012F                                  ; $60EA: $01 $2F $01
    cpl                                           ; $60ED: $2F
    ld bc, $012F                                  ; $60EE: $01 $2F $01
    cpl                                           ; $60F1: $2F
    ld bc, $011E                                  ; $60F2: $01 $1E $01
    ld bc, $0101                                  ; $60F5: $01 $01 $01
    ld bc, $0102                                  ; $60F8: $01 $02 $01
    ld bc, $1D01                                  ; $60FB: $01 $01 $1D
    ld bc, $012F                                  ; $60FE: $01 $2F $01
    cpl                                           ; $6101: $2F
    ld bc, $012F                                  ; $6102: $01 $2F $01
    cpl                                           ; $6105: $2F
    ld bc, $012F                                  ; $6106: $01 $2F $01
    cpl                                           ; $6109: $2F
    ld [bc], a                                    ; $610A: $02
    dec bc                                        ; $610B: $0B
    ld [bc], a                                    ; $610C: $02
    ld a, [bc]                                    ; $610D: $0A
    ld bc, $0101                                  ; $610E: $01 $01 $01
    inc e                                         ; $6111: $1C
    ld bc, $012F                                  ; $6112: $01 $2F $01
    cpl                                           ; $6115: $2F
    ld bc, $012F                                  ; $6116: $01 $2F $01
    cpl                                           ; $6119: $2F
    ld bc, $011F                                  ; $611A: $01 $1F $01
    ld bc, $0101                                  ; $611D: $01 $01 $01
    ld bc, $0101                                  ; $6120: $01 $01 $01
    ld bc, $1401                                  ; $6123: $01 $01 $14
    ld bc, $0112                                  ; $6126: $01 $12 $01
    ld de, $1201                                  ; $6129: $11 $01 $12
    ld bc, $0111                                  ; $612C: $01 $11 $01
    ld de, $1201                                  ; $612F: $11 $01 $12
    ld bc, $0101                                  ; $6132: $01 $01 $01
    ld bc, $0101                                  ; $6135: $01 $01 $01
    ld bc, $011D                                  ; $6138: $01 $1D $01
    cpl                                           ; $613B: $2F
    ld bc, $012F                                  ; $613C: $01 $2F $01
    cpl                                           ; $613F: $2F
    ld bc, $012F                                  ; $6140: $01 $2F $01
    ld e, $01                                     ; $6143: $1E $01
    ld bc, $0101                                  ; $6145: $01 $01 $01
    ld [bc], a                                    ; $6148: $02
    dec bc                                        ; $6149: $0B
    ld bc, $0102                                  ; $614A: $01 $02 $01
    ld bc, $0201                                  ; $614D: $01 $01 $02
    ld bc, $0402                                  ; $6150: $01 $02 $04
    ld bc, $0101                                  ; $6153: $01 $01 $01
    ld bc, $0101                                  ; $6156: $01 $01 $01
    ld bc, $0101                                  ; $6159: $01 $01 $01
    ld bc, $0101                                  ; $615C: $01 $01 $01
    ld bc, $1401                                  ; $615F: $01 $01 $14
    ld bc, $0112                                  ; $6162: $01 $12 $01
    ld de, $1101                                  ; $6165: $11 $01 $11
    ld bc, $0112                                  ; $6168: $01 $12 $01
    dec d                                         ; $616B: $15
    ld bc, $0101                                  ; $616C: $01 $01 $01
    ld bc, HeaderLogo                             ; $616F: $01 $04 $01
    ld bc, $0101                                  ; $6172: $01 $01 $01
    ld bc, $0101                                  ; $6175: $01 $01 $01
    ld bc, $0101                                  ; $6178: $01 $01 $01
    ld bc, $0101                                  ; $617B: $01 $01 $01
    ld bc, $0101                                  ; $617E: $01 $01 $01
    ld bc, $0101                                  ; $6181: $01 $01 $01
    ld bc, $0101                                  ; $6184: $01 $01 $01
    ld bc, $2B05                                  ; $6187: $01 $05 $2B
    ld bc, $0101                                  ; $618A: $01 $01 $01
    ld bc, $0101                                  ; $618D: $01 $01 $01
    ld bc, $0501                                  ; $6190: $01 $01 $05
    dec hl                                        ; $6193: $2B
    ld bc, $0201                                  ; $6194: $01 $01 $02
    dec bc                                        ; $6197: $0B
    ld bc, $0101                                  ; $6198: $01 $01 $01
    ld bc, $2B05                                  ; $619B: $01 $05 $2B
    ld bc, $0101                                  ; $619E: $01 $01 $01
    ld bc, $0101                                  ; $61A1: $01 $01 $01
    ld bc, $0501                                  ; $61A4: $01 $01 $05
    dec hl                                        ; $61A7: $2B
    ld bc, $0101                                  ; $61A8: $01 $01 $01
    ld bc, $0101                                  ; $61AB: $01 $01 $01
    ld bc, $0401                                  ; $61AE: $01 $01 $04
    ld bc, $0101                                  ; $61B1: $01 $01 $01
    ld bc, $0101                                  ; $61B4: $01 $01 $01
    ld bc, $0101                                  ; $61B7: $01 $01 $01
    ld bc, $0101                                  ; $61BA: $01 $01 $01
    ld bc, HeaderLogo                             ; $61BD: $01 $04 $01
    ld bc, $0101                                  ; $61C0: $01 $01 $01
    ld bc, $0101                                  ; $61C3: $01 $01 $01
    inc b                                         ; $61C6: $04
    ld bc, $0101                                  ; $61C7: $01 $01 $01
    ld bc, $0101                                  ; $61CA: $01 $01 $01
    ld bc, $0101                                  ; $61CD: $01 $01 $01
    ld bc, $0401                                  ; $61D0: $01 $01 $04
    ld bc, $0A02                                  ; $61D3: $01 $02 $0A
    ld bc, $0101                                  ; $61D6: $01 $01 $01
    ld bc, $0101                                  ; $61D9: $01 $01 $01
    ld bc, $0101                                  ; $61DC: $01 $01 $01
    ld bc, $0101                                  ; $61DF: $01 $01 $01
    ld [bc], a                                    ; $61E2: $02
    ld a, [bc]                                    ; $61E3: $0A
    ld bc, $0101                                  ; $61E4: $01 $01 $01
    ld bc, $0101                                  ; $61E7: $01 $01 $01
    ld bc, $0101                                  ; $61EA: $01 $01 $01
    ld bc, $0101                                  ; $61ED: $01 $01 $01
    ld bc, $0101                                  ; $61F0: $01 $01 $01
    ld bc, $0101                                  ; $61F3: $01 $01 $01
    ld bc, $0101                                  ; $61F6: $01 $01 $01
    ld bc, $0101                                  ; $61F9: $01 $01 $01
    ld bc, $0101                                  ; $61FC: $01 $01 $01
    ld bc, $0101                                  ; $61FF: $01 $01 $01
    ld bc, $0101                                  ; $6202: $01 $01 $01
    ld bc, $0101                                  ; $6205: $01 $01 $01
    ld [bc], a                                    ; $6208: $02
    dec bc                                        ; $6209: $0B
    ld bc, $0101                                  ; $620A: $01 $01 $01
    ld c, $01                                     ; $620D: $0E $01
    ld a, [de]                                    ; $620F: $1A
    ld bc, $011A                                  ; $6210: $01 $1A $01
    ld a, [de]                                    ; $6213: $1A
    ld bc, $011A                                  ; $6214: $01 $1A $01
    ld a, [de]                                    ; $6217: $1A
    ld bc, $011A                                  ; $6218: $01 $1A $01
    ld a, [de]                                    ; $621B: $1A
    ld bc, $011A                                  ; $621C: $01 $1A $01
    ld a, [de]                                    ; $621F: $1A
    ld bc, $011A                                  ; $6220: $01 $1A $01
    ld bc, $0101                                  ; $6223: $01 $01 $01
    inc b                                         ; $6226: $04
    ld bc, HeaderLogo                             ; $6227: $01 $04 $01
    ld bc, $0101                                  ; $622A: $01 $01 $01
    ld bc, $0201                                  ; $622D: $01 $01 $02
    ld bc, $0102                                  ; $6230: $01 $02 $01
    ld [bc], a                                    ; $6233: $02
    ld bc, $011D                                  ; $6234: $01 $1D $01
    cpl                                           ; $6237: $2F
    ld bc, $012F                                  ; $6238: $01 $2F $01
    cpl                                           ; $623B: $2F
    ld bc, $012F                                  ; $623C: $01 $2F $01
    cpl                                           ; $623F: $2F
    ld bc, $012F                                  ; $6240: $01 $2F $01
    cpl                                           ; $6243: $2F
    ld bc, $012F                                  ; $6244: $01 $2F $01
    cpl                                           ; $6247: $2F
    ld bc, $012F                                  ; $6248: $01 $2F $01
    ld bc, $0101                                  ; $624B: $01 $01 $01
    inc b                                         ; $624E: $04
    ld bc, HeaderLogo                             ; $624F: $01 $04 $01
    ld bc, $0401                                  ; $6252: $01 $01 $04
    ld bc, $0201                                  ; $6255: $01 $01 $02
    inc b                                         ; $6258: $04
    ld bc, HeaderLogo                             ; $6259: $01 $04 $01
    ld bc, $011C                                  ; $625C: $01 $1C $01
    cpl                                           ; $625F: $2F
    ld bc, $012F                                  ; $6260: $01 $2F $01
    cpl                                           ; $6263: $2F
    ld bc, $012F                                  ; $6264: $01 $2F $01
    cpl                                           ; $6267: $2F
    ld bc, $012F                                  ; $6268: $01 $2F $01
    cpl                                           ; $626B: $2F
    ld bc, $012F                                  ; $626C: $01 $2F $01
    cpl                                           ; $626F: $2F
    ld bc, $012F                                  ; $6270: $01 $2F $01
    ld bc, $0101                                  ; $6273: $01 $01 $01
    ld bc, $0101                                  ; $6276: $01 $01 $01
    ld bc, $0201                                  ; $6279: $01 $01 $02
    ld bc, $0101                                  ; $627C: $01 $01 $01
    ld bc, $0101                                  ; $627F: $01 $01 $01
    ld [bc], a                                    ; $6282: $02
    dec bc                                        ; $6283: $0B
    ld bc, $011D                                  ; $6284: $01 $1D $01
    cpl                                           ; $6287: $2F
    ld bc, $012F                                  ; $6288: $01 $2F $01
    cpl                                           ; $628B: $2F
    ld bc, $012F                                  ; $628C: $01 $2F $01
    cpl                                           ; $628F: $2F
    ld bc, $012F                                  ; $6290: $01 $2F $01
    cpl                                           ; $6293: $2F
    ld bc, $012F                                  ; $6294: $01 $2F $01
    cpl                                           ; $6297: $2F
    ld bc, $012F                                  ; $6298: $01 $2F $01
    ld bc, HeaderLogo                             ; $629B: $01 $04 $01
    ld bc, $0102                                  ; $629E: $01 $02 $01
    ld [bc], a                                    ; $62A1: $02
    ld bc, $0102                                  ; $62A2: $01 $02 $01
    ld [bc], a                                    ; $62A5: $02
    ld bc, $0102                                  ; $62A6: $01 $02 $01
    ld bc, $0101                                  ; $62A9: $01 $01 $01
    ld bc, $0114                                  ; $62AC: $01 $14 $01
    ld [de], a                                    ; $62AF: $12
    ld bc, $0111                                  ; $62B0: $01 $11 $01
    ld de, $1101                                  ; $62B3: $11 $01 $11
    ld bc, $0112                                  ; $62B6: $01 $12 $01
    ld de, $1101                                  ; $62B9: $11 $01 $11
    ld bc, $0112                                  ; $62BC: $01 $12 $01
    ld de, $1101                                  ; $62BF: $11 $01 $11
    ld bc, $0101                                  ; $62C2: $01 $01 $01
    ld bc, $0101                                  ; $62C5: $01 $01 $01
    ld bc, $0102                                  ; $62C8: $01 $02 $01
    ld [bc], a                                    ; $62CB: $02
    ld bc, $0102                                  ; $62CC: $01 $02 $01
    inc bc                                        ; $62CF: $03
    inc b                                         ; $62D0: $04
    inc bc                                        ; $62D1: $03
    inc b                                         ; $62D2: $04
    inc bc                                        ; $62D3: $03
    ld bc, $0103                                  ; $62D4: $01 $03 $01
    ld bc, $0201                                  ; $62D7: $01 $01 $02
    ld bc, $0103                                  ; $62DA: $01 $03 $01
    ld bc, $0201                                  ; $62DD: $01 $01 $02
    ld bc, $0102                                  ; $62E0: $01 $02 $01
    ld [bc], a                                    ; $62E3: $02
    ld [bc], a                                    ; $62E4: $02
    ld a, [bc]                                    ; $62E5: $0A
    ld [bc], a                                    ; $62E6: $02
    ld a, [bc]                                    ; $62E7: $0A
    inc b                                         ; $62E8: $04
    ld bc, $0101                                  ; $62E9: $01 $01 $01
    ld bc, $0101                                  ; $62EC: $01 $01 $01
    ld [bc], a                                    ; $62EF: $02
    ld bc, $0102                                  ; $62F0: $01 $02 $01
    ld bc, $0101                                  ; $62F3: $01 $01 $01
    ld bc, $0101                                  ; $62F6: $01 $01 $01
    ld [bc], a                                    ; $62F9: $02
    ld [bc], a                                    ; $62FA: $02
    dec bc                                        ; $62FB: $0B
    ld bc, $0102                                  ; $62FC: $01 $02 $01
    ld bc, $0201                                  ; $62FF: $01 $01 $02
    ld bc, $0101                                  ; $6302: $01 $01 $01
    ld bc, $0304                                  ; $6305: $01 $04 $03
    ld [bc], a                                    ; $6308: $02
    ld a, [bc]                                    ; $6309: $0A
    ld [bc], a                                    ; $630A: $02
    ld a, [bc]                                    ; $630B: $0A
    ld [bc], a                                    ; $630C: $02
    dec bc                                        ; $630D: $0B
    ld [bc], a                                    ; $630E: $02
    dec bc                                        ; $630F: $0B
    ld [bc], a                                    ; $6310: $02
    ld a, [bc]                                    ; $6311: $0A
    ld bc, $011A                                  ; $6312: $01 $1A $01
    ld a, [de]                                    ; $6315: $1A
    ld bc, $011A                                  ; $6316: $01 $1A $01
    ld a, [de]                                    ; $6319: $1A
    ld bc, $011A                                  ; $631A: $01 $1A $01
    ld a, [de]                                    ; $631D: $1A
    ld bc, $010F                                  ; $631E: $01 $0F $01
    ld bc, $0201                                  ; $6321: $01 $01 $02
    ld bc, $0102                                  ; $6324: $01 $02 $01
    ld bc, $0201                                  ; $6327: $01 $01 $02
    ld bc, $0101                                  ; $632A: $01 $01 $01
    inc bc                                        ; $632D: $03
    ld bc, $0203                                  ; $632E: $01 $03 $02
    ld a, [bc]                                    ; $6331: $0A
    ld [bc], a                                    ; $6332: $02
    dec bc                                        ; $6333: $0B
    ld [bc], a                                    ; $6334: $02
    inc c                                         ; $6335: $0C
    ld [bc], a                                    ; $6336: $02
    dec c                                         ; $6337: $0D
    ld [bc], a                                    ; $6338: $02
    dec bc                                        ; $6339: $0B
    ld bc, $012F                                  ; $633A: $01 $2F $01
    cpl                                           ; $633D: $2F
    ld bc, $012F                                  ; $633E: $01 $2F $01
    cpl                                           ; $6341: $2F
    ld bc, $012F                                  ; $6342: $01 $2F $01
    cpl                                           ; $6345: $2F
    ld bc, $041E                                  ; $6346: $01 $1E $04
    ld [bc], a                                    ; $6349: $02
    inc b                                         ; $634A: $04
    ld [bc], a                                    ; $634B: $02
    inc b                                         ; $634C: $04
    ld bc, $0B02                                  ; $634D: $01 $02 $0B
    inc b                                         ; $6350: $04
    ld bc, HeaderLogo                             ; $6351: $01 $04 $01
    inc b                                         ; $6354: $04
    ld bc, $0A02                                  ; $6355: $01 $02 $0A
    ld [bc], a                                    ; $6358: $02
    dec bc                                        ; $6359: $0B
    ld [bc], a                                    ; $635A: $02
    inc c                                         ; $635B: $0C
    ld [bc], a                                    ; $635C: $02
    dec c                                         ; $635D: $0D
    ld [bc], a                                    ; $635E: $02
    dec c                                         ; $635F: $0D
    ld [bc], a                                    ; $6360: $02
    inc c                                         ; $6361: $0C
    ld bc, $012F                                  ; $6362: $01 $2F $01
    cpl                                           ; $6365: $2F
    ld bc, $012F                                  ; $6366: $01 $2F $01
    cpl                                           ; $6369: $2F
    ld bc, $012F                                  ; $636A: $01 $2F $01
    cpl                                           ; $636D: $2F
    ld bc, $041F                                  ; $636E: $01 $1F $04
    ld bc, HeaderLogo                             ; $6371: $01 $04 $01
    inc b                                         ; $6374: $04
    ld bc, HeaderLogo                             ; $6375: $01 $04 $01
    inc b                                         ; $6378: $04
    ld bc, $0204                                  ; $6379: $01 $04 $02
    inc b                                         ; $637C: $04
    ld bc, $0B02                                  ; $637D: $01 $02 $0B
    ld [bc], a                                    ; $6380: $02
    dec bc                                        ; $6381: $0B
    ld [bc], a                                    ; $6382: $02
    inc c                                         ; $6383: $0C
    ld [bc], a                                    ; $6384: $02
    dec c                                         ; $6385: $0D
    ld [bc], a                                    ; $6386: $02
    dec c                                         ; $6387: $0D
    ld [bc], a                                    ; $6388: $02
    dec c                                         ; $6389: $0D
    ld bc, $012F                                  ; $638A: $01 $2F $01
    cpl                                           ; $638D: $2F
    ld bc, $012F                                  ; $638E: $01 $2F $01
    cpl                                           ; $6391: $2F
    ld bc, $012F                                  ; $6392: $01 $2F $01
    cpl                                           ; $6395: $2F
    ld bc, $011E                                  ; $6396: $01 $1E $01
    ld bc, $0101                                  ; $6399: $01 $01 $01
    ld bc, $0101                                  ; $639C: $01 $01 $01
    ld bc, $0B02                                  ; $639F: $01 $02 $0B
    inc b                                         ; $63A2: $04
    ld [bc], a                                    ; $63A3: $02
    inc b                                         ; $63A4: $04
    ld [bc], a                                    ; $63A5: $02
    ld bc, $0202                                  ; $63A6: $01 $02 $02
    ld a, [bc]                                    ; $63A9: $0A
    ld [bc], a                                    ; $63AA: $02
    dec bc                                        ; $63AB: $0B
    ld [bc], a                                    ; $63AC: $02
    inc c                                         ; $63AD: $0C
    ld [bc], a                                    ; $63AE: $02
    dec c                                         ; $63AF: $0D
    ld [bc], a                                    ; $63B0: $02
    dec c                                         ; $63B1: $0D
    ld bc, $0111                                  ; $63B2: $01 $11 $01
    ld [de], a                                    ; $63B5: $12
    ld bc, $0111                                  ; $63B6: $01 $11 $01
    ld [de], a                                    ; $63B9: $12
    ld bc, $0111                                  ; $63BA: $01 $11 $01
    ld [de], a                                    ; $63BD: $12
    ld bc, $0115                                  ; $63BE: $01 $15 $01
    ld bc, $0101                                  ; $63C1: $01 $01 $01
    ld bc, $0101                                  ; $63C4: $01 $01 $01
    ld bc, $0204                                  ; $63C7: $01 $04 $02
    ld bc, $0101                                  ; $63CA: $01 $01 $01
    ld bc, $0101                                  ; $63CD: $01 $01 $01
    ld bc, $0201                                  ; $63D0: $01 $01 $02
    ld a, [bc]                                    ; $63D3: $0A
    ld [bc], a                                    ; $63D4: $02
    dec bc                                        ; $63D5: $0B
    ld [bc], a                                    ; $63D6: $02
    dec bc                                        ; $63D7: $0B
    ld [bc], a                                    ; $63D8: $02
    inc c                                         ; $63D9: $0C
    ld bc, $0101                                  ; $63DA: $01 $01 $01
    ld bc, $0101                                  ; $63DD: $01 $01 $01
    ld bc, $0101                                  ; $63E0: $01 $01 $01
    ld bc, $0101                                  ; $63E3: $01 $01 $01
    ld bc, $0101                                  ; $63E6: $01 $01 $01
    ld bc, $0101                                  ; $63E9: $01 $01 $01
    ld bc, $0101                                  ; $63EC: $01 $01 $01
    ld bc, HeaderLogo                             ; $63EF: $01 $04 $01
    ld bc, $0102                                  ; $63F2: $01 $02 $01
    ld bc, $0101                                  ; $63F5: $01 $01 $01
    ld bc, $0101                                  ; $63F8: $01 $01 $01
    ld bc, $0101                                  ; $63FB: $01 $01 $01
    ld [bc], a                                    ; $63FE: $02
    ld a, [bc]                                    ; $63FF: $0A
    ld [bc], a                                    ; $6400: $02
    ld a, [bc]                                    ; $6401: $0A
    ld bc, $0101                                  ; $6402: $01 $01 $01
    ld bc, $0101                                  ; $6405: $01 $01 $01
    dec b                                         ; $6408: $05
    dec hl                                        ; $6409: $2B
    ld bc, $0101                                  ; $640A: $01 $01 $01
    ld bc, $0204                                  ; $640D: $01 $04 $02
    ld bc, $0101                                  ; $6410: $01 $01 $01
    ld bc, $2B05                                  ; $6413: $01 $05 $2B
    ld bc, $0101                                  ; $6416: $01 $01 $01
    ld bc, $0101                                  ; $6419: $01 $01 $01
    ld bc, $0101                                  ; $641C: $01 $01 $01
    ld bc, $2B05                                  ; $641F: $01 $05 $2B
    ld bc, $0101                                  ; $6422: $01 $01 $01
    ld bc, $0201                                  ; $6425: $01 $01 $02
    ld bc, $0101                                  ; $6428: $01 $01 $01
    ld bc, $0101                                  ; $642B: $01 $01 $01
    ld bc, $0101                                  ; $642E: $01 $01 $01
    ld bc, $0101                                  ; $6431: $01 $01 $01
    ld bc, $0202                                  ; $6434: $01 $02 $02
    dec bc                                        ; $6437: $0B
    ld bc, $0401                                  ; $6438: $01 $01 $04
    ld bc, $0101                                  ; $643B: $01 $01 $01
    ld bc, $0401                                  ; $643E: $01 $01 $04
    ld bc, $0201                                  ; $6441: $01 $01 $02
    ld bc, $0101                                  ; $6444: $01 $01 $01
    ld bc, $0101                                  ; $6447: $01 $01 $01
    ld bc, $0401                                  ; $644A: $01 $01 $04
    ld [bc], a                                    ; $644D: $02
    ld [bc], a                                    ; $644E: $02
    ld a, [bc]                                    ; $644F: $0A
    ld bc, $0101                                  ; $6450: $01 $01 $01
    ld bc, $0101                                  ; $6453: $01 $01 $01
    ld bc, $0102                                  ; $6456: $01 $02 $01
    ld bc, $0101                                  ; $6459: $01 $01 $01
    ld bc, $0402                                  ; $645C: $01 $02 $04
    ld [bc], a                                    ; $645F: $02
    inc b                                         ; $6460: $04
    ld bc, $0101                                  ; $6461: $01 $01 $01
    ld bc, $0101                                  ; $6464: $01 $01 $01
    ld bc, $0101                                  ; $6467: $01 $01 $01
    ld bc, $0102                                  ; $646A: $01 $02 $01
    ld bc, $0A02                                  ; $646D: $01 $02 $0A
    inc b                                         ; $6470: $04
    ld [bc], a                                    ; $6471: $02
    inc b                                         ; $6472: $04
    ld bc, HeaderLogo                             ; $6473: $01 $04 $01
    ld bc, $0101                                  ; $6476: $01 $01 $01
    ld bc, $0101                                  ; $6479: $01 $01 $01
    ld bc, $0101                                  ; $647C: $01 $01 $01
    ld c, $01                                     ; $647F: $0E $01
    ld a, [de]                                    ; $6481: $1A
    ld bc, $011A                                  ; $6482: $01 $1A $01
    rrca                                          ; $6485: $0F
    inc b                                         ; $6486: $04
    ld bc, $0201                                  ; $6487: $01 $01 $02
    ld [bc], a                                    ; $648A: $02
    dec bc                                        ; $648B: $0B
    ld bc, $0101                                  ; $648C: $01 $01 $01
    ld bc, $0101                                  ; $648F: $01 $01 $01
    ld bc, $0102                                  ; $6492: $01 $02 $01
    ld [bc], a                                    ; $6495: $02
    ld bc, $0101                                  ; $6496: $01 $01 $01
    ld b, $02                                     ; $6499: $06 $02
    ld a, [bc]                                    ; $649B: $0A
    ld bc, $0101                                  ; $649C: $01 $01 $01
    ld bc, $0B02                                  ; $649F: $01 $02 $0B
    ld bc, $0101                                  ; $64A2: $01 $01 $01
    ld bc, $1D01                                  ; $64A5: $01 $01 $1D
    ld bc, $012F                                  ; $64A8: $01 $2F $01
    cpl                                           ; $64AB: $2F
    ld bc, $011E                                  ; $64AC: $01 $1E $01
    ld bc, $0101                                  ; $64AF: $01 $01 $01
    ld [bc], a                                    ; $64B2: $02
    dec bc                                        ; $64B3: $0B
    ld bc, $010E                                  ; $64B4: $01 $0E $01
    ld a, [de]                                    ; $64B7: $1A
    ld bc, $011A                                  ; $64B8: $01 $1A $01
    rrca                                          ; $64BB: $0F
    ld bc, $0101                                  ; $64BC: $01 $01 $01
    ld bc, $0201                                  ; $64BF: $01 $01 $02
    ld bc, $0102                                  ; $64C2: $01 $02 $01
    ld bc, $0B02                                  ; $64C5: $01 $02 $0B
    ld [bc], a                                    ; $64C8: $02
    inc c                                         ; $64C9: $0C
    ld [bc], a                                    ; $64CA: $02
    ld a, [bc]                                    ; $64CB: $0A
    inc b                                         ; $64CC: $04
    ld bc, $1D01                                  ; $64CD: $01 $01 $1D
    ld bc, $012F                                  ; $64D0: $01 $2F $01
    cpl                                           ; $64D3: $2F
    ld bc, $011F                                  ; $64D4: $01 $1F $01
    ld bc, $0101                                  ; $64D7: $01 $01 $01
    ld bc, $0101                                  ; $64DA: $01 $01 $01
    dec e                                         ; $64DD: $1D
    ld bc, $012F                                  ; $64DE: $01 $2F $01
    cpl                                           ; $64E1: $2F
    ld bc, $011E                                  ; $64E2: $01 $1E $01
    ld bc, $0101                                  ; $64E5: $01 $01 $01
    ld bc, $0101                                  ; $64E8: $01 $01 $01
    ld bc, $0B02                                  ; $64EB: $01 $02 $0B
    ld [bc], a                                    ; $64EE: $02
    inc c                                         ; $64EF: $0C
    ld [bc], a                                    ; $64F0: $02
    dec c                                         ; $64F1: $0D
    ld [bc], a                                    ; $64F2: $02
    dec bc                                        ; $64F3: $0B
    ld [bc], a                                    ; $64F4: $02
    ld a, [bc]                                    ; $64F5: $0A
    ld bc, $0114                                  ; $64F6: $01 $14 $01
    ld [de], a                                    ; $64F9: $12
    ld bc, $0111                                  ; $64FA: $01 $11 $01
    dec d                                         ; $64FD: $15
    ld bc, $0401                                  ; $64FE: $01 $01 $04
    ld [bc], a                                    ; $6501: $02
    ld bc, $0101                                  ; $6502: $01 $01 $01
    dec e                                         ; $6505: $1D
    ld bc, $012F                                  ; $6506: $01 $2F $01
    cpl                                           ; $6509: $2F
    ld bc, $011F                                  ; $650A: $01 $1F $01
    ld bc, $0101                                  ; $650D: $01 $01 $01
    ld [bc], a                                    ; $6510: $02
    ld a, [bc]                                    ; $6511: $0A
    ld bc, $0101                                  ; $6512: $01 $01 $01
    ld bc, $0A02                                  ; $6515: $01 $02 $0A
    ld [bc], a                                    ; $6518: $02
    inc c                                         ; $6519: $0C
    ld [bc], a                                    ; $651A: $02
    dec bc                                        ; $651B: $0B
    ld [bc], a                                    ; $651C: $02
    dec bc                                        ; $651D: $0B
    ld bc, $0101                                  ; $651E: $01 $01 $01
    ld [bc], a                                    ; $6521: $02
    ld bc, $0101                                  ; $6522: $01 $01 $01
    ld [bc], a                                    ; $6525: $02
    ld bc, $0201                                  ; $6526: $01 $01 $02
    dec bc                                        ; $6529: $0B
    ld bc, $0101                                  ; $652A: $01 $01 $01
    inc d                                         ; $652D: $14
    ld bc, $0112                                  ; $652E: $01 $12 $01
    ld de, $1501                                  ; $6531: $11 $01 $15
    ld bc, $0101                                  ; $6534: $01 $01 $01
    ld bc, $0101                                  ; $6537: $01 $01 $01
    ld bc, $0101                                  ; $653A: $01 $01 $01
    ld [bc], a                                    ; $653D: $02
    ld bc, $0202                                  ; $653E: $01 $02 $02
    dec bc                                        ; $6541: $0B
    ld [bc], a                                    ; $6542: $02
    inc c                                         ; $6543: $0C
    ld [bc], a                                    ; $6544: $02
    dec bc                                        ; $6545: $0B
    ld [bc], a                                    ; $6546: $02
    ld a, [bc]                                    ; $6547: $0A
    ld bc, $0101                                  ; $6548: $01 $01 $01
    ld bc, $0101                                  ; $654B: $01 $01 $01
    inc b                                         ; $654E: $04
    ld bc, $0101                                  ; $654F: $01 $01 $01
    ld bc, $0101                                  ; $6552: $01 $01 $01
    ld bc, $0101                                  ; $6555: $01 $01 $01
    ld bc, $0102                                  ; $6558: $01 $02 $01
    ld bc, $0101                                  ; $655B: $01 $01 $01
    ld bc, $0101                                  ; $655E: $01 $01 $01
    ld bc, $0204                                  ; $6561: $01 $04 $02
    ld bc, $0101                                  ; $6564: $01 $01 $01
    ld bc, $0101                                  ; $6567: $01 $01 $01
    ld [bc], a                                    ; $656A: $02
    inc c                                         ; $656B: $0C
    ld [bc], a                                    ; $656C: $02
    inc c                                         ; $656D: $0C
    ld [bc], a                                    ; $656E: $02
    dec bc                                        ; $656F: $0B
    ld [bc], a                                    ; $6570: $02
    ld a, [bc]                                    ; $6571: $0A
    ld bc, $0101                                  ; $6572: $01 $01 $01
    ld bc, $0101                                  ; $6575: $01 $01 $01
    ld bc, $0103                                  ; $6578: $01 $03 $01
    ld bc, $0101                                  ; $657B: $01 $01 $01
    ld bc, $0102                                  ; $657E: $01 $02 $01
    ld [bc], a                                    ; $6581: $02
    ld bc, $0101                                  ; $6582: $01 $01 $01
    ld bc, $0E01                                  ; $6585: $01 $01 $0E
    ld bc, $011A                                  ; $6588: $01 $1A $01
    ld a, [de]                                    ; $658B: $1A
    ld bc, $010F                                  ; $658C: $01 $0F $01
    ld bc, $0101                                  ; $658F: $01 $01 $01
    ld [bc], a                                    ; $6592: $02
    dec c                                         ; $6593: $0D
    ld [bc], a                                    ; $6594: $02
    dec c                                         ; $6595: $0D
    ld [bc], a                                    ; $6596: $02
    inc c                                         ; $6597: $0C
    ld [bc], a                                    ; $6598: $02
    dec bc                                        ; $6599: $0B
    ld bc, $0101                                  ; $659A: $01 $01 $01
    ld [bc], a                                    ; $659D: $02
    ld [bc], a                                    ; $659E: $02
    dec bc                                        ; $659F: $0B
    ld bc, $0103                                  ; $65A0: $01 $03 $01
    ld [bc], a                                    ; $65A3: $02
    ld bc, $0101                                  ; $65A4: $01 $01 $01
    ld bc, $0201                                  ; $65A7: $01 $01 $02
    ld bc, $0401                                  ; $65AA: $01 $01 $04
    ld bc, $1D01                                  ; $65AD: $01 $01 $1D
    ld bc, $012F                                  ; $65B0: $01 $2F $01
    cpl                                           ; $65B3: $2F
    ld bc, $011E                                  ; $65B4: $01 $1E $01
    ld bc, $0101                                  ; $65B7: $01 $01 $01
    ld [bc], a                                    ; $65BA: $02
    dec c                                         ; $65BB: $0D
    ld [bc], a                                    ; $65BC: $02
    dec c                                         ; $65BD: $0D
    ld [bc], a                                    ; $65BE: $02
    inc c                                         ; $65BF: $0C
    ld [bc], a                                    ; $65C0: $02
    dec bc                                        ; $65C1: $0B
    ld [bc], a                                    ; $65C2: $02
    ld a, [bc]                                    ; $65C3: $0A
    ld bc, $0102                                  ; $65C4: $01 $02 $01
    inc bc                                        ; $65C7: $03
    ld bc, $0401                                  ; $65C8: $01 $01 $04
    ld bc, $0101                                  ; $65CB: $01 $01 $01
    ld bc, $0102                                  ; $65CE: $01 $02 $01
    ld [bc], a                                    ; $65D1: $02
    ld bc, $0401                                  ; $65D2: $01 $01 $04
    ld bc, $1D01                                  ; $65D5: $01 $01 $1D
    ld bc, $012F                                  ; $65D8: $01 $2F $01
    cpl                                           ; $65DB: $2F
    ld bc, $011F                                  ; $65DC: $01 $1F $01
    ld bc, $0101                                  ; $65DF: $01 $01 $01
    ld [bc], a                                    ; $65E2: $02
    dec c                                         ; $65E3: $0D
    ld [bc], a                                    ; $65E4: $02
    dec c                                         ; $65E5: $0D
    ld [bc], a                                    ; $65E6: $02
    dec bc                                        ; $65E7: $0B
    ld [bc], a                                    ; $65E8: $02
    dec bc                                        ; $65E9: $0B
    ld [bc], a                                    ; $65EA: $02
    ld a, [bc]                                    ; $65EB: $0A
    ld bc, $0101                                  ; $65EC: $01 $01 $01
    ld bc, $0B02                                  ; $65EF: $01 $02 $0B
    ld [bc], a                                    ; $65F2: $02
    dec bc                                        ; $65F3: $0B
    ld bc, $0401                                  ; $65F4: $01 $01 $04
    ld [bc], a                                    ; $65F7: $02
    ld bc, $0101                                  ; $65F8: $01 $01 $01
    ld bc, $0101                                  ; $65FB: $01 $01 $01
    ld bc, $0114                                  ; $65FE: $01 $14 $01
    ld [de], a                                    ; $6601: $12
    ld bc, $0111                                  ; $6602: $01 $11 $01
    dec d                                         ; $6605: $15
    ld bc, $0101                                  ; $6606: $01 $01 $01
    ld bc, $0D02                                  ; $6609: $01 $02 $0D
    ld [bc], a                                    ; $660C: $02
    inc c                                         ; $660D: $0C
    ld [bc], a                                    ; $660E: $02
    dec bc                                        ; $660F: $0B
    ld [bc], a                                    ; $6610: $02
    ld a, [bc]                                    ; $6611: $0A
    ld bc, $0101                                  ; $6612: $01 $01 $01
    ld bc, $0101                                  ; $6615: $01 $01 $01
    ld bc, $0201                                  ; $6618: $01 $01 $02
    dec bc                                        ; $661B: $0B
    ld bc, $0102                                  ; $661C: $01 $02 $01
    ld bc, HeaderLogo                             ; $661F: $01 $04 $01
    ld bc, $0101                                  ; $6622: $01 $01 $01
    ld bc, $0101                                  ; $6625: $01 $01 $01
    ld bc, $0101                                  ; $6628: $01 $01 $01
    ld bc, $0101                                  ; $662B: $01 $01 $01
    ld bc, $0101                                  ; $662E: $01 $01 $01
    ld bc, $0C02                                  ; $6631: $01 $02 $0C
    ld [bc], a                                    ; $6634: $02
    dec bc                                        ; $6635: $0B
    ld [bc], a                                    ; $6636: $02
    ld a, [bc]                                    ; $6637: $0A
    ld bc, $0101                                  ; $6638: $01 $01 $01
    ld bc, $0101                                  ; $663B: $01 $01 $01
    ld bc, $0101                                  ; $663E: $01 $01 $01
    ld bc, $0101                                  ; $6641: $01 $01 $01
    ld bc, $0102                                  ; $6644: $01 $02 $01
    ld bc, $0101                                  ; $6647: $01 $01 $01
    ld bc, $0101                                  ; $664A: $01 $01 $01
    ld bc, $0101                                  ; $664D: $01 $01 $01
    ld bc, $0101                                  ; $6650: $01 $01 $01
    ld bc, $0101                                  ; $6653: $01 $01 $01
    ld bc, $0101                                  ; $6656: $01 $01 $01
    ld bc, $0B02                                  ; $6659: $01 $02 $0B
    ld [bc], a                                    ; $665C: $02
    ld a, [bc]                                    ; $665D: $0A
    ld bc, $0102                                  ; $665E: $01 $02 $01
    ld bc, $0101                                  ; $6661: $01 $01 $01
    ld bc, $0101                                  ; $6664: $01 $01 $01
    ld bc, $0101                                  ; $6667: $01 $01 $01
    ld bc, $0101                                  ; $666A: $01 $01 $01
    ld [bc], a                                    ; $666D: $02
    ld bc, $0102                                  ; $666E: $01 $02 $01
    ld [bc], a                                    ; $6671: $02
    ld bc, $0102                                  ; $6672: $01 $02 $01
    ld bc, $0101                                  ; $6675: $01 $01 $01
    ld bc, $0101                                  ; $6678: $01 $01 $01
    ld bc, $0101                                  ; $667B: $01 $01 $01
    ld bc, $0101                                  ; $667E: $01 $01 $01
    ld bc, $0A02                                  ; $6681: $01 $02 $0A
    ld bc, $0101                                  ; $6684: $01 $01 $01
    ld bc, $0201                                  ; $6687: $01 $01 $02
    ld bc, $0102                                  ; $668A: $01 $02 $01
    ld [bc], a                                    ; $668D: $02
    dec b                                         ; $668E: $05
    dec hl                                        ; $668F: $2B
    ld bc, $0101                                  ; $6690: $01 $01 $01
    ld [bc], a                                    ; $6693: $02
    ld [bc], a                                    ; $6694: $02
    dec bc                                        ; $6695: $0B
    ld bc, $0101                                  ; $6696: $01 $01 $01
    ld [bc], a                                    ; $6699: $02
    ld bc, $0503                                  ; $669A: $01 $03 $05
    dec hl                                        ; $669D: $2B
    ld bc, $0201                                  ; $669E: $01 $01 $02
    ld a, [bc]                                    ; $66A1: $0A
    ld bc, $0101                                  ; $66A2: $01 $01 $01
    ld bc, $0101                                  ; $66A5: $01 $01 $01
    ld bc, $0101                                  ; $66A8: $01 $01 $01
    ld bc, $0101                                  ; $66AB: $01 $01 $01
    ld bc, $0101                                  ; $66AE: $01 $01 $01
    ld bc, $0101                                  ; $66B1: $01 $01 $01
    ld bc, $0101                                  ; $66B4: $01 $01 $01
    ld bc, $0101                                  ; $66B7: $01 $01 $01
    ld bc, $0101                                  ; $66BA: $01 $01 $01
    ld bc, $0201                                  ; $66BD: $01 $01 $02
    ld bc, $0203                                  ; $66C0: $01 $03 $02
    ld a, [bc]                                    ; $66C3: $0A
    ld [bc], a                                    ; $66C4: $02
    ld a, [bc]                                    ; $66C5: $0A
    ld [bc], a                                    ; $66C6: $02
    ld a, [bc]                                    ; $66C7: $0A
    ld [bc], a                                    ; $66C8: $02
    ld a, [bc]                                    ; $66C9: $0A
    ld bc, $0101                                  ; $66CA: $01 $01 $01
    ld bc, $0101                                  ; $66CD: $01 $01 $01
    ld bc, $0101                                  ; $66D0: $01 $01 $01
    ld bc, $0101                                  ; $66D3: $01 $01 $01
    ld bc, $0101                                  ; $66D6: $01 $01 $01
    ld bc, $0101                                  ; $66D9: $01 $01 $01
    ld bc, $0102                                  ; $66DC: $01 $02 $01
    ld [bc], a                                    ; $66DF: $02
    ld bc, $0101                                  ; $66E0: $01 $01 $01
    ld bc, $0301                                  ; $66E3: $01 $01 $03
    ld [bc], a                                    ; $66E6: $02
    ld a, [bc]                                    ; $66E7: $0A
    ld [bc], a                                    ; $66E8: $02
    ld a, [bc]                                    ; $66E9: $0A
    ld [bc], a                                    ; $66EA: $02
    dec bc                                        ; $66EB: $0B
    ld [bc], a                                    ; $66EC: $02
    dec bc                                        ; $66ED: $0B
    ld [bc], a                                    ; $66EE: $02
    dec bc                                        ; $66EF: $0B
    ld [bc], a                                    ; $66F0: $02
    dec bc                                        ; $66F1: $0B
    ld [bc], a                                    ; $66F2: $02
    ld a, [bc]                                    ; $66F3: $0A
    ld bc, $0201                                  ; $66F4: $01 $01 $02
    ld a, [bc]                                    ; $66F7: $0A
    ld bc, $0101                                  ; $66F8: $01 $01 $01
    ld bc, $0101                                  ; $66FB: $01 $01 $01
    ld bc, $0101                                  ; $66FE: $01 $01 $01
    inc bc                                        ; $6701: $03
    ld bc, $0102                                  ; $6702: $01 $02 $01
    ld [bc], a                                    ; $6705: $02
    ld bc, $0103                                  ; $6706: $01 $03 $01
    ld bc, $0A02                                  ; $6709: $01 $02 $0A
    ld [bc], a                                    ; $670C: $02
    ld a, [bc]                                    ; $670D: $0A
    ld [bc], a                                    ; $670E: $02
    dec bc                                        ; $670F: $0B
    ld [bc], a                                    ; $6710: $02
    inc c                                         ; $6711: $0C
    ld [bc], a                                    ; $6712: $02
    inc c                                         ; $6713: $0C
    ld [bc], a                                    ; $6714: $02
    inc c                                         ; $6715: $0C
    ld [bc], a                                    ; $6716: $02
    dec bc                                        ; $6717: $0B
    ld [bc], a                                    ; $6718: $02
    ld a, [bc]                                    ; $6719: $0A
    ld [bc], a                                    ; $671A: $02
    ld a, [bc]                                    ; $671B: $0A
    ld [bc], a                                    ; $671C: $02
    ld a, [bc]                                    ; $671D: $0A
    ld [bc], a                                    ; $671E: $02
    ld a, [bc]                                    ; $671F: $0A
    ld bc, $0101                                  ; $6720: $01 $01 $01
    ld bc, $0101                                  ; $6723: $01 $01 $01
    ld bc, $0103                                  ; $6726: $01 $03 $01
    ld [bc], a                                    ; $6729: $02
    ld bc, $0102                                  ; $672A: $01 $02 $01
    ld [bc], a                                    ; $672D: $02
    ld [bc], a                                    ; $672E: $02
    ld a, [bc]                                    ; $672F: $0A
    ld [bc], a                                    ; $6730: $02
    ld a, [bc]                                    ; $6731: $0A
    ld [bc], a                                    ; $6732: $02
    dec bc                                        ; $6733: $0B
    ld [bc], a                                    ; $6734: $02
    dec bc                                        ; $6735: $0B
    ld [bc], a                                    ; $6736: $02
    inc c                                         ; $6737: $0C
    ld [bc], a                                    ; $6738: $02
    dec c                                         ; $6739: $0D
    ld [bc], a                                    ; $673A: $02
    dec c                                         ; $673B: $0D
    ld [bc], a                                    ; $673C: $02
    dec bc                                        ; $673D: $0B
    ld [bc], a                                    ; $673E: $02
    inc c                                         ; $673F: $0C
    ld [bc], a                                    ; $6740: $02
    dec bc                                        ; $6741: $0B
    ld [bc], a                                    ; $6742: $02
    ld a, [bc]                                    ; $6743: $0A
    ld [bc], a                                    ; $6744: $02
    ld a, [bc]                                    ; $6745: $0A
    ld bc, $0101                                  ; $6746: $01 $01 $01
    ld bc, $0101                                  ; $6749: $01 $01 $01
    ld bc, $0101                                  ; $674C: $01 $01 $01
    inc bc                                        ; $674F: $03
    ld bc, $0203                                  ; $6750: $01 $03 $02
    ld a, [bc]                                    ; $6753: $0A
    ld [bc], a                                    ; $6754: $02
    ld a, [bc]                                    ; $6755: $0A
    ld [bc], a                                    ; $6756: $02
    dec bc                                        ; $6757: $0B
    ld [bc], a                                    ; $6758: $02
    dec bc                                        ; $6759: $0B
    ld [bc], a                                    ; $675A: $02
    inc c                                         ; $675B: $0C
    ld [bc], a                                    ; $675C: $02
    dec c                                         ; $675D: $0D
    ld [bc], a                                    ; $675E: $02
    dec c                                         ; $675F: $0D
    ld [bc], a                                    ; $6760: $02
    dec c                                         ; $6761: $0D
    ld [bc], a                                    ; $6762: $02
    dec c                                         ; $6763: $0D
    ld [bc], a                                    ; $6764: $02
    dec c                                         ; $6765: $0D
    ld [bc], a                                    ; $6766: $02
    inc c                                         ; $6767: $0C
    ld [bc], a                                    ; $6768: $02
    dec bc                                        ; $6769: $0B
    ld [bc], a                                    ; $676A: $02
    ld a, [bc]                                    ; $676B: $0A
    ld bc, $0101                                  ; $676C: $01 $01 $01
    ld bc, HeaderLogo                             ; $676F: $01 $04 $01
    ld bc, $0101                                  ; $6772: $01 $01 $01
    ld bc, $0301                                  ; $6775: $01 $01 $03
    ld [bc], a                                    ; $6778: $02
    ld a, [bc]                                    ; $6779: $0A
    ld [bc], a                                    ; $677A: $02
    ld a, [bc]                                    ; $677B: $0A
    ld [bc], a                                    ; $677C: $02
    inc c                                         ; $677D: $0C
    ld [bc], a                                    ; $677E: $02
    inc c                                         ; $677F: $0C
    ld [bc], a                                    ; $6780: $02
    ld a, [bc]                                    ; $6781: $0A
    ld [bc], a                                    ; $6782: $02
    dec c                                         ; $6783: $0D
    ld [bc], a                                    ; $6784: $02
    dec c                                         ; $6785: $0D
    ld [bc], a                                    ; $6786: $02
    dec c                                         ; $6787: $0D
    ld [bc], a                                    ; $6788: $02
    dec bc                                        ; $6789: $0B
    ld [bc], a                                    ; $678A: $02
    dec c                                         ; $678B: $0D
    ld [bc], a                                    ; $678C: $02
    dec c                                         ; $678D: $0D
    ld [bc], a                                    ; $678E: $02
    inc c                                         ; $678F: $0C
    ld [bc], a                                    ; $6790: $02
    dec bc                                        ; $6791: $0B
    ld [bc], a                                    ; $6792: $02
    ld a, [bc]                                    ; $6793: $0A
    ld bc, $0101                                  ; $6794: $01 $01 $01
    ld bc, $0101                                  ; $6797: $01 $01 $01
    ld bc, $0101                                  ; $679A: $01 $01 $01
    inc bc                                        ; $679D: $03
    ld [bc], a                                    ; $679E: $02
    ld a, [bc]                                    ; $679F: $0A
    ld [bc], a                                    ; $67A0: $02
    ld a, [bc]                                    ; $67A1: $0A
    ld [bc], a                                    ; $67A2: $02
    inc c                                         ; $67A3: $0C
    ld [bc], a                                    ; $67A4: $02
    inc c                                         ; $67A5: $0C
    ld [bc], a                                    ; $67A6: $02
    dec c                                         ; $67A7: $0D
    ld [bc], a                                    ; $67A8: $02
    dec c                                         ; $67A9: $0D
    ld [bc], a                                    ; $67AA: $02
    dec c                                         ; $67AB: $0D
    ld [bc], a                                    ; $67AC: $02
    dec bc                                        ; $67AD: $0B
    ld [bc], a                                    ; $67AE: $02
    dec c                                         ; $67AF: $0D
    ld [bc], a                                    ; $67B0: $02
    dec c                                         ; $67B1: $0D
    ld [bc], a                                    ; $67B2: $02
    dec c                                         ; $67B3: $0D
    ld [bc], a                                    ; $67B4: $02
    inc c                                         ; $67B5: $0C
    ld [bc], a                                    ; $67B6: $02
    dec bc                                        ; $67B7: $0B
    ld [bc], a                                    ; $67B8: $02
    ld a, [bc]                                    ; $67B9: $0A
    ld [bc], a                                    ; $67BA: $02
    ld a, [bc]                                    ; $67BB: $0A
    ld bc, $0102                                  ; $67BC: $01 $02 $01
    ld bc, $0101                                  ; $67BF: $01 $01 $01
    ld bc, $0201                                  ; $67C2: $01 $01 $02
    ld a, [bc]                                    ; $67C5: $0A
    ld [bc], a                                    ; $67C6: $02
    dec bc                                        ; $67C7: $0B
    ld [bc], a                                    ; $67C8: $02
    inc c                                         ; $67C9: $0C
    ld [bc], a                                    ; $67CA: $02
    dec c                                         ; $67CB: $0D
    ld [bc], a                                    ; $67CC: $02
    dec bc                                        ; $67CD: $0B
    ld [bc], a                                    ; $67CE: $02
    dec c                                         ; $67CF: $0D
    ld [bc], a                                    ; $67D0: $02
    dec c                                         ; $67D1: $0D
    ld [bc], a                                    ; $67D2: $02
    dec c                                         ; $67D3: $0D
    ld [bc], a                                    ; $67D4: $02
    dec c                                         ; $67D5: $0D
    ld [bc], a                                    ; $67D6: $02
    dec c                                         ; $67D7: $0D
    ld [bc], a                                    ; $67D8: $02
    dec c                                         ; $67D9: $0D
    ld [bc], a                                    ; $67DA: $02
    dec c                                         ; $67DB: $0D
    ld [bc], a                                    ; $67DC: $02
    dec bc                                        ; $67DD: $0B
    ld [bc], a                                    ; $67DE: $02
    dec bc                                        ; $67DF: $0B
    ld [bc], a                                    ; $67E0: $02
    ld a, [bc]                                    ; $67E1: $0A
    ld bc, $0103                                  ; $67E2: $01 $03 $01
    ld bc, HeaderLogo                             ; $67E5: $01 $04 $01
    inc b                                         ; $67E8: $04
    ld bc, $0A02                                  ; $67E9: $01 $02 $0A
    ld [bc], a                                    ; $67EC: $02
    dec bc                                        ; $67ED: $0B
    ld [bc], a                                    ; $67EE: $02
    dec bc                                        ; $67EF: $0B
    ld [bc], a                                    ; $67F0: $02
    dec c                                         ; $67F1: $0D
    ld [bc], a                                    ; $67F2: $02
    dec c                                         ; $67F3: $0D
    ld [bc], a                                    ; $67F4: $02
    dec c                                         ; $67F5: $0D
    ld [bc], a                                    ; $67F6: $02
    dec c                                         ; $67F7: $0D
    ld [bc], a                                    ; $67F8: $02
    dec c                                         ; $67F9: $0D
    ld [bc], a                                    ; $67FA: $02
    dec c                                         ; $67FB: $0D
    ld [bc], a                                    ; $67FC: $02
    dec c                                         ; $67FD: $0D
    ld [bc], a                                    ; $67FE: $02
    dec c                                         ; $67FF: $0D
    ld [bc], a                                    ; $6800: $02
    dec c                                         ; $6801: $0D
    ld [bc], a                                    ; $6802: $02
    dec bc                                        ; $6803: $0B
    ld [bc], a                                    ; $6804: $02
    dec bc                                        ; $6805: $0B
    ld [bc], a                                    ; $6806: $02
    ld a, [bc]                                    ; $6807: $0A
    ld [bc], a                                    ; $6808: $02
    ld a, [bc]                                    ; $6809: $0A
    ld bc, $0102                                  ; $680A: $01 $02 $01
    ld bc, $0204                                  ; $680D: $01 $04 $02
    inc b                                         ; $6810: $04
    ld bc, $0101                                  ; $6811: $01 $01 $01
    ld [bc], a                                    ; $6814: $02
    ld a, [bc]                                    ; $6815: $0A
    ld [bc], a                                    ; $6816: $02
    dec bc                                        ; $6817: $0B
    ld [bc], a                                    ; $6818: $02
    dec bc                                        ; $6819: $0B
    ld [bc], a                                    ; $681A: $02
    dec bc                                        ; $681B: $0B
    ld [bc], a                                    ; $681C: $02
    dec c                                         ; $681D: $0D
    ld [bc], a                                    ; $681E: $02
    dec c                                         ; $681F: $0D
    ld [bc], a                                    ; $6820: $02
    dec c                                         ; $6821: $0D
    ld [bc], a                                    ; $6822: $02
    dec bc                                        ; $6823: $0B
    ld [bc], a                                    ; $6824: $02
    dec c                                         ; $6825: $0D
    ld [bc], a                                    ; $6826: $02
    dec bc                                        ; $6827: $0B
    ld [bc], a                                    ; $6828: $02
    dec bc                                        ; $6829: $0B
    ld [bc], a                                    ; $682A: $02
    dec bc                                        ; $682B: $0B
    ld [bc], a                                    ; $682C: $02
    ld a, [bc]                                    ; $682D: $0A
    ld [bc], a                                    ; $682E: $02
    ld a, [bc]                                    ; $682F: $0A
    ld bc, $0103                                  ; $6830: $01 $03 $01
    ld [bc], a                                    ; $6833: $02
    ld bc, $0102                                  ; $6834: $01 $02 $01
    ld [bc], a                                    ; $6837: $02
    inc b                                         ; $6838: $04
    ld bc, $0101                                  ; $6839: $01 $01 $01
    ld bc, $0201                                  ; $683C: $01 $01 $02
    ld a, [bc]                                    ; $683F: $0A
    ld [bc], a                                    ; $6840: $02
    ld a, [bc]                                    ; $6841: $0A
    ld [bc], a                                    ; $6842: $02
    ld a, [bc]                                    ; $6843: $0A
    ld [bc], a                                    ; $6844: $02
    dec bc                                        ; $6845: $0B
    ld [bc], a                                    ; $6846: $02
    dec bc                                        ; $6847: $0B
    ld [bc], a                                    ; $6848: $02
    ld a, [bc]                                    ; $6849: $0A
    ld [bc], a                                    ; $684A: $02
    ld a, [bc]                                    ; $684B: $0A
    ld [bc], a                                    ; $684C: $02
    ld a, [bc]                                    ; $684D: $0A
    ld [bc], a                                    ; $684E: $02
    dec bc                                        ; $684F: $0B
    ld bc, $0203                                  ; $6850: $01 $03 $02
    ld a, [bc]                                    ; $6853: $0A
    ld [bc], a                                    ; $6854: $02
    ld a, [bc]                                    ; $6855: $0A
    ld bc, $0103                                  ; $6856: $01 $03 $01
    ld [bc], a                                    ; $6859: $02
    ld bc, $0101                                  ; $685A: $01 $01 $01

Call_035_685D:
    ld bc, HeaderLogo                             ; $685D: $01 $04 $01
    ld bc, $0101                                  ; $6860: $01 $01 $01
    ld bc, $0101                                  ; $6863: $01 $01 $01
    ld bc, $0102                                  ; $6866: $01 $02 $01
    ld [bc], a                                    ; $6869: $02
    ld [bc], a                                    ; $686A: $02
    ld a, [bc]                                    ; $686B: $0A
    ld [bc], a                                    ; $686C: $02
    ld a, [bc]                                    ; $686D: $0A
    ld [bc], a                                    ; $686E: $02
    ld a, [bc]                                    ; $686F: $0A
    ld [bc], a                                    ; $6870: $02
    ld a, [bc]                                    ; $6871: $0A
    ld [bc], a                                    ; $6872: $02
    ld a, [bc]                                    ; $6873: $0A
    ld [bc], a                                    ; $6874: $02
    ld a, [bc]                                    ; $6875: $0A
    ld [bc], a                                    ; $6876: $02
    ld a, [bc]                                    ; $6877: $0A
    ld [bc], a                                    ; $6878: $02
    ld a, [bc]                                    ; $6879: $0A
    ld [bc], a                                    ; $687A: $02
    ld a, [bc]                                    ; $687B: $0A
    ld bc, $0102                                  ; $687C: $01 $02 $01
    ld bc, $0101                                  ; $687F: $01 $01 $01
    ld bc, $0101                                  ; $6882: $01 $01 $01
    ld bc, $0101                                  ; $6885: $01 $01 $01
    inc b                                         ; $6888: $04
    ld bc, $0101                                  ; $6889: $01 $01 $01
    ld bc, $0401                                  ; $688C: $01 $01 $04
    ld bc, $0101                                  ; $688F: $01 $01 $01
    ld bc, $0101                                  ; $6892: $01 $01 $01
    ld [bc], a                                    ; $6895: $02
    ld [bc], a                                    ; $6896: $02
    ld a, [bc]                                    ; $6897: $0A
    ld [bc], a                                    ; $6898: $02
    ld a, [bc]                                    ; $6899: $0A
    ld [bc], a                                    ; $689A: $02
    ld a, [bc]                                    ; $689B: $0A
    ld [bc], a                                    ; $689C: $02
    ld a, [bc]                                    ; $689D: $0A
    ld bc, $0101                                  ; $689E: $01 $01 $01
    inc bc                                        ; $68A1: $03
    ld bc, $0103                                  ; $68A2: $01 $03 $01
    ld [bc], a                                    ; $68A5: $02
    ld bc, $0101                                  ; $68A6: $01 $01 $01
    ld bc, $0101                                  ; $68A9: $01 $01 $01
    inc b                                         ; $68AC: $04
    ld bc, HeaderLogo                             ; $68AD: $01 $04 $01
    inc b                                         ; $68B0: $04
    ld bc, $0101                                  ; $68B1: $01 $01 $01
    ld bc, $0101                                  ; $68B4: $01 $01 $01
    ld bc, $0101                                  ; $68B7: $01 $01 $01
    ld bc, $0101                                  ; $68BA: $01 $01 $01
    inc bc                                        ; $68BD: $03
    ld bc, $0103                                  ; $68BE: $01 $03 $01
    inc bc                                        ; $68C1: $03
    ld bc, $0103                                  ; $68C2: $01 $03 $01
    inc bc                                        ; $68C5: $03
    ld bc, $0403                                  ; $68C6: $01 $03 $04
    ld bc, $0101                                  ; $68C9: $01 $01 $01
    inc b                                         ; $68CC: $04
    ld bc, HeaderLogo                             ; $68CD: $01 $04 $01
    inc b                                         ; $68D0: $04
    ld bc, $0101                                  ; $68D1: $01 $01 $01
    inc b                                         ; $68D4: $04
    ld bc, HeaderLogo                             ; $68D5: $01 $04 $01
    ld bc, $0101                                  ; $68D8: $01 $01 $01
    ld bc, $0101                                  ; $68DB: $01 $01 $01
    ld bc, $0101                                  ; $68DE: $01 $01 $01
    ld bc, $0101                                  ; $68E1: $01 $01 $01
    ld bc, $0101                                  ; $68E4: $01 $01 $01
    ld bc, $0101                                  ; $68E7: $01 $01 $01
    ld bc, $0103                                  ; $68EA: $01 $03 $01
    ld bc, $0101                                  ; $68ED: $01 $01 $01
    ld bc, $0101                                  ; $68F0: $01 $01 $01
    ld bc, $0101                                  ; $68F3: $01 $01 $01
    ld bc, $0101                                  ; $68F6: $01 $01 $01
    ld bc, $0101                                  ; $68F9: $01 $01 $01
    ld bc, $0101                                  ; $68FC: $01 $01 $01
    ld bc, $0101                                  ; $68FF: $01 $01 $01
    ld d, h                                       ; $6902: $54
    add b                                         ; $6903: $80
    ld a, a                                       ; $6904: $7F
    nop                                           ; $6905: $00
    inc bc                                        ; $6906: $03
    inc bc                                        ; $6907: $03
    inc bc                                        ; $6908: $03
    inc bc                                        ; $6909: $03
    inc bc                                        ; $690A: $03
    inc bc                                        ; $690B: $03
    inc bc                                        ; $690C: $03
    rst RST_38                                    ; $690D: $FF
    inc bc                                        ; $690E: $03
    inc bc                                        ; $690F: $03
    inc bc                                        ; $6910: $03
    inc bc                                        ; $6911: $03
    inc bc                                        ; $6912: $03
    inc bc                                        ; $6913: $03
    inc bc                                        ; $6914: $03
    inc bc                                        ; $6915: $03
    and b                                         ; $6916: $A0
    ld [bc], a                                    ; $6917: $02
    inc bc                                        ; $6918: $03
    nop                                           ; $6919: $00
    rra                                           ; $691A: $1F
    inc e                                         ; $691B: $1C
    ccf                                           ; $691C: $3F
    inc hl                                        ; $691D: $23
    ld a, [hl]                                    ; $691E: $7E
    inc b                                         ; $691F: $04
    ld c, c                                       ; $6920: $49
    rst RST_30                                    ; $6921: $F7
    sbc [hl]                                      ; $6922: $9E
    db $E3                                        ; $6923: $E3
    cp [hl]                                       ; $6924: $BE
    ld b, $BD                                     ; $6925: $06 $BD
    and $80                                       ; $6927: $E6 $80
    inc b                                         ; $6929: $04
    db $FC                                        ; $692A: $FC
    or e                                          ; $692B: $B3
    ld a, b                                       ; $692C: $78
    ld c, a                                       ; $692D: $4F
    dec a                                         ; $692E: $3D
    ld h, $1E                                     ; $692F: $26 $1E
    ld [bc], a                                    ; $6931: $02
    inc de                                        ; $6932: $13
    rrca                                          ; $6933: $0F
    ld [$0607], sp                                ; $6934: $08 $07 $06
    ld bc, $C000                                  ; $6937: $01 $00 $C0
    add c                                         ; $693A: $81
    nop                                           ; $693B: $00
    ldh a, [$FF30]                                ; $693C: $F0 $30
    ld hl, sp-$38                                 ; $693E: $F8 $C8
    inc a                                         ; $6940: $3C
    db $F4                                        ; $6941: $F4
    inc a                                         ; $6942: $3C
    ld d, $E2                                     ; $6943: $16 $E2
    ld a, $C2                                     ; $6945: $3E $C2
    dec c                                         ; $6947: $0D
    rst RST_38                                    ; $6948: $FF
    inc a                                         ; $6949: $3C
    inc b                                         ; $694A: $04
    add c                                         ; $694B: $81
    or d                                          ; $694C: $B2
    dec b                                         ; $694D: $05
    ld a, a                                       ; $694E: $7F
    dec c                                         ; $694F: $0D
    inc e                                         ; $6950: $1C
    cp $02                                        ; $6951: $FE $02
    sbc h                                         ; $6953: $9C
    inc c                                         ; $6954: $0C
    push af                                       ; $6955: $F5
    ld h, l                                       ; $6956: $65
    ld [hl], l                                    ; $6957: $75
    db $FD                                        ; $6958: $FD
    sub h                                         ; $6959: $94
    inc b                                         ; $695A: $04
    and h                                         ; $695B: $A4
    dec bc                                        ; $695C: $0B
    or l                                          ; $695D: $B5
    ld [bc], a                                    ; $695E: $02
    ccf                                           ; $695F: $3F
    dec h                                         ; $6960: $25
    ld a, e                                       ; $6961: $7B
    ld c, l                                       ; $6962: $4D
    ld [hl], e                                    ; $6963: $73
    ld e, [hl]                                    ; $6964: $5E
    and h                                         ; $6965: $A4
    sub a                                         ; $6966: $97
    xor d                                         ; $6967: $AA
    ld h, h                                       ; $6968: $64
    and a                                         ; $6969: $A7
    inc b                                         ; $696A: $04
    or b                                          ; $696B: $B0
    ld a, h                                       ; $696C: $7C
    ld d, b                                       ; $696D: $50
    inc b                                         ; $696E: $04
    ld b, b                                       ; $696F: $40
    and a                                         ; $6970: $A7
    inc a                                         ; $6971: $3C
    jr nz, jr_035_6979                            ; $6972: $20 $05

    rra                                           ; $6974: $1F
    db $10                                        ; $6975: $10
    ld h, h                                       ; $6976: $64
    nop                                           ; $6977: $00
    adc h                                         ; $6978: $8C

jr_035_6979:
    call nc, $4C00                                ; $6979: $D4 $00 $4C
    ld [$E4A4], sp                                ; $697C: $08 $A4 $E4
    ld a, h                                       ; $697F: $7C
    ldh a, [c]                                    ; $6980: $F2
    ld c, $27                                     ; $6981: $0E $27
    ld a, [$0C8E]                                 ; $6983: $FA $8E $0C

jr_035_6986:
    adc a                                         ; $6986: $8F
    ld [hl], c                                    ; $6987: $71
    rst RST_20                                    ; $6988: $E7
    rst RST_28                                    ; $6989: $EF
    or $E7                                        ; $698A: $F6 $E7
    call nc, Call_035_685D                        ; $698C: $D4 $5D $68
    ld [hl], b                                    ; $698F: $70
    add b                                         ; $6990: $80
    nop                                           ; $6991: $00
    db $FD                                        ; $6992: $FD

jr_035_6993:
    adc b                                         ; $6993: $88
    ld d, h                                       ; $6994: $54
    inc c                                         ; $6995: $0C
    and h                                         ; $6996: $A4
    inc sp                                        ; $6997: $33
    ld e, h                                       ; $6998: $5C
    ld b, [hl]                                    ; $6999: $46
    ld d, h                                       ; $699A: $54
    cp b                                          ; $699B: $B8
    and $56                                       ; $699C: $E6 $56
    cp l                                          ; $699E: $BD
    dec b                                         ; $699F: $05
    ldh [c], a                                    ; $69A0: $E2
    inc b                                         ; $69A1: $04
    rst RST_20                                    ; $69A2: $E7
    inc e                                         ; $69A3: $1C
    or $58                                        ; $69A4: $F6 $58
    ld sp, hl                                     ; $69A6: $F9
    rst RST_38                                    ; $69A7: $FF
    or $64                                        ; $69A8: $F6 $64
    ld [hl], l                                    ; $69AA: $75
    add l                                         ; $69AB: $85
    ldh [$FF60], a                                ; $69AC: $E0 $60
    sbc h                                         ; $69AE: $9C
    jp $AC24                                      ; $69AF: $C3 $24 $AC


    ret z                                         ; $69B2: $C8

    cp h                                          ; $69B3: $BC
    ld h, h                                       ; $69B4: $64
    ld e, $FC                                     ; $69B5: $1E $FC
    ld c, h                                       ; $69B7: $4C
    ld a, b                                       ; $69B8: $78
    pop bc                                        ; $69B9: $C1
    db $FD                                        ; $69BA: $FD
    dec b                                         ; $69BB: $05
    db $FD                                        ; $69BC: $FD
    rlca                                          ; $69BD: $07
    cp $02                                        ; $69BE: $FE $02
    db $FC                                        ; $69C0: $FC
    ld c, a                                       ; $69C1: $4F
    inc b                                         ; $69C2: $04
    ld d, h                                       ; $69C3: $54
    jr c, jr_035_6986                             ; $69C4: $38 $C0

    nop                                           ; $69C6: $00
    jr nz, jr_035_69C9                            ; $69C7: $20 $00

jr_035_69C9:
    sub h                                         ; $69C9: $94
    ld b, c                                       ; $69CA: $41
    ld c, $A4                                     ; $69CB: $0E $A4
    ld de, $273E                                  ; $69CD: $11 $3E $27
    ld a, [hl]                                    ; $69D0: $7E
    ld d, l                                       ; $69D1: $55
    ld h, h                                       ; $69D2: $64
    ld c, c                                       ; $69D3: $49
    ld e, d                                       ; $69D4: $5A
    db $EC                                        ; $69D5: $EC
    cp [hl]                                       ; $69D6: $BE
    db $E3                                        ; $69D7: $E3
    inc b                                         ; $69D8: $04
    rst RST_28                                    ; $69D9: $EF
    or b                                          ; $69DA: $B0
    ld l, h                                       ; $69DB: $6C
    ld [hl], a                                    ; $69DC: $77
    and b                                         ; $69DD: $A0
    push af                                       ; $69DE: $F5
    rlca                                          ; $69DF: $07
    or h                                          ; $69E0: $B4
    jr nz, jr_035_6A3F                            ; $69E1: $20 $5C

    call c, $F46C                                 ; $69E3: $DC $6C $F4
    nop                                           ; $69E6: $00
    db $EC                                        ; $69E7: $EC
    nop                                           ; $69E8: $00
    sub h                                         ; $69E9: $94
    ld [$F4A4], sp                                ; $69EA: $08 $A4 $F4
    inc c                                         ; $69ED: $0C
    ret nz                                        ; $69EE: $C0

    inc b                                         ; $69EF: $04
    push af                                       ; $69F0: $F5
    ld [hl], $EA                                  ; $69F1: $36 $EA
    di                                            ; $69F3: $F3
    dec c                                         ; $69F4: $0D
    ei                                            ; $69F5: $FB
    dec b                                         ; $69F6: $05
    ei                                            ; $69F7: $FB
    rst RST_20                                    ; $69F8: $E7
    rst RST_28                                    ; $69F9: $EF
    ld d, l                                       ; $69FA: $55
    ld h, b                                       ; $69FB: $60
    ld [hl], h                                    ; $69FC: $74
    ldh [$FF84], a                                ; $69FD: $E0 $84
    db $FD                                        ; $69FF: $FD
    ld de, $0031                                  ; $6A00: $11 $31 $00
    ld a, d                                       ; $6A03: $7A
    ld [$3867], sp                                ; $6A04: $08 $67 $38
    ld h, l                                       ; $6A07: $65
    inc b                                         ; $6A08: $04
    ld c, b                                       ; $6A09: $48
    add hl, sp                                    ; $6A0A: $39
    inc e                                         ; $6A0B: $1C
    scf                                           ; $6A0C: $37
    jr jr_035_6993                                ; $6A0D: $18 $84

    dec bc                                        ; $6A0F: $0B
    ld l, [hl]                                    ; $6A10: $6E
    inc sp                                        ; $6A11: $33
    ld e, [hl]                                    ; $6A12: $5E
    ld d, a                                       ; $6A13: $57
    ld c, h                                       ; $6A14: $4C
    cpl                                           ; $6A15: $2F
    inc h                                         ; $6A16: $24
    db $E4                                        ; $6A17: $E4
    cp b                                          ; $6A18: $B8
    jr jr_035_6A38                                ; $6A19: $18 $1D

    add c                                         ; $6A1B: $81
    ld c, h                                       ; $6A1C: $4C
    add hl, de                                    ; $6A1D: $19
    sbc $61                                       ; $6A1E: $DE $61
    cp e                                          ; $6A20: $BB
    ld b, h                                       ; $6A21: $44
    ld h, h                                       ; $6A22: $64
    inc l                                         ; $6A23: $2C
    ld e, a                                       ; $6A24: $5F
    adc b                                         ; $6A25: $88
    inc b                                         ; $6A26: $04
    ld e, h                                       ; $6A27: $5C
    ld [$64F0], sp                                ; $6A28: $08 $F0 $64
    cp h                                          ; $6A2B: $BC
    sbc h                                         ; $6A2C: $9C
    push bc                                       ; $6A2D: $C5
    ld c, h                                       ; $6A2E: $4C
    inc b                                         ; $6A2F: $04
    call $BD32                                    ; $6A30: $CD $32 $BD
    call c, $DCCB                                 ; $6A33: $DC $CB $DC
    add b                                         ; $6A36: $80
    db $EC                                        ; $6A37: $EC

jr_035_6A38:
    ld b, b                                       ; $6A38: $40
    sbc l                                         ; $6A39: $9D
    and $B9                                       ; $6A3A: $E6 $B9
    ld b, [hl]                                    ; $6A3C: $46
    ei                                            ; $6A3D: $FB
    adc h                                         ; $6A3E: $8C

jr_035_6A3F:
    inc bc                                        ; $6A3F: $03
    ld l, a                                       ; $6A40: $6F
    add b                                         ; $6A41: $80
    jp c, $A624                                   ; $6A42: $DA $24 $A6

    ld e, b                                       ; $6A45: $58
    ld l, h                                       ; $6A46: $6C
    ld [hl], h                                    ; $6A47: $74
    or $03                                        ; $6A48: $F6 $03
    inc bc                                        ; $6A4A: $03
    ret z                                         ; $6A4B: $C8

    inc b                                         ; $6A4C: $04
    ld e, $08                                     ; $6A4D: $1E $08
    ret z                                         ; $6A4F: $C8

    ld c, $6A                                     ; $6A50: $0E $6A
    ld a, [de]                                    ; $6A52: $1A
    inc c                                         ; $6A53: $0C
    dec e                                         ; $6A54: $1D
    ld bc, $0304                                  ; $6A55: $01 $04 $03
    inc b                                         ; $6A58: $04
    dec de                                        ; $6A59: $1B
    and a                                         ; $6A5A: $A7
    inc b                                         ; $6A5B: $04
    inc [hl]                                      ; $6A5C: $34
    call z, Call_000_1028                         ; $6A5D: $CC $28 $10
    nop                                           ; $6A60: $00
    ld l, $01                                     ; $6A61: $2E $01
    push af                                       ; $6A63: $F5
    jr nz, jr_035_6A6A                            ; $6A64: $20 $04

    and b                                         ; $6A66: $A0
    ld [$7E3C], sp                                ; $6A67: $08 $3C $7E

jr_035_6A6A:
    ld hl, $5404                                  ; $6A6A: $21 $04 $54
    ld d, d                                       ; $6A6D: $52
    ld [$0C27], sp                                ; $6A6E: $08 $27 $0C
    db $F4                                        ; $6A71: $F4
    ld [hl], b                                    ; $6A72: $70
    rst RST_28                                    ; $6A73: $EF
    ret nc                                        ; $6A74: $D0

    dec d                                         ; $6A75: $15
    sub c                                         ; $6A76: $91
    ldh [$FF98], a                                ; $6A77: $E0 $98
    inc b                                         ; $6A79: $04
    db $EB                                        ; $6A7A: $EB
    ld [hl], b                                    ; $6A7B: $70
    ld a, a                                       ; $6A7C: $7F
    ld [hl], b                                    ; $6A7D: $70
    ld c, d                                       ; $6A7E: $4A
    scf                                           ; $6A7F: $37
    ld e, h                                       ; $6A80: $5C
    sub $0B                                       ; $6A81: $D6 $0B
    rst RST_28                                    ; $6A83: $EF
    ld [$1C04], sp                                ; $6A84: $08 $04 $1C
    pop de                                        ; $6A87: $D1
    ld [$BCBD], sp                                ; $6A88: $08 $BD $BC
    inc d                                         ; $6A8B: $14
    ld b, b                                       ; $6A8C: $40
    add b                                         ; $6A8D: $80
    add e                                         ; $6A8E: $83
    inc c                                         ; $6A8F: $0C
    ld b, b                                       ; $6A90: $40
    db $E3                                        ; $6A91: $E3
    ld d, h                                       ; $6A92: $54
    cpl                                           ; $6A93: $2F
    ret nz                                        ; $6A94: $C0

    ei                                            ; $6A95: $FB
    inc b                                         ; $6A96: $04
    ld a, h                                       ; $6A97: $7C
    jr nc, @+$57                                  ; $6A98: $30 $55

    ld c, [hl]                                    ; $6A9A: $4E
    inc b                                         ; $6A9B: $04
    or $4C                                        ; $6A9C: $F6 $4C
    ld c, h                                       ; $6A9E: $4C
    inc a                                         ; $6A9F: $3C
    db $D3                                        ; $6AA0: $D3
    reti                                          ; $6AA1: $D9


    rst RST_38                                    ; $6AA2: $FF
    inc bc                                        ; $6AA3: $03
    inc bc                                        ; $6AA4: $03
    ld [bc], a                                    ; $6AA5: $02
    jr c, jr_035_6AAC                             ; $6AA6: $38 $04

    ld l, b                                       ; $6AA8: $68
    ld [$F68D], sp                                ; $6AA9: $08 $8D $F6

jr_035_6AAC:
    inc c                                         ; $6AAC: $0C
    ld h, $70                                     ; $6AAD: $26 $70
    inc b                                         ; $6AAF: $04
    ld c, b                                       ; $6AB0: $48
    ld [$B005], sp                                ; $6AB1: $08 $05 $B0
    and a                                         ; $6AB4: $A7
    add $0B                                       ; $6AB5: $C6 $0B
    cp h                                          ; $6AB7: $BC
    ld d, $09                                     ; $6AB8: $16 $09
    nop                                           ; $6ABA: $00
    ld b, [hl]                                    ; $6ABB: $46
    ld hl, sp-$59                                 ; $6ABC: $F8 $A7
    inc b                                         ; $6ABE: $04
    inc [hl]                                      ; $6ABF: $34
    ld [$102C], sp                                ; $6AC0: $08 $2C $10
    dec d                                         ; $6AC3: $15
    jr c, @+$06                                   ; $6AC4: $38 $04

    ld e, [hl]                                    ; $6AC6: $5E
    inc bc                                        ; $6AC7: $03
    ld [$0402], sp                                ; $6AC8: $08 $02 $04
    dec d                                         ; $6ACB: $15
    inc bc                                        ; $6ACC: $03
    inc bc                                        ; $6ACD: $03
    ld l, [hl]                                    ; $6ACE: $6E
    ld a, [hl+]                                   ; $6ACF: $2A
    add e                                         ; $6AD0: $83
    daa                                           ; $6AD1: $27
    ret nz                                        ; $6AD2: $C0

    push hl                                       ; $6AD3: $E5
    inc d                                         ; $6AD4: $14
    rst RST_08                                    ; $6AD5: $CF
    inc b                                         ; $6AD6: $04
    ccf                                           ; $6AD7: $3F
    ld c, $0C                                     ; $6AD8: $0E $0C
    ld [hl-], a                                   ; $6ADA: $32
    inc e                                         ; $6ADB: $1C
    ld h, $78                                     ; $6ADC: $26 $78
    ld [$811C], sp                                ; $6ADE: $08 $1C $81
    xor a                                         ; $6AE1: $AF
    inc b                                         ; $6AE2: $04
    ld b, c                                       ; $6AE3: $41
    call z, $0CC1                                 ; $6AE4: $CC $C1 $0C
    ld [$036B], sp                                ; $6AE7: $08 $6B $03
    adc h                                         ; $6AEA: $8C
    nop                                           ; $6AEB: $00
    or [hl]                                       ; $6AEC: $B6
    ld [$D47E], sp                                ; $6AED: $08 $7E $D4
    ld a, h                                       ; $6AF0: $7C
    jr c, @-$11                                   ; $6AF1: $38 $ED

    ld [hl+], a                                   ; $6AF3: $22
    ld d, b                                       ; $6AF4: $50
    ld a, a                                       ; $6AF5: $7F
    ld h, b                                       ; $6AF6: $60
    swap b                                        ; $6AF7: $CB $30
    ld a, b                                       ; $6AF9: $78
    inc [hl]                                      ; $6AFA: $34
    and c                                         ; $6AFB: $A1
    inc hl                                        ; $6AFC: $23
    ld b, b                                       ; $6AFD: $40
    rst RST_20                                    ; $6AFE: $E7
    or h                                          ; $6AFF: $B4
    and h                                         ; $6B00: $A4
    jp Jump_035_7863                              ; $6B01: $C3 $63 $78


    db $10                                        ; $6B04: $10
    push af                                       ; $6B05: $F5
    ld l, e                                       ; $6B06: $6B
    inc bc                                        ; $6B07: $03
    and [hl]                                      ; $6B08: $A6
    dec l                                         ; $6B09: $2D
    and b                                         ; $6B0A: $A0
    ld [$0420], sp                                ; $6B0B: $08 $20 $04
    ld a, a                                       ; $6B0E: $7F
    ld h, b                                       ; $6B0F: $60
    ld c, a                                       ; $6B10: $4F
    ld l, $80                                     ; $6B11: $2E $80
    ld e, $F7                                     ; $6B13: $1E $F7
    inc bc                                        ; $6B15: $03
    inc bc                                        ; $6B16: $03
    ld e, c                                       ; $6B17: $59

jr_035_6B18:
    rrca                                          ; $6B18: $0F
    nop                                           ; $6B19: $00
    ccf                                           ; $6B1A: $3F
    call c, Call_035_47EC                         ; $6B1B: $DC $EC $47
    rst RST_38                                    ; $6B1E: $FF
    ld c, b                                       ; $6B1F: $48
    db $E3                                        ; $6B20: $E3
    ld b, $98                                     ; $6B21: $06 $98
    inc b                                         ; $6B23: $04
    cp b                                          ; $6B24: $B8
    ld hl, sp-$41                                 ; $6B25: $F8 $BF
    inc c                                         ; $6B27: $0C
    dec b                                         ; $6B28: $05
    nop                                           ; $6B29: $00
    or a                                          ; $6B2A: $B7
    halt                                          ; $6B2B: $76
    ld e, c                                       ; $6B2C: $59
    ld a, l                                       ; $6B2D: $7D
    ld e, [hl]                                    ; $6B2E: $5E
    ld a, [hl]                                    ; $6B2F: $7E
    ld e, a                                       ; $6B30: $5F
    ld a, $1C                                     ; $6B31: $3E $1C
    daa                                           ; $6B33: $27
    rra                                           ; $6B34: $1F
    db $10                                        ; $6B35: $10
    ld [hl], l                                    ; $6B36: $75
    ld b, h                                       ; $6B37: $44
    nop                                           ; $6B38: $00
    db $FC                                        ; $6B39: $FC
    inc b                                         ; $6B3A: $04
    ld a, [hl-]                                   ; $6B3B: $3A
    cp $FA                                        ; $6B3C: $FE $FA
    ld c, h                                       ; $6B3E: $4C
    ld b, b                                       ; $6B3F: $40
    inc b                                         ; $6B40: $04
    dec c                                         ; $6B41: $0D
    inc b                                         ; $6B42: $04
    ld bc, $05C2                                  ; $6B43: $01 $C2 $05
    and h                                         ; $6B46: $A4
    add c                                         ; $6B47: $81
    add e                                         ; $6B48: $83
    db $FD                                        ; $6B49: $FD
    inc bc                                        ; $6B4A: $03
    inc b                                         ; $6B4B: $04
    rlca                                          ; $6B4C: $07
    ld de, $CEF9                                  ; $6B4D: $11 $F9 $CE
    ld [hl-], a                                   ; $6B50: $32
    ld [hl], h                                    ; $6B51: $74
    jp nz, $F40C                                  ; $6B52: $C2 $0C $F4

    ld l, b                                       ; $6B55: $68
    ld l, $08                                     ; $6B56: $2E $08
    ldh a, [rP1]                                  ; $6B58: $F0 $00
    nop                                           ; $6B5A: $00
    ld [bc], a                                    ; $6B5B: $02
    inc a                                         ; $6B5C: $3C
    inc b                                         ; $6B5D: $04
    jr jr_035_6B18                                ; $6B5E: $18 $B8

    inc b                                         ; $6B60: $04
    ccf                                           ; $6B61: $3F
    inc b                                         ; $6B62: $04
    ld l, h                                       ; $6B63: $6C
    dec b                                         ; $6B64: $05
    jr nz, jr_035_6BD6                            ; $6B65: $20 $6F

    jr nc, @+$62                                  ; $6B67: $30 $60

    ld a, b                                       ; $6B69: $78
    jr nz, jr_035_6B6C                            ; $6B6A: $20 $00

jr_035_6B6C:
    rla                                           ; $6B6C: $17
    ld [hl], $19                                  ; $6B6D: $36 $19
    dec a                                         ; $6B6F: $3D
    ld c, $7A                                     ; $6B70: $0E $7A
    ld e, $50                                     ; $6B72: $1E $50
    ld d, l                                       ; $6B74: $55
    inc bc                                        ; $6B75: $03
    inc bc                                        ; $6B76: $03
    ldh [$FF7E], a                                ; $6B77: $E0 $7E
    add h                                         ; $6B79: $84
    xor h                                         ; $6B7A: $AC
    inc b                                         ; $6B7B: $04
    ldh a, [c]                                    ; $6B7C: $F2
    inc b                                         ; $6B7D: $04
    cp $07                                        ; $6B7E: $FE $07
    inc b                                         ; $6B80: $04
    ld [bc], a                                    ; $6B81: $02
    db $FC                                        ; $6B82: $FC
    ld a, a                                       ; $6B83: $7F
    ld b, $E0                                     ; $6B84: $06 $E0
    ld [$F414], sp                                ; $6B86: $08 $14 $F4
    db $E4                                        ; $6B89: $E4
    db $10                                        ; $6B8A: $10
    ld l, e                                       ; $6B8B: $6B
    cp b                                          ; $6B8C: $B8
    nop                                           ; $6B8D: $00
    rrca                                          ; $6B8E: $0F
    nop                                           ; $6B8F: $00
    cp h                                          ; $6B90: $BC
    call z, $4F70                                 ; $6B91: $CC $70 $4F

jr_035_6B94:
    rst RST_08                                    ; $6B94: $CF
    inc h                                         ; $6B95: $24
    or e                                          ; $6B96: $B3
    rst RST_18                                    ; $6B97: $DF
    inc b                                         ; $6B98: $04
    rst RST_38                                    ; $6B99: $FF
    adc a                                         ; $6B9A: $8F
    inc d                                         ; $6B9B: $14
    or b                                          ; $6B9C: $B0
    ret nc                                        ; $6B9D: $D0

    inc l                                         ; $6B9E: $2C
    cp a                                          ; $6B9F: $BF
    db $DD                                        ; $6BA0: $DD
    dec h                                         ; $6BA1: $25
    xor l                                         ; $6BA2: $AD
    dec b                                         ; $6BA3: $05
    dec d                                         ; $6BA4: $15
    ld h, l                                       ; $6BA5: $65
    ld e, a                                       ; $6BA6: $5F
    rla                                           ; $6BA7: $17
    jr c, jr_035_6BD1                             ; $6BA8: $38 $27

    rra                                           ; $6BAA: $1F
    ret c                                         ; $6BAB: $D8

    rlca                                          ; $6BAC: $07
    nop                                           ; $6BAD: $00
    sbc b                                         ; $6BAE: $98
    nop                                           ; $6BAF: $00
    jp c, $A8AC                                   ; $6BB0: $DA $AC $A8

    ld c, $E8                                     ; $6BB3: $0E $E8
    ld l, h                                       ; $6BB5: $6C
    db $FD                                        ; $6BB6: $FD
    ld b, $F1                                     ; $6BB7: $06 $F1
    ld [de], a                                    ; $6BB9: $12
    di                                            ; $6BBA: $F3
    dec c                                         ; $6BBB: $0D
    inc bc                                        ; $6BBC: $03
    inc d                                         ; $6BBD: $14
    and e                                         ; $6BBE: $A3
    ld e, l                                       ; $6BBF: $5D
    rlca                                          ; $6BC0: $07
    cp e                                          ; $6BC1: $BB
    ld [bc], a                                    ; $6BC2: $02
    ld b, l                                       ; $6BC3: $45
    ld b, $FA                                     ; $6BC4: $06 $FA
    inc e                                         ; $6BC6: $1C
    db $E4                                        ; $6BC7: $E4
    ld hl, sp+$7C                                 ; $6BC8: $F8 $7C
    ldh [$FFAA], a                                ; $6BCA: $E0 $AA
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    ld [bc], a                                    ; $6BCE: $02
    rrca                                          ; $6BCF: $0F
    inc b                                         ; $6BD0: $04

jr_035_6BD1:
    jr nc, @+$0A                                  ; $6BD1: $30 $08

    ld c, a                                       ; $6BD3: $4F
    ld l, a                                       ; $6BD4: $6F
    inc sp                                        ; $6BD5: $33

jr_035_6BD6:
    ret nz                                        ; $6BD6: $C0

    inc b                                         ; $6BD7: $04
    ld a, a                                       ; $6BD8: $7F
    dec d                                         ; $6BD9: $15
    jr nz, jr_035_6C44                            ; $6BDA: $20 $68

    dec e                                         ; $6BDC: $1D
    ld e, [hl]                                    ; $6BDD: $5E
    dec l                                         ; $6BDE: $2D
    nop                                           ; $6BDF: $00
    inc de                                        ; $6BE0: $13
    ldh [c], a                                    ; $6BE1: $E2
    ld h, e                                       ; $6BE2: $63
    inc bc                                        ; $6BE3: $03
    ld [bc], a                                    ; $6BE4: $02
    ldh a, [$FFA6]                                ; $6BE5: $F0 $A6
    inc b                                         ; $6BE7: $04
    inc c                                         ; $6BE8: $0C
    ld [$FCFE], sp                                ; $6BE9: $08 $FE $FC
    ld b, $14                                     ; $6BEC: $06 $14
    ldh a, [c]                                    ; $6BEE: $F2
    sub e                                         ; $6BEF: $93
    jr nz, jr_035_6B94                            ; $6BF0: $20 $A2

    ld e, h                                       ; $6BF2: $5C
    dec b                                         ; $6BF3: $05
    cp h                                          ; $6BF4: $BC
    ld b, b                                       ; $6BF5: $40
    db $E3                                        ; $6BF6: $E3
    inc bc                                        ; $6BF7: $03
    add b                                         ; $6BF8: $80
    ld bc, $4023                                  ; $6BF9: $01 $23 $40
    rla                                           ; $6BFC: $17
    ld bc, $0300                                  ; $6BFD: $01 $00 $03
    db $10                                        ; $6C00: $10
    rlca                                          ; $6C01: $07
    db $10                                        ; $6C02: $10
    rrca                                          ; $6C03: $0F
    add hl, bc                                    ; $6C04: $09
    ld d, [hl]                                    ; $6C05: $56
    ccf                                           ; $6C06: $3F
    ld [$107F], sp                                ; $6C07: $08 $7F $10
    rst RST_38                                    ; $6C0A: $FF
    db $10                                        ; $6C0B: $10
    ld [$ED7B], sp                                ; $6C0C: $08 $7B $ED
    add hl, bc                                    ; $6C0F: $09
    add hl, sp                                    ; $6C10: $39
    nop                                           ; $6C11: $00
    rra                                           ; $6C12: $1F
    nop                                           ; $6C13: $00
    add sp, -$80                                  ; $6C14: $E8 $80
    ld [$C055], sp                                ; $6C16: $08 $55 $C0
    db $10                                        ; $6C19: $10
    ldh [rNR10], a                                ; $6C1A: $E0 $10
    db $FC                                        ; $6C1C: $FC
    ld [$10FE], sp                                ; $6C1D: $08 $FE $10
    push af                                       ; $6C20: $F5
    add hl, bc                                    ; $6C21: $09
    add hl, hl                                    ; $6C22: $29
    ld c, c                                       ; $6C23: $49
    add hl, bc                                    ; $6C24: $09
    ldh a, [rNR10]                                ; $6C25: $F0 $10
    ld hl, sp+$10                                 ; $6C27: $F8 $10
    db $EB                                        ; $6C29: $EB
    ld c, b                                       ; $6C2A: $48
    db $10                                        ; $6C2B: $10
    ld a, d                                       ; $6C2C: $7A
    cp h                                          ; $6C2D: $BC
    nop                                           ; $6C2E: $00
    jr jr_035_6C31                                ; $6C2F: $18 $00

jr_035_6C31:
    add sp, -$2B                                  ; $6C31: $E8 $D5
    rlca                                          ; $6C33: $07
    inc bc                                        ; $6C34: $03
    inc a                                         ; $6C35: $3C
    ld [$107F], sp                                ; $6C36: $08 $7F $10
    rst RST_38                                    ; $6C39: $FF
    db $10                                        ; $6C3A: $10
    xor a                                         ; $6C3B: $AF
    ld [$0067], sp                                ; $6C3C: $08 $67 $00
    ld bc, $9700                                  ; $6C3F: $01 $00 $97
    ld [bc], a                                    ; $6C42: $02
    ld e, c                                       ; $6C43: $59

jr_035_6C44:
    ld l, c                                       ; $6C44: $69
    inc bc                                        ; $6C45: $03
    db $10                                        ; $6C46: $10
    rrca                                          ; $6C47: $0F
    inc sp                                        ; $6C48: $33
    ld [$31FB], sp                                ; $6C49: $08 $FB $31
    ld [$F10E], sp                                ; $6C4C: $08 $0E $F1
    di                                            ; $6C4F: $F3
    pop hl                                        ; $6C50: $E1
    db $E3                                        ; $6C51: $E3
    ld e, d                                       ; $6C52: $5A
    cp c                                          ; $6C53: $B9
    inc bc                                        ; $6C54: $03
    ret nz                                        ; $6C55: $C0

    xor a                                         ; $6C56: $AF
    ld [$10E0], sp                                ; $6C57: $08 $E0 $10
    ldh a, [rNR10]                                ; $6C5A: $F0 $10
    add hl, bc                                    ; $6C5C: $09
    and b                                         ; $6C5D: $A0
    inc c                                         ; $6C5E: $0C
    and a                                         ; $6C5F: $A7
    ld c, e                                       ; $6C60: $4B
    db $FC                                        ; $6C61: $FC
    ld [$ECFE], sp                                ; $6C62: $08 $FE $EC
    ld [$0920], sp                                ; $6C65: $08 $20 $09
    xor [hl]                                      ; $6C68: $AE
    nop                                           ; $6C69: $00
    ld hl, sp+$00                                 ; $6C6A: $F8 $00
    ld [hl], b                                    ; $6C6C: $70
    nop                                           ; $6C6D: $00
    add sp, $03                                   ; $6C6E: $E8 $03
    ld h, b                                       ; $6C70: $60
    cp $08                                        ; $6C71: $FE $08
    xor b                                         ; $6C73: $A8
    db $10                                        ; $6C74: $10
    ld e, b                                       ; $6C75: $58
    db $10                                        ; $6C76: $10
    dec bc                                        ; $6C77: $0B
    sbc b                                         ; $6C78: $98
    ld a, b                                       ; $6C79: $78
    db $DD                                        ; $6C7A: $DD
    rrca                                          ; $6C7B: $0F
    nop                                           ; $6C7C: $00
    jr nc, jr_035_6C7F                            ; $6C7D: $30 $00

jr_035_6C7F:
    call c, Call_035_7F03                         ; $6C7F: $DC $03 $7F
    ld [$FF73], sp                                ; $6C82: $08 $73 $FF
    db $10                                        ; $6C85: $10
    add hl, bc                                    ; $6C86: $09
    add hl, hl                                    ; $6C87: $29
    ccf                                           ; $6C88: $3F
    rra                                           ; $6C89: $1F
    jr @+$12                                      ; $6C8A: $18 $10

    cp a                                          ; $6C8C: $BF
    ld [$0A3C], sp                                ; $6C8D: $08 $3C $0A
    jr z, jr_035_6CDB                             ; $6C90: $28 $49

    nop                                           ; $6C92: $00
    ld l, b                                       ; $6C93: $68
    ld [$0F75], sp                                ; $6C94: $08 $75 $0F
    add hl, bc                                    ; $6C97: $09
    nop                                           ; $6C98: $00
    jr z, jr_035_6CFB                             ; $6C99: $28 $60

    ld [$10F0], sp                                ; $6C9B: $08 $F0 $10
    ld e, l                                       ; $6C9E: $5D
    db $FC                                        ; $6C9F: $FC
    db $10                                        ; $6CA0: $10
    cp $10                                        ; $6CA1: $FE $10
    add hl, bc                                    ; $6CA3: $09
    add hl, hl                                    ; $6CA4: $29
    ld hl, sp+$0F                                 ; $6CA5: $F8 $0F
    sub $0C                                       ; $6CA7: $D6 $0C
    nop                                           ; $6CA9: $00
    ldh [rP1], a                                  ; $6CAA: $E0 $00
    ret nz                                        ; $6CAC: $C0

    nop                                           ; $6CAD: $00
    add sp, $0C                                   ; $6CAE: $E8 $0C
    xor e                                         ; $6CB0: $AB
    ld [$101E], sp                                ; $6CB1: $08 $1E $10
    ld a, a                                       ; $6CB4: $7F
    db $10                                        ; $6CB5: $10
    rst RST_38                                    ; $6CB6: $FF
    db $10                                        ; $6CB7: $10
    add hl, bc                                    ; $6CB8: $09
    or e                                          ; $6CB9: $B3
    add hl, hl                                    ; $6CBA: $29
    ccf                                           ; $6CBB: $3F
    ld a, [bc]                                    ; $6CBC: $0A
    jr z, jr_035_6CFB                             ; $6CBD: $28 $3C

    ld a, [hl]                                    ; $6CBF: $7E
    ld a, [bc]                                    ; $6CC0: $0A
    add hl, hl                                    ; $6CC1: $29
    or a                                          ; $6CC2: $B7
    ld [$093D], sp                                ; $6CC3: $08 $3D $09
    nop                                           ; $6CC6: $00
    jr jr_035_6CC9                                ; $6CC7: $18 $00

jr_035_6CC9:
    add sp, $03                                   ; $6CC9: $E8 $03
    ld e, a                                       ; $6CCB: $5F
    db $FC                                        ; $6CCC: $FC
    ld [$10FE], sp                                ; $6CCD: $08 $FE $10
    add hl, bc                                    ; $6CD0: $09
    add hl, hl                                    ; $6CD1: $29
    ccf                                           ; $6CD2: $3F
    ld bc, $807D                                  ; $6CD3: $01 $7D $80
    ld e, c                                       ; $6CD6: $59
    db $10                                        ; $6CD7: $10
    ld e, a                                       ; $6CD8: $5F
    rlca                                          ; $6CD9: $07
    inc bc                                        ; $6CDA: $03

jr_035_6CDB:
    ld a, a                                       ; $6CDB: $7F
    ld [$FF7D], sp                                ; $6CDC: $08 $7D $FF
    db $10                                        ; $6CDF: $10
    add hl, bc                                    ; $6CE0: $09
    add hl, hl                                    ; $6CE1: $29
    rlca                                          ; $6CE2: $07
    inc bc                                        ; $6CE3: $03
    ld bc, $7A08                                  ; $6CE4: $01 $08 $7A
    inc bc                                        ; $6CE7: $03
    db $10                                        ; $6CE8: $10
    add hl, bc                                    ; $6CE9: $09
    add hl, hl                                    ; $6CEA: $29
    inc bc                                        ; $6CEB: $03
    ldh a, [$FF08]                                ; $6CEC: $F0 $08
    ld sp, hl                                     ; $6CEE: $F9
    adc l                                         ; $6CEF: $8D
    db $10                                        ; $6CF0: $10
    ei                                            ; $6CF1: $FB
    pop af                                        ; $6CF2: $F1
    di                                            ; $6CF3: $F3
    ld a, d                                       ; $6CF4: $7A
    adc a                                         ; $6CF5: $8F
    ret nz                                        ; $6CF6: $C0

    ld [$E07B], sp                                ; $6CF7: $08 $7B $E0
    db $10                                        ; $6CFA: $10

jr_035_6CFB:
    add b                                         ; $6CFB: $80
    db $10                                        ; $6CFC: $10
    sbc c                                         ; $6CFD: $99
    rst RST_38                                    ; $6CFE: $FF
    db $10                                        ; $6CFF: $10
    ld [$7F51], sp                                ; $6D00: $08 $51 $7F
    nop                                           ; $6D03: $00
    ccf                                           ; $6D04: $3F
    jr jr_035_6D85                                ; $6D05: $18 $7E

    cp $FC                                        ; $6D07: $FE $FC
    nop                                           ; $6D09: $00
    ld a, a                                       ; $6D0A: $7F
    ldh a, [rP1]                                  ; $6D0B: $F0 $00
    ld a, b                                       ; $6D0D: $78
    add hl, bc                                    ; $6D0E: $09
    ld c, b                                       ; $6D0F: $48
    db $10                                        ; $6D10: $10
    ld [$EE01], sp                                ; $6D11: $08 $01 $EE
    adc c                                         ; $6D14: $89
    add sp, $01                                   ; $6D15: $E8 $01
    ld h, b                                       ; $6D17: $60
    ld [$1050], sp                                ; $6D18: $08 $50 $10
    ld hl, sp-$09                                 ; $6D1B: $F8 $F7
    db $10                                        ; $6D1D: $10
    add hl, bc                                    ; $6D1E: $09
    sbc c                                         ; $6D1F: $99
    nop                                           ; $6D20: $00
    add b                                         ; $6D21: $80
    nop                                           ; $6D22: $00
    ld a, d                                       ; $6D23: $7A
    dec b                                         ; $6D24: $05
    push af                                       ; $6D25: $F5
    ld l, b                                       ; $6D26: $68
    ld [$289C], sp                                ; $6D27: $08 $9C $28
    jr jr_035_6D34                                ; $6D2A: $18 $08

    inc a                                         ; $6D2C: $3C
    db $10                                        ; $6D2D: $10
    ld a, a                                       ; $6D2E: $7F
    ld a, [hl]                                    ; $6D2F: $7E
    db $10                                        ; $6D30: $10
    rrca                                          ; $6D31: $0F
    add hl, bc                                    ; $6D32: $09
    ld l, c                                       ; $6D33: $69

jr_035_6D34:
    add hl, bc                                    ; $6D34: $09
    sbc c                                         ; $6D35: $99
    ld bc, $BBC0                                  ; $6D36: $01 $C0 $BB
    ld c, e                                       ; $6D39: $4B
    inc h                                         ; $6D3A: $24
    ld b, b                                       ; $6D3B: $40
    ld d, a                                       ; $6D3C: $57
    nop                                           ; $6D3D: $00
    ld [bc], a                                    ; $6D3E: $02
    inc a                                         ; $6D3F: $3C
    nop                                           ; $6D40: $00
    ld h, [hl]                                    ; $6D41: $66
    rlca                                          ; $6D42: $07
    rlca                                          ; $6D43: $07
    nop                                           ; $6D44: $00
    ld [$CB99], a                                 ; $6D45: $EA $99 $CB
    dec b                                         ; $6D48: $05
    ld [$1800], sp                                ; $6D49: $08 $00 $18
    nop                                           ; $6D4C: $00

jr_035_6D4D:
    jr c, jr_035_6D4D                             ; $6D4D: $38 $FE

    nop                                           ; $6D4F: $00
    add hl, de                                    ; $6D50: $19
    rlca                                          ; $6D51: $07
    inc bc                                        ; $6D52: $03
    rst RST_38                                    ; $6D53: $FF
    inc bc                                        ; $6D54: $03
    ld e, c                                       ; $6D55: $59
    ld h, [hl]                                    ; $6D56: $66
    xor l                                         ; $6D57: $AD
    inc b                                         ; $6D58: $04
    ld b, $00                                     ; $6D59: $06 $00
    inc c                                         ; $6D5B: $0C
    nop                                           ; $6D5C: $00
    ret                                           ; $6D5D: $C9


    jr nc, jr_035_6D60                            ; $6D5E: $30 $00

jr_035_6D60:
    ld e, a                                       ; $6D60: $5F
    ld h, b                                       ; $6D61: $60
    ld [bc], a                                    ; $6D62: $02
    ld a, [hl]                                    ; $6D63: $7E
    nop                                           ; $6D64: $00
    rst RST_28                                    ; $6D65: $EF
    rst RST_38                                    ; $6D66: $FF
    jp hl                                         ; $6D67: $E9


    ld bc, $1C7E                                  ; $6D68: $01 $7E $1C
    nop                                           ; $6D6B: $00
    dec hl                                        ; $6D6C: $2B
    ld l, e                                       ; $6D6D: $6B
    sbc c                                         ; $6D6E: $99
    rst RST_28                                    ; $6D6F: $EF
    ld bc, $FA0C                                  ; $6D70: $01 $0C $FA
    ld [bc], a                                    ; $6D73: $02
    ret                                           ; $6D74: $C9


    ld bc, $0199                                  ; $6D75: $01 $99 $01
    ld l, h                                       ; $6D78: $6C
    ld [bc], a                                    ; $6D79: $02
    ld a, [hl]                                    ; $6D7A: $7E
    ld a, [$8B00]                                 ; $6D7B: $FA $00 $8B
    rst RST_28                                    ; $6D7E: $EF
    ld bc, $6079                                  ; $6D7F: $01 $79 $60
    inc b                                         ; $6D82: $04
    ld a, h                                       ; $6D83: $7C
    xor l                                         ; $6D84: $AD

jr_035_6D85:
    nop                                           ; $6D85: $00
    ld h, [hl]                                    ; $6D86: $66
    nop                                           ; $6D87: $00
    ld b, $04                                     ; $6D88: $06 $04
    add hl, sp                                    ; $6D8A: $39
    inc a                                         ; $6D8B: $3C
    nop                                           ; $6D8C: $00
    rst RST_18                                    ; $6D8D: $DF
    rst RST_28                                    ; $6D8E: $EF
    ld bc, $003E                                  ; $6D8F: $01 $3E $00
    rst RST_38                                    ; $6D92: $FF
    cp c                                          ; $6D93: $B9
    rlca                                          ; $6D94: $07
    rst RST_38                                    ; $6D95: $FF
    xor d                                         ; $6D96: $AA

jr_035_6D97:
    inc bc                                        ; $6D97: $03
    ld a, [hl]                                    ; $6D98: $7E
    nop                                           ; $6D99: $00
    ld b, $04                                     ; $6D9A: $06 $04
    ld c, $00                                     ; $6D9C: $0E $00
    inc e                                         ; $6D9E: $1C
    cp l                                          ; $6D9F: $BD
    nop                                           ; $6DA0: $00
    jr jr_035_6DAA                                ; $6DA1: $18 $07

    nop                                           ; $6DA3: $00
    rst RST_28                                    ; $6DA4: $EF
    ld bc, $003C                                  ; $6DA5: $01 $3C $00
    ld a, [hl]                                    ; $6DA8: $7E
    ld h, [hl]                                    ; $6DA9: $66

jr_035_6DAA:
    ld b, $4F                                     ; $6DAA: $06 $4F
    ld c, e                                       ; $6DAC: $4B
    rst RST_28                                    ; $6DAD: $EF
    rst RST_38                                    ; $6DAE: $FF
    dec b                                         ; $6DAF: $05
    ld a, $AE                                     ; $6DB0: $3E $AE
    nop                                           ; $6DB2: $00
    ld b, $04                                     ; $6DB3: $06 $04
    ld a, h                                       ; $6DB5: $7C
    nop                                           ; $6DB6: $00
    rst RST_28                                    ; $6DB7: $EF
    ld bc, $AD7F                                  ; $6DB8: $01 $7F $AD
    nop                                           ; $6DBB: $00
    ld [$1000], sp                                ; $6DBC: $08 $00 $10
    ld [bc], a                                    ; $6DBF: $02
    add hl, hl                                    ; $6DC0: $29
    rlca                                          ; $6DC1: $07
    nop                                           ; $6DC2: $00
    xor d                                         ; $6DC3: $AA
    ld l, c                                       ; $6DC4: $69
    jr nz, jr_035_6DCB                            ; $6DC5: $20 $04

    jr c, jr_035_6DC9                             ; $6DC7: $38 $00

jr_035_6DC9:
    inc h                                         ; $6DC9: $24
    nop                                           ; $6DCA: $00

jr_035_6DCB:
    ld b, h                                       ; $6DCB: $44
    or a                                          ; $6DCC: $B7
    nop                                           ; $6DCD: $00
    ld b, e                                       ; $6DCE: $43
    nop                                           ; $6DCF: $00
    ld a, c                                       ; $6DD0: $79
    inc b                                         ; $6DD1: $04
    nop                                           ; $6DD2: $00
    ld sp, hl                                     ; $6DD3: $F9
    add hl, de                                    ; $6DD4: $19
    ld a, a                                       ; $6DD5: $7F
    inc a                                         ; $6DD6: $3C
    nop                                           ; $6DD7: $00
    ld a, c                                       ; $6DD8: $79
    add hl, de                                    ; $6DD9: $19
    add hl, sp                                    ; $6DDA: $39
    ld a, c                                       ; $6DDB: $79
    add hl, hl                                    ; $6DDC: $29
    add hl, de                                    ; $6DDD: $19
    ld d, [hl]                                    ; $6DDE: $56
    ld a, [hl]                                    ; $6DDF: $7E
    nop                                           ; $6DE0: $00
    ld bc, $0202                                  ; $6DE1: $01 $02 $02
    nop                                           ; $6DE4: $00
    ld e, e                                       ; $6DE5: $5B
    jr nc, jr_035_6D97                            ; $6DE6: $30 $AF

    ld [bc], a                                    ; $6DE8: $02
    jr c, jr_035_6DEB                             ; $6DE9: $38 $00

jr_035_6DEB:
    ld [hl], $00                                  ; $6DEB: $36 $00
    dec sp                                        ; $6DED: $3B
    ld bc, $AB79                                  ; $6DEE: $01 $79 $AB
    inc bc                                        ; $6DF1: $03
    ld d, b                                       ; $6DF2: $50
    nop                                           ; $6DF3: $00
    ld d, [hl]                                    ; $6DF4: $56
    ld [bc], a                                    ; $6DF5: $02
    ld b, $00                                     ; $6DF6: $06 $00
    ei                                            ; $6DF8: $FB
    ld e, [hl]                                    ; $6DF9: $5E
    rlca                                          ; $6DFA: $07
    nop                                           ; $6DFB: $00
    ld a, l                                       ; $6DFC: $7D
    nop                                           ; $6DFD: $00
    add hl, de                                    ; $6DFE: $19
    ld e, c                                       ; $6DFF: $59
    ld bc, $BE0C                                  ; $6E00: $01 $0C $BE
    nop                                           ; $6E03: $00
    jr c, jr_035_6E06                             ; $6E04: $38 $00

jr_035_6E06:
    db $FD                                        ; $6E06: $FD
    rlca                                          ; $6E07: $07
    rlca                                          ; $6E08: $07
    inc bc                                        ; $6E09: $03
    ld hl, sp-$53                                 ; $6E0A: $F8 $AD
    nop                                           ; $6E0C: $00
    inc b                                         ; $6E0D: $04
    nop                                           ; $6E0E: $00
    ld [bc], a                                    ; $6E0F: $02
    inc b                                         ; $6E10: $04
    add hl, sp                                    ; $6E11: $39
    jr jr_035_6E14                                ; $6E12: $18 $00

jr_035_6E14:
    db $DD                                        ; $6E14: $DD
    xor a                                         ; $6E15: $AF
    inc bc                                        ; $6E16: $03
    ld a, [bc]                                    ; $6E17: $0A
    ld [bc], a                                    ; $6E18: $02
    rst RST_38                                    ; $6E19: $FF
    db $FD                                        ; $6E1A: $FD
    jr c, jr_035_6E1D                             ; $6E1B: $38 $00

jr_035_6E1D:
    rst RST_10                                    ; $6E1D: $D7
    rst RST_18                                    ; $6E1E: $DF
    rlca                                          ; $6E1F: $07
    add h                                         ; $6E20: $84
    nop                                           ; $6E21: $00
    sbc [hl]                                      ; $6E22: $9E
    nop                                           ; $6E23: $00
    add hl, de                                    ; $6E24: $19
    rlca                                          ; $6E25: $07
    ld [hl], l                                    ; $6E26: $75
    ld c, b                                       ; $6E27: $48
    nop                                           ; $6E28: $00
    cp a                                          ; $6E29: $BF
    rlca                                          ; $6E2A: $07
    cp $00                                        ; $6E2B: $FE $00
    inc b                                         ; $6E2D: $04
    nop                                           ; $6E2E: $00
    ld d, l                                       ; $6E2F: $55
    jr jr_035_6E32                                ; $6E30: $18 $00

jr_035_6E32:
    ld h, h                                       ; $6E32: $64
    nop                                           ; $6E33: $00
    ld [bc], a                                    ; $6E34: $02
    nop                                           ; $6E35: $00
    ld h, d                                       ; $6E36: $62
    nop                                           ; $6E37: $00
    ld e, l                                       ; $6E38: $5D
    sub d                                         ; $6E39: $92
    nop                                           ; $6E3A: $00
    ld a, h                                       ; $6E3B: $7C
    nop                                           ; $6E3C: $00
    cp a                                          ; $6E3D: $BF
    rlca                                          ; $6E3E: $07
    ld c, b                                       ; $6E3F: $48
    nop                                           ; $6E40: $00
    ld d, l                                       ; $6E41: $55
    ld e, h                                       ; $6E42: $5C
    nop                                           ; $6E43: $00
    ldh [c], a                                    ; $6E44: $E2
    nop                                           ; $6E45: $00
    ld [hl+], a                                   ; $6E46: $22
    nop                                           ; $6E47: $00
    inc h                                         ; $6E48: $24
    nop                                           ; $6E49: $00
    ld e, l                                       ; $6E4A: $5D
    jr nz, jr_035_6E4D                            ; $6E4B: $20 $00

jr_035_6E4D:
    db $10                                        ; $6E4D: $10
    ld [bc], a                                    ; $6E4E: $02
    cp a                                          ; $6E4F: $BF
    rlca                                          ; $6E50: $07
    ld b, h                                       ; $6E51: $44
    ld [bc], a                                    ; $6E52: $02
    ld d, l                                       ; $6E53: $55
    ld a, h                                       ; $6E54: $7C
    nop                                           ; $6E55: $00
    jp z, $AA00                                   ; $6E56: $CA $00 $AA

    nop                                           ; $6E59: $00
    or d                                          ; $6E5A: $B2
    nop                                           ; $6E5B: $00
    ld e, l                                       ; $6E5C: $5D
    sub d                                         ; $6E5D: $92
    nop                                           ; $6E5E: $00
    ld h, h                                       ; $6E5F: $64
    nop                                           ; $6E60: $00
    cp a                                          ; $6E61: $BF
    rlca                                          ; $6E62: $07
    cp $00                                        ; $6E63: $FE $00
    ld e, d                                       ; $6E65: $5A
    inc b                                         ; $6E66: $04
    nop                                           ; $6E67: $00
    jr jr_035_6E6A                                ; $6E68: $18 $00

jr_035_6E6A:
    cp c                                          ; $6E6A: $B9
    ld [bc], a                                    ; $6E6B: $02
    nop                                           ; $6E6C: $00
    ld h, d                                       ; $6E6D: $62
    db $DD                                        ; $6E6E: $DD
    nop                                           ; $6E6F: $00
    ld sp, hl                                     ; $6E70: $F9
    ld a, h                                       ; $6E71: $7C
    nop                                           ; $6E72: $00
    cp a                                          ; $6E73: $BF
    dec b                                         ; $6E74: $05
    add b                                         ; $6E75: $80
    nop                                           ; $6E76: $00
    ld b, b                                       ; $6E77: $40
    ret nz                                        ; $6E78: $C0

    nop                                           ; $6E79: $00
    ldh [$FFA0], a                                ; $6E7A: $E0 $A0
    ldh a, [$FF90]                                ; $6E7C: $F0 $90
    ld hl, sp-$78                                 ; $6E7E: $F8 $88
    ld hl, sp+$19                                 ; $6E80: $F8 $19
    add hl, sp                                    ; $6E82: $39
    ld e, c                                       ; $6E83: $59
    ld a, c                                       ; $6E84: $79
    rst RST_08                                    ; $6E85: $CF
    ld h, l                                       ; $6E86: $65
    ld b, b                                       ; $6E87: $40
    ld l, d                                       ; $6E88: $6A
    nop                                           ; $6E89: $00
    rlca                                          ; $6E8A: $07
    ld b, $FF                                     ; $6E8B: $06 $FF
    ld b, $BF                                     ; $6E8D: $06 $BF
    ld a, [de]                                    ; $6E8F: $1A
    db $FD                                        ; $6E90: $FD
    xor l                                         ; $6E91: $AD
    ld c, h                                       ; $6E92: $4C
    rst RST_18                                    ; $6E93: $DF
    ld [$8EFB], sp                                ; $6E94: $08 $FB $8E
    dec a                                         ; $6E97: $3D
    cp e                                          ; $6E98: $BB
    ld a, [de]                                    ; $6E99: $1A
    ld l, d                                       ; $6E9A: $6A
    rst RST_30                                    ; $6E9B: $F7
    xor d                                         ; $6E9C: $AA
    ld bc, $1ABD                                  ; $6E9D: $01 $BD $1A
    ld a, a                                       ; $6EA0: $7F
    ld [$AAFD], sp                                ; $6EA1: $08 $FD $AA
    ld [$5CE7], sp                                ; $6EA4: $08 $E7 $5C
    rst RST_28                                    ; $6EA7: $EF
    ld a, [hl+]                                   ; $6EA8: $2A
    or a                                          ; $6EA9: $B7
    ld a, [de]                                    ; $6EAA: $1A
    ld l, a                                       ; $6EAB: $6F
    sbc $8A                                       ; $6EAC: $DE $8A
    ld bc, $ECF6                                  ; $6EAE: $01 $F6 $EC
    sbc e                                         ; $6EB1: $9B
    cpl                                           ; $6EB2: $2F
    xor c                                         ; $6EB3: $A9
    xor a                                         ; $6EB4: $AF
    ld d, l                                       ; $6EB5: $55
    rst RST_18                                    ; $6EB6: $DF
    add hl, hl                                    ; $6EB7: $29
    add e                                         ; $6EB8: $83
    ld [$088F], sp                                ; $6EB9: $08 $8F $08
    sbc a                                         ; $6EBC: $9F
    ld c, $D5                                     ; $6EBD: $0E $D5
    ld c, c                                       ; $6EBF: $49
    ld l, c                                       ; $6EC0: $69
    pop bc                                        ; $6EC1: $C1
    ld [$08F1], sp                                ; $6EC2: $08 $F1 $08
    ld sp, hl                                     ; $6EC5: $F9
    ld c, $ED                                     ; $6EC6: $0E $ED
    ld c, c                                       ; $6EC8: $49
    ld l, c                                       ; $6EC9: $69
    ld bc, $1ADD                                  ; $6ECA: $01 $DD $1A
    ld bc, $08ED                                  ; $6ECD: $01 $ED $08
    dec hl                                        ; $6ED0: $2B
    rst RST_18                                    ; $6ED1: $DF
    rst RST_28                                    ; $6ED2: $EF
    dec sp                                        ; $6ED3: $3B
    db $FD                                        ; $6ED4: $FD
    inc hl                                        ; $6ED5: $23
    xor a                                         ; $6ED6: $AF
    ld a, [bc]                                    ; $6ED7: $0A
    nop                                           ; $6ED8: $00
    ld e, d                                       ; $6ED9: $5A
    ei                                            ; $6EDA: $FB
    ld [$CCBF], sp                                ; $6EDB: $08 $BF $CC
    db $FC                                        ; $6EDE: $FC
    or [hl]                                       ; $6EDF: $B6
    ld [$59D5], sp                                ; $6EE0: $08 $D5 $59
    db $EB                                        ; $6EE3: $EB
    ld [$9A7F], sp                                ; $6EE4: $08 $7F $9A
    nop                                           ; $6EE7: $00
    cp $DC                                        ; $6EE8: $FE $DC
    ld b, b                                       ; $6EEA: $40
    jr @-$0F                                      ; $6EEB: $18 $EF

    cp e                                          ; $6EED: $BB
    xor e                                         ; $6EEE: $AB
    jr z, jr_035_6EF1                             ; $6EEF: $28 $00

jr_035_6EF1:
    rst RST_10                                    ; $6EF1: $D7
    jp hl                                         ; $6EF2: $E9


    ld [hl], a                                    ; $6EF3: $77
    ld c, l                                       ; $6EF4: $4D
    ld h, a                                       ; $6EF5: $67
    ld a, c                                       ; $6EF6: $79
    xor [hl]                                      ; $6EF7: $AE
    cp [hl]                                       ; $6EF8: $BE
    ld l, b                                       ; $6EF9: $68
    ld h, b                                       ; $6EFA: $60
    db $ED                                        ; $6EFB: $ED
    ld d, b                                       ; $6EFC: $50
    ld h, b                                       ; $6EFD: $60
    ld l, l                                       ; $6EFE: $6D
    nop                                           ; $6EFF: $00
    ld c, b                                       ; $6F00: $48
    db $DB                                        ; $6F01: $DB
    or [hl]                                       ; $6F02: $B6
    jp c, $BFBD                                   ; $6F03: $DA $BD $BF

    ld e, d                                       ; $6F06: $5A
    push af                                       ; $6F07: $F5
    nop                                           ; $6F08: $00
    rst RST_18                                    ; $6F09: $DF
    ld b, b                                       ; $6F0A: $40
    nop                                           ; $6F0B: $00
    db $FC                                        ; $6F0C: $FC
    and b                                         ; $6F0D: $A0
    di                                            ; $6F0E: $F3
    scf                                           ; $6F0F: $37
    ldh a, [$FFF1]                                ; $6F10: $F0 $F1
    ld [$E002], sp                                ; $6F12: $08 $02 $E0
    ld a, [bc]                                    ; $6F15: $0A
    nop                                           ; $6F16: $00
    ld a, c                                       ; $6F17: $79
    ld c, c                                       ; $6F18: $49
    rrca                                          ; $6F19: $0F
    ld [$B74F], sp                                ; $6F1A: $08 $4F $B7
    add hl, bc                                    ; $6F1D: $09
    xor a                                         ; $6F1E: $AF
    ld d, e                                       ; $6F1F: $53
    jr nc, @+$0D                                  ; $6F20: $30 $0B

    inc bc                                        ; $6F22: $03
    rst RST_30                                    ; $6F23: $F7
    rlca                                          ; $6F24: $07
    ld d, a                                       ; $6F25: $57
    ld [$0400], sp                                ; $6F26: $08 $00 $04
    ld d, b                                       ; $6F29: $50
    ld e, l                                       ; $6F2A: $5D
    ld bc, $E758                                  ; $6F2B: $01 $58 $E7
    ld a, b                                       ; $6F2E: $78
    db $10                                        ; $6F2F: $10
    add hl, bc                                    ; $6F30: $09
    ld a, a                                       ; $6F31: $7F
    db $10                                        ; $6F32: $10
    add a                                         ; $6F33: $87
    ld l, e                                       ; $6F34: $6B
    ld a, h                                       ; $6F35: $7C

jr_035_6F36:
    jr c, jr_035_6F36                             ; $6F36: $38 $FE

    db $FC                                        ; $6F38: $FC
    ld b, b                                       ; $6F39: $40
    ld [bc], a                                    ; $6F3A: $02
    add c                                         ; $6F3B: $81
    push hl                                       ; $6F3C: $E5
    ld bc, $01FD                                  ; $6F3D: $01 $FD $01
    db $E3                                        ; $6F40: $E3
    pop bc                                        ; $6F41: $C1
    adc e                                         ; $6F42: $8B
    rst RST_28                                    ; $6F43: $EF
    ld a, [hl]                                    ; $6F44: $7E
    jr z, jr_035_6F85                             ; $6F45: $28 $3E

    inc e                                         ; $6F47: $1C
    ld l, e                                       ; $6F48: $6B
    db $FD                                        ; $6F49: $FD
    ld a, [de]                                    ; $6F4A: $1A
    ld hl, sp-$10                                 ; $6F4B: $F8 $F0
    db $FC                                        ; $6F4D: $FC
    push af                                       ; $6F4E: $F5
    db $10                                        ; $6F4F: $10
    add hl, bc                                    ; $6F50: $09
    jr nc, jr_035_6F63                            ; $6F51: $30 $10

    ei                                            ; $6F53: $FB
    ld e, d                                       ; $6F54: $5A
    cp a                                          ; $6F55: $BF
    ld a, [de]                                    ; $6F56: $1A
    inc l                                         ; $6F57: $2C
    rra                                           ; $6F58: $1F
    rrca                                          ; $6F59: $0F
    add hl, bc                                    ; $6F5A: $09
    dec sp                                        ; $6F5B: $3B
    db $10                                        ; $6F5C: $10
    jr nc, @+$41                                  ; $6F5D: $30 $3F

    rst RST_18                                    ; $6F5F: $DF
    push de                                       ; $6F60: $D5
    ld e, d                                       ; $6F61: $5A
    inc bc                                        ; $6F62: $03

jr_035_6F63:
    nop                                           ; $6F63: $00
    inc b                                         ; $6F64: $04
    inc bc                                        ; $6F65: $03
    ld [$1007], sp                                ; $6F66: $08 $07 $10
    ld a, [$10B0]                                 ; $6F69: $FA $B0 $10
    add hl, bc                                    ; $6F6C: $09
    reti                                          ; $6F6D: $D9


    ld a, l                                       ; $6F6E: $7D
    add b                                         ; $6F6F: $80
    ld [$ADC0], sp                                ; $6F70: $08 $C0 $AD
    db $10                                        ; $6F73: $10
    ldh [rNR10], a                                ; $6F74: $E0 $10
    ldh a, [rNR10]                                ; $6F76: $F0 $10
    add hl, bc                                    ; $6F78: $09
    rst RST_38                                    ; $6F79: $FF
    nop                                           ; $6F7A: $00
    ld [hl], b                                    ; $6F7B: $70
    jr nc, @+$0A                                  ; $6F7C: $30 $08

    ld h, b                                       ; $6F7E: $60
    ld [$B748], sp                                ; $6F7F: $08 $48 $B7
    xor [hl]                                      ; $6F82: $AE
    ld d, c                                       ; $6F83: $51
    xor l                                         ; $6F84: $AD

jr_035_6F85:
    ld sp, $08F7                                  ; $6F85: $31 $F7 $08
    ld d, e                                       ; $6F88: $53
    ld d, c                                       ; $6F89: $51
    nop                                           ; $6F8A: $00
    ld a, [hl]                                    ; $6F8B: $7E
    ld [$820A], sp                                ; $6F8C: $08 $0A $82
    ld a, l                                       ; $6F8F: $7D
    dec e                                         ; $6F90: $1D
    ldh [c], a                                    ; $6F91: $E2
    ld e, c                                       ; $6F92: $59
    push de                                       ; $6F93: $D5
    ld [$AA8C], sp                                ; $6F94: $08 $8C $AA
    ld [$0845], sp                                ; $6F97: $08 $45 $08
    cp a                                          ; $6F9A: $BF
    ld l, b                                       ; $6F9B: $68
    ld [hl], b                                    ; $6F9C: $70
    ld [$0292], sp                                ; $6F9D: $08 $92 $02
    ld l, l                                       ; $6FA0: $6D
    ld l, a                                       ; $6FA1: $6F
    sub b                                         ; $6FA2: $90
    cp [hl]                                       ; $6FA3: $BE
    ld bc, $589F                                  ; $6FA4: $01 $9F $58
    xor [hl]                                      ; $6FA7: $AE
    pop de                                        ; $6FA8: $D1
    ld a, d                                       ; $6FA9: $7A
    ld sp, hl                                     ; $6FAA: $F9
    ld h, $08                                     ; $6FAB: $26 $08
    add b                                         ; $6FAD: $80
    ld a, a                                       ; $6FAE: $7F
    reti                                          ; $6FAF: $D9


    jr nz, jr_035_6FC7                            ; $6FB0: $20 $15

    db $FD                                        ; $6FB2: $FD
    ld [bc], a                                    ; $6FB3: $02
    ld [hl], a                                    ; $6FB4: $77
    ld e, b                                       ; $6FB5: $58
    dec a                                         ; $6FB6: $3D
    ld [$081A], sp                                ; $6FB7: $08 $1A $08
    ld d, a                                       ; $6FBA: $57
    ldh a, [rSC]                                  ; $6FBB: $F0 $02
    ld hl, sp+$02                                 ; $6FBD: $F8 $02
    cp b                                          ; $6FBF: $B8
    ld a, [de]                                    ; $6FC0: $1A
    ld b, d                                       ; $6FC1: $42
    ld l, d                                       ; $6FC2: $6A
    ld [hl], l                                    ; $6FC3: $75
    ldh [rNR12], a                                ; $6FC4: $E0 $12
    inc bc                                        ; $6FC6: $03

jr_035_6FC7:
    ld sp, $6AB0                                  ; $6FC7: $31 $B0 $6A
    rrca                                          ; $6FCA: $0F
    ld [bc], a                                    ; $6FCB: $02
    ld e, l                                       ; $6FCC: $5D
    dec c                                         ; $6FCD: $0D
    ld a, [de]                                    ; $6FCE: $1A
    rra                                           ; $6FCF: $1F
    ld [bc], a                                    ; $6FD0: $02
    ld [hl+], a                                   ; $6FD1: $22
    ld c, d                                       ; $6FD2: $4A
    ld c, $08                                     ; $6FD3: $0E $08
    ld d, a                                       ; $6FD5: $57
    rlca                                          ; $6FD6: $07
    ld [$110B], sp                                ; $6FD7: $08 $0B $11
    inc bc                                        ; $6FDA: $03
    db $10                                        ; $6FDB: $10
    add hl, de                                    ; $6FDC: $19
    ld l, e                                       ; $6FDD: $6B
    inc l                                         ; $6FDE: $2C
    pop af                                        ; $6FDF: $F1
    rst RST_38                                    ; $6FE0: $FF
    ld [bc], a                                    ; $6FE1: $02
    rst RST_18                                    ; $6FE2: $DF
    inc hl                                        ; $6FE3: $23
    inc b                                         ; $6FE4: $04
    inc e                                         ; $6FE5: $1C
    db $E3                                        ; $6FE6: $E3
    dec a                                         ; $6FE7: $3D

jr_035_6FE8:
    rst RST_20                                    ; $6FE8: $E7
    ei                                            ; $6FE9: $FB
    nop                                           ; $6FEA: $00
    jr z, jr_035_6FF6                             ; $6FEB: $28 $09

    ld bc, $7EBF                                  ; $6FED: $01 $BF $7E
    add hl, sp                                    ; $6FF0: $39
    db $EB                                        ; $6FF1: $EB
    rst RST_30                                    ; $6FF2: $F7
    nop                                           ; $6FF3: $00
    cp $AB                                        ; $6FF4: $FE $AB

jr_035_6FF6:
    jr nc, jr_035_6FC7                            ; $6FF6: $30 $CF

    nop                                           ; $6FF8: $00
    ld a, [$015C]                                 ; $6FF9: $FA $5C $01
    xor c                                         ; $6FFC: $A9
    rlca                                          ; $6FFD: $07
    inc bc                                        ; $6FFE: $03
    cp a                                          ; $6FFF: $BF
    inc l                                         ; $7000: $2C
    inc e                                         ; $7001: $1C
    ld d, l                                       ; $7002: $55
    db $E3                                        ; $7003: $E3
    dec hl                                        ; $7004: $2B
    rst RST_18                                    ; $7005: $DF
    ld [$0AFB], sp                                ; $7006: $08 $FB $0A
    push af                                       ; $7009: $F5
    db $10                                        ; $700A: $10
    ld a, [bc]                                    ; $700B: $0A
    call Call_000_3CF3                            ; $700C: $CD $F3 $3C
    jp $FDCD                                      ; $700F: $C3 $CD $FD


    db $EC                                        ; $7012: $EC
    rst RST_20                                    ; $7013: $E7
    cp d                                          ; $7014: $BA
    ld [$1118], sp                                ; $7015: $08 $18 $11
    ld l, a                                       ; $7018: $6F
    nop                                           ; $7019: $00
    rst RST_18                                    ; $701A: $DF
    ld [$8DA7], sp                                ; $701B: $08 $A7 $8D
    db $10                                        ; $701E: $10
    jr c, jr_035_6FE8                             ; $701F: $38 $C7

    cp l                                          ; $7021: $BD
    jr z, @+$0D                                   ; $7022: $28 $0B

    xor l                                         ; $7024: $AD
    ld [$DD5D], sp                                ; $7025: $08 $5D $DD
    xor d                                         ; $7028: $AA
    ei                                            ; $7029: $FB
    ld [$CC70], sp                                ; $702A: $08 $70 $CC
    sbc a                                         ; $702D: $9F
    ld [$6D5A], sp                                ; $702E: $08 $5A $6D
    ld [$4CF3], sp                                ; $7031: $08 $F3 $4C
    ld bc, $08DF                                  ; $7034: $01 $DF $08
    rrca                                          ; $7037: $0F
    xor d                                         ; $7038: $AA

jr_035_7039:
    ld [$08D9], sp                                ; $7039: $08 $D9 $08
    ld e, $08                                     ; $703C: $1E $08
    ld e, a                                       ; $703E: $5F
    ld [$AA1D], sp                                ; $703F: $08 $1D $AA
    ld [$08DD], sp                                ; $7042: $08 $DD $08
    db $E3                                        ; $7045: $E3
    add c                                         ; $7046: $81
    xor e                                         ; $7047: $AB
    ld [$9883], sp                                ; $7048: $08 $83 $98
    inc c                                         ; $704B: $0C
    rst RST_00                                    ; $704C: $C7
    add hl, hl                                    ; $704D: $29
    ld de, $F8FA                                  ; $704E: $11 $FA $F8
    ldh a, [$FF30]                                ; $7051: $F0 $30
    inc b                                         ; $7053: $04
    ret z                                         ; $7054: $C8

    add b                                         ; $7055: $80
    ld a, b                                       ; $7056: $78
    jr jr_035_7039                                ; $7057: $18 $E0

    jr nc, jr_035_705B                            ; $7059: $30 $00

jr_035_705B:
    ret nc                                        ; $705B: $D0

    xor b                                         ; $705C: $A8
    ld [$0888], sp                                ; $705D: $08 $88 $08
    ld b, b                                       ; $7060: $40
    ld [$070F], sp                                ; $7061: $08 $0F $07
    dec c                                         ; $7064: $0D
    ld a, l                                       ; $7065: $7D
    ld [bc], a                                    ; $7066: $02
    nop                                           ; $7067: $00
    db $10                                        ; $7068: $10
    add hl, de                                    ; $7069: $19
    jr nc, @+$4A                                  ; $706A: $30 $48

    dec b                                         ; $706C: $05
    ld [$0C40], sp                                ; $706D: $08 $40 $0C
    ld a, [de]                                    ; $7070: $1A
    db $EB                                        ; $7071: $EB
    inc [hl]                                      ; $7072: $34
    push de                                       ; $7073: $D5
    ld l, d                                       ; $7074: $6A
    adc e                                         ; $7075: $8B

jr_035_7076:
    db $F4                                        ; $7076: $F4
    inc h                                         ; $7077: $24
    sub a                                         ; $7078: $97
    add sp, $19                                   ; $7079: $E8 $19
    rst RST_00                                    ; $707B: $C7
    ld a, b                                       ; $707C: $78
    ld e, c                                       ; $707D: $59
    push hl                                       ; $707E: $E5
    ld a, [hl-]                                   ; $707F: $3A
    rst RST_38                                    ; $7080: $FF
    add b                                         ; $7081: $80
    rlca                                          ; $7082: $07
    rlca                                          ; $7083: $07
    rlca                                          ; $7084: $07
    rlca                                          ; $7085: $07
    rlca                                          ; $7086: $07
    rlca                                          ; $7087: $07
    rlca                                          ; $7088: $07
    rst RST_38                                    ; $7089: $FF
    rlca                                          ; $708A: $07
    rlca                                          ; $708B: $07
    rlca                                          ; $708C: $07
    rlca                                          ; $708D: $07
    rlca                                          ; $708E: $07
    rlca                                          ; $708F: $07
    rlca                                          ; $7090: $07
    rlca                                          ; $7091: $07
    rst RST_38                                    ; $7092: $FF
    rlca                                          ; $7093: $07
    rlca                                          ; $7094: $07
    rlca                                          ; $7095: $07
    rlca                                          ; $7096: $07
    rlca                                          ; $7097: $07
    rlca                                          ; $7098: $07
    rlca                                          ; $7099: $07
    rlca                                          ; $709A: $07
    rst RST_38                                    ; $709B: $FF
    rlca                                          ; $709C: $07
    rlca                                          ; $709D: $07
    rlca                                          ; $709E: $07
    rlca                                          ; $709F: $07
    rlca                                          ; $70A0: $07
    rlca                                          ; $70A1: $07
    rlca                                          ; $70A2: $07
    rlca                                          ; $70A3: $07
    push af                                       ; $70A4: $F5
    rlca                                          ; $70A5: $07
    rlca                                          ; $70A6: $07
    rlca                                          ; $70A7: $07
    ld [bc], a                                    ; $70A8: $02
    inc a                                         ; $70A9: $3C
    nop                                           ; $70AA: $00
    ld h, [hl]                                    ; $70AB: $66
    rlca                                          ; $70AC: $07
    ld a, [$0007]                                 ; $70AD: $FA $07 $00
    sbc c                                         ; $70B0: $99
    rst RST_28                                    ; $70B1: $EF
    ld bc, $0008                                  ; $70B2: $01 $08 $00
    jr jr_035_7076                                ; $70B5: $18 $BF

    nop                                           ; $70B7: $00
    jr c, jr_035_70BA                             ; $70B8: $38 $00

jr_035_70BA:
    add hl, de                                    ; $70BA: $19
    rlca                                          ; $70BB: $07
    inc bc                                        ; $70BC: $03
    rst RST_38                                    ; $70BD: $FF
    inc bc                                        ; $70BE: $03
    xor e                                         ; $70BF: $AB
    ld e, c                                       ; $70C0: $59
    ld h, [hl]                                    ; $70C1: $66
    inc b                                         ; $70C2: $04
    ld b, $00                                     ; $70C3: $06 $00
    inc c                                         ; $70C5: $0C
    nop                                           ; $70C6: $00
    ret                                           ; $70C7: $C9


    ld d, a                                       ; $70C8: $57
    jr nc, jr_035_70CB                            ; $70C9: $30 $00

jr_035_70CB:
    ld h, b                                       ; $70CB: $60
    ld [bc], a                                    ; $70CC: $02
    ld a, [hl]                                    ; $70CD: $7E
    nop                                           ; $70CE: $00
    rst RST_28                                    ; $70CF: $EF
    rst RST_38                                    ; $70D0: $FF
    rst RST_18                                    ; $70D1: $DF
    jp hl                                         ; $70D2: $E9


    ld bc, $001C                                  ; $70D3: $01 $1C $00
    dec hl                                        ; $70D6: $2B
    ld l, e                                       ; $70D7: $6B
    sbc c                                         ; $70D8: $99
    rst RST_28                                    ; $70D9: $EF
    cp [hl]                                       ; $70DA: $BE
    ld bc, $020C                                  ; $70DB: $01 $0C $02
    ret                                           ; $70DE: $C9


    ld bc, $0199                                  ; $70DF: $01 $99 $01
    ld l, h                                       ; $70E2: $6C
    cp [hl]                                       ; $70E3: $BE
    ld [bc], a                                    ; $70E4: $02
    ld a, [hl]                                    ; $70E5: $7E
    nop                                           ; $70E6: $00
    adc e                                         ; $70E7: $8B
    rst RST_28                                    ; $70E8: $EF
    ld bc, $6079                                  ; $70E9: $01 $79 $60
    xor e                                         ; $70EC: $AB
    inc b                                         ; $70ED: $04
    ld a, h                                       ; $70EE: $7C
    nop                                           ; $70EF: $00
    ld h, [hl]                                    ; $70F0: $66
    nop                                           ; $70F1: $00
    ld b, $04                                     ; $70F2: $06 $04
    add hl, sp                                    ; $70F4: $39
    ld [hl], a                                    ; $70F5: $77
    inc a                                         ; $70F6: $3C
    nop                                           ; $70F7: $00
    rst RST_28                                    ; $70F8: $EF
    ld bc, $003E                                  ; $70F9: $01 $3E $00
    rst RST_38                                    ; $70FC: $FF
    cp c                                          ; $70FD: $B9
    ld [$FF07], a                                 ; $70FE: $EA $07 $FF
    inc bc                                        ; $7101: $03
    ld a, [hl]                                    ; $7102: $7E
    nop                                           ; $7103: $00
    ld b, $04                                     ; $7104: $06 $04
    ld c, $AF                                     ; $7106: $0E $AF
    nop                                           ; $7108: $00
    inc e                                         ; $7109: $1C
    nop                                           ; $710A: $00
    jr jr_035_7114                                ; $710B: $18 $07

    nop                                           ; $710D: $00
    rst RST_28                                    ; $710E: $EF
    ld bc, $3C5F                                  ; $710F: $01 $5F $3C
    nop                                           ; $7112: $00
    ld h, [hl]                                    ; $7113: $66

jr_035_7114:
    ld b, $4F                                     ; $7114: $06 $4F
    ld c, e                                       ; $7116: $4B
    rst RST_28                                    ; $7117: $EF
    rst RST_38                                    ; $7118: $FF
    xor e                                         ; $7119: $AB
    dec b                                         ; $711A: $05
    ld a, $00                                     ; $711B: $3E $00
    ld b, $04                                     ; $711D: $06 $04
    ld a, h                                       ; $711F: $7C

jr_035_7120:
    nop                                           ; $7120: $00
    rst RST_28                                    ; $7121: $EF
    xor e                                         ; $7122: $AB
    ld bc, $007F                                  ; $7123: $01 $7F $00
    ld [$1000], sp                                ; $7126: $08 $00 $10
    ld [bc], a                                    ; $7129: $02
    add hl, hl                                    ; $712A: $29
    ld l, d                                       ; $712B: $6A
    rlca                                          ; $712C: $07
    nop                                           ; $712D: $00
    ld l, c                                       ; $712E: $69
    jr nz, jr_035_7135                            ; $712F: $20 $04

    jr c, jr_035_7133                             ; $7131: $38 $00

jr_035_7133:
    ld b, h                                       ; $7133: $44
    or a                                          ; $7134: $B7

jr_035_7135:
    ld [bc], a                                    ; $7135: $02
    ld b, e                                       ; $7136: $43
    nop                                           ; $7137: $00
    ld a, c                                       ; $7138: $79
    inc b                                         ; $7139: $04
    nop                                           ; $713A: $00
    ld sp, hl                                     ; $713B: $F9
    add hl, de                                    ; $713C: $19
    ld e, a                                       ; $713D: $5F
    inc a                                         ; $713E: $3C
    nop                                           ; $713F: $00
    inc h                                         ; $7140: $24
    nop                                           ; $7141: $00
    add hl, de                                    ; $7142: $19
    add hl, sp                                    ; $7143: $39
    ld a, c                                       ; $7144: $79
    add hl, hl                                    ; $7145: $29
    xor e                                         ; $7146: $AB
    add hl, de                                    ; $7147: $19
    ld a, [hl]                                    ; $7148: $7E
    nop                                           ; $7149: $00
    ld bc, $0202                                  ; $714A: $01 $02 $02
    nop                                           ; $714D: $00
    ld e, e                                       ; $714E: $5B
    ld d, a                                       ; $714F: $57
    jr @+$04                                      ; $7150: $18 $02

    ld [$1000], sp                                ; $7152: $08 $00 $10
    nop                                           ; $7155: $00
    ld c, c                                       ; $7156: $49
    dec b                                         ; $7157: $05
    ld d, [hl]                                    ; $7158: $56
    ld [hl], $02                                  ; $7159: $36 $02
    ld [de], a                                    ; $715B: $12
    nop                                           ; $715C: $00
    inc h                                         ; $715D: $24
    nop                                           ; $715E: $00
    ld a, a                                       ; $715F: $7F
    jr nc, jr_035_7120                            ; $7160: $30 $BE

    ld [bc], a                                    ; $7162: $02
    jr c, jr_035_7165                             ; $7163: $38 $00

jr_035_7165:
    sbc c                                         ; $7165: $99
    dec sp                                        ; $7166: $3B
    ld bc, $509D                                  ; $7167: $01 $9D $50
    xor e                                         ; $716A: $AB
    nop                                           ; $716B: $00
    ld d, [hl]                                    ; $716C: $56
    ld [bc], a                                    ; $716D: $02
    ld b, $00                                     ; $716E: $06 $00
    inc a                                         ; $7170: $3C
    nop                                           ; $7171: $00
    ld e, c                                       ; $7172: $59
    ld e, [hl]                                    ; $7173: $5E
    rlca                                          ; $7174: $07
    nop                                           ; $7175: $00
    ld a, l                                       ; $7176: $7D
    nop                                           ; $7177: $00
    add hl, de                                    ; $7178: $19
    ld e, c                                       ; $7179: $59
    ld bc, $B50C                                  ; $717A: $01 $0C $B5
    nop                                           ; $717D: $00
    jr c, jr_035_7180                             ; $717E: $38 $00

jr_035_7180:
    ld a, c                                       ; $7180: $79
    ld c, d                                       ; $7181: $4A
    ld [bc], a                                    ; $7182: $02
    ld b, b                                       ; $7183: $40
    ld [bc], a                                    ; $7184: $02
    ld e, d                                       ; $7185: $5A
    ld b, c                                       ; $7186: $41
    nop                                           ; $7187: $00
    ld b, d                                       ; $7188: $42
    nop                                           ; $7189: $00
    ei                                            ; $718A: $FB
    ld [hl+], a                                   ; $718B: $22
    nop                                           ; $718C: $00
    ld a, c                                       ; $718D: $79
    xor e                                         ; $718E: $AB
    nop                                           ; $718F: $00
    dec h                                         ; $7190: $25
    nop                                           ; $7191: $00
    inc h                                         ; $7192: $24
    inc b                                         ; $7193: $04
    ld c, h                                       ; $7194: $4C
    nop                                           ; $7195: $00
    ld a, c                                       ; $7196: $79
    ld d, l                                       ; $7197: $55
    jr nz, jr_035_719E                            ; $7198: $20 $04

    jr c, jr_035_719C                             ; $719A: $38 $00

jr_035_719C:
    ld b, h                                       ; $719C: $44
    ld [bc], a                                    ; $719D: $02

jr_035_719E:
    ld b, e                                       ; $719E: $43
    nop                                           ; $719F: $00
    push de                                       ; $71A0: $D5
    ld a, c                                       ; $71A1: $79
    rlca                                          ; $71A2: $07
    ld hl, sp+$00                                 ; $71A3: $F8 $00
    inc b                                         ; $71A5: $04
    nop                                           ; $71A6: $00
    ld [bc], a                                    ; $71A7: $02
    inc b                                         ; $71A8: $04
    cp e                                          ; $71A9: $BB
    add hl, sp                                    ; $71AA: $39
    jr jr_035_71AD                                ; $71AB: $18 $00

jr_035_71AD:
    xor a                                         ; $71AD: $AF
    inc bc                                        ; $71AE: $03
    ld a, [bc]                                    ; $71AF: $0A
    ld [bc], a                                    ; $71B0: $02
    rst RST_38                                    ; $71B1: $FF
    cp d                                          ; $71B2: $BA
    db $FD                                        ; $71B3: $FD
    jr c, jr_035_71B6                             ; $71B4: $38 $00

jr_035_71B6:
    rst RST_18                                    ; $71B6: $DF
    rlca                                          ; $71B7: $07
    add h                                         ; $71B8: $84
    nop                                           ; $71B9: $00
    sbc [hl]                                      ; $71BA: $9E
    xor $00                                       ; $71BB: $EE $00
    add hl, de                                    ; $71BD: $19
    rlca                                          ; $71BE: $07
    ld c, b                                       ; $71BF: $48
    nop                                           ; $71C0: $00
    cp a                                          ; $71C1: $BF
    rlca                                          ; $71C2: $07
    cp $AA                                        ; $71C3: $FE $AA
    nop                                           ; $71C5: $00
    inc b                                         ; $71C6: $04
    nop                                           ; $71C7: $00
    jr jr_035_71CA                                ; $71C8: $18 $00

jr_035_71CA:
    ld h, h                                       ; $71CA: $64
    nop                                           ; $71CB: $00
    ld [bc], a                                    ; $71CC: $02
    xor e                                         ; $71CD: $AB
    nop                                           ; $71CE: $00
    ld h, d                                       ; $71CF: $62
    nop                                           ; $71D0: $00
    sub d                                         ; $71D1: $92
    nop                                           ; $71D2: $00
    ld a, h                                       ; $71D3: $7C
    nop                                           ; $71D4: $00
    cp a                                          ; $71D5: $BF
    xor d                                         ; $71D6: $AA
    rlca                                          ; $71D7: $07
    ld c, b                                       ; $71D8: $48
    nop                                           ; $71D9: $00
    ld e, h                                       ; $71DA: $5C
    nop                                           ; $71DB: $00
    ldh [c], a                                    ; $71DC: $E2
    nop                                           ; $71DD: $00
    ld [hl+], a                                   ; $71DE: $22
    xor e                                         ; $71DF: $AB
    nop                                           ; $71E0: $00
    inc h                                         ; $71E1: $24
    nop                                           ; $71E2: $00
    jr nz, jr_035_71E5                            ; $71E3: $20 $00

jr_035_71E5:
    db $10                                        ; $71E5: $10
    ld [bc], a                                    ; $71E6: $02
    cp a                                          ; $71E7: $BF
    xor d                                         ; $71E8: $AA
    rlca                                          ; $71E9: $07
    ld b, h                                       ; $71EA: $44
    ld [bc], a                                    ; $71EB: $02
    ld a, h                                       ; $71EC: $7C
    nop                                           ; $71ED: $00
    jp z, $AA00                                   ; $71EE: $CA $00 $AA

    xor e                                         ; $71F1: $AB
    nop                                           ; $71F2: $00
    or d                                          ; $71F3: $B2
    nop                                           ; $71F4: $00

jr_035_71F5:
    sub d                                         ; $71F5: $92
    nop                                           ; $71F6: $00
    ld h, h                                       ; $71F7: $64
    nop                                           ; $71F8: $00
    cp a                                          ; $71F9: $BF
    xor e                                         ; $71FA: $AB
    rlca                                          ; $71FB: $07
    cp $00                                        ; $71FC: $FE $00
    inc b                                         ; $71FE: $04
    nop                                           ; $71FF: $00
    jr jr_035_7202                                ; $7200: $18 $00

jr_035_7202:
    cp c                                          ; $7202: $B9
    ld e, e                                       ; $7203: $5B
    ld [bc], a                                    ; $7204: $02
    nop                                           ; $7205: $00
    ld h, d                                       ; $7206: $62
    nop                                           ; $7207: $00
    ld sp, hl                                     ; $7208: $F9
    ld a, h                                       ; $7209: $7C
    nop                                           ; $720A: $00
    cp a                                          ; $720B: $BF
    xor b                                         ; $720C: $A8
    dec b                                         ; $720D: $05
    add b                                         ; $720E: $80
    nop                                           ; $720F: $00
    ret nz                                        ; $7210: $C0

    nop                                           ; $7211: $00
    ldh [$FFA0], a                                ; $7212: $E0 $A0
    ldh a, [$FF1F]                                ; $7214: $F0 $1F
    sub b                                         ; $7216: $90
    ld hl, sp-$78                                 ; $7217: $F8 $88
    add hl, de                                    ; $7219: $19
    add hl, sp                                    ; $721A: $39
    ld e, c                                       ; $721B: $59
    ld a, c                                       ; $721C: $79
    rst RST_08                                    ; $721D: $CF
    ld e, b                                       ; $721E: $58
    add b                                         ; $721F: $80
    ld a, [de]                                    ; $7220: $1A
    jr jr_035_7223                                ; $7221: $18 $00

jr_035_7223:
    inc h                                         ; $7223: $24
    ld [$6705], sp                                ; $7224: $08 $05 $67
    inc b                                         ; $7227: $04
    add b                                         ; $7228: $80
    ld l, h                                       ; $7229: $6C
    ld a, a                                       ; $722A: $7F
    dec c                                         ; $722B: $0D
    daa                                           ; $722C: $27
    dec h                                         ; $722D: $25
    rla                                           ; $722E: $17
    ld b, $2B                                     ; $722F: $06 $2B
    inc e                                         ; $7231: $1C
    ld a, $15                                     ; $7232: $3E $15
    rrca                                          ; $7234: $0F
    nop                                           ; $7235: $00
    ld l, h                                       ; $7236: $6C
    ld bc, $057F                                  ; $7237: $01 $7F $05
    rst RST_20                                    ; $723A: $E7
    adc d                                         ; $723B: $8A
    inc b                                         ; $723C: $04
    ld a, [bc]                                    ; $723D: $0A
    rst RST_38                                    ; $723E: $FF
    rst RST_30                                    ; $723F: $F7
    inc c                                         ; $7240: $0C
    inc l                                         ; $7241: $2C
    inc b                                         ; $7242: $04
    db $F4                                        ; $7243: $F4
    sbc [hl]                                      ; $7244: $9E
    inc b                                         ; $7245: $04
    xor h                                         ; $7246: $AC
    ld hl, sp+$00                                 ; $7247: $F8 $00
    ld d, [hl]                                    ; $7249: $56
    ld [hl], b                                    ; $724A: $70
    inc b                                         ; $724B: $04
    cp $BA                                        ; $724C: $FE $BA
    ld [$27FC], sp                                ; $724E: $08 $FC $27
    inc bc                                        ; $7251: $03
    nop                                           ; $7252: $00
    rra                                           ; $7253: $1F
    inc b                                         ; $7254: $04
    jr nz, jr_035_71F5                            ; $7255: $20 $9E

    ld [$38C7], sp                                ; $7257: $08 $C7 $38
    nop                                           ; $725A: $00
    dec hl                                        ; $725B: $2B
    inc bc                                        ; $725C: $03
    ld [bc], a                                    ; $725D: $02
    rlca                                          ; $725E: $07
    cp a                                          ; $725F: $BF
    inc b                                         ; $7260: $04
    dec c                                         ; $7261: $0D
    ld [$030D], sp                                ; $7262: $08 $0D $03
    inc bc                                        ; $7265: $03
    xor h                                         ; $7266: $AC
    inc b                                         ; $7267: $04
    ld d, [hl]                                    ; $7268: $56
    inc bc                                        ; $7269: $03
    ld [$38FD], sp                                ; $726A: $08 $FD $38
    ld b, $10                                     ; $726D: $06 $10
    nop                                           ; $726F: $00
    ld bc, $07F8                                  ; $7270: $01 $F8 $07
    jr nz, jr_035_727D                            ; $7273: $20 $08

    or b                                          ; $7275: $B0
    ld [$1EFF], sp                                ; $7276: $08 $FF $1E
    ld a, [hl]                                    ; $7279: $7E
    ld a, [$03F7]                                 ; $727A: $FA $F7 $03

jr_035_727D:
    nop                                           ; $727D: $00
    ld e, h                                       ; $727E: $5C
    inc b                                         ; $727F: $04
    add hl, bc                                    ; $7280: $09
    ld [$8088], sp                                ; $7281: $08 $88 $80
    ld b, h                                       ; $7284: $44
    call nz, $C883                                ; $7285: $C4 $83 $C8
    add a                                         ; $7288: $87
    ret nc                                        ; $7289: $D0

    adc a                                         ; $728A: $8F
    ldh [c], a                                    ; $728B: $E2

Jump_035_728C:
    nop                                           ; $728C: $00
    sbc l                                         ; $728D: $9D
    and $99                                       ; $728E: $E6 $99
    and [hl]                                      ; $7290: $A6
    add hl, de                                    ; $7291: $19
    daa                                           ; $7292: $27
    jr @+$25                                      ; $7293: $18 $23

    dec e                                         ; $7295: $1D
    dec e                                         ; $7296: $1D
    ld [de], a                                    ; $7297: $12
    rrca                                          ; $7298: $0F
    nop                                           ; $7299: $00
    ld [hl], e                                    ; $729A: $73
    nop                                           ; $729B: $00
    inc c                                         ; $729C: $0C
    inc b                                         ; $729D: $04
    call c, Call_000_0824                         ; $729E: $DC $24 $08
    ldh a, [c]                                    ; $72A1: $F2
    inc b                                         ; $72A2: $04
    ret nc                                        ; $72A3: $D0

    db $FC                                        ; $72A4: $FC
    ld [hl+], a                                   ; $72A5: $22
    rst RST_18                                    ; $72A6: $DF
    ld b, c                                       ; $72A7: $41
    rst RST_20                                    ; $72A8: $E7
    ld e, h                                       ; $72A9: $5C
    call $5938                                    ; $72AA: $CD $38 $59
    or b                                          ; $72AD: $B0
    ld l, c                                       ; $72AE: $69
    inc b                                         ; $72AF: $04
    inc de                                        ; $72B0: $13
    ld d, c                                       ; $72B1: $51
    ldh [$FFB1], a                                ; $72B2: $E0 $B1
    inc b                                         ; $72B4: $04
    ld l, a                                       ; $72B5: $6F
    pop bc                                        ; $72B6: $C1
    jr c, jr_035_7338                             ; $72B7: $38 $7F

    add sp, $7F                                   ; $72B9: $E8 $7F
    ld a, [hl]                                    ; $72BB: $7E
    dec b                                         ; $72BC: $05
    sub d                                         ; $72BD: $92

jr_035_72BE:
    inc b                                         ; $72BE: $04
    jp nc, Jump_035_728C                          ; $72BF: $D2 $8C $72

    inc b                                         ; $72C2: $04
    call z, $CEF1                                 ; $72C3: $CC $F1 $CE
    jp hl                                         ; $72C6: $E9


    add $07                                       ; $72C7: $C6 $07
    add sp, -$39                                  ; $72C9: $E8 $C7
    rlca                                          ; $72CB: $07
    db $E4                                        ; $72CC: $E4
    jp $83C5                                      ; $72CD: $C3 $C5 $83


    add d                                         ; $72D0: $82
    ret nc                                        ; $72D1: $D0

    nop                                           ; $72D2: $00
    add e                                         ; $72D3: $83
    xor a                                         ; $72D4: $AF
    nop                                           ; $72D5: $00
    inc bc                                        ; $72D6: $03
    inc b                                         ; $72D7: $04
    inc b                                         ; $72D8: $04
    ld [$0005], sp                                ; $72D9: $08 $05 $00
    jr nc, jr_035_7346                            ; $72DC: $30 $68

    ld [bc], a                                    ; $72DE: $02
    ld a, $05                                     ; $72DF: $3E $05
    ld sp, $6804                                  ; $72E1: $31 $04 $68
    jr nc, jr_035_72BE                            ; $72E4: $30 $D8

    dec b                                         ; $72E6: $05
    ld [hl], b                                    ; $72E7: $70
    or b                                          ; $72E8: $B0
    ldh [$FF60], a                                ; $72E9: $E0 $60
    ret nz                                        ; $72EB: $C0

    nop                                           ; $72EC: $00
    add b                                         ; $72ED: $80
    nop                                           ; $72EE: $00
    push af                                       ; $72EF: $F5
    ld a, e                                       ; $72F0: $7B
    ld [bc], a                                    ; $72F1: $02
    dec e                                         ; $72F2: $1D
    dec l                                         ; $72F3: $2D
    ld b, b                                       ; $72F4: $40
    inc b                                         ; $72F5: $04
    and b                                         ; $72F6: $A0
    db $10                                        ; $72F7: $10
    cp a                                          ; $72F8: $BF
    ld c, l                                       ; $72F9: $4D
    ldh a, [$FF5C]                                ; $72FA: $F0 $5C
    ld b, $18                                     ; $72FC: $06 $18
    rlca                                          ; $72FE: $07
    nop                                           ; $72FF: $00
    ld h, e                                       ; $7300: $63
    call nc, Call_000_0003                        ; $7301: $D4 $03 $00
    rrca                                          ; $7304: $0F
    inc b                                         ; $7305: $04
    db $10                                        ; $7306: $10
    ld [$1F20], sp                                ; $7307: $08 $20 $1F
    ld c, $43                                     ; $730A: $0E $43
    inc a                                         ; $730C: $3C
    ld b, h                                       ; $730D: $44
    jr c, jr_035_7317                             ; $730E: $38 $07

    rlca                                          ; $7310: $07
    dec b                                         ; $7311: $05
    ld b, a                                       ; $7312: $47
    xor a                                         ; $7313: $AF
    inc [hl]                                      ; $7314: $34
    ld a, [hl+]                                   ; $7315: $2A
    ld b, h                                       ; $7316: $44

jr_035_7317:
    dec d                                         ; $7317: $15
    ld d, h                                       ; $7318: $54
    ld h, l                                       ; $7319: $65
    inc bc                                        ; $731A: $03
    ret nz                                        ; $731B: $C0

    pop de                                        ; $731C: $D1
    ld a, l                                       ; $731D: $7D
    ld [$C008], sp                                ; $731E: $08 $08 $C0
    adc h                                         ; $7321: $8C
    ld a, b                                       ; $7322: $78
    ld d, h                                       ; $7323: $54
    ld d, h                                       ; $7324: $54
    ld l, d                                       ; $7325: $6A
    ld l, h                                       ; $7326: $6C
    inc b                                         ; $7327: $04
    rrca                                          ; $7328: $0F
    ld e, h                                       ; $7329: $5C
    inc b                                         ; $732A: $04
    ld a, h                                       ; $732B: $7C
    inc b                                         ; $732C: $04
    db $FC                                        ; $732D: $FC
    cp [hl]                                       ; $732E: $BE
    inc [hl]                                      ; $732F: $34
    ld hl, sp+$44                                 ; $7330: $F8 $44
    nop                                           ; $7332: $00
    ld d, h                                       ; $7333: $54
    ld h, l                                       ; $7334: $65
    inc bc                                        ; $7335: $03
    inc bc                                        ; $7336: $03
    or a                                          ; $7337: $B7

jr_035_7338:
    inc b                                         ; $7338: $04
    inc b                                         ; $7339: $04
    ld [$077C], sp                                ; $733A: $08 $7C $07
    adc h                                         ; $733D: $8C
    or b                                          ; $733E: $B0
    dec b                                         ; $733F: $05
    ld [hl], l                                    ; $7340: $75
    inc c                                         ; $7341: $0C
    inc e                                         ; $7342: $1C
    dec h                                         ; $7343: $25
    dec b                                         ; $7344: $05
    dec b                                         ; $7345: $05

jr_035_7346:
    inc b                                         ; $7346: $04
    ld b, $0F                                     ; $7347: $06 $0F
    db $EB                                        ; $7349: $EB
    ld c, $65                                     ; $734A: $0E $65
    inc bc                                        ; $734C: $03
    add b                                         ; $734D: $80
    inc b                                         ; $734E: $04
    ld b, b                                       ; $734F: $40
    ld [$DF07], sp                                ; $7350: $08 $07 $DF
    rlca                                          ; $7353: $07
    dec b                                         ; $7354: $05
    ret nz                                        ; $7355: $C0

    rrca                                          ; $7356: $0F
    rrca                                          ; $7357: $0F
    ld b, $65                                     ; $7358: $06 $65
    inc bc                                        ; $735A: $03
    ldh [$FFD8], a                                ; $735B: $E0 $D8
    inc b                                         ; $735D: $04
    push hl                                       ; $735E: $E5
    jr nz, jr_035_7380                            ; $735F: $20 $1F

    ld b, e                                       ; $7361: $43
    inc a                                         ; $7362: $3C
    ld b, h                                       ; $7363: $44
    ld d, d                                       ; $7364: $52
    jr c, @+$07                                   ; $7365: $38 $05

    add hl, sp                                    ; $7367: $39
    inc l                                         ; $7368: $2C
    ld [bc], a                                    ; $7369: $02
    ld bc, $0ADD                                  ; $736A: $01 $DD $0A
    add hl, hl                                    ; $736D: $29
    rlca                                          ; $736E: $07
    dec d                                         ; $736F: $15
    ld b, h                                       ; $7370: $44
    ld a, [hl+]                                   ; $7371: $2A
    ld b, h                                       ; $7372: $44
    ld d, l                                       ; $7373: $55
    ccf                                           ; $7374: $3F
    nop                                           ; $7375: $00
    ret c                                         ; $7376: $D8

    ld a, e                                       ; $7377: $7B
    nop                                           ; $7378: $00
    ldh [$FF7D], a                                ; $7379: $E0 $7D
    ld [$F008], sp                                ; $737B: $08 $08 $F0
    adc h                                         ; $737E: $8C
    ld a, [hl+]                                   ; $737F: $2A

jr_035_7380:
    ld a, b                                       ; $7380: $78
    ld d, h                                       ; $7381: $54
    ld [hl], h                                    ; $7382: $74
    xor h                                         ; $7383: $AC
    inc c                                         ; $7384: $0C
    ld e, b                                       ; $7385: $58
    inc e                                         ; $7386: $1C
    or b                                          ; $7387: $B0
    or l                                          ; $7388: $B5
    inc l                                         ; $7389: $2C
    ld h, b                                       ; $738A: $60
    ldh [$FFE5], a                                ; $738B: $E0 $E5
    ld hl, sp+$4C                                 ; $738D: $F8 $4C
    db $FC                                        ; $738F: $FC
    ld [$05FF], sp                                ; $7390: $08 $FF $05
    dec d                                         ; $7393: $15
    inc bc                                        ; $7394: $03
    rst RST_38                                    ; $7395: $FF
    rst RST_38                                    ; $7396: $FF
    rst RST_30                                    ; $7397: $F7
    ldh a, [rTMA]                                 ; $7398: $F0 $06
    db $DB                                        ; $739A: $DB
    dec d                                         ; $739B: $15
    dec h                                         ; $739C: $25
    ld b, a                                       ; $739D: $47
    inc [hl]                                      ; $739E: $34
    db $FD                                        ; $739F: $FD
    dec d                                         ; $73A0: $15
    ld d, h                                       ; $73A1: $54
    ld h, l                                       ; $73A2: $65
    pop af                                        ; $73A3: $F1
    inc bc                                        ; $73A4: $03
    rst RST_38                                    ; $73A5: $FF
    rst RST_38                                    ; $73A6: $FF
    db $FD                                        ; $73A7: $FD
    xor b                                         ; $73A8: $A8
    ld [hl], b                                    ; $73A9: $70
    ld d, b                                       ; $73AA: $50
    inc h                                         ; $73AB: $24
    xor a                                         ; $73AC: $AF
    db $FD                                        ; $73AD: $FD
    ret c                                         ; $73AE: $D8

    inc d                                         ; $73AF: $14
    ld a, h                                       ; $73B0: $7C
    inc h                                         ; $73B1: $24
    db $EC                                        ; $73B2: $EC
    inc [hl]                                      ; $73B3: $34
    db $EC                                        ; $73B4: $EC
    cp $44                                        ; $73B5: $FE $44
    nop                                           ; $73B7: $00
    inc h                                         ; $73B8: $24
    ld h, l                                       ; $73B9: $65
    inc bc                                        ; $73BA: $03
    ld bc, $02CD                                  ; $73BB: $01 $CD $02
    sub [hl]                                      ; $73BE: $96
    ld [$0304], sp                                ; $73BF: $08 $04 $03
    adc h                                         ; $73C2: $8C
    rlca                                          ; $73C3: $07
    sbc h                                         ; $73C4: $9C
    ret nz                                        ; $73C5: $C0

    ld hl, $1E38                                  ; $73C6: $21 $38 $1E
    ld b, e                                       ; $73C9: $43
    db $E4                                        ; $73CA: $E4
    db $EC                                        ; $73CB: $EC
    ld [hl], h                                    ; $73CC: $74
    ld b, d                                       ; $73CD: $42
    ccf                                           ; $73CE: $3F
    ld b, l                                       ; $73CF: $45
    rst RST_38                                    ; $73D0: $FF
    inc b                                         ; $73D1: $04
    nop                                           ; $73D2: $00
    ld d, [hl]                                    ; $73D3: $56
    inc bc                                        ; $73D4: $03
    rst RST_38                                    ; $73D5: $FF
    db $FD                                        ; $73D6: $FD
    rlca                                          ; $73D7: $07
    dec b                                         ; $73D8: $05
    ld l, d                                       ; $73D9: $6A
    jr nc, jr_035_73E0                            ; $73DA: $30 $04

    rst RST_38                                    ; $73DC: $FF
    ld e, b                                       ; $73DD: $58
    inc b                                         ; $73DE: $04
    cp h                                          ; $73DF: $BC

jr_035_73E0:
    ldh a, [$FF7C]                                ; $73E0: $F0 $7C
    db $FD                                        ; $73E2: $FD
    inc b                                         ; $73E3: $04
    nop                                           ; $73E4: $00
    inc d                                         ; $73E5: $14
    rst RST_38                                    ; $73E6: $FF
    inc bc                                        ; $73E7: $03
    and l                                         ; $73E8: $A5
    ld b, b                                       ; $73E9: $40
    ld [$05FE], sp                                ; $73EA: $08 $FE $05
    push de                                       ; $73ED: $D5
    dec b                                         ; $73EE: $05
    rra                                           ; $73EF: $1F
    dec [hl]                                      ; $73F0: $35
    inc bc                                        ; $73F1: $03
    dec d                                         ; $73F2: $15
    ld c, d                                       ; $73F3: $4A
    cp l                                          ; $73F4: $BD
    ld [$2F54], sp                                ; $73F5: $08 $54 $2F
    ld [bc], a                                    ; $73F8: $02
    and h                                         ; $73F9: $A4
    inc b                                         ; $73FA: $04
    inc b                                         ; $73FB: $04
    ld [$05F7], sp                                ; $73FC: $08 $F7 $05
    dec d                                         ; $73FF: $15
    cp h                                          ; $7400: $BC
    inc b                                         ; $7401: $04
    jr z, jr_035_740C                             ; $7402: $28 $08

    ld c, h                                       ; $7404: $4C
    jr jr_035_7463                                ; $7405: $18 $5C

    db $EC                                        ; $7407: $EC
    sub h                                         ; $7408: $94
    ld e, h                                       ; $7409: $5C
    inc b                                         ; $740A: $04
    db $F4                                        ; $740B: $F4

jr_035_740C:
    inc b                                         ; $740C: $04
    db $FC                                        ; $740D: $FC
    ld a, b                                       ; $740E: $78
    push af                                       ; $740F: $F5
    jr nz, jr_035_743E                            ; $7410: $20 $2C

    rst RST_38                                    ; $7412: $FF
    inc bc                                        ; $7413: $03
    rrca                                          ; $7414: $0F
    inc b                                         ; $7415: $04
    db $10                                        ; $7416: $10
    ld [$200C], sp                                ; $7417: $08 $0C $20
    rra                                           ; $741A: $1F
    inc hl                                        ; $741B: $23
    inc e                                         ; $741C: $1C
    rst RST_38                                    ; $741D: $FF
    dec b                                         ; $741E: $05
    ld b, e                                       ; $741F: $43
    inc a                                         ; $7420: $3C
    ld a, d                                       ; $7421: $7A
    ld b, h                                       ; $7422: $44
    inc e                                         ; $7423: $1C
    dec b                                         ; $7424: $05
    inc l                                         ; $7425: $2C
    inc d                                         ; $7426: $14
    ld a, [hl+]                                   ; $7427: $2A
    ld b, h                                       ; $7428: $44
    dec d                                         ; $7429: $15
    rst RST_38                                    ; $742A: $FF
    ld d, h                                       ; $742B: $54
    ld h, l                                       ; $742C: $65
    inc bc                                        ; $742D: $03
    sub l                                         ; $742E: $95
    ld a, h                                       ; $742F: $7C
    ld [$1505], sp                                ; $7430: $08 $05 $15
    xor e                                         ; $7433: $AB
    dec b                                         ; $7434: $05
    jr nc, jr_035_743F                            ; $7435: $30 $08

    ld e, b                                       ; $7437: $58
    ret nc                                        ; $7438: $D0

    xor h                                         ; $7439: $AC
    db $E4                                        ; $743A: $E4
    rst RST_38                                    ; $743B: $FF
    cp $FF                                        ; $743C: $FE $FF

jr_035_743E:
    rst RST_38                                    ; $743E: $FF

jr_035_743F:
    inc bc                                        ; $743F: $03
    ret z                                         ; $7440: $C8

    inc b                                         ; $7441: $04
    rst RST_18                                    ; $7442: $DF
    dec d                                         ; $7443: $15
    ld bc, $06AA                                  ; $7444: $01 $AA $06
    inc bc                                        ; $7447: $03
    ld [$0402], sp                                ; $7448: $08 $02 $04
    dec b                                         ; $744B: $05
    db $10                                        ; $744C: $10
    ld b, $FF                                     ; $744D: $06 $FF
    inc b                                         ; $744F: $04
    rrca                                          ; $7450: $0F
    dec c                                         ; $7451: $0D
    nop                                           ; $7452: $00
    ld a, e                                       ; $7453: $7B
    nop                                           ; $7454: $00
    and h                                         ; $7455: $A4
    inc b                                         ; $7456: $04
    ld l, e                                       ; $7457: $6B
    inc b                                         ; $7458: $04
    ld [$8C05], sp                                ; $7459: $08 $05 $8C
    call nz, $C018                                ; $745C: $C4 $18 $C0
    db $FD                                        ; $745F: $FD
    dec de                                        ; $7460: $1B
    ld h, b                                       ; $7461: $60
    ret nz                                        ; $7462: $C0

jr_035_7463:
    and b                                         ; $7463: $A0
    inc b                                         ; $7464: $04
    xor h                                         ; $7465: $AC
    add b                                         ; $7466: $80
    ld [$FA04], sp                                ; $7467: $08 $04 $FA
    rrca                                          ; $746A: $0F
    dec b                                         ; $746B: $05
    nop                                           ; $746C: $00
    ld a, e                                       ; $746D: $7B
    nop                                           ; $746E: $00
    rrca                                          ; $746F: $0F
    inc b                                         ; $7470: $04
    db $10                                        ; $7471: $10
    add c                                         ; $7472: $81
    ld [$1F20], sp                                ; $7473: $08 $20 $1F
    ld b, e                                       ; $7476: $43
    inc a                                         ; $7477: $3C
    ld b, h                                       ; $7478: $44
    jr c, jr_035_7488                             ; $7479: $38 $0D

    ld [$271D], a                                 ; $747B: $EA $1D $27
    dec h                                         ; $747E: $25
    ld b, a                                       ; $747F: $47
    inc c                                         ; $7480: $0C
    ld a, [hl+]                                   ; $7481: $2A
    inc e                                         ; $7482: $1C
    dec d                                         ; $7483: $15
    db $FD                                        ; $7484: $FD
    ld d, h                                       ; $7485: $54
    ld h, l                                       ; $7486: $65
    inc bc                                        ; $7487: $03

jr_035_7488:
    ret nc                                        ; $7488: $D0

    ld a, l                                       ; $7489: $7D
    ld [$EC08], sp                                ; $748A: $08 $08 $EC
    xor d                                         ; $748D: $AA
    db $FD                                        ; $748E: $FD
    ld d, h                                       ; $748F: $54
    ld d, h                                       ; $7490: $54
    xor h                                         ; $7491: $AC
    inc c                                         ; $7492: $0C
    ld e, b                                       ; $7493: $58
    inc e                                         ; $7494: $1C
    xor b                                         ; $7495: $A8
    xor d                                         ; $7496: $AA
    inc b                                         ; $7497: $04
    call c, Call_035_7C14                         ; $7498: $DC $14 $7C
    inc h                                         ; $749B: $24
    db $FC                                        ; $749C: $FC
    inc c                                         ; $749D: $0C
    ld hl, sp-$01                                 ; $749E: $F8 $FF
    inc e                                         ; $74A0: $1C
    nop                                           ; $74A1: $00
    ld d, h                                       ; $74A2: $54
    ld h, l                                       ; $74A3: $65
    inc bc                                        ; $74A4: $03
    rst RST_38                                    ; $74A5: $FF
    rst RST_10                                    ; $74A6: $D7
    push de                                       ; $74A7: $D5
    rst RST_28                                    ; $74A8: $EF
    dec b                                         ; $74A9: $05
    dec d                                         ; $74AA: $15
    dec h                                         ; $74AB: $25
    ld de, $10DE                                  ; $74AC: $11 $DE $10
    inc b                                         ; $74AF: $04
    db $FD                                        ; $74B0: $FD
    ld a, [hl]                                    ; $74B1: $7E
    dec [hl]                                      ; $74B2: $35
    inc b                                         ; $74B3: $04
    dec d                                         ; $74B4: $15
    inc bc                                        ; $74B5: $03
    rst RST_38                                    ; $74B6: $FF
    rst RST_38                                    ; $74B7: $FF
    db $FD                                        ; $74B8: $FD
    ld l, h                                       ; $74B9: $6C
    xor e                                         ; $74BA: $AB
    inc b                                         ; $74BB: $04
    call nc, $AC14                                ; $74BC: $D4 $14 $AC
    ldh [$FF5C], a                                ; $74BF: $E0 $5C
    inc b                                         ; $74C1: $04
    db $F4                                        ; $74C2: $F4
    ld a, [$04FD]                                 ; $74C3: $FA $FD $04
    rst RST_38                                    ; $74C6: $FF
    rst RST_38                                    ; $74C7: $FF
    ld bc, $0018                                  ; $74C8: $01 $18 $00
    inc h                                         ; $74CB: $24
    or a                                          ; $74CC: $B7
    nop                                           ; $74CD: $00
    ld h, [hl]                                    ; $74CE: $66
    inc bc                                        ; $74CF: $03
    nop                                           ; $74D0: $00
    ld a, [hl]                                    ; $74D1: $7E
    nop                                           ; $74D2: $00
    dec c                                         ; $74D3: $0D
    ld b, a                                       ; $74D4: $47
    rst RST_18                                    ; $74D5: $DF
    or h                                          ; $74D6: $B4
    nop                                           ; $74D7: $00
    inc c                                         ; $74D8: $0C
    nop                                           ; $74D9: $00
    dec l                                         ; $74DA: $2D
    dec c                                         ; $74DB: $0D
    dec e                                         ; $74DC: $1D
    scf                                           ; $74DD: $37
    ld e, a                                       ; $74DE: $5F
    ld b, d                                       ; $74DF: $42
    nop                                           ; $74E0: $00
    ld e, a                                       ; $74E1: $5F
    nop                                           ; $74E2: $00
    dec c                                         ; $74E3: $0D
    inc bc                                        ; $74E4: $03
    ld bc, $B5A5                                  ; $74E5: $01 $A5 $B5
    dec a                                         ; $74E8: $3D
    ld bc, $5700                                  ; $74E9: $01 $00 $57
    ld a, b                                       ; $74EC: $78
    nop                                           ; $74ED: $00
    inc b                                         ; $74EE: $04
    ld [bc], a                                    ; $74EF: $02
    push de                                       ; $74F0: $D5
    db $ED                                        ; $74F1: $ED
    dec h                                         ; $74F2: $25
    db $FD                                        ; $74F3: $FD
    nop                                           ; $74F4: $00
    add hl, bc                                    ; $74F5: $09
    nop                                           ; $74F6: $00
    ld de, $6F00                                  ; $74F7: $11 $00 $6F
    ld hl, $0003                                  ; $74FA: $21 $03 $00
    inc e                                         ; $74FD: $1C
    nop                                           ; $74FE: $00
    ld l, a                                       ; $74FF: $6F
    db $DD                                        ; $7500: $DD
    ld l, a                                       ; $7501: $6F
    xor a                                         ; $7502: $AF
    xor l                                         ; $7503: $AD
    ld b, h                                       ; $7504: $44
    nop                                           ; $7505: $00
    add b                                         ; $7506: $80
    nop                                           ; $7507: $00
    ccf                                           ; $7508: $3F
    inc bc                                        ; $7509: $03
    inc bc                                        ; $750A: $03
    rst RST_10                                    ; $750B: $D7
    inc bc                                        ; $750C: $03
    ld bc, $007C                                  ; $750D: $01 $7C $00
    ld h, [hl]                                    ; $7510: $66
    ld [bc], a                                    ; $7511: $02
    rla                                           ; $7512: $17
    rla                                           ; $7513: $17
    rst RST_10                                    ; $7514: $D7
    ld b, a                                       ; $7515: $47
    cp l                                          ; $7516: $BD
    inc c                                         ; $7517: $0C
    nop                                           ; $7518: $00
    ld a, [hl]                                    ; $7519: $7E
    nop                                           ; $751A: $00
    dec c                                         ; $751B: $0D
    dec e                                         ; $751C: $1D
    xor l                                         ; $751D: $AD
    scf                                           ; $751E: $37
    stop                                          ; $751F: $10 $00
    ld a, l                                       ; $7521: $7D
    nop                                           ; $7522: $00
    dec c                                         ; $7523: $0D
    ld a, $00                                     ; $7524: $3E $00
    ld e, d                                       ; $7526: $5A
    ld d, c                                       ; $7527: $51
    ld [bc], a                                    ; $7528: $02
    ld [hl+], a                                   ; $7529: $22
    nop                                           ; $752A: $00
    dec a                                         ; $752B: $3D
    jr nz, jr_035_752E                            ; $752C: $20 $00

jr_035_752E:
    ld l, [hl]                                    ; $752E: $6E
    xor e                                         ; $752F: $AB
    nop                                           ; $7530: $00
    ld sp, $2100                                  ; $7531: $31 $00 $21
    nop                                           ; $7534: $00
    ld h, c                                       ; $7535: $61
    ld [bc], a                                    ; $7536: $02
    ccf                                           ; $7537: $3F
    ld [hl], l                                    ; $7538: $75
    ld b, d                                       ; $7539: $42
    inc bc                                        ; $753A: $03
    ld [bc], a                                    ; $753B: $02
    dec l                                         ; $753C: $2D
    inc b                                         ; $753D: $04
    nop                                           ; $753E: $00
    jr c, jr_035_7541                             ; $753F: $38 $00

jr_035_7541:
    ld b, [hl]                                    ; $7541: $46
    nop                                           ; $7542: $00
    jr nz, jr_035_7545                            ; $7543: $20 $00

jr_035_7545:
    rrca                                          ; $7545: $0F
    db $10                                        ; $7546: $10
    rra                                           ; $7547: $1F
    dec b                                         ; $7548: $05
    ccf                                           ; $7549: $3F
    ld a, [bc]                                    ; $754A: $0A
    ld a, a                                       ; $754B: $7F
    ld b, $11                                     ; $754C: $06 $11
    ld a, e                                       ; $754E: $7B
    ld [bc], a                                    ; $754F: $02
    ld a, c                                       ; $7550: $79
    db $10                                        ; $7551: $10
    db $10                                        ; $7552: $10
    or b                                          ; $7553: $B0
    ld a, b                                       ; $7554: $78
    db $F4                                        ; $7555: $F4
    jr nc, jr_035_756C                            ; $7556: $30 $14

    ret nc                                        ; $7558: $D0

    db $10                                        ; $7559: $10
    inc d                                         ; $755A: $14
    db $10                                        ; $755B: $10
    jr jr_035_75D8                                ; $755C: $18 $7A

    and l                                         ; $755E: $A5
    pop af                                        ; $755F: $F1
    dec d                                         ; $7560: $15
    ld d, b                                       ; $7561: $50
    nop                                           ; $7562: $00
    rst RST_38                                    ; $7563: $FF
    ld de, $107F                                  ; $7564: $11 $7F $10
    xor [hl]                                      ; $7567: $AE
    inc bc                                        ; $7568: $03
    cp $10                                        ; $7569: $FE $10
    add d                                         ; $756B: $82

jr_035_756C:
    ld de, $05C0                                  ; $756C: $11 $C0 $05
    add hl, hl                                    ; $756F: $29
    ld d, $C6                                     ; $7570: $16 $C6
    xor d                                         ; $7572: $AA
    ld b, h                                       ; $7573: $44
    ld h, d                                       ; $7574: $62
    ld bc, $3100                                  ; $7575: $01 $00 $31
    ret nz                                        ; $7578: $C0

    and b                                         ; $7579: $A0
    db $10                                        ; $757A: $10
    ldh [rNR41], a                                ; $757B: $E0 $20
    ldh a, [$FFA0]                                ; $757D: $F0 $A0
    ld hl, sp+$04                                 ; $757F: $F8 $04
    cp b                                          ; $7581: $B8
    dec d                                         ; $7582: $15
    sbc h                                         ; $7583: $9C
    jr nc, @+$1E                                  ; $7584: $30 $1C

    jr jr_035_7594                                ; $7586: $18 $0C

    db $10                                        ; $7588: $10
    ld e, h                                       ; $7589: $5C
    db $10                                        ; $758A: $10
    add hl, hl                                    ; $758B: $29
    inc l                                         ; $758C: $2C
    or b                                          ; $758D: $B0
    ld [hl], c                                    ; $758E: $71
    ld c, h                                       ; $758F: $4C
    stop                                          ; $7590: $10 $00
    rrca                                          ; $7592: $0F
    db $10                                        ; $7593: $10

jr_035_7594:
    inc bc                                        ; $7594: $03
    rra                                           ; $7595: $1F
    dec b                                         ; $7596: $05
    ccf                                           ; $7597: $3F
    ld a, [bc]                                    ; $7598: $0A
    ld a, a                                       ; $7599: $7F
    dec d                                         ; $759A: $15
    db $10                                        ; $759B: $10
    jr nc, jr_035_75F3                            ; $759C: $30 $55

    ld a, e                                       ; $759E: $7B
    jr nc, @+$7F                                  ; $759F: $30 $7D

    jr nc, jr_035_761D                            ; $75A1: $30 $7A

    ld sp, $321A                                  ; $75A3: $31 $1A $32
    ld d, d                                       ; $75A6: $52
    dec de                                        ; $75A7: $1B
    halt                                          ; $75A8: $76
    rra                                           ; $75A9: $1F
    jr nc, jr_035_75AC                            ; $75AA: $30 $00

jr_035_75AC:
    rst RST_38                                    ; $75AC: $FF
    ld de, $D57F                                  ; $75AD: $11 $7F $D5
    db $10                                        ; $75B0: $10
    inc bc                                        ; $75B1: $03
    cp $10                                        ; $75B2: $FE $10
    rst RST_10                                    ; $75B4: $D7
    db $10                                        ; $75B5: $10
    xor d                                         ; $75B6: $AA
    nop                                           ; $75B7: $00
    ld h, a                                       ; $75B8: $67
    ld d, l                                       ; $75B9: $55
    nop                                           ; $75BA: $00
    inc sp                                        ; $75BB: $33
    xor e                                         ; $75BC: $AB
    xor $A0                                       ; $75BD: $EE $A0
    ld [hl], l                                    ; $75BF: $75
    jr nc, jr_035_75EA                            ; $75C0: $30 $28

    nop                                           ; $75C2: $00
    ret nz                                        ; $75C3: $C0

    db $10                                        ; $75C4: $10
    ldh [rNR41], a                                ; $75C5: $E0 $20
    ldh a, [$FFA0]                                ; $75C7: $F0 $A0
    ld hl, sp+$42                                 ; $75C9: $F8 $42
    ld b, h                                       ; $75CB: $44
    db $10                                        ; $75CC: $10
    cp h                                          ; $75CD: $BC
    or b                                          ; $75CE: $B0
    ld e, h                                       ; $75CF: $5C
    ld [hl], b                                    ; $75D0: $70
    scf                                           ; $75D1: $37
    xor h                                         ; $75D2: $AC
    and h                                         ; $75D3: $A4
    ld [hl], $EC                                  ; $75D4: $36 $EC
    jr nc, jr_035_75D8                            ; $75D6: $30 $00

jr_035_75D8:
    rrca                                          ; $75D8: $0F
    db $10                                        ; $75D9: $10
    rra                                           ; $75DA: $1F
    dec b                                         ; $75DB: $05
    ld a, [bc]                                    ; $75DC: $0A
    ccf                                           ; $75DD: $3F
    ld a, [bc]                                    ; $75DE: $0A
    ld a, a                                       ; $75DF: $7F
    dec d                                         ; $75E0: $15
    db $10                                        ; $75E1: $10
    dec bc                                        ; $75E2: $0B
    db $10                                        ; $75E3: $10
    rla                                           ; $75E4: $17
    ld sp, hl                                     ; $75E5: $F9
    db $10                                        ; $75E6: $10
    ret nz                                        ; $75E7: $C0

jr_035_75E8:
    db $10                                        ; $75E8: $10
    ret nz                                        ; $75E9: $C0

jr_035_75EA:
    ld e, $00                                     ; $75EA: $1E $00
    rst RST_38                                    ; $75EC: $FF
    ld de, $40F4                                  ; $75ED: $11 $F4 $40
    db $10                                        ; $75F0: $10
    rrca                                          ; $75F1: $0F
    rlca                                          ; $75F2: $07

jr_035_75F3:
    cp $10                                        ; $75F3: $FE $10
    nop                                           ; $75F5: $00
    ret nz                                        ; $75F6: $C0

    xor c                                         ; $75F7: $A9
    db $10                                        ; $75F8: $10
    ldh [rNR41], a                                ; $75F9: $E0 $20
    ldh a, [rNR41]                                ; $75FB: $F0 $20
    ld hl, sp-$1C                                 ; $75FD: $F8 $E4
    db $10                                        ; $75FF: $10
    ld l, d                                       ; $7600: $6A
    db $FC                                        ; $7601: $FC
    ld d, b                                       ; $7602: $50
    add hl, de                                    ; $7603: $19
    db $EC                                        ; $7604: $EC
    db $10                                        ; $7605: $10
    call c, $AC10                                 ; $7606: $DC $10 $AC
    and h                                         ; $7609: $A4
    db $10                                        ; $760A: $10
    ld e, h                                       ; $760B: $5C
    ld [hl-], a                                   ; $760C: $32
    nop                                           ; $760D: $00
    rrca                                          ; $760E: $0F
    db $10                                        ; $760F: $10
    rra                                           ; $7610: $1F
    dec b                                         ; $7611: $05
    inc c                                         ; $7612: $0C
    ccf                                           ; $7613: $3F
    ld a, [bc]                                    ; $7614: $0A
    ld a, a                                       ; $7615: $7F
    dec d                                         ; $7616: $15
    db $10                                        ; $7617: $10
    jr nc, jr_035_7695                            ; $7618: $30 $7B

    rla                                           ; $761A: $17
    ld d, a                                       ; $761B: $57
    ld a, l                                       ; $761C: $7D

jr_035_761D:
    jr nc, jr_035_769D                            ; $761D: $30 $7E

    ld [hl], c                                    ; $761F: $71
    ld a, [de]                                    ; $7620: $1A
    ld [hl], b                                    ; $7621: $70
    jr nc, @+$72                                  ; $7622: $30 $70

    xor c                                         ; $7624: $A9
    jr nc, @+$7C                                  ; $7625: $30 $7A

    ld sp, $B41B                                  ; $7627: $31 $1B $B4
    nop                                           ; $762A: $00
    rst RST_38                                    ; $762B: $FF
    ld de, $60D4                                  ; $762C: $11 $D4 $60
    db $10                                        ; $762F: $10
    rst RST_28                                    ; $7630: $EF
    db $10                                        ; $7631: $10
    rst RST_10                                    ; $7632: $D7
    nop                                           ; $7633: $00
    cp d                                          ; $7634: $BA
    xor e                                         ; $7635: $AB
    ld e, a                                       ; $7636: $5F
    ld d, l                                       ; $7637: $55
    ld sp, $30AA                                  ; $7638: $31 $AA $30
    nop                                           ; $763B: $00
    jr nz, @-$3E                                  ; $763C: $20 $C0

    jr nz, @+$7E                                  ; $763E: $20 $7C

    ld a, l                                       ; $7640: $7D
    jr nc, jr_035_76B5                            ; $7641: $30 $72

    ldh [$FFB3], a                                ; $7643: $E0 $B3
    ld b, b                                       ; $7645: $40
    nop                                           ; $7646: $00
    ret nz                                        ; $7647: $C0

    xor c                                         ; $7648: $A9
    db $10                                        ; $7649: $10
    ldh [rNR41], a                                ; $764A: $E0 $20
    ldh a, [rNR41]                                ; $764C: $F0 $20
    ld hl, sp+$64                                 ; $764E: $F8 $64
    db $10                                        ; $7650: $10
    dec c                                         ; $7651: $0D
    cp h                                          ; $7652: $BC
    or b                                          ; $7653: $B0
    db $FC                                        ; $7654: $FC
    ld [hl], b                                    ; $7655: $70
    jr nc, jr_035_75E8                            ; $7656: $30 $90

    ld e, h                                       ; $7658: $5C
    db $10                                        ; $7659: $10
    xor $71                                       ; $765A: $EE $71
    jr nc, @+$72                                  ; $765C: $30 $70

    xor h                                         ; $765E: $AC
    inc sp                                        ; $765F: $33
    or d                                          ; $7660: $B2
    ld [hl], c                                    ; $7661: $71
    nop                                           ; $7662: $00
    ld b, b                                       ; $7663: $40
    rrca                                          ; $7664: $0F
    db $10                                        ; $7665: $10
    rra                                           ; $7666: $1F

jr_035_7667:
    dec b                                         ; $7667: $05
    ccf                                           ; $7668: $3F
    ld a, [bc]                                    ; $7669: $0A
    ld a, a                                       ; $766A: $7F
    ld de, $10C2                                  ; $766B: $11 $C2 $10
    ld [hl], b                                    ; $766E: $70
    ld a, c                                       ; $766F: $79
    ld [de], a                                    ; $7670: $12
    ld a, h                                       ; $7671: $7C
    ld [$1410], sp                                ; $7672: $08 $10 $14
    dec [hl]                                      ; $7675: $35
    ld a, d                                       ; $7676: $7A
    db $10                                        ; $7677: $10
    ld [hl], b                                    ; $7678: $70
    db $10                                        ; $7679: $10
    ld a, b                                       ; $767A: $78
    inc de                                        ; $767B: $13
    add hl, de                                    ; $767C: $19
    or h                                          ; $767D: $B4
    ld a, [hl+]                                   ; $767E: $2A
    nop                                           ; $767F: $00
    rst RST_38                                    ; $7680: $FF
    ld de, $107F                                  ; $7681: $11 $7F $10
    rst RST_00                                    ; $7684: $C7
    db $10                                        ; $7685: $10
    add e                                         ; $7686: $83
    sub e                                         ; $7687: $93
    jr nz, jr_035_76C2                            ; $7688: $20 $38

    ld bc, $8290                                  ; $768A: $01 $90 $82
    cp d                                          ; $768D: $BA
    jr nz, jr_035_7692                            ; $768E: $20 $02

    pop de                                        ; $7690: $D1
    sub b                                         ; $7691: $90

jr_035_7692:
    db $10                                        ; $7692: $10
    jr z, @+$13                                   ; $7693: $28 $11

jr_035_7695:
    ld b, h                                       ; $7695: $44
    db $10                                        ; $7696: $10
    add e                                         ; $7697: $83
    ld d, c                                       ; $7698: $51
    push af                                       ; $7699: $F5
    ld b, b                                       ; $769A: $40
    db $10                                        ; $769B: $10
    ld b, b                                       ; $769C: $40

jr_035_769D:
    db $10                                        ; $769D: $10
    ret nz                                        ; $769E: $C0

    db $10                                        ; $769F: $10
    ldh [rNR41], a                                ; $76A0: $E0 $20
    ld c, b                                       ; $76A2: $48
    ldh a, [rNR41]                                ; $76A3: $F0 $20
    ld hl, sp+$24                                 ; $76A5: $F8 $24
    db $10                                        ; $76A7: $10
    inc e                                         ; $76A8: $1C
    jr nc, jr_035_7667                            ; $76A9: $30 $BC

    ld h, $70                                     ; $76AB: $26 $70
    inc a                                         ; $76AD: $3C
    db $10                                        ; $76AE: $10
    ld e, h                                       ; $76AF: $5C
    or b                                          ; $76B0: $B0
    ld [hl], c                                    ; $76B1: $71
    ld de, $B60C                                  ; $76B2: $11 $0C $B6

jr_035_76B5:
    ld [hl-], a                                   ; $76B5: $32
    inc l                                         ; $76B6: $2C
    or d                                          ; $76B7: $B2
    ld [hl], c                                    ; $76B8: $71
    nop                                           ; $76B9: $00
    rrca                                          ; $76BA: $0F
    ld c, $19                                     ; $76BB: $0E $19
    ld [$1E7E], sp                                ; $76BD: $08 $7E $1E
    ld a, a                                       ; $76C0: $7F
    rra                                           ; $76C1: $1F

jr_035_76C2:
    ld [de], a                                    ; $76C2: $12
    rrca                                          ; $76C3: $0F
    ccf                                           ; $76C4: $3F
    rlca                                          ; $76C5: $07
    sbc h                                         ; $76C6: $9C
    ld b, b                                       ; $76C7: $40
    inc bc                                        ; $76C8: $03
    inc c                                         ; $76C9: $0C
    jr nc, @-$0E                                  ; $76CA: $30 $F0

    rrca                                          ; $76CC: $0F
    ld bc, $0C38                                  ; $76CD: $01 $38 $0C
    db $10                                        ; $76D0: $10
    add hl, sp                                    ; $76D1: $39
    ld de, $60BB                                  ; $76D2: $11 $BB $60
    db $10                                        ; $76D5: $10
    sub b                                         ; $76D6: $90
    rst RST_38                                    ; $76D7: $FF
    ld a, h                                       ; $76D8: $7C
    xor b                                         ; $76D9: $A8
    stop                                          ; $76DA: $10 $00
    ld h, b                                       ; $76DC: $60
    ld de, $0C0F                                  ; $76DD: $11 $0F $0C
    ldh a, [rSVBK]                                ; $76E0: $F0 $70
    adc h                                         ; $76E2: $8C
    db $10                                        ; $76E3: $10
    ld sp, $1811                                  ; $76E4: $31 $11 $18
    ldh [$FF30], a                                ; $76E7: $E0 $30
    ret nz                                        ; $76E9: $C0

    ld hl, sp+$20                                 ; $76EA: $F8 $20
    ret nc                                        ; $76EC: $D0

    jr nz, @+$12                                  ; $76ED: $20 $10

    rrca                                          ; $76EF: $0F

jr_035_76F0:
    dec e                                         ; $76F0: $1D
    ld a, a                                       ; $76F1: $7F
    ld e, $A2                                     ; $76F2: $1E $A2
    db $10                                        ; $76F4: $10
    rra                                           ; $76F5: $1F
    ld [de], a                                    ; $76F6: $12
    rrca                                          ; $76F7: $0F
    ccf                                           ; $76F8: $3F
    rlca                                          ; $76F9: $07
    ld b, b                                       ; $76FA: $40
    inc bc                                        ; $76FB: $03

jr_035_76FC:
    ld [hl], b                                    ; $76FC: $70
    inc c                                         ; $76FD: $0C
    jr nc, jr_035_76F0                            ; $76FE: $30 $F0

    rrca                                          ; $7700: $0F
    ld d, l                                       ; $7701: $55
    ld a, l                                       ; $7702: $7D
    cp d                                          ; $7703: $BA
    cp e                                          ; $7704: $BB
    sub l                                         ; $7705: $95
    jr nc, @+$01                                  ; $7706: $30 $FF

    xor d                                         ; $7708: $AA
    jr nc, @-$2A                                  ; $7709: $30 $D4

    jr nc, jr_035_76B5                            ; $770B: $30 $A8

    db $10                                        ; $770D: $10
    pop af                                        ; $770E: $F1
    nop                                           ; $770F: $00
    ret nc                                        ; $7710: $D0

    ld de, $4C0F                                  ; $7711: $11 $0F $4C
    ldh a, [$FF8C]                                ; $7714: $F0 $8C
    db $10                                        ; $7716: $10
    ld b, e                                       ; $7717: $43
    inc c                                         ; $7718: $0C
    ld [de], a                                    ; $7719: $12
    jr jr_035_76FC                                ; $771A: $18 $E0

jr_035_771C:
    jr nc, @-$3E                                  ; $771C: $30 $C0

    jr nz, jr_035_76F0                            ; $771E: $20 $D0

jr_035_7720:
    db $E4                                        ; $7720: $E4

jr_035_7721:
    jr nz, jr_035_7733                            ; $7721: $20 $10

    rrca                                          ; $7723: $0F
    rra                                           ; $7724: $1F
    ld a, a                                       ; $7725: $7F
    dec d                                         ; $7726: $15
    rrca                                          ; $7727: $0F
    ccf                                           ; $7728: $3F
    ld c, [hl]                                    ; $7729: $4E
    rlca                                          ; $772A: $07
    ld b, b                                       ; $772B: $40

jr_035_772C:
    inc bc                                        ; $772C: $03
    inc c                                         ; $772D: $0C
    jr nc, jr_035_7720                            ; $772E: $30 $F0

    rrca                                          ; $7730: $0F
    db $FD                                        ; $7731: $FD
    ld a, [hl+]                                   ; $7732: $2A

jr_035_7733:
    rst RST_38                                    ; $7733: $FF
    ld a, [$F510]                                 ; $7734: $FA $10 $F5
    db $10                                        ; $7737: $10
    ld [$D410], a                                 ; $7738: $EA $10 $D4
    cp [hl]                                       ; $773B: $BE
    db $10                                        ; $773C: $10
    xor b                                         ; $773D: $A8
    stop                                          ; $773E: $10 $00
    ret nc                                        ; $7740: $D0

    ld de, $4C0F                                  ; $7741: $11 $0F $4C
    jr z, @-$0E                                   ; $7744: $28 $F0

    adc h                                         ; $7746: $8C
    db $10                                        ; $7747: $10
    inc c                                         ; $7748: $0C
    ld [de], a                                    ; $7749: $12
    jr jr_035_772C                                ; $774A: $18 $E0

    jr nc, jr_035_77CA                            ; $774C: $30 $7C

    ret nz                                        ; $774E: $C0

    jr nz, jr_035_7721                            ; $774F: $20 $D0

    jr nz, jr_035_7763                            ; $7751: $20 $10

    rrca                                          ; $7753: $0F
    dec e                                         ; $7754: $1D
    ld a, l                                       ; $7755: $7D

jr_035_7756:
    inc h                                         ; $7756: $24

jr_035_7757:
    ld a, [de]                                    ; $7757: $1A
    ld a, [hl]                                    ; $7758: $7E
    jr nc, jr_035_77DA                            ; $7759: $30 $7F

    rra                                           ; $775B: $1F
    db $10                                        ; $775C: $10
    rrca                                          ; $775D: $0F
    ccf                                           ; $775E: $3F
    ld c, [hl]                                    ; $775F: $4E
    rlca                                          ; $7760: $07
    ld b, b                                       ; $7761: $40

jr_035_7762:
    inc bc                                        ; $7762: $03

jr_035_7763:
    inc c                                         ; $7763: $0C
    jr nc, jr_035_7756                            ; $7764: $30 $F0

    rrca                                          ; $7766: $0F
    ld d, l                                       ; $7767: $55
    sub b                                         ; $7768: $90
    nop                                           ; $7769: $00
    xor d                                         ; $776A: $AA
    xor $20                                       ; $776B: $EE $20
    rst RST_38                                    ; $776D: $FF
    ld [$D4EF], a                                 ; $776E: $EA $EF $D4
    cp [hl]                                       ; $7771: $BE
    jr nc, jr_035_771C                            ; $7772: $30 $A8

    stop                                          ; $7774: $10 $00
    ret nc                                        ; $7776: $D0

    ld de, $4C0F                                  ; $7777: $11 $0F $4C
    ld [$8C70], sp                                ; $777A: $08 $70 $8C
    ldh a, [$FF0C]                                ; $777D: $F0 $0C
    ld [de], a                                    ; $777F: $12
    jr jr_035_7762                                ; $7780: $18 $E0

    jr nc, jr_035_7800                            ; $7782: $30 $7C

    ret nz                                        ; $7784: $C0

    jr nz, jr_035_7757                            ; $7785: $20 $D0

    jr nz, jr_035_7799                            ; $7787: $20 $10

    rrca                                          ; $7789: $0F
    jr jr_035_7808                                ; $778A: $18 $7C

jr_035_778C:
    ld b, h                                       ; $778C: $44

jr_035_778D:
    ld a, [de]                                    ; $778D: $1A
    db $10                                        ; $778E: $10
    inc e                                         ; $778F: $1C
    ld a, a                                       ; $7790: $7F
    rra                                           ; $7791: $1F
    db $10                                        ; $7792: $10
    rrca                                          ; $7793: $0F
    ccf                                           ; $7794: $3F
    ld c, a                                       ; $7795: $4F
    rlca                                          ; $7796: $07
    ld b, b                                       ; $7797: $40
    inc bc                                        ; $7798: $03

jr_035_7799:
    inc c                                         ; $7799: $0C
    jr nc, jr_035_778C                            ; $779A: $30 $F0

    rrca                                          ; $779C: $0F
    ld bc, $8224                                  ; $779D: $01 $24 $82
    ld b, h                                       ; $77A0: $44
    nop                                           ; $77A1: $00
    rst RST_28                                    ; $77A2: $EF
    jp nz, $C410                                  ; $77A3: $C2 $10 $C4

    rst RST_38                                    ; $77A6: $FF
    ld a, h                                       ; $77A7: $7C
    xor b                                         ; $77A8: $A8
    stop                                          ; $77A9: $10 $00
    or b                                          ; $77AB: $B0
    ld de, $0C0F                                  ; $77AC: $11 $0F $0C
    ld [hl], b                                    ; $77AF: $70
    ld l, b                                       ; $77B0: $68
    adc h                                         ; $77B1: $8C
    db $10                                        ; $77B2: $10
    jr nc, @-$0E                                  ; $77B3: $30 $F0

    ld de, $E018                                  ; $77B5: $11 $18 $E0
    jr nc, jr_035_7839                            ; $77B8: $30 $7F

    ret nz                                        ; $77BA: $C0

    jr nz, jr_035_778D                            ; $77BB: $20 $D0

    jr nz, jr_035_77CF                            ; $77BD: $20 $10

    rrca                                          ; $77BF: $0F
    rrca                                          ; $77C0: $0F
    rrca                                          ; $77C1: $0F
    rst RST_38                                    ; $77C2: $FF
    rst RST_38                                    ; $77C3: $FF
    rst RST_38                                    ; $77C4: $FF
    rst RST_38                                    ; $77C5: $FF
    rst RST_38                                    ; $77C6: $FF
    rst RST_38                                    ; $77C7: $FF
    rst RST_38                                    ; $77C8: $FF
    rst RST_38                                    ; $77C9: $FF

jr_035_77CA:
    rst RST_38                                    ; $77CA: $FF
    rst RST_38                                    ; $77CB: $FF
    rst RST_38                                    ; $77CC: $FF
    rst RST_38                                    ; $77CD: $FF
    rst RST_38                                    ; $77CE: $FF

jr_035_77CF:
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

jr_035_77DA:
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

jr_035_7800:
    rst RST_38                                    ; $7800: $FF
    rst RST_38                                    ; $7801: $FF
    rst RST_38                                    ; $7802: $FF
    rst RST_38                                    ; $7803: $FF
    rst RST_38                                    ; $7804: $FF
    rst RST_38                                    ; $7805: $FF
    rst RST_38                                    ; $7806: $FF
    rst RST_38                                    ; $7807: $FF

jr_035_7808:
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

jr_035_7839:
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

Jump_035_7863:
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

Call_035_7C14:
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

Call_035_7F03:
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
