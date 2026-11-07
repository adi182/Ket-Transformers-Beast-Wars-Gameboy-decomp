; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    ld a, [$C340]                                 ; $4000: $FA $40 $C3
    or a                                          ; $4003: $B7
    jr z, jr_039_4035                             ; $4004: $28 $2F

    dec a                                         ; $4006: $3D
    ld [$C340], a                                 ; $4007: $EA $40 $C3
    ldh a, [$FF99]                                ; $400A: $F0 $99
    ld e, a                                       ; $400C: $5F
    ldh a, [$FFAC]                                ; $400D: $F0 $AC
    or e                                          ; $400F: $B3
    bit 4, a                                      ; $4010: $CB $67
    jr z, jr_039_401A                             ; $4012: $28 $06

    xor a                                         ; $4014: $AF
    ld [$C340], a                                 ; $4015: $EA $40 $C3
    jr jr_039_4035                                ; $4018: $18 $1B

jr_039_401A:
    ldh a, [$FF98]                                ; $401A: $F0 $98
    ld e, a                                       ; $401C: $5F
    ldh a, [$FFAB]                                ; $401D: $F0 $AB
    or e                                          ; $401F: $B3
    bit 4, a                                      ; $4020: $CB $67
    jr z, jr_039_4034                             ; $4022: $28 $10

    ld a, [$C340]                                 ; $4024: $FA $40 $C3
    or a                                          ; $4027: $B7
    jr z, jr_039_4035                             ; $4028: $28 $0B

    dec a                                         ; $402A: $3D
    ld [$C340], a                                 ; $402B: $EA $40 $C3
    jr z, jr_039_4035                             ; $402E: $28 $05

    dec a                                         ; $4030: $3D
    ld [$C340], a                                 ; $4031: $EA $40 $C3

jr_039_4034:
    ret                                           ; $4034: $C9


jr_039_4035:
    ld a, [$C33B]                                 ; $4035: $FA $3B $C3
    or a                                          ; $4038: $B7
    jr z, jr_039_404A                             ; $4039: $28 $0F

    dec a                                         ; $403B: $3D
    ld [$C33B], a                                 ; $403C: $EA $3B $C3
    ld a, [$C33A]                                 ; $403F: $FA $3A $C3
    add $02                                       ; $4042: $C6 $02
    ld [$C33A], a                                 ; $4044: $EA $3A $C3
    ldh [$FFE2], a                                ; $4047: $E0 $E2
    ret                                           ; $4049: $C9


jr_039_404A:
    ldh a, [$FF98]                                ; $404A: $F0 $98
    ld e, a                                       ; $404C: $5F
    ldh a, [$FFAB]                                ; $404D: $F0 $AB
    or e                                          ; $404F: $B3
    bit 4, a                                      ; $4050: $CB $67
    jr nz, jr_039_405F                            ; $4052: $20 $0B

    ld a, [$C346]                                 ; $4054: $FA $46 $C3
    or a                                          ; $4057: $B7
    jr z, jr_039_405F                             ; $4058: $28 $05

    dec a                                         ; $405A: $3D
    ld [$C346], a                                 ; $405B: $EA $46 $C3
    ret                                           ; $405E: $C9


jr_039_405F:
    ld a, $04                                     ; $405F: $3E $04
    ld [$C346], a                                 ; $4061: $EA $46 $C3
    jp Jump_039_40CB                              ; $4064: $C3 $CB $40


    ld a, [$C340]                                 ; $4067: $FA $40 $C3
    or a                                          ; $406A: $B7
    jr z, jr_039_407E                             ; $406B: $28 $11

    dec a                                         ; $406D: $3D
    ld [$C340], a                                 ; $406E: $EA $40 $C3
    ldh a, [$FF99]                                ; $4071: $F0 $99
    ld e, a                                       ; $4073: $5F
    ldh a, [$FFAC]                                ; $4074: $F0 $AC
    or e                                          ; $4076: $B3
    bit 4, a                                      ; $4077: $CB $67
    ret z                                         ; $4079: $C8

    xor a                                         ; $407A: $AF
    ld [$C340], a                                 ; $407B: $EA $40 $C3

jr_039_407E:
    ld a, [$C33B]                                 ; $407E: $FA $3B $C3
    or a                                          ; $4081: $B7
    jr z, jr_039_40B1                             ; $4082: $28 $2D

    dec a                                         ; $4084: $3D
    ld [$C33B], a                                 ; $4085: $EA $3B $C3
    ld a, [$C33A]                                 ; $4088: $FA $3A $C3
    add $02                                       ; $408B: $C6 $02
    ld [$C33A], a                                 ; $408D: $EA $3A $C3
    ldh [$FFE2], a                                ; $4090: $E0 $E2
    ldh a, [$FF98]                                ; $4092: $F0 $98
    ld e, a                                       ; $4094: $5F
    ldh a, [$FFAB]                                ; $4095: $F0 $AB
    or e                                          ; $4097: $B3
    bit 4, a                                      ; $4098: $CB $67
    jr z, jr_039_40B0                             ; $409A: $28 $14

    ld a, [$C33B]                                 ; $409C: $FA $3B $C3
    or a                                          ; $409F: $B7
    jr z, jr_039_40B1                             ; $40A0: $28 $0F

    dec a                                         ; $40A2: $3D
    ld [$C33B], a                                 ; $40A3: $EA $3B $C3
    ld a, [$C33A]                                 ; $40A6: $FA $3A $C3
    add $02                                       ; $40A9: $C6 $02
    ld [$C33A], a                                 ; $40AB: $EA $3A $C3
    ldh [$FFE2], a                                ; $40AE: $E0 $E2

jr_039_40B0:
    ret                                           ; $40B0: $C9


jr_039_40B1:
    ldh a, [$FF98]                                ; $40B1: $F0 $98
    ld e, a                                       ; $40B3: $5F
    ldh a, [$FFAB]                                ; $40B4: $F0 $AB
    or e                                          ; $40B6: $B3
    bit 4, a                                      ; $40B7: $CB $67
    jr nz, jr_039_40C6                            ; $40B9: $20 $0B

    ld a, [$C346]                                 ; $40BB: $FA $46 $C3
    or a                                          ; $40BE: $B7
    jr z, jr_039_40C6                             ; $40BF: $28 $05

    dec a                                         ; $40C1: $3D
    ld [$C346], a                                 ; $40C2: $EA $46 $C3
    ret                                           ; $40C5: $C9


jr_039_40C6:
    ld a, $06                                     ; $40C6: $3E $06
    ld [$C346], a                                 ; $40C8: $EA $46 $C3

Jump_039_40CB:
    ld a, [$C345]                                 ; $40CB: $FA $45 $C3
    bit 0, a                                      ; $40CE: $CB $47
    jp nz, Jump_039_4214                          ; $40D0: $C2 $14 $42

    ld a, [$C32F]                                 ; $40D3: $FA $2F $C3
    ld e, a                                       ; $40D6: $5F
    ld a, [$C330]                                 ; $40D7: $FA $30 $C3
    ld d, a                                       ; $40DA: $57
    ld a, [$C331]                                 ; $40DB: $FA $31 $C3
    ld [de], a                                    ; $40DE: $12
    inc de                                        ; $40DF: $13
    ld a, [$C332]                                 ; $40E0: $FA $32 $C3
    ld [de], a                                    ; $40E3: $12
    inc de                                        ; $40E4: $13
    ld a, $03                                     ; $40E5: $3E $03
    ld [de], a                                    ; $40E7: $12
    inc de                                        ; $40E8: $13
    ld a, [$C32B]                                 ; $40E9: $FA $2B $C3
    ld l, a                                       ; $40EC: $6F
    ld a, [$C32C]                                 ; $40ED: $FA $2C $C3
    ld h, a                                       ; $40F0: $67

Jump_039_40F1:
    ld c, [hl]                                    ; $40F1: $4E
    inc hl                                        ; $40F2: $23
    ld a, [hl]                                    ; $40F3: $7E
    or c                                          ; $40F4: $B1
    jp z, Jump_039_42FA                           ; $40F5: $CA $FA $42

    ld a, c                                       ; $40F8: $79
    ld [de], a                                    ; $40F9: $12
    inc de                                        ; $40FA: $13
    ld a, [hl+]                                   ; $40FB: $2A
    ld [de], a                                    ; $40FC: $12
    inc de                                        ; $40FD: $13
    ld a, [hl+]                                   ; $40FE: $2A
    ld [de], a                                    ; $40FF: $12
    inc de                                        ; $4100: $13
    ld a, l                                       ; $4101: $7D
    ld [$C32B], a                                 ; $4102: $EA $2B $C3
    ld a, h                                       ; $4105: $7C
    ld [$C32C], a                                 ; $4106: $EA $2C $C3
    ld hl, $C312                                  ; $4109: $21 $12 $C3
    ld a, [$C32F]                                 ; $410C: $FA $2F $C3
    ld [hl+], a                                   ; $410F: $22
    ld a, [$C330]                                 ; $4110: $FA $30 $C3
    ld [hl+], a                                   ; $4113: $22
    ld b, $36                                     ; $4114: $06 $36
    ld hl, $4000                                  ; $4116: $21 $00 $40
    rst RST_08                                    ; $4119: $CF
    ld a, [$C331]                                 ; $411A: $FA $31 $C3
    ld e, a                                       ; $411D: $5F
    ld a, [$C332]                                 ; $411E: $FA $32 $C3
    ld d, a                                       ; $4121: $57
    ld a, [$C33E]                                 ; $4122: $FA $3E $C3
    ld [$C333], a                                 ; $4125: $EA $33 $C3
    ld l, a                                       ; $4128: $6F
    ld a, [$C33F]                                 ; $4129: $FA $3F $C3
    ld [$C334], a                                 ; $412C: $EA $34 $C3
    ld h, a                                       ; $412F: $67
    xor a                                         ; $4130: $AF
    ld [hl+], a                                   ; $4131: $22
    ld [hl+], a                                   ; $4132: $22
    ld [hl+], a                                   ; $4133: $22
    ld [hl+], a                                   ; $4134: $22
    ld a, [de]                                    ; $4135: $1A
    inc de                                        ; $4136: $13
    ld [hl+], a                                   ; $4137: $22
    ld [hl+], a                                   ; $4138: $22
    ld a, [de]                                    ; $4139: $1A
    inc de                                        ; $413A: $13
    ld [hl+], a                                   ; $413B: $22
    ld [hl+], a                                   ; $413C: $22
    ld a, [de]                                    ; $413D: $1A
    inc de                                        ; $413E: $13
    ld [hl+], a                                   ; $413F: $22
    ld [hl+], a                                   ; $4140: $22
    ld a, [de]                                    ; $4141: $1A
    inc de                                        ; $4142: $13
    ld [hl+], a                                   ; $4143: $22
    ld [hl+], a                                   ; $4144: $22
    ld a, [de]                                    ; $4145: $1A
    inc de                                        ; $4146: $13
    ld [hl+], a                                   ; $4147: $22
    ld [hl+], a                                   ; $4148: $22
    ld a, [de]                                    ; $4149: $1A
    inc de                                        ; $414A: $13
    ld [hl+], a                                   ; $414B: $22
    ld [hl+], a                                   ; $414C: $22
    ld a, [de]                                    ; $414D: $1A
    inc de                                        ; $414E: $13
    ld [hl+], a                                   ; $414F: $22
    ld [hl+], a                                   ; $4150: $22
    ld a, [de]                                    ; $4151: $1A
    inc de                                        ; $4152: $13
    ld [hl+], a                                   ; $4153: $22
    ld [hl+], a                                   ; $4154: $22
    ld a, [de]                                    ; $4155: $1A
    inc de                                        ; $4156: $13
    ld [hl+], a                                   ; $4157: $22
    ld [hl+], a                                   ; $4158: $22
    ld a, [de]                                    ; $4159: $1A
    inc de                                        ; $415A: $13
    ld [hl+], a                                   ; $415B: $22
    ld [hl+], a                                   ; $415C: $22
    ld a, [de]                                    ; $415D: $1A
    inc de                                        ; $415E: $13
    ld [hl+], a                                   ; $415F: $22
    ld [hl+], a                                   ; $4160: $22
    ld a, [de]                                    ; $4161: $1A
    inc de                                        ; $4162: $13
    ld [hl+], a                                   ; $4163: $22
    ld [hl+], a                                   ; $4164: $22
    xor a                                         ; $4165: $AF
    ld [hl+], a                                   ; $4166: $22
    ld [hl+], a                                   ; $4167: $22
    ld [hl+], a                                   ; $4168: $22
    ld [hl+], a                                   ; $4169: $22
    ld c, $F0                                     ; $416A: $0E $F0
    xor a                                         ; $416C: $AF
    ld [hl+], a                                   ; $416D: $22
    ld [hl+], a                                   ; $416E: $22
    ld [hl+], a                                   ; $416F: $22
    ld [hl+], a                                   ; $4170: $22
    ld a, [de]                                    ; $4171: $1A
    inc de                                        ; $4172: $13
    and c                                         ; $4173: $A1
    ld [hl+], a                                   ; $4174: $22
    ld [hl+], a                                   ; $4175: $22
    ld a, [de]                                    ; $4176: $1A
    inc de                                        ; $4177: $13
    and c                                         ; $4178: $A1
    ld [hl+], a                                   ; $4179: $22
    ld [hl+], a                                   ; $417A: $22
    ld a, [de]                                    ; $417B: $1A
    inc de                                        ; $417C: $13
    and c                                         ; $417D: $A1
    ld [hl+], a                                   ; $417E: $22
    ld [hl+], a                                   ; $417F: $22
    ld a, [de]                                    ; $4180: $1A
    inc de                                        ; $4181: $13
    and c                                         ; $4182: $A1
    ld [hl+], a                                   ; $4183: $22
    ld [hl+], a                                   ; $4184: $22
    ld a, [de]                                    ; $4185: $1A
    inc de                                        ; $4186: $13
    and c                                         ; $4187: $A1
    ld [hl+], a                                   ; $4188: $22
    ld [hl+], a                                   ; $4189: $22
    ld a, [de]                                    ; $418A: $1A
    inc de                                        ; $418B: $13
    and c                                         ; $418C: $A1
    ld [hl+], a                                   ; $418D: $22
    ld [hl+], a                                   ; $418E: $22
    ld a, [de]                                    ; $418F: $1A
    inc de                                        ; $4190: $13
    and c                                         ; $4191: $A1
    ld [hl+], a                                   ; $4192: $22
    ld [hl+], a                                   ; $4193: $22
    ld a, [de]                                    ; $4194: $1A
    inc de                                        ; $4195: $13
    and c                                         ; $4196: $A1
    ld [hl+], a                                   ; $4197: $22
    ld [hl+], a                                   ; $4198: $22
    ld a, [de]                                    ; $4199: $1A
    inc de                                        ; $419A: $13
    and c                                         ; $419B: $A1
    ld [hl+], a                                   ; $419C: $22
    ld [hl+], a                                   ; $419D: $22
    ld a, [de]                                    ; $419E: $1A
    inc de                                        ; $419F: $13
    and c                                         ; $41A0: $A1
    ld [hl+], a                                   ; $41A1: $22
    ld [hl+], a                                   ; $41A2: $22
    ld a, [de]                                    ; $41A3: $1A
    inc de                                        ; $41A4: $13
    and c                                         ; $41A5: $A1
    ld [hl+], a                                   ; $41A6: $22
    ld [hl+], a                                   ; $41A7: $22
    ld a, [de]                                    ; $41A8: $1A
    inc de                                        ; $41A9: $13
    and c                                         ; $41AA: $A1
    ld [hl+], a                                   ; $41AB: $22
    ld [hl+], a                                   ; $41AC: $22
    xor a                                         ; $41AD: $AF
    ld [hl+], a                                   ; $41AE: $22
    ld [hl+], a                                   ; $41AF: $22
    ld [hl+], a                                   ; $41B0: $22
    ld [hl+], a                                   ; $41B1: $22
    ld a, [$C333]                                 ; $41B2: $FA $33 $C3
    ld l, a                                       ; $41B5: $6F
    ld a, [$C334]                                 ; $41B6: $FA $34 $C3
    ld h, a                                       ; $41B9: $67
    push hl                                       ; $41BA: $E5
    ld de, $0020                                  ; $41BB: $11 $20 $00
    add hl, de                                    ; $41BE: $19
    ld a, l                                       ; $41BF: $7D
    ld [$C333], a                                 ; $41C0: $EA $33 $C3
    ld a, h                                       ; $41C3: $7C
    ld [$C334], a                                 ; $41C4: $EA $34 $C3
    ld a, [$C337]                                 ; $41C7: $FA $37 $C3
    ld e, a                                       ; $41CA: $5F
    ld a, [$C338]                                 ; $41CB: $FA $38 $C3
    ld d, a                                       ; $41CE: $57
    ld hl, $0020                                  ; $41CF: $21 $20 $00
    add hl, de                                    ; $41D2: $19
    ld a, l                                       ; $41D3: $7D
    ld [$C337], a                                 ; $41D4: $EA $37 $C3
    ld a, h                                       ; $41D7: $7C
    ld [$C338], a                                 ; $41D8: $EA $38 $C3
    pop hl                                        ; $41DB: $E1
    ld b, $04                                     ; $41DC: $06 $04
    call Call_000_11C2                            ; $41DE: $CD $C2 $11
    ld a, [$C335]                                 ; $41E1: $FA $35 $C3
    ld c, a                                       ; $41E4: $4F
    ld a, [$C336]                                 ; $41E5: $FA $36 $C3
    ld b, a                                       ; $41E8: $47
    ld hl, $0001                                  ; $41E9: $21 $01 $00
    add hl, bc                                    ; $41EC: $09
    ld a, l                                       ; $41ED: $7D
    ld [$C335], a                                 ; $41EE: $EA $35 $C3
    ld a, h                                       ; $41F1: $7C
    and $03                                       ; $41F2: $E6 $03
    ld [$C336], a                                 ; $41F4: $EA $36 $C3
    ld hl, $9800                                  ; $41F7: $21 $00 $98
    add hl, bc                                    ; $41FA: $09
    ld a, [$C343]                                 ; $41FB: $FA $43 $C3
    ld d, a                                       ; $41FE: $57
    add $02                                       ; $41FF: $C6 $02
    ld [$C343], a                                 ; $4201: $EA $43 $C3
    ld a, [$C344]                                 ; $4204: $FA $44 $C3
    ld e, a                                       ; $4207: $5F
    ld b, $02                                     ; $4208: $06 $02
    ld c, $02                                     ; $420A: $0E $02
    call Call_000_1139                            ; $420C: $CD $39 $11
    ld hl, $C345                                  ; $420F: $21 $45 $C3
    inc [hl]                                      ; $4212: $34
    ret                                           ; $4213: $C9


Jump_039_4214:
    ld a, [$C331]                                 ; $4214: $FA $31 $C3
    ld e, a                                       ; $4217: $5F
    ld a, [$C332]                                 ; $4218: $FA $32 $C3
    ld d, a                                       ; $421B: $57
    ld hl, $000C                                  ; $421C: $21 $0C $00
    add hl, de                                    ; $421F: $19
    ld e, l                                       ; $4220: $5D
    ld d, h                                       ; $4221: $54
    ld a, [$C33E]                                 ; $4222: $FA $3E $C3
    ld [$C333], a                                 ; $4225: $EA $33 $C3
    ld l, a                                       ; $4228: $6F
    ld a, [$C33F]                                 ; $4229: $FA $3F $C3
    ld [$C334], a                                 ; $422C: $EA $34 $C3
    ld h, a                                       ; $422F: $67
    ld c, $02                                     ; $4230: $0E $02

jr_039_4232:
    xor a                                         ; $4232: $AF
    ld [hl+], a                                   ; $4233: $22
    ld [hl+], a                                   ; $4234: $22
    ld [hl+], a                                   ; $4235: $22
    ld [hl+], a                                   ; $4236: $22
    ld a, [de]                                    ; $4237: $1A
    inc de                                        ; $4238: $13
    ld [hl+], a                                   ; $4239: $22
    ld [hl+], a                                   ; $423A: $22
    ld a, [de]                                    ; $423B: $1A
    inc de                                        ; $423C: $13
    ld [hl+], a                                   ; $423D: $22
    ld [hl+], a                                   ; $423E: $22
    ld a, [de]                                    ; $423F: $1A
    inc de                                        ; $4240: $13
    ld [hl+], a                                   ; $4241: $22
    ld [hl+], a                                   ; $4242: $22
    ld a, [de]                                    ; $4243: $1A
    inc de                                        ; $4244: $13
    ld [hl+], a                                   ; $4245: $22
    ld [hl+], a                                   ; $4246: $22
    ld a, [de]                                    ; $4247: $1A
    inc de                                        ; $4248: $13
    ld [hl+], a                                   ; $4249: $22
    ld [hl+], a                                   ; $424A: $22
    ld a, [de]                                    ; $424B: $1A
    inc de                                        ; $424C: $13
    ld [hl+], a                                   ; $424D: $22
    ld [hl+], a                                   ; $424E: $22
    ld a, [de]                                    ; $424F: $1A
    inc de                                        ; $4250: $13
    ld [hl+], a                                   ; $4251: $22
    ld [hl+], a                                   ; $4252: $22
    ld a, [de]                                    ; $4253: $1A
    inc de                                        ; $4254: $13
    ld [hl+], a                                   ; $4255: $22
    ld [hl+], a                                   ; $4256: $22
    ld a, [de]                                    ; $4257: $1A
    inc de                                        ; $4258: $13
    ld [hl+], a                                   ; $4259: $22
    ld [hl+], a                                   ; $425A: $22
    ld a, [de]                                    ; $425B: $1A
    inc de                                        ; $425C: $13
    ld [hl+], a                                   ; $425D: $22
    ld [hl+], a                                   ; $425E: $22
    ld a, [de]                                    ; $425F: $1A
    inc de                                        ; $4260: $13
    ld [hl+], a                                   ; $4261: $22
    ld [hl+], a                                   ; $4262: $22
    ld a, [de]                                    ; $4263: $1A
    inc de                                        ; $4264: $13
    ld [hl+], a                                   ; $4265: $22
    ld [hl+], a                                   ; $4266: $22
    xor a                                         ; $4267: $AF
    ld [hl+], a                                   ; $4268: $22
    ld [hl+], a                                   ; $4269: $22
    ld [hl+], a                                   ; $426A: $22
    ld [hl+], a                                   ; $426B: $22
    dec c                                         ; $426C: $0D
    jr nz, jr_039_4232                            ; $426D: $20 $C3

    ld a, [$C333]                                 ; $426F: $FA $33 $C3
    ld l, a                                       ; $4272: $6F
    ld a, [$C334]                                 ; $4273: $FA $34 $C3
    ld h, a                                       ; $4276: $67
    push hl                                       ; $4277: $E5
    ld de, $0040                                  ; $4278: $11 $40 $00
    add hl, de                                    ; $427B: $19
    ld a, l                                       ; $427C: $7D
    ld [$C333], a                                 ; $427D: $EA $33 $C3
    ld a, h                                       ; $4280: $7C
    ld [$C334], a                                 ; $4281: $EA $34 $C3
    ld a, [$C337]                                 ; $4284: $FA $37 $C3
    ld e, a                                       ; $4287: $5F
    ld a, [$C338]                                 ; $4288: $FA $38 $C3
    ld d, a                                       ; $428B: $57
    ld hl, $0040                                  ; $428C: $21 $40 $00
    add hl, de                                    ; $428F: $19
    ld a, l                                       ; $4290: $7D
    ld [$C337], a                                 ; $4291: $EA $37 $C3
    ld a, h                                       ; $4294: $7C
    ld [$C338], a                                 ; $4295: $EA $38 $C3
    pop hl                                        ; $4298: $E1
    ld b, $04                                     ; $4299: $06 $04
    call Call_000_11C2                            ; $429B: $CD $C2 $11
    ld a, [$C335]                                 ; $429E: $FA $35 $C3
    ld c, a                                       ; $42A1: $4F
    ld a, [$C336]                                 ; $42A2: $FA $36 $C3
    ld b, a                                       ; $42A5: $47
    ld hl, $0002                                  ; $42A6: $21 $02 $00
    add hl, bc                                    ; $42A9: $09
    ld a, l                                       ; $42AA: $7D
    ld [$C335], a                                 ; $42AB: $EA $35 $C3
    ld a, h                                       ; $42AE: $7C
    and $03                                       ; $42AF: $E6 $03
    ld [$C336], a                                 ; $42B1: $EA $36 $C3
    ld hl, $9800                                  ; $42B4: $21 $00 $98
    add hl, bc                                    ; $42B7: $09
    ld a, [$C343]                                 ; $42B8: $FA $43 $C3
    ld d, a                                       ; $42BB: $57
    add $04                                       ; $42BC: $C6 $04
    ld [$C343], a                                 ; $42BE: $EA $43 $C3
    ld a, [$C344]                                 ; $42C1: $FA $44 $C3
    ld e, a                                       ; $42C4: $5F
    ld b, $02                                     ; $42C5: $06 $02
    ld c, $02                                     ; $42C7: $0E $02
    call Call_000_1139                            ; $42C9: $CD $39 $11
    ld hl, $C345                                  ; $42CC: $21 $45 $C3
    inc [hl]                                      ; $42CF: $34
    ld a, [hl]                                    ; $42D0: $7E
    cp $0C                                        ; $42D1: $FE $0C
    jr c, jr_039_42F9                             ; $42D3: $38 $24

    ld a, [$C341]                                 ; $42D5: $FA $41 $C3
    ld e, a                                       ; $42D8: $5F
    ld a, [$C342]                                 ; $42D9: $FA $42 $C3
    ld d, a                                       ; $42DC: $57
    ld hl, $0040                                  ; $42DD: $21 $40 $00
    add hl, de                                    ; $42E0: $19
    ld a, l                                       ; $42E1: $7D
    ld [$C341], a                                 ; $42E2: $EA $41 $C3
    ld [$C335], a                                 ; $42E5: $EA $35 $C3
    ld a, h                                       ; $42E8: $7C
    and $03                                       ; $42E9: $E6 $03
    ld [$C342], a                                 ; $42EB: $EA $42 $C3
    ld [$C336], a                                 ; $42EE: $EA $36 $C3
    xor a                                         ; $42F1: $AF
    ld [$C345], a                                 ; $42F2: $EA $45 $C3
    ld hl, $C33C                                  ; $42F5: $21 $3C $C3
    inc [hl]                                      ; $42F8: $34

jr_039_42F9:
    ret                                           ; $42F9: $C9


Jump_039_42FA:
    inc hl                                        ; $42FA: $23
    ld a, [hl+]                                   ; $42FB: $2A
    push hl                                       ; $42FC: $E5
    ld hl, $430D                                  ; $42FD: $21 $0D $43
    and $07                                       ; $4300: $E6 $07
    add a                                         ; $4302: $87
    add l                                         ; $4303: $85
    jr nc, jr_039_4307                            ; $4304: $30 $01

    inc h                                         ; $4306: $24

jr_039_4307:
    ld l, a                                       ; $4307: $6F
    ld a, [hl+]                                   ; $4308: $2A
    ld c, [hl]                                    ; $4309: $4E
    ld l, a                                       ; $430A: $6F
    ld h, c                                       ; $430B: $61
    jp hl                                         ; $430C: $E9


    dec e                                         ; $430D: $1D
    ld b, e                                       ; $430E: $43
    ld b, a                                       ; $430F: $47
    ld b, e                                       ; $4310: $43
    ld c, a                                       ; $4311: $4F
    ld b, e                                       ; $4312: $43
    ld e, c                                       ; $4313: $59
    ld b, e                                       ; $4314: $43
    db $10                                        ; $4315: $10
    ld b, h                                       ; $4316: $44
    jr jr_039_435D                                ; $4317: $18 $44

    dec h                                         ; $4319: $25
    ld b, h                                       ; $431A: $44
    ld [hl-], a                                   ; $431B: $32
    ld b, h                                       ; $431C: $44
    push de                                       ; $431D: $D5
    ld a, [$C341]                                 ; $431E: $FA $41 $C3
    ld e, a                                       ; $4321: $5F
    ld a, [$C342]                                 ; $4322: $FA $42 $C3
    ld d, a                                       ; $4325: $57
    ld hl, $0040                                  ; $4326: $21 $40 $00
    add hl, de                                    ; $4329: $19
    ld a, l                                       ; $432A: $7D
    ld [$C341], a                                 ; $432B: $EA $41 $C3
    ld [$C335], a                                 ; $432E: $EA $35 $C3
    ld a, h                                       ; $4331: $7C
    and $03                                       ; $4332: $E6 $03
    ld [$C342], a                                 ; $4334: $EA $42 $C3
    ld [$C336], a                                 ; $4337: $EA $36 $C3
    xor a                                         ; $433A: $AF
    ld [$C345], a                                 ; $433B: $EA $45 $C3
    ld hl, $C33C                                  ; $433E: $21 $3C $C3
    inc [hl]                                      ; $4341: $34
    pop de                                        ; $4342: $D1
    pop hl                                        ; $4343: $E1
    jp Jump_039_40F1                              ; $4344: $C3 $F1 $40


    pop hl                                        ; $4347: $E1
    ld a, [hl+]                                   ; $4348: $2A
    ld c, [hl]                                    ; $4349: $4E
    ld l, a                                       ; $434A: $6F
    ld h, c                                       ; $434B: $61
    jp Jump_039_40F1                              ; $434C: $C3 $F1 $40


Jump_039_434F:
    pop hl                                        ; $434F: $E1

Jump_039_4350:
    ld a, l                                       ; $4350: $7D
    ld [$C32B], a                                 ; $4351: $EA $2B $C3
    ld a, h                                       ; $4354: $7C
    ld [$C32C], a                                 ; $4355: $EA $2C $C3
    ret                                           ; $4358: $C9


    ld a, [$C341]                                 ; $4359: $FA $41 $C3
    ld l, a                                       ; $435C: $6F

jr_039_435D:
    ld a, [$C342]                                 ; $435D: $FA $42 $C3
    ld h, a                                       ; $4360: $67
    ld de, $9800                                  ; $4361: $11 $00 $98
    add hl, de                                    ; $4364: $19
    ld e, $00                                     ; $4365: $1E $00
    ld d, $10                                     ; $4367: $16 $10
    ld b, $12                                     ; $4369: $06 $12
    ld c, $02                                     ; $436B: $0E $02
    call Call_000_10EA                            ; $436D: $CD $EA $10
    ld a, [$C341]                                 ; $4370: $FA $41 $C3
    ld e, a                                       ; $4373: $5F
    ld a, [$C342]                                 ; $4374: $FA $42 $C3
    ld d, a                                       ; $4377: $57
    ld hl, $0040                                  ; $4378: $21 $40 $00
    add hl, de                                    ; $437B: $19
    ld a, h                                       ; $437C: $7C
    and $03                                       ; $437D: $E6 $03
    ld h, a                                       ; $437F: $67
    ld de, $9800                                  ; $4380: $11 $00 $98
    add hl, de                                    ; $4383: $19
    ld e, $00                                     ; $4384: $1E $00
    ld d, $10                                     ; $4386: $16 $10
    ld b, $12                                     ; $4388: $06 $12
    ld c, $02                                     ; $438A: $0E $02
    call Call_000_10EA                            ; $438C: $CD $EA $10
    ld a, [$C341]                                 ; $438F: $FA $41 $C3
    ld e, a                                       ; $4392: $5F
    ld a, [$C342]                                 ; $4393: $FA $42 $C3
    ld d, a                                       ; $4396: $57
    ld hl, $0080                                  ; $4397: $21 $80 $00
    add hl, de                                    ; $439A: $19
    ld a, h                                       ; $439B: $7C
    and $03                                       ; $439C: $E6 $03
    ld h, a                                       ; $439E: $67
    ld de, $9800                                  ; $439F: $11 $00 $98
    add hl, de                                    ; $43A2: $19
    ld e, $00                                     ; $43A3: $1E $00
    ld d, $10                                     ; $43A5: $16 $10
    ld b, $12                                     ; $43A7: $06 $12
    ld c, $02                                     ; $43A9: $0E $02
    call Call_000_10EA                            ; $43AB: $CD $EA $10
    ld a, [$C341]                                 ; $43AE: $FA $41 $C3
    ld e, a                                       ; $43B1: $5F
    ld a, [$C342]                                 ; $43B2: $FA $42 $C3
    ld d, a                                       ; $43B5: $57
    ld hl, $00C0                                  ; $43B6: $21 $C0 $00
    add hl, de                                    ; $43B9: $19
    ld a, h                                       ; $43BA: $7C
    and $03                                       ; $43BB: $E6 $03
    ld h, a                                       ; $43BD: $67
    ld de, $9800                                  ; $43BE: $11 $00 $98
    add hl, de                                    ; $43C1: $19
    ld e, $00                                     ; $43C2: $1E $00
    ld d, $10                                     ; $43C4: $16 $10
    ld b, $12                                     ; $43C6: $06 $12
    ld c, $02                                     ; $43C8: $0E $02
    call Call_000_10EA                            ; $43CA: $CD $EA $10
    ld a, [$C33C]                                 ; $43CD: $FA $3C $C3
    inc a                                         ; $43D0: $3C
    add a                                         ; $43D1: $87
    add a                                         ; $43D2: $87
    add a                                         ; $43D3: $87
    ld [$C33B], a                                 ; $43D4: $EA $3B $C3
    ld a, $F0                                     ; $43D7: $3E $F0
    ld [$C340], a                                 ; $43D9: $EA $40 $C3
    ld a, $80                                     ; $43DC: $3E $80
    ld [$C343], a                                 ; $43DE: $EA $43 $C3
    ld de, $8800                                  ; $43E1: $11 $00 $88
    ld hl, $C337                                  ; $43E4: $21 $37 $C3
    ld [hl], e                                    ; $43E7: $73
    inc hl                                        ; $43E8: $23
    ld [hl], d                                    ; $43E9: $72
    ld a, [$C341]                                 ; $43EA: $FA $41 $C3
    ld e, a                                       ; $43ED: $5F
    ld a, [$C342]                                 ; $43EE: $FA $42 $C3
    ld d, a                                       ; $43F1: $57
    ld hl, $0040                                  ; $43F2: $21 $40 $00
    add hl, de                                    ; $43F5: $19
    ld a, l                                       ; $43F6: $7D
    ld [$C341], a                                 ; $43F7: $EA $41 $C3
    ld [$C335], a                                 ; $43FA: $EA $35 $C3
    ld a, h                                       ; $43FD: $7C
    and $03                                       ; $43FE: $E6 $03
    ld [$C342], a                                 ; $4400: $EA $42 $C3
    ld [$C336], a                                 ; $4403: $EA $36 $C3
    xor a                                         ; $4406: $AF
    ld [$C345], a                                 ; $4407: $EA $45 $C3
    ld [$C33C], a                                 ; $440A: $EA $3C $C3
    jp Jump_039_434F                              ; $440D: $C3 $4F $43


    pop hl                                        ; $4410: $E1
    ld a, [hl+]                                   ; $4411: $2A
    ld [$C32D], a                                 ; $4412: $EA $2D $C3
    jp Jump_039_40F1                              ; $4415: $C3 $F1 $40


    pop hl                                        ; $4418: $E1
    ld a, [hl+]                                   ; $4419: $2A
    ld c, a                                       ; $441A: $4F
    ld a, [$C32E]                                 ; $441B: $FA $2E $C3
    or c                                          ; $441E: $B1
    ld [$C32E], a                                 ; $441F: $EA $2E $C3
    jp Jump_039_40F1                              ; $4422: $C3 $F1 $40


    pop hl                                        ; $4425: $E1
    ld a, [hl+]                                   ; $4426: $2A
    ld c, a                                       ; $4427: $4F
    ld a, [$C32E]                                 ; $4428: $FA $2E $C3
    and c                                         ; $442B: $A1
    ld [$C32E], a                                 ; $442C: $EA $2E $C3
    jp Jump_039_40F1                              ; $442F: $C3 $F1 $40


    pop hl                                        ; $4432: $E1
    ld a, [hl+]                                   ; $4433: $2A
    ld [$C340], a                                 ; $4434: $EA $40 $C3
    jp Jump_039_4350                              ; $4437: $C3 $50 $43


    nop                                           ; $443A: $00
    nop                                           ; $443B: $00
    dec b                                         ; $443C: $05
    inc c                                         ; $443D: $0C
    ld a, b                                       ; $443E: $78
    nop                                           ; $443F: $00
    cp h                                          ; $4440: $BC
    sub h                                         ; $4441: $94
    nop                                           ; $4442: $00
    or b                                          ; $4443: $B0
    adc c                                         ; $4444: $89
    nop                                           ; $4445: $00
    ld b, e                                       ; $4446: $43
    or c                                          ; $4447: $B1
    nop                                           ; $4448: $00
    halt                                          ; $4449: $76
    pop bc                                        ; $444A: $C1
    nop                                           ; $444B: $00
    ld c, l                                       ; $444C: $4D
    nop                                           ; $444D: $00
    nop                                           ; $444E: $00
    nop                                           ; $444F: $00
    jr z, jr_039_4452                             ; $4450: $28 $00

jr_039_4452:
    ld l, b                                       ; $4452: $68
    ld l, l                                       ; $4453: $6D
    nop                                           ; $4454: $00
    ld a, [hl-]                                   ; $4455: $3A
    ld bc, $4100                                  ; $4456: $01 $00 $41
    jr z, jr_039_445B                             ; $4459: $28 $00

jr_039_445B:
    ld [hl], $77                                  ; $445B: $36 $77
    nop                                           ; $445D: $00
    ld l, a                                       ; $445E: $6F
    rlc b                                         ; $445F: $CB $00
    ld bc, $0000                                  ; $4461: $01 $00 $00
    ld b, $F3                                     ; $4464: $06 $F3
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    inc bc                                        ; $4468: $03
    nop                                           ; $4469: $00
    nop                                           ; $446A: $00
    dec b                                         ; $446B: $05
    inc b                                         ; $446C: $04
    add l                                         ; $446D: $85
    nop                                           ; $446E: $00
    halt                                          ; $446F: $76
    or c                                          ; $4470: $B1
    nop                                           ; $4471: $00
    ld a, a                                       ; $4472: $7F
    cp e                                          ; $4473: $BB
    nop                                           ; $4474: $00
    ld a, b                                       ; $4475: $78
    ld a, [hl+]                                   ; $4476: $2A
    nop                                           ; $4477: $00
    ld h, b                                       ; $4478: $60
    ld b, a                                       ; $4479: $47
    nop                                           ; $447A: $00
    ld b, e                                       ; $447B: $43
    jr z, jr_039_447E                             ; $447C: $28 $00

jr_039_447E:
    ret                                           ; $447E: $C9


    xor d                                         ; $447F: $AA
    nop                                           ; $4480: $00
    adc c                                         ; $4481: $89
    cp a                                          ; $4482: $BF
    nop                                           ; $4483: $00
    halt                                          ; $4484: $76
    sbc d                                         ; $4485: $9A
    nop                                           ; $4486: $00
    ld c, [hl]                                    ; $4487: $4E
    ldh [rP1], a                                  ; $4488: $E0 $00
    ldh [rP1], a                                  ; $448A: $E0 $00
    nop                                           ; $448C: $00
    nop                                           ; $448D: $00
    nop                                           ; $448E: $00
    nop                                           ; $448F: $00
    ld b, $F3                                     ; $4490: $06 $F3
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    inc bc                                        ; $4494: $03
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    dec b                                         ; $4497: $05
    inc b                                         ; $4498: $04
    ld bc, $F400                                  ; $4499: $01 $00 $F4
    ld c, [hl]                                    ; $449C: $4E
    nop                                           ; $449D: $00
    ld [hl], $6B                                  ; $449E: $36 $6B
    nop                                           ; $44A0: $00
    push af                                       ; $44A1: $F5
    ld bc, $4700                                  ; $44A2: $01 $00 $47
    ld [hl], a                                    ; $44A5: $77
    nop                                           ; $44A6: $00
    scf                                           ; $44A7: $37
    ret                                           ; $44A8: $C9


    nop                                           ; $44A9: $00
    ld bc, $0000                                  ; $44AA: $01 $00 $00
    ld b, $F3                                     ; $44AD: $06 $F3
    nop                                           ; $44AF: $00
    nop                                           ; $44B0: $00
    inc bc                                        ; $44B1: $03
    nop                                           ; $44B2: $00
    nop                                           ; $44B3: $00
    dec b                                         ; $44B4: $05
    ld [$002F], sp                                ; $44B5: $08 $2F $00
    ld l, e                                       ; $44B8: $6B
    ld l, [hl]                                    ; $44B9: $6E
    nop                                           ; $44BA: $00
    xor d                                         ; $44BB: $AA
    adc c                                         ; $44BC: $89
    nop                                           ; $44BD: $00
    cp a                                          ; $44BE: $BF
    halt                                          ; $44BF: $76
    nop                                           ; $44C0: $00
    sbc d                                         ; $44C1: $9A
    ld c, l                                       ; $44C2: $4D
    nop                                           ; $44C3: $00
    ld b, e                                       ; $44C4: $43
    cpl                                           ; $44C5: $2F
    nop                                           ; $44C6: $00
    ld l, h                                       ; $44C7: $6C
    ld b, a                                       ; $44C8: $47
    nop                                           ; $44C9: $00
    ret z                                         ; $44CA: $C8

    daa                                           ; $44CB: $27
    nop                                           ; $44CC: $00
    ld l, e                                       ; $44CD: $6B
    ld l, d                                       ; $44CE: $6A
    nop                                           ; $44CF: $00
    ld l, a                                       ; $44D0: $6F
    ld b, h                                       ; $44D1: $44
    nop                                           ; $44D2: $00
    or c                                          ; $44D3: $B1
    halt                                          ; $44D4: $76
    nop                                           ; $44D5: $00
    pop bc                                        ; $44D6: $C1
    ret                                           ; $44D7: $C9


    nop                                           ; $44D8: $00
    ld bc, $0000                                  ; $44D9: $01 $00 $00
    ld b, $F3                                     ; $44DC: $06 $F3
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    inc bc                                        ; $44E0: $03
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    dec b                                         ; $44E3: $05
    inc b                                         ; $44E4: $04
    ld d, d                                       ; $44E5: $52
    nop                                           ; $44E6: $00
    dec hl                                        ; $44E7: $2B
    ld c, d                                       ; $44E8: $4A
    nop                                           ; $44E9: $00
    ld h, c                                       ; $44EA: $61
    xor d                                         ; $44EB: $AA
    nop                                           ; $44EC: $00
    adc c                                         ; $44ED: $89
    cp a                                          ; $44EE: $BF
    nop                                           ; $44EF: $00
    halt                                          ; $44F0: $76
    sbc d                                         ; $44F1: $9A
    nop                                           ; $44F2: $00
    ld c, [hl]                                    ; $44F3: $4E
    nop                                           ; $44F4: $00
    nop                                           ; $44F5: $00
    nop                                           ; $44F6: $00
    daa                                           ; $44F7: $27
    nop                                           ; $44F8: $00
    ld l, h                                       ; $44F9: $6C
    daa                                           ; $44FA: $27
    nop                                           ; $44FB: $00
    ld l, h                                       ; $44FC: $6C
    ld h, $00                                     ; $44FD: $26 $00
    ld l, d                                       ; $44FF: $6A
    ld c, l                                       ; $4500: $4D
    nop                                           ; $4501: $00
    ld h, h                                       ; $4502: $64
    ret                                           ; $4503: $C9


    nop                                           ; $4504: $00
    ld bc, $0000                                  ; $4505: $01 $00 $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450A: $00
    ld b, $F3                                     ; $450B: $06 $F3
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    inc bc                                        ; $450F: $03
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    dec b                                         ; $4512: $05
    ld [$0061], sp                                ; $4513: $08 $61 $00
    ld [hl], b                                    ; $4516: $70
    ld b, e                                       ; $4517: $43
    nop                                           ; $4518: $00
    ld h, c                                       ; $4519: $61
    ld [hl], b                                    ; $451A: $70
    nop                                           ; $451B: $00
    ld b, e                                       ; $451C: $43
    ret z                                         ; $451D: $C8

    nop                                           ; $451E: $00
    daa                                           ; $451F: $27
    ld [hl], b                                    ; $4520: $70
    nop                                           ; $4521: $00
    ld e, b                                       ; $4522: $58
    daa                                           ; $4523: $27
    nop                                           ; $4524: $00
    ld bc, $005E                                  ; $4525: $01 $5E $00
    ld b, c                                       ; $4528: $41
    ld l, $00                                     ; $4529: $2E $00
    ld l, d                                       ; $452B: $6A
    ld l, a                                       ; $452C: $6F
    nop                                           ; $452D: $00
    ld b, h                                       ; $452E: $44
    or c                                          ; $452F: $B1
    nop                                           ; $4530: $00
    halt                                          ; $4531: $76
    pop bc                                        ; $4532: $C1
    nop                                           ; $4533: $00
    ret                                           ; $4534: $C9


    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    ld b, $F3                                     ; $453A: $06 $F3
    nop                                           ; $453C: $00
    nop                                           ; $453D: $00
    inc bc                                        ; $453E: $03
    nop                                           ; $453F: $00
    nop                                           ; $4540: $00
    dec b                                         ; $4541: $05
    inc c                                         ; $4542: $0C
    dec sp                                        ; $4543: $3B
    nop                                           ; $4544: $00
    ld h, l                                       ; $4545: $65
    ld h, $00                                     ; $4546: $26 $00
    ret z                                         ; $4548: $C8

    ld e, l                                       ; $4549: $5D
    nop                                           ; $454A: $00
    ccf                                           ; $454B: $3F
    ld c, h                                       ; $454C: $4C
    nop                                           ; $454D: $00
    ret                                           ; $454E: $C9


    nop                                           ; $454F: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    ld d, e                                       ; $4552: $53
    nop                                           ; $4553: $00
    daa                                           ; $4554: $27
    ld d, e                                       ; $4555: $53
    nop                                           ; $4556: $00
    ld [hl], a                                    ; $4557: $77
    daa                                           ; $4558: $27
    nop                                           ; $4559: $00
    ret                                           ; $455A: $C9


    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    nop                                           ; $455F: $00
    ld b, $F3                                     ; $4560: $06 $F3
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    dec b                                         ; $4564: $05
    ld b, b                                       ; $4565: $40
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    rlca                                          ; $4568: $07
    ldh a, [rP1]                                  ; $4569: $F0 $00
    nop                                           ; $456B: $00
    dec b                                         ; $456C: $05
    add b                                         ; $456D: $80
    nop                                           ; $456E: $00
    nop                                           ; $456F: $00
    ld [bc], a                                    ; $4570: $02
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    ld bc, $456A                                  ; $4573: $01 $6A $45
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    dec b                                         ; $4578: $05
    inc c                                         ; $4579: $0C
    ld a, b                                       ; $457A: $78
    nop                                           ; $457B: $00
    cp h                                          ; $457C: $BC
    sub h                                         ; $457D: $94
    nop                                           ; $457E: $00
    or b                                          ; $457F: $B0
    adc c                                         ; $4580: $89
    nop                                           ; $4581: $00
    ld b, e                                       ; $4582: $43
    or c                                          ; $4583: $B1
    nop                                           ; $4584: $00
    halt                                          ; $4585: $76
    pop bc                                        ; $4586: $C1
    nop                                           ; $4587: $00
    ld c, l                                       ; $4588: $4D
    nop                                           ; $4589: $00
    nop                                           ; $458A: $00
    nop                                           ; $458B: $00
    jr z, jr_039_458E                             ; $458C: $28 $00

jr_039_458E:
    ld l, b                                       ; $458E: $68
    ld l, l                                       ; $458F: $6D
    nop                                           ; $4590: $00
    ld a, [hl-]                                   ; $4591: $3A
    ld bc, $4100                                  ; $4592: $01 $00 $41
    jr z, jr_039_4597                             ; $4595: $28 $00

jr_039_4597:
    ld [hl], $77                                  ; $4597: $36 $77
    nop                                           ; $4599: $00
    ld l, a                                       ; $459A: $6F
    rlc b                                         ; $459B: $CB $00
    ld bc, $0000                                  ; $459D: $01 $00 $00
    ld b, $F3                                     ; $45A0: $06 $F3
    nop                                           ; $45A2: $00
    nop                                           ; $45A3: $00
    inc bc                                        ; $45A4: $03
    nop                                           ; $45A5: $00
    nop                                           ; $45A6: $00
    dec b                                         ; $45A7: $05
    inc b                                         ; $45A8: $04
    add l                                         ; $45A9: $85
    nop                                           ; $45AA: $00
    halt                                          ; $45AB: $76
    or c                                          ; $45AC: $B1
    nop                                           ; $45AD: $00
    ld a, a                                       ; $45AE: $7F
    cp e                                          ; $45AF: $BB
    nop                                           ; $45B0: $00
    ld a, b                                       ; $45B1: $78
    ld a, [hl+]                                   ; $45B2: $2A
    nop                                           ; $45B3: $00
    ld h, b                                       ; $45B4: $60
    ld b, a                                       ; $45B5: $47
    nop                                           ; $45B6: $00
    ld b, e                                       ; $45B7: $43
    jr z, jr_039_45BA                             ; $45B8: $28 $00

jr_039_45BA:
    ret                                           ; $45BA: $C9


    xor d                                         ; $45BB: $AA
    nop                                           ; $45BC: $00
    adc c                                         ; $45BD: $89
    cp a                                          ; $45BE: $BF
    nop                                           ; $45BF: $00
    halt                                          ; $45C0: $76
    sbc d                                         ; $45C1: $9A
    nop                                           ; $45C2: $00
    ld c, [hl]                                    ; $45C3: $4E
    ldh [rP1], a                                  ; $45C4: $E0 $00
    ldh [rP1], a                                  ; $45C6: $E0 $00
    nop                                           ; $45C8: $00
    nop                                           ; $45C9: $00
    nop                                           ; $45CA: $00
    nop                                           ; $45CB: $00
    ld b, $F3                                     ; $45CC: $06 $F3
    nop                                           ; $45CE: $00
    nop                                           ; $45CF: $00
    inc bc                                        ; $45D0: $03
    nop                                           ; $45D1: $00
    nop                                           ; $45D2: $00
    dec b                                         ; $45D3: $05
    inc b                                         ; $45D4: $04
    ld bc, $F400                                  ; $45D5: $01 $00 $F4
    ld c, [hl]                                    ; $45D8: $4E
    nop                                           ; $45D9: $00
    ld [hl], $6B                                  ; $45DA: $36 $6B
    nop                                           ; $45DC: $00
    push af                                       ; $45DD: $F5
    ld bc, $4700                                  ; $45DE: $01 $00 $47
    ld [hl], a                                    ; $45E1: $77
    nop                                           ; $45E2: $00
    scf                                           ; $45E3: $37
    ret                                           ; $45E4: $C9


    nop                                           ; $45E5: $00
    ld bc, $0000                                  ; $45E6: $01 $00 $00
    ld b, $F3                                     ; $45E9: $06 $F3
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    inc bc                                        ; $45ED: $03
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    dec b                                         ; $45F0: $05
    ld [$002F], sp                                ; $45F1: $08 $2F $00
    ld l, e                                       ; $45F4: $6B
    ld l, [hl]                                    ; $45F5: $6E
    nop                                           ; $45F6: $00
    xor d                                         ; $45F7: $AA
    adc c                                         ; $45F8: $89
    nop                                           ; $45F9: $00
    cp a                                          ; $45FA: $BF
    halt                                          ; $45FB: $76
    nop                                           ; $45FC: $00
    sbc d                                         ; $45FD: $9A
    ld c, l                                       ; $45FE: $4D
    nop                                           ; $45FF: $00
    ld b, e                                       ; $4600: $43
    cpl                                           ; $4601: $2F
    nop                                           ; $4602: $00
    ld l, h                                       ; $4603: $6C
    ld b, a                                       ; $4604: $47
    nop                                           ; $4605: $00
    ret z                                         ; $4606: $C8

    add hl, de                                    ; $4607: $19
    ld de, $3704                                  ; $4608: $11 $04 $37
    nop                                           ; $460B: $00
    ld l, d                                       ; $460C: $6A
    ld l, a                                       ; $460D: $6F
    nop                                           ; $460E: $00
    ld b, h                                       ; $460F: $44
    or c                                          ; $4610: $B1
    nop                                           ; $4611: $00
    halt                                          ; $4612: $76
    pop bc                                        ; $4613: $C1
    nop                                           ; $4614: $00
    ret                                           ; $4615: $C9


    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461A: $00
    ld b, $F3                                     ; $461B: $06 $F3
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    inc bc                                        ; $461F: $03
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    dec b                                         ; $4622: $05
    inc b                                         ; $4623: $04
    sub l                                         ; $4624: $95
    db $10                                        ; $4625: $10
    ld c, d                                       ; $4626: $4A
    ld h, c                                       ; $4627: $61
    nop                                           ; $4628: $00
    xor d                                         ; $4629: $AA
    adc c                                         ; $462A: $89
    nop                                           ; $462B: $00
    cp a                                          ; $462C: $BF
    halt                                          ; $462D: $76
    nop                                           ; $462E: $00
    sbc d                                         ; $462F: $9A
    ld c, [hl]                                    ; $4630: $4E
    nop                                           ; $4631: $00
    ld bc, $0000                                  ; $4632: $01 $00 $00
    nop                                           ; $4635: $00
    daa                                           ; $4636: $27
    nop                                           ; $4637: $00
    ld l, h                                       ; $4638: $6C
    daa                                           ; $4639: $27
    nop                                           ; $463A: $00
    ld l, h                                       ; $463B: $6C
    ld h, $00                                     ; $463C: $26 $00
    ld l, d                                       ; $463E: $6A
    ld c, l                                       ; $463F: $4D
    nop                                           ; $4640: $00
    ld h, h                                       ; $4641: $64
    ret                                           ; $4642: $C9


    nop                                           ; $4643: $00
    ld bc, $0000                                  ; $4644: $01 $00 $00
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    ld b, $F3                                     ; $464A: $06 $F3
    nop                                           ; $464C: $00
    nop                                           ; $464D: $00
    inc bc                                        ; $464E: $03
    nop                                           ; $464F: $00
    nop                                           ; $4650: $00
    dec b                                         ; $4651: $05
    ld [$0061], sp                                ; $4652: $08 $61 $00
    ld [hl], b                                    ; $4655: $70
    ld b, e                                       ; $4656: $43
    nop                                           ; $4657: $00
    ld h, c                                       ; $4658: $61
    ld [hl], b                                    ; $4659: $70
    nop                                           ; $465A: $00
    ld b, e                                       ; $465B: $43
    ret z                                         ; $465C: $C8

    nop                                           ; $465D: $00
    daa                                           ; $465E: $27
    ld [hl], b                                    ; $465F: $70
    nop                                           ; $4660: $00
    ld e, b                                       ; $4661: $58
    daa                                           ; $4662: $27
    nop                                           ; $4663: $00
    ld bc, $1098                                  ; $4664: $01 $98 $10
    ld b, c                                       ; $4667: $41
    ld l, $00                                     ; $4668: $2E $00
    ld l, d                                       ; $466A: $6A
    ld l, a                                       ; $466B: $6F
    nop                                           ; $466C: $00
    ld b, h                                       ; $466D: $44
    or c                                          ; $466E: $B1
    nop                                           ; $466F: $00
    halt                                          ; $4670: $76
    pop bc                                        ; $4671: $C1
    nop                                           ; $4672: $00
    ret                                           ; $4673: $C9


    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    ld b, $F3                                     ; $4679: $06 $F3
    nop                                           ; $467B: $00
    nop                                           ; $467C: $00
    inc bc                                        ; $467D: $03
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    dec b                                         ; $4680: $05
    inc c                                         ; $4681: $0C
    dec sp                                        ; $4682: $3B
    nop                                           ; $4683: $00
    ld h, l                                       ; $4684: $65
    ld h, $00                                     ; $4685: $26 $00
    ret z                                         ; $4687: $C8

    ld e, l                                       ; $4688: $5D
    nop                                           ; $4689: $00
    ccf                                           ; $468A: $3F
    ld c, h                                       ; $468B: $4C
    nop                                           ; $468C: $00
    ret                                           ; $468D: $C9


    nop                                           ; $468E: $00
    nop                                           ; $468F: $00
    nop                                           ; $4690: $00
    ld d, e                                       ; $4691: $53
    nop                                           ; $4692: $00
    daa                                           ; $4693: $27
    ld d, e                                       ; $4694: $53
    nop                                           ; $4695: $00
    ld [hl], a                                    ; $4696: $77
    daa                                           ; $4697: $27
    nop                                           ; $4698: $00
    ret                                           ; $4699: $C9


    nop                                           ; $469A: $00
    nop                                           ; $469B: $00
    nop                                           ; $469C: $00
    nop                                           ; $469D: $00
    nop                                           ; $469E: $00
    ld b, $F3                                     ; $469F: $06 $F3
    nop                                           ; $46A1: $00
    nop                                           ; $46A2: $00
    dec b                                         ; $46A3: $05
    ld b, b                                       ; $46A4: $40
    nop                                           ; $46A5: $00
    nop                                           ; $46A6: $00
    rlca                                          ; $46A7: $07
    ldh a, [rP1]                                  ; $46A8: $F0 $00
    nop                                           ; $46AA: $00
    dec b                                         ; $46AB: $05
    add b                                         ; $46AC: $80
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    ld [bc], a                                    ; $46AF: $02
    nop                                           ; $46B0: $00
    nop                                           ; $46B1: $00
    ld bc, $46A9                                  ; $46B2: $01 $A9 $46
    nop                                           ; $46B5: $00
    nop                                           ; $46B6: $00
    dec b                                         ; $46B7: $05
    inc c                                         ; $46B8: $0C
    ld a, b                                       ; $46B9: $78
    nop                                           ; $46BA: $00
    cp h                                          ; $46BB: $BC
    sub h                                         ; $46BC: $94
    nop                                           ; $46BD: $00
    or b                                          ; $46BE: $B0
    adc c                                         ; $46BF: $89
    nop                                           ; $46C0: $00
    ld b, e                                       ; $46C1: $43
    or c                                          ; $46C2: $B1
    nop                                           ; $46C3: $00
    halt                                          ; $46C4: $76
    pop bc                                        ; $46C5: $C1
    nop                                           ; $46C6: $00
    ld c, l                                       ; $46C7: $4D
    nop                                           ; $46C8: $00
    nop                                           ; $46C9: $00
    nop                                           ; $46CA: $00
    jr z, jr_039_46CD                             ; $46CB: $28 $00

jr_039_46CD:
    ld l, b                                       ; $46CD: $68
    ld l, l                                       ; $46CE: $6D
    nop                                           ; $46CF: $00
    ld a, [hl-]                                   ; $46D0: $3A
    ld bc, $4100                                  ; $46D1: $01 $00 $41
    jr z, jr_039_46D6                             ; $46D4: $28 $00

jr_039_46D6:
    ld [hl], $77                                  ; $46D6: $36 $77
    nop                                           ; $46D8: $00
    ld l, a                                       ; $46D9: $6F
    rlc b                                         ; $46DA: $CB $00
    ld bc, $0000                                  ; $46DC: $01 $00 $00
    ld b, $F3                                     ; $46DF: $06 $F3
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    inc bc                                        ; $46E3: $03
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    dec b                                         ; $46E6: $05
    inc b                                         ; $46E7: $04
    add l                                         ; $46E8: $85
    nop                                           ; $46E9: $00
    halt                                          ; $46EA: $76
    or c                                          ; $46EB: $B1
    nop                                           ; $46EC: $00
    ld a, a                                       ; $46ED: $7F
    cp e                                          ; $46EE: $BB
    nop                                           ; $46EF: $00
    ld a, b                                       ; $46F0: $78
    ld a, [hl+]                                   ; $46F1: $2A
    nop                                           ; $46F2: $00
    ld h, b                                       ; $46F3: $60
    ld b, a                                       ; $46F4: $47
    nop                                           ; $46F5: $00
    ld b, e                                       ; $46F6: $43
    jr z, jr_039_46F9                             ; $46F7: $28 $00

jr_039_46F9:
    ret                                           ; $46F9: $C9


    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    ld b, $F3                                     ; $46FF: $06 $F3
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    inc bc                                        ; $4703: $03
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    dec b                                         ; $4706: $05
    inc b                                         ; $4707: $04
    cpl                                           ; $4708: $2F
    nop                                           ; $4709: $00
    ld l, a                                       ; $470A: $6F
    dec hl                                        ; $470B: $2B
    nop                                           ; $470C: $00
    daa                                           ; $470D: $27
    ret z                                         ; $470E: $C8

    nop                                           ; $470F: $00
    ld a, [hl+]                                   ; $4710: $2A
    ld [hl], $00                                  ; $4711: $36 $00
    add hl, hl                                    ; $4713: $29
    ld b, d                                       ; $4714: $42
    nop                                           ; $4715: $00
    ld h, $33                                     ; $4716: $26 $33
    nop                                           ; $4718: $00
    ld l, d                                       ; $4719: $6A
    xor d                                         ; $471A: $AA
    nop                                           ; $471B: $00
    adc c                                         ; $471C: $89
    cp a                                          ; $471D: $BF
    nop                                           ; $471E: $00
    halt                                          ; $471F: $76
    sbc d                                         ; $4720: $9A
    nop                                           ; $4721: $00
    ld c, [hl]                                    ; $4722: $4E
    ldh [rP1], a                                  ; $4723: $E0 $00
    ldh [rP1], a                                  ; $4725: $E0 $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472A: $00
    ld b, $F3                                     ; $472B: $06 $F3
    nop                                           ; $472D: $00
    nop                                           ; $472E: $00
    inc bc                                        ; $472F: $03
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    dec b                                         ; $4732: $05
    ld [$0001], sp                                ; $4733: $08 $01 $00
    db $F4                                        ; $4736: $F4
    inc sp                                        ; $4737: $33
    nop                                           ; $4738: $00
    scf                                           ; $4739: $37
    ld b, e                                       ; $473A: $43
    nop                                           ; $473B: $00
    push af                                       ; $473C: $F5
    ld bc, $4400                                  ; $473D: $01 $00 $44
    or c                                          ; $4740: $B1
    nop                                           ; $4741: $00
    halt                                          ; $4742: $76
    pop bc                                        ; $4743: $C1
    nop                                           ; $4744: $00
    ret                                           ; $4745: $C9


    nop                                           ; $4746: $00
    nop                                           ; $4747: $00
    nop                                           ; $4748: $00
    nop                                           ; $4749: $00
    nop                                           ; $474A: $00
    ld b, $F3                                     ; $474B: $06 $F3
    nop                                           ; $474D: $00
    nop                                           ; $474E: $00
    inc bc                                        ; $474F: $03
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    dec b                                         ; $4752: $05
    inc b                                         ; $4753: $04
    cpl                                           ; $4754: $2F
    nop                                           ; $4755: $00
    ld l, e                                       ; $4756: $6B
    ld l, [hl]                                    ; $4757: $6E
    nop                                           ; $4758: $00
    xor d                                         ; $4759: $AA
    adc c                                         ; $475A: $89
    nop                                           ; $475B: $00
    cp a                                          ; $475C: $BF
    halt                                          ; $475D: $76
    nop                                           ; $475E: $00
    sbc d                                         ; $475F: $9A
    ld c, l                                       ; $4760: $4D
    nop                                           ; $4761: $00
    ld b, e                                       ; $4762: $43
    cpl                                           ; $4763: $2F
    nop                                           ; $4764: $00
    ld l, h                                       ; $4765: $6C
    ld b, a                                       ; $4766: $47
    nop                                           ; $4767: $00
    ret z                                         ; $4768: $C8

    daa                                           ; $4769: $27

jr_039_476A:
    nop                                           ; $476A: $00
    ld l, e                                       ; $476B: $6B
    ld b, d                                       ; $476C: $42
    nop                                           ; $476D: $00
    ld c, h                                       ; $476E: $4C
    ret                                           ; $476F: $C9


    nop                                           ; $4770: $00
    ld bc, $0000                                  ; $4771: $01 $00 $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    ld b, $F3                                     ; $4777: $06 $F3
    nop                                           ; $4779: $00
    nop                                           ; $477A: $00
    inc bc                                        ; $477B: $03
    nop                                           ; $477C: $00
    nop                                           ; $477D: $00
    dec b                                         ; $477E: $05
    ld [$002F], sp                                ; $477F: $08 $2F $00
    ld l, a                                       ; $4782: $6F
    dec hl                                        ; $4783: $2B
    nop                                           ; $4784: $00
    daa                                           ; $4785: $27
    ld c, l                                       ; $4786: $4D
    nop                                           ; $4787: $00
    ld c, c                                       ; $4788: $49
    ld l, a                                       ; $4789: $6F
    nop                                           ; $478A: $00
    daa                                           ; $478B: $27
    ld c, b                                       ; $478C: $48
    nop                                           ; $478D: $00
    ld c, [hl]                                    ; $478E: $4E
    ret z                                         ; $478F: $C8

    nop                                           ; $4790: $00
    ld bc, $00D0                                  ; $4791: $01 $D0 $00
    ld d, b                                       ; $4794: $50
    ld b, c                                       ; $4795: $41
    nop                                           ; $4796: $00
    jr z, jr_039_476A                             ; $4797: $28 $D1

    nop                                           ; $4799: $00
    ld c, c                                       ; $479A: $49
    ld l, a                                       ; $479B: $6F
    nop                                           ; $479C: $00
    ld b, h                                       ; $479D: $44
    or c                                          ; $479E: $B1
    nop                                           ; $479F: $00
    halt                                          ; $47A0: $76
    pop bc                                        ; $47A1: $C1
    nop                                           ; $47A2: $00
    ret                                           ; $47A3: $C9


    nop                                           ; $47A4: $00
    nop                                           ; $47A5: $00
    ld b, $F3                                     ; $47A6: $06 $F3
    nop                                           ; $47A8: $00
    nop                                           ; $47A9: $00
    inc bc                                        ; $47AA: $03
    nop                                           ; $47AB: $00
    nop                                           ; $47AC: $00
    dec b                                         ; $47AD: $05
    ld [$00D0], sp                                ; $47AE: $08 $D0 $00
    ld e, a                                       ; $47B1: $5F
    inc a                                         ; $47B2: $3C
    nop                                           ; $47B3: $00
    dec hl                                        ; $47B4: $2B
    ld [hl], $00                                  ; $47B5: $36 $00
    daa                                           ; $47B7: $27
    pop de                                        ; $47B8: $D1
    nop                                           ; $47B9: $00
    ld c, d                                       ; $47BA: $4A
    ld h, c                                       ; $47BB: $61
    nop                                           ; $47BC: $00
    ret z                                         ; $47BD: $C8

    ld b, b                                       ; $47BE: $40
    nop                                           ; $47BF: $00
    ld h, a                                       ; $47C0: $67
    jr z, jr_039_47C3                             ; $47C1: $28 $00

jr_039_47C3:
    jr c, jr_039_4834                             ; $47C3: $38 $6F

    nop                                           ; $47C5: $00
    ld [hl], $42                                  ; $47C6: $36 $42
    nop                                           ; $47C8: $00
    ld d, d                                       ; $47C9: $52
    ld [hl], $00                                  ; $47CA: $36 $00
    daa                                           ; $47CC: $27
    or c                                          ; $47CD: $B1
    nop                                           ; $47CE: $00
    halt                                          ; $47CF: $76
    pop bc                                        ; $47D0: $C1
    nop                                           ; $47D1: $00
    ret                                           ; $47D2: $C9


    nop                                           ; $47D3: $00
    nop                                           ; $47D4: $00
    ld b, $F3                                     ; $47D5: $06 $F3
    nop                                           ; $47D7: $00
    nop                                           ; $47D8: $00
    inc bc                                        ; $47D9: $03
    nop                                           ; $47DA: $00
    nop                                           ; $47DB: $00
    dec b                                         ; $47DC: $05
    inc c                                         ; $47DD: $0C
    dec sp                                        ; $47DE: $3B
    nop                                           ; $47DF: $00
    ld h, l                                       ; $47E0: $65
    ld h, $00                                     ; $47E1: $26 $00
    ret z                                         ; $47E3: $C8

    ld e, l                                       ; $47E4: $5D
    nop                                           ; $47E5: $00
    ccf                                           ; $47E6: $3F
    ld c, h                                       ; $47E7: $4C
    nop                                           ; $47E8: $00
    ret                                           ; $47E9: $C9


    nop                                           ; $47EA: $00
    nop                                           ; $47EB: $00
    nop                                           ; $47EC: $00
    ld d, e                                       ; $47ED: $53
    nop                                           ; $47EE: $00
    daa                                           ; $47EF: $27
    ld d, e                                       ; $47F0: $53
    nop                                           ; $47F1: $00
    ld [hl], a                                    ; $47F2: $77
    daa                                           ; $47F3: $27
    nop                                           ; $47F4: $00
    ret                                           ; $47F5: $C9


    nop                                           ; $47F6: $00
    nop                                           ; $47F7: $00
    nop                                           ; $47F8: $00
    nop                                           ; $47F9: $00
    nop                                           ; $47FA: $00
    ld b, $F3                                     ; $47FB: $06 $F3
    nop                                           ; $47FD: $00
    nop                                           ; $47FE: $00
    dec b                                         ; $47FF: $05
    ld b, b                                       ; $4800: $40
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    rlca                                          ; $4803: $07
    ldh a, [rP1]                                  ; $4804: $F0 $00
    nop                                           ; $4806: $00
    dec b                                         ; $4807: $05
    add b                                         ; $4808: $80
    nop                                           ; $4809: $00
    nop                                           ; $480A: $00
    ld [bc], a                                    ; $480B: $02
    nop                                           ; $480C: $00
    nop                                           ; $480D: $00
    ld bc, $4805                                  ; $480E: $01 $05 $48
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    dec b                                         ; $4813: $05
    inc c                                         ; $4814: $0C
    ld a, b                                       ; $4815: $78
    nop                                           ; $4816: $00
    cp h                                          ; $4817: $BC
    sub h                                         ; $4818: $94
    nop                                           ; $4819: $00
    or b                                          ; $481A: $B0
    adc c                                         ; $481B: $89
    nop                                           ; $481C: $00
    ld b, e                                       ; $481D: $43
    or c                                          ; $481E: $B1
    nop                                           ; $481F: $00
    halt                                          ; $4820: $76
    pop bc                                        ; $4821: $C1
    nop                                           ; $4822: $00
    ld c, l                                       ; $4823: $4D
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    jr z, jr_039_4829                             ; $4827: $28 $00

jr_039_4829:
    ld l, b                                       ; $4829: $68
    ld l, l                                       ; $482A: $6D
    nop                                           ; $482B: $00
    ld a, [hl-]                                   ; $482C: $3A
    ld bc, $4100                                  ; $482D: $01 $00 $41
    jr z, jr_039_4832                             ; $4830: $28 $00

jr_039_4832:
    ld [hl], $77                                  ; $4832: $36 $77

jr_039_4834:
    nop                                           ; $4834: $00
    ld l, a                                       ; $4835: $6F
    rlc b                                         ; $4836: $CB $00
    ld bc, $0000                                  ; $4838: $01 $00 $00
    ld b, $F3                                     ; $483B: $06 $F3
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    inc bc                                        ; $483F: $03
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    dec b                                         ; $4842: $05
    inc b                                         ; $4843: $04
    add l                                         ; $4844: $85
    nop                                           ; $4845: $00
    halt                                          ; $4846: $76
    or c                                          ; $4847: $B1
    nop                                           ; $4848: $00
    ld a, a                                       ; $4849: $7F
    cp e                                          ; $484A: $BB
    nop                                           ; $484B: $00
    ld a, b                                       ; $484C: $78
    ld a, [hl+]                                   ; $484D: $2A
    nop                                           ; $484E: $00
    ld h, b                                       ; $484F: $60
    ld b, a                                       ; $4850: $47
    nop                                           ; $4851: $00
    ld b, e                                       ; $4852: $43
    jr z, jr_039_4855                             ; $4853: $28 $00

jr_039_4855:
    ret                                           ; $4855: $C9


    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00
    ld b, $F3                                     ; $485B: $06 $F3
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    inc bc                                        ; $485F: $03
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    dec b                                         ; $4862: $05
    inc b                                         ; $4863: $04
    ld [hl], b                                    ; $4864: $70
    ld de, $C834                                  ; $4865: $11 $34 $C8
    ld bc, $2992                                  ; $4868: $01 $92 $29
    nop                                           ; $486B: $00
    ld b, d                                       ; $486C: $42
    ld h, $00                                     ; $486D: $26 $00
    inc sp                                        ; $486F: $33
    ld l, d                                       ; $4870: $6A
    nop                                           ; $4871: $00
    xor d                                         ; $4872: $AA
    adc c                                         ; $4873: $89
    nop                                           ; $4874: $00
    cp a                                          ; $4875: $BF
    halt                                          ; $4876: $76
    nop                                           ; $4877: $00
    sbc d                                         ; $4878: $9A
    ld c, [hl]                                    ; $4879: $4E
    nop                                           ; $487A: $00
    ldh [$FFE0], a                                ; $487B: $E0 $E0
    nop                                           ; $487D: $00
    ld bc, $0000                                  ; $487E: $01 $00 $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    ld b, $F3                                     ; $4884: $06 $F3
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    inc bc                                        ; $4888: $03
    nop                                           ; $4889: $00
    nop                                           ; $488A: $00
    dec b                                         ; $488B: $05
    ld [$0001], sp                                ; $488C: $08 $01 $00
    db $F4                                        ; $488F: $F4
    inc sp                                        ; $4890: $33
    nop                                           ; $4891: $00
    scf                                           ; $4892: $37
    ld b, e                                       ; $4893: $43
    nop                                           ; $4894: $00
    push af                                       ; $4895: $F5
    ld bc, $4400                                  ; $4896: $01 $00 $44
    or c                                          ; $4899: $B1
    nop                                           ; $489A: $00
    halt                                          ; $489B: $76
    pop bc                                        ; $489C: $C1
    nop                                           ; $489D: $00
    ret                                           ; $489E: $C9


    nop                                           ; $489F: $00
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    ld b, $F3                                     ; $48A4: $06 $F3
    nop                                           ; $48A6: $00
    nop                                           ; $48A7: $00
    inc bc                                        ; $48A8: $03
    nop                                           ; $48A9: $00
    nop                                           ; $48AA: $00
    dec b                                         ; $48AB: $05
    inc b                                         ; $48AC: $04
    cpl                                           ; $48AD: $2F
    nop                                           ; $48AE: $00
    ld l, e                                       ; $48AF: $6B
    ld l, [hl]                                    ; $48B0: $6E
    nop                                           ; $48B1: $00
    xor d                                         ; $48B2: $AA
    adc c                                         ; $48B3: $89
    nop                                           ; $48B4: $00
    cp a                                          ; $48B5: $BF
    halt                                          ; $48B6: $76
    nop                                           ; $48B7: $00
    sbc d                                         ; $48B8: $9A
    ld c, l                                       ; $48B9: $4D
    nop                                           ; $48BA: $00
    ld b, e                                       ; $48BB: $43
    cpl                                           ; $48BC: $2F
    nop                                           ; $48BD: $00
    ld l, h                                       ; $48BE: $6C
    ld b, a                                       ; $48BF: $47
    nop                                           ; $48C0: $00
    ret z                                         ; $48C1: $C8

    add hl, de                                    ; $48C2: $19
    db $10                                        ; $48C3: $10
    ld l, e                                       ; $48C4: $6B
    ld b, d                                       ; $48C5: $42
    nop                                           ; $48C6: $00
    ld c, h                                       ; $48C7: $4C
    ret                                           ; $48C8: $C9


    nop                                           ; $48C9: $00
    ld bc, $0000                                  ; $48CA: $01 $00 $00
    nop                                           ; $48CD: $00
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    ld b, $F3                                     ; $48D0: $06 $F3
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    inc bc                                        ; $48D4: $03
    nop                                           ; $48D5: $00
    nop                                           ; $48D6: $00
    dec b                                         ; $48D7: $05
    ld [$1170], sp                                ; $48D8: $08 $70 $11
    inc [hl]                                      ; $48DB: $34
    ld c, l                                       ; $48DC: $4D
    ld bc, $DBDA                                  ; $48DD: $01 $DA $DB
    ld de, $4EDC                                  ; $48E0: $11 $DC $4E
    nop                                           ; $48E3: $00
    ret nc                                        ; $48E4: $D0

    ld d, b                                       ; $48E5: $50
    nop                                           ; $48E6: $00
    ld b, c                                       ; $48E7: $41
    jr z, jr_039_48EA                             ; $48E8: $28 $00

jr_039_48EA:
    pop de                                        ; $48EA: $D1
    ld c, c                                       ; $48EB: $49
    nop                                           ; $48EC: $00
    ld l, a                                       ; $48ED: $6F
    ld b, h                                       ; $48EE: $44
    nop                                           ; $48EF: $00
    or c                                          ; $48F0: $B1
    halt                                          ; $48F1: $76
    nop                                           ; $48F2: $00
    pop bc                                        ; $48F3: $C1
    ret                                           ; $48F4: $C9


    nop                                           ; $48F5: $00
    ld bc, $0000                                  ; $48F6: $01 $00 $00
    nop                                           ; $48F9: $00
    nop                                           ; $48FA: $00
    nop                                           ; $48FB: $00
    ld b, $F3                                     ; $48FC: $06 $F3
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    inc bc                                        ; $4900: $03
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    dec b                                         ; $4903: $05
    ld [$00D0], sp                                ; $4904: $08 $D0 $00
    ld e, a                                       ; $4907: $5F
    inc a                                         ; $4908: $3C
    nop                                           ; $4909: $00
    dec hl                                        ; $490A: $2B
    ld [hl], $00                                  ; $490B: $36 $00
    daa                                           ; $490D: $27
    pop de                                        ; $490E: $D1
    nop                                           ; $490F: $00
    ld c, d                                       ; $4910: $4A
    ld h, c                                       ; $4911: $61
    nop                                           ; $4912: $00
    ret z                                         ; $4913: $C8

    ret c                                         ; $4914: $D8

    ld de, $3662                                  ; $4915: $11 $62 $36
    nop                                           ; $4918: $00
    ld b, d                                       ; $4919: $42
    reti                                          ; $491A: $D9


    db $10                                        ; $491B: $10
    ld [hl], $27                                  ; $491C: $36 $27
    nop                                           ; $491E: $00
    or c                                          ; $491F: $B1
    halt                                          ; $4920: $76
    nop                                           ; $4921: $00
    pop bc                                        ; $4922: $C1
    ret                                           ; $4923: $C9


    nop                                           ; $4924: $00
    ld bc, $0000                                  ; $4925: $01 $00 $00
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492A: $00
    ld b, $F3                                     ; $492B: $06 $F3
    nop                                           ; $492D: $00
    nop                                           ; $492E: $00
    inc bc                                        ; $492F: $03
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    dec b                                         ; $4932: $05
    inc c                                         ; $4933: $0C
    dec sp                                        ; $4934: $3B
    nop                                           ; $4935: $00
    ld h, l                                       ; $4936: $65
    ld h, $00                                     ; $4937: $26 $00
    ret z                                         ; $4939: $C8

    ld e, l                                       ; $493A: $5D
    nop                                           ; $493B: $00
    ccf                                           ; $493C: $3F
    ld c, h                                       ; $493D: $4C
    nop                                           ; $493E: $00
    ret                                           ; $493F: $C9


    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    ld d, e                                       ; $4943: $53
    nop                                           ; $4944: $00
    daa                                           ; $4945: $27
    ld d, e                                       ; $4946: $53
    nop                                           ; $4947: $00
    ld [hl], a                                    ; $4948: $77
    daa                                           ; $4949: $27
    nop                                           ; $494A: $00
    ret                                           ; $494B: $C9


    nop                                           ; $494C: $00
    nop                                           ; $494D: $00
    nop                                           ; $494E: $00
    nop                                           ; $494F: $00
    nop                                           ; $4950: $00
    ld b, $F3                                     ; $4951: $06 $F3
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    dec b                                         ; $4955: $05
    ld b, b                                       ; $4956: $40
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    rlca                                          ; $4959: $07
    ldh a, [rP1]                                  ; $495A: $F0 $00
    nop                                           ; $495C: $00
    dec b                                         ; $495D: $05
    add b                                         ; $495E: $80
    nop                                           ; $495F: $00
    nop                                           ; $4960: $00
    ld [bc], a                                    ; $4961: $02
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    ld bc, $495B                                  ; $4964: $01 $5B $49
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    ld b, $F3                                     ; $4969: $06 $F3
    ld bc, $0100                                  ; $496B: $01 $00 $01
    ld bc, $AA00                                  ; $496E: $01 $00 $AA
    adc c                                         ; $4971: $89
    nop                                           ; $4972: $00
    cp a                                          ; $4973: $BF
    halt                                          ; $4974: $76
    nop                                           ; $4975: $00
    sbc d                                         ; $4976: $9A
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    ld bc, $0100                                  ; $497A: $01 $00 $01
    ld bc, $0100                                  ; $497D: $01 $00 $01
    db $F4                                        ; $4980: $F4
    nop                                           ; $4981: $00
    ld b, c                                       ; $4982: $41
    ld h, h                                       ; $4983: $64
    nop                                           ; $4984: $00
    daa                                           ; $4985: $27
    push af                                       ; $4986: $F5
    nop                                           ; $4987: $00
    ld bc, $0000                                  ; $4988: $01 $00 $00
    nop                                           ; $498B: $00
    nop                                           ; $498C: $00
    nop                                           ; $498D: $00
    rlca                                          ; $498E: $07
    inc a                                         ; $498F: $3C
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    inc bc                                        ; $4992: $03
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    dec b                                         ; $4995: $05
    inc c                                         ; $4996: $0C
    ld a, b                                       ; $4997: $78
    nop                                           ; $4998: $00
    cp h                                          ; $4999: $BC
    sub h                                         ; $499A: $94
    nop                                           ; $499B: $00
    or b                                          ; $499C: $B0
    adc c                                         ; $499D: $89
    nop                                           ; $499E: $00
    ld b, e                                       ; $499F: $43
    or c                                          ; $49A0: $B1
    nop                                           ; $49A1: $00
    halt                                          ; $49A2: $76
    pop bc                                        ; $49A3: $C1
    nop                                           ; $49A4: $00
    ld c, l                                       ; $49A5: $4D
    nop                                           ; $49A6: $00
    nop                                           ; $49A7: $00
    nop                                           ; $49A8: $00
    jr z, jr_039_49AB                             ; $49A9: $28 $00

jr_039_49AB:
    ld l, b                                       ; $49AB: $68
    ld l, l                                       ; $49AC: $6D
    nop                                           ; $49AD: $00
    ld a, [hl-]                                   ; $49AE: $3A
    ld bc, $4100                                  ; $49AF: $01 $00 $41
    jr z, jr_039_49B4                             ; $49B2: $28 $00

jr_039_49B4:
    ld [hl], $77                                  ; $49B4: $36 $77
    nop                                           ; $49B6: $00
    ld l, a                                       ; $49B7: $6F
    rlc b                                         ; $49B8: $CB $00
    ld bc, $0000                                  ; $49BA: $01 $00 $00
    ld b, $F3                                     ; $49BD: $06 $F3
    nop                                           ; $49BF: $00
    nop                                           ; $49C0: $00
    inc bc                                        ; $49C1: $03
    nop                                           ; $49C2: $00
    nop                                           ; $49C3: $00
    dec b                                         ; $49C4: $05
    inc b                                         ; $49C5: $04
    scf                                           ; $49C6: $37
    nop                                           ; $49C7: $00
    ld [hl], b                                    ; $49C8: $70
    inc [hl]                                      ; $49C9: $34
    nop                                           ; $49CA: $00
    ld [hl], a                                    ; $49CB: $77
    daa                                           ; $49CC: $27
    nop                                           ; $49CD: $00
    bit 3, a                                      ; $49CE: $CB $5F
    nop                                           ; $49D0: $00
    inc a                                         ; $49D1: $3C
    dec hl                                        ; $49D2: $2B
    nop                                           ; $49D3: $00
    ld [hl], $27                                  ; $49D4: $36 $27
    nop                                           ; $49D6: $00
    ld c, l                                       ; $49D7: $4D
    ld l, [hl]                                    ; $49D8: $6E
    nop                                           ; $49D9: $00
    ld a, a                                       ; $49DA: $7F
    cp e                                          ; $49DB: $BB
    nop                                           ; $49DC: $00
    ld a, b                                       ; $49DD: $78
    ld [hl], $00                                  ; $49DE: $36 $00
    ld b, b                                       ; $49E0: $40
    ld h, l                                       ; $49E1: $65
    nop                                           ; $49E2: $00
    ld [hl], b                                    ; $49E3: $70
    ccf                                           ; $49E4: $3F
    nop                                           ; $49E5: $00
    ld c, l                                       ; $49E6: $4D
    ld c, h                                       ; $49E7: $4C
    nop                                           ; $49E8: $00
    ret                                           ; $49E9: $C9


    nop                                           ; $49EA: $00
    nop                                           ; $49EB: $00
    nop                                           ; $49EC: $00
    nop                                           ; $49ED: $00
    nop                                           ; $49EE: $00
    ld b, $F3                                     ; $49EF: $06 $F3
    nop                                           ; $49F1: $00
    nop                                           ; $49F2: $00
    inc bc                                        ; $49F3: $03
    nop                                           ; $49F4: $00
    nop                                           ; $49F5: $00
    dec b                                         ; $49F6: $05
    ld [$002A], sp                                ; $49F7: $08 $2A $00
    ld c, b                                       ; $49FA: $48
    ld l, h                                       ; $49FB: $6C
    nop                                           ; $49FC: $00
    inc l                                         ; $49FD: $2C
    ld c, c                                       ; $49FE: $49
    nop                                           ; $49FF: $00
    ld l, a                                       ; $4A00: $6F
    ld b, h                                       ; $4A01: $44
    nop                                           ; $4A02: $00
    or c                                          ; $4A03: $B1
    halt                                          ; $4A04: $76
    nop                                           ; $4A05: $00
    pop bc                                        ; $4A06: $C1
    ret                                           ; $4A07: $C9


    nop                                           ; $4A08: $00
    ld bc, $0000                                  ; $4A09: $01 $00 $00
    nop                                           ; $4A0C: $00
    nop                                           ; $4A0D: $00
    nop                                           ; $4A0E: $00
    ld b, $F3                                     ; $4A0F: $06 $F3
    nop                                           ; $4A11: $00
    nop                                           ; $4A12: $00
    inc bc                                        ; $4A13: $03
    nop                                           ; $4A14: $00
    nop                                           ; $4A15: $00
    dec b                                         ; $4A16: $05
    inc b                                         ; $4A17: $04
    ld b, e                                       ; $4A18: $43
    nop                                           ; $4A19: $00
    ld [hl], b                                    ; $4A1A: $70
    ld b, d                                       ; $4A1B: $42
    nop                                           ; $4A1C: $00
    ld a, [hl+]                                   ; $4A1D: $2A
    inc l                                         ; $4A1E: $2C
    nop                                           ; $4A1F: $00
    ld c, l                                       ; $4A20: $4D
    xor d                                         ; $4A21: $AA
    nop                                           ; $4A22: $00
    adc c                                         ; $4A23: $89
    cp a                                          ; $4A24: $BF
    nop                                           ; $4A25: $00
    halt                                          ; $4A26: $76
    sbc d                                         ; $4A27: $9A
    nop                                           ; $4A28: $00
    ld l, [hl]                                    ; $4A29: $6E
    ld a, [hl+]                                   ; $4A2A: $2A
    nop                                           ; $4A2B: $00
    ld [hl], $29                                  ; $4A2C: $36 $29
    nop                                           ; $4A2E: $00
    ld b, d                                       ; $4A2F: $42
    ld h, $00                                     ; $4A30: $26 $00
    inc sp                                        ; $4A32: $33
    ld l, d                                       ; $4A33: $6A
    nop                                           ; $4A34: $00
    ld c, h                                       ; $4A35: $4C
    ld [hl], b                                    ; $4A36: $70
    nop                                           ; $4A37: $00
    ret                                           ; $4A38: $C9


    nop                                           ; $4A39: $00
    nop                                           ; $4A3A: $00
    nop                                           ; $4A3B: $00
    nop                                           ; $4A3C: $00
    nop                                           ; $4A3D: $00
    ld b, $F3                                     ; $4A3E: $06 $F3
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    inc bc                                        ; $4A42: $03
    nop                                           ; $4A43: $00
    nop                                           ; $4A44: $00
    dec b                                         ; $4A45: $05
    inc b                                         ; $4A46: $04
    xor d                                         ; $4A47: $AA
    nop                                           ; $4A48: $00
    adc c                                         ; $4A49: $89
    cp a                                          ; $4A4A: $BF
    nop                                           ; $4A4B: $00
    halt                                          ; $4A4C: $76
    sbc d                                         ; $4A4D: $9A
    nop                                           ; $4A4E: $00
    ld c, [hl]                                    ; $4A4F: $4E
    ldh [rP1], a                                  ; $4A50: $E0 $00
    ldh [rP1], a                                  ; $4A52: $E0 $00
    nop                                           ; $4A54: $00
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    nop                                           ; $4A57: $00
    ld b, $F3                                     ; $4A58: $06 $F3
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    inc bc                                        ; $4A5C: $03
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    dec b                                         ; $4A5F: $05
    inc b                                         ; $4A60: $04
    ld bc, $F400                                  ; $4A61: $01 $00 $F4
    ld b, d                                       ; $4A64: $42
    nop                                           ; $4A65: $00
    ld e, [hl]                                    ; $4A66: $5E
    scf                                           ; $4A67: $37
    nop                                           ; $4A68: $00
    push af                                       ; $4A69: $F5
    ld bc, $4700                                  ; $4A6A: $01 $00 $47
    ld [hl], a                                    ; $4A6D: $77
    nop                                           ; $4A6E: $00
    scf                                           ; $4A6F: $37
    ret                                           ; $4A70: $C9


    nop                                           ; $4A71: $00
    ld bc, $0000                                  ; $4A72: $01 $00 $00
    nop                                           ; $4A75: $00
    nop                                           ; $4A76: $00
    nop                                           ; $4A77: $00
    ld b, $F3                                     ; $4A78: $06 $F3
    nop                                           ; $4A7A: $00
    nop                                           ; $4A7B: $00
    inc bc                                        ; $4A7C: $03
    nop                                           ; $4A7D: $00
    nop                                           ; $4A7E: $00
    dec b                                         ; $4A7F: $05
    ld [$002F], sp                                ; $4A80: $08 $2F $00
    ld l, e                                       ; $4A83: $6B
    ld l, [hl]                                    ; $4A84: $6E
    nop                                           ; $4A85: $00
    xor d                                         ; $4A86: $AA
    adc c                                         ; $4A87: $89
    nop                                           ; $4A88: $00
    cp a                                          ; $4A89: $BF
    halt                                          ; $4A8A: $76
    nop                                           ; $4A8B: $00
    sbc d                                         ; $4A8C: $9A
    ld c, l                                       ; $4A8D: $4D
    nop                                           ; $4A8E: $00
    ld b, e                                       ; $4A8F: $43
    cpl                                           ; $4A90: $2F
    nop                                           ; $4A91: $00
    ld l, h                                       ; $4A92: $6C
    ld b, a                                       ; $4A93: $47
    nop                                           ; $4A94: $00
    ret z                                         ; $4A95: $C8

    daa                                           ; $4A96: $27
    nop                                           ; $4A97: $00
    ld l, e                                       ; $4A98: $6B
    ld l, d                                       ; $4A99: $6A
    nop                                           ; $4A9A: $00
    ld l, a                                       ; $4A9B: $6F
    ld b, h                                       ; $4A9C: $44
    nop                                           ; $4A9D: $00
    or c                                          ; $4A9E: $B1
    halt                                          ; $4A9F: $76
    nop                                           ; $4AA0: $00
    pop bc                                        ; $4AA1: $C1
    ret                                           ; $4AA2: $C9


    nop                                           ; $4AA3: $00
    ld bc, $0000                                  ; $4AA4: $01 $00 $00
    nop                                           ; $4AA7: $00
    nop                                           ; $4AA8: $00
    nop                                           ; $4AA9: $00
    ld b, $F3                                     ; $4AAA: $06 $F3
    nop                                           ; $4AAC: $00
    nop                                           ; $4AAD: $00
    inc bc                                        ; $4AAE: $03
    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    dec b                                         ; $4AB1: $05
    inc b                                         ; $4AB2: $04
    ld d, b                                       ; $4AB3: $50
    nop                                           ; $4AB4: $00
    ld d, b                                       ; $4AB5: $50
    ld d, b                                       ; $4AB6: $50
    nop                                           ; $4AB7: $00
    ld d, b                                       ; $4AB8: $50
    ret z                                         ; $4AB9: $C8

    nop                                           ; $4ABA: $00
    cpl                                           ; $4ABB: $2F
    ld l, e                                       ; $4ABC: $6B
    nop                                           ; $4ABD: $00
    ld b, a                                       ; $4ABE: $47
    ld l, l                                       ; $4ABF: $6D
    nop                                           ; $4AC0: $00
    ccf                                           ; $4AC1: $3F
    ld [hl], $00                                  ; $4AC2: $36 $00
    ld c, l                                       ; $4AC4: $4D
    ld b, a                                       ; $4AC5: $47
    nop                                           ; $4AC6: $00
    ld d, e                                       ; $4AC7: $53
    ld l, a                                       ; $4AC8: $6F
    nop                                           ; $4AC9: $00
    ld h, h                                       ; $4ACA: $64
    ret                                           ; $4ACB: $C9


    nop                                           ; $4ACC: $00
    ld bc, $0000                                  ; $4ACD: $01 $00 $00
    nop                                           ; $4AD0: $00
    nop                                           ; $4AD1: $00
    nop                                           ; $4AD2: $00
    ld b, $F3                                     ; $4AD3: $06 $F3
    nop                                           ; $4AD5: $00
    nop                                           ; $4AD6: $00
    inc bc                                        ; $4AD7: $03
    nop                                           ; $4AD8: $00
    nop                                           ; $4AD9: $00
    dec b                                         ; $4ADA: $05
    ld [$0078], sp                                ; $4ADB: $08 $78 $00
    cp h                                          ; $4ADE: $BC
    sub h                                         ; $4ADF: $94
    nop                                           ; $4AE0: $00
    or b                                          ; $4AE1: $B0
    adc c                                         ; $4AE2: $89
    nop                                           ; $4AE3: $00
    ld d, e                                       ; $4AE4: $53
    ld [hl], b                                    ; $4AE5: $70
    nop                                           ; $4AE6: $00
    dec hl                                        ; $4AE7: $2B
    ld l, c                                       ; $4AE8: $69
    nop                                           ; $4AE9: $00
    adc [hl]                                      ; $4AEA: $8E
    cp h                                          ; $4AEB: $BC
    nop                                           ; $4AEC: $00
    daa                                           ; $4AED: $27
    ld l, a                                       ; $4AEE: $6F
    nop                                           ; $4AEF: $00
    ld b, h                                       ; $4AF0: $44
    or c                                          ; $4AF1: $B1
    nop                                           ; $4AF2: $00
    halt                                          ; $4AF3: $76
    pop bc                                        ; $4AF4: $C1
    nop                                           ; $4AF5: $00
    ret                                           ; $4AF6: $C9


    nop                                           ; $4AF7: $00
    nop                                           ; $4AF8: $00
    nop                                           ; $4AF9: $00
    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00
    ld b, $F3                                     ; $4AFC: $06 $F3
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    inc bc                                        ; $4B00: $03
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    dec b                                         ; $4B03: $05
    inc b                                         ; $4B04: $04
    cpl                                           ; $4B05: $2F
    nop                                           ; $4B06: $00
    ld l, e                                       ; $4B07: $6B
    ld c, [hl]                                    ; $4B08: $4E
    nop                                           ; $4B09: $00
    inc l                                         ; $4B0A: $2C
    ld [hl], b                                    ; $4B0B: $70
    nop                                           ; $4B0C: $00
    ld b, e                                       ; $4B0D: $43
    ret z                                         ; $4B0E: $C8

    nop                                           ; $4B0F: $00
    ld c, a                                       ; $4B10: $4F
    inc [hl]                                      ; $4B11: $34
    nop                                           ; $4B12: $00
    ld l, h                                       ; $4B13: $6C
    ld c, l                                       ; $4B14: $4D
    nop                                           ; $4B15: $00
    ld bc, $002A                                  ; $4B16: $01 $2A $00
    cpl                                           ; $4B19: $2F
    ld c, c                                       ; $4B1A: $49
    nop                                           ; $4B1B: $00
    daa                                           ; $4B1C: $27
    jr nc, jr_039_4B1F                            ; $4B1D: $30 $00

jr_039_4B1F:
    ld bc, $0027                                  ; $4B1F: $01 $27 $00
    daa                                           ; $4B22: $27
    dec hl                                        ; $4B23: $2B
    nop                                           ; $4B24: $00
    ld l, b                                       ; $4B25: $68
    ld h, h                                       ; $4B26: $64
    nop                                           ; $4B27: $00
    ret                                           ; $4B28: $C9


    nop                                           ; $4B29: $00
    nop                                           ; $4B2A: $00
    nop                                           ; $4B2B: $00
    nop                                           ; $4B2C: $00
    nop                                           ; $4B2D: $00
    ld b, $F3                                     ; $4B2E: $06 $F3
    nop                                           ; $4B30: $00
    nop                                           ; $4B31: $00
    inc bc                                        ; $4B32: $03
    nop                                           ; $4B33: $00
    nop                                           ; $4B34: $00
    dec b                                         ; $4B35: $05
    ld [$00F2], sp                                ; $4B36: $08 $F2 $00
    dec a                                         ; $4B39: $3D
    halt                                          ; $4B3A: $76
    nop                                           ; $4B3B: $00
    ld l, a                                       ; $4B3C: $6F
    dec a                                         ; $4B3D: $3D
    nop                                           ; $4B3E: $00
    ld l, a                                       ; $4B3F: $6F
    ret z                                         ; $4B40: $C8

    nop                                           ; $4B41: $00
    daa                                           ; $4B42: $27
    daa                                           ; $4B43: $27
    nop                                           ; $4B44: $00
    cpl                                           ; $4B45: $2F
    ld b, e                                       ; $4B46: $43
    nop                                           ; $4B47: $00
    ld bc, $0001                                  ; $4B48: $01 $01 $00
    ld [hl], $42                                  ; $4B4B: $36 $42
    nop                                           ; $4B4D: $00
    ld c, c                                       ; $4B4E: $49
    daa                                           ; $4B4F: $27
    nop                                           ; $4B50: $00
    or c                                          ; $4B51: $B1
    halt                                          ; $4B52: $76
    nop                                           ; $4B53: $00
    pop bc                                        ; $4B54: $C1
    ret                                           ; $4B55: $C9


    nop                                           ; $4B56: $00
    di                                            ; $4B57: $F3
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    nop                                           ; $4B5B: $00
    nop                                           ; $4B5C: $00
    ld b, $F3                                     ; $4B5D: $06 $F3
    nop                                           ; $4B5F: $00
    nop                                           ; $4B60: $00
    inc bc                                        ; $4B61: $03
    nop                                           ; $4B62: $00
    nop                                           ; $4B63: $00
    dec b                                         ; $4B64: $05
    inc b                                         ; $4B65: $04
    ld c, c                                       ; $4B66: $49
    nop                                           ; $4B67: $00
    ld l, a                                       ; $4B68: $6F
    dec hl                                        ; $4B69: $2B
    nop                                           ; $4B6A: $00
    ret z                                         ; $4B6B: $C8

    daa                                           ; $4B6C: $27
    nop                                           ; $4B6D: $00
    ld [hl], b                                    ; $4B6E: $70
    ccf                                           ; $4B6F: $3F
    nop                                           ; $4B70: $00
    call z, RST_00                                ; $4B71: $CC $00 $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    nop                                           ; $4B76: $00
    ld b, $F3                                     ; $4B77: $06 $F3
    nop                                           ; $4B79: $00
    nop                                           ; $4B7A: $00
    inc bc                                        ; $4B7B: $03
    nop                                           ; $4B7C: $00
    nop                                           ; $4B7D: $00
    dec b                                         ; $4B7E: $05
    ld [$0049], sp                                ; $4B7F: $08 $49 $00
    ret z                                         ; $4B82: $C8

    ld c, c                                       ; $4B83: $49
    nop                                           ; $4B84: $00
    halt                                          ; $4B85: $76
    ld l, a                                       ; $4B86: $6F
    nop                                           ; $4B87: $00
    ld c, d                                       ; $4B88: $4A
    ld h, c                                       ; $4B89: $61
    nop                                           ; $4B8A: $00
    daa                                           ; $4B8B: $27
    ld [hl], b                                    ; $4B8C: $70
    nop                                           ; $4B8D: $00
    ld b, d                                       ; $4B8E: $42
    ld c, c                                       ; $4B8F: $49
    nop                                           ; $4B90: $00
    daa                                           ; $4B91: $27
    or c                                          ; $4B92: $B1
    nop                                           ; $4B93: $00
    halt                                          ; $4B94: $76
    pop bc                                        ; $4B95: $C1
    nop                                           ; $4B96: $00
    ret                                           ; $4B97: $C9


    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    ld b, $F3                                     ; $4B9D: $06 $F3
    nop                                           ; $4B9F: $00
    nop                                           ; $4BA0: $00
    inc bc                                        ; $4BA1: $03
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    dec b                                         ; $4BA4: $05
    inc b                                         ; $4BA5: $04
    dec l                                         ; $4BA6: $2D
    nop                                           ; $4BA7: $00
    ld h, d                                       ; $4BA8: $62
    ld [hl], $00                                  ; $4BA9: $36 $00
    daa                                           ; $4BAB: $27
    ld l, a                                       ; $4BAC: $6F
    nop                                           ; $4BAD: $00
    ld b, a                                       ; $4BAE: $47
    ld [hl], $00                                  ; $4BAF: $36 $00
    ld h, a                                       ; $4BB1: $67
    ld [hl], a                                    ; $4BB2: $77
    nop                                           ; $4BB3: $00
    call z, RST_00                                ; $4BB4: $CC $00 $00
    nop                                           ; $4BB7: $00
    nop                                           ; $4BB8: $00
    nop                                           ; $4BB9: $00
    ld b, $F3                                     ; $4BBA: $06 $F3
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    inc bc                                        ; $4BBE: $03
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    dec b                                         ; $4BC1: $05
    inc b                                         ; $4BC2: $04
    ld b, b                                       ; $4BC3: $40
    nop                                           ; $4BC4: $00
    ld h, a                                       ; $4BC5: $67
    ld [hl], b                                    ; $4BC6: $70
    nop                                           ; $4BC7: $00
    ld b, e                                       ; $4BC8: $43
    ld b, h                                       ; $4BC9: $44
    nop                                           ; $4BCA: $00
    ld l, $49                                     ; $4BCB: $2E $49
    nop                                           ; $4BCD: $00
    ld l, b                                       ; $4BCE: $68
    ld bc, $B100                                  ; $4BCF: $01 $00 $B1
    halt                                          ; $4BD2: $76
    nop                                           ; $4BD3: $00
    pop bc                                        ; $4BD4: $C1
    ld b, e                                       ; $4BD5: $43
    nop                                           ; $4BD6: $00
    ld bc, $002B                                  ; $4BD7: $01 $2B $00
    ld l, l                                       ; $4BDA: $6D
    ld [hl], b                                    ; $4BDB: $70
    nop                                           ; $4BDC: $00
    ld b, d                                       ; $4BDD: $42
    ld h, $00                                     ; $4BDE: $26 $00
    inc sp                                        ; $4BE0: $33
    ld l, d                                       ; $4BE1: $6A
    nop                                           ; $4BE2: $00
    ld l, l                                       ; $4BE3: $6D
    ld h, h                                       ; $4BE4: $64
    nop                                           ; $4BE5: $00
    ret                                           ; $4BE6: $C9


    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00
    ld b, $F3                                     ; $4BE9: $06 $F3
    nop                                           ; $4BEB: $00
    nop                                           ; $4BEC: $00
    inc bc                                        ; $4BED: $03
    nop                                           ; $4BEE: $00
    nop                                           ; $4BEF: $00
    dec b                                         ; $4BF0: $05
    ld [$003B], sp                                ; $4BF1: $08 $3B $00
    ld h, l                                       ; $4BF4: $65
    ld h, $00                                     ; $4BF5: $26 $00
    ld bc, $00D3                                  ; $4BF7: $01 $D3 $00
    call nc, Call_000_00D5                        ; $4BFA: $D4 $D5 $00
    ld bc, $0047                                  ; $4BFD: $01 $47 $00
    ld bc, $0000                                  ; $4C00: $01 $00 $00
    nop                                           ; $4C03: $00
    cpl                                           ; $4C04: $2F
    nop                                           ; $4C05: $00
    jr z, jr_039_4C47                             ; $4C06: $28 $3F

    nop                                           ; $4C08: $00
    daa                                           ; $4C09: $27
    scf                                           ; $4C0A: $37
    nop                                           ; $4C0B: $00
    ld l, d                                       ; $4C0C: $6A
    ld l, a                                       ; $4C0D: $6F
    nop                                           ; $4C0E: $00
    ld b, h                                       ; $4C0F: $44
    or c                                          ; $4C10: $B1
    nop                                           ; $4C11: $00
    halt                                          ; $4C12: $76
    pop bc                                        ; $4C13: $C1
    nop                                           ; $4C14: $00
    ret                                           ; $4C15: $C9


    nop                                           ; $4C16: $00
    nop                                           ; $4C17: $00
    ld b, $F3                                     ; $4C18: $06 $F3
    nop                                           ; $4C1A: $00
    nop                                           ; $4C1B: $00
    inc bc                                        ; $4C1C: $03
    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    dec b                                         ; $4C1F: $05
    inc b                                         ; $4C20: $04
    add hl, sp                                    ; $4C21: $39
    nop                                           ; $4C22: $00
    ld l, e                                       ; $4C23: $6B
    dec sp                                        ; $4C24: $3B
    nop                                           ; $4C25: $00
    ld h, l                                       ; $4C26: $65
    ld h, $00                                     ; $4C27: $26 $00
    ret z                                         ; $4C29: $C8

    cpl                                           ; $4C2A: $2F
    nop                                           ; $4C2B: $00
    ld l, e                                       ; $4C2C: $6B
    ld b, a                                       ; $4C2D: $47
    nop                                           ; $4C2E: $00
    ld a, [hl+]                                   ; $4C2F: $2A
    ld [hl], $00                                  ; $4C30: $36 $00
    ld e, l                                       ; $4C32: $5D
    daa                                           ; $4C33: $27
    nop                                           ; $4C34: $00
    ld c, d                                       ; $4C35: $4A
    ld [hl], $00                                  ; $4C36: $36 $00
    ld h, h                                       ; $4C38: $64
    jr z, jr_039_4C3B                             ; $4C39: $28 $00

jr_039_4C3B:
    ld h, h                                       ; $4C3B: $64
    ret                                           ; $4C3C: $C9


    nop                                           ; $4C3D: $00
    ld bc, $0000                                  ; $4C3E: $01 $00 $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    ld b, $F3                                     ; $4C44: $06 $F3
    nop                                           ; $4C46: $00

jr_039_4C47:
    nop                                           ; $4C47: $00
    inc bc                                        ; $4C48: $03
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    dec b                                         ; $4C4B: $05
    ld [$0039], sp                                ; $4C4C: $08 $39 $00
    ld l, e                                       ; $4C4F: $6B
    jr nc, jr_039_4C52                            ; $4C50: $30 $00

jr_039_4C52:
    daa                                           ; $4C52: $27
    daa                                           ; $4C53: $27
    nop                                           ; $4C54: $00
    or c                                          ; $4C55: $B1
    halt                                          ; $4C56: $76
    nop                                           ; $4C57: $00
    pop bc                                        ; $4C58: $C1
    ret                                           ; $4C59: $C9


    nop                                           ; $4C5A: $00
    ld bc, $0000                                  ; $4C5B: $01 $00 $00
    nop                                           ; $4C5E: $00
    nop                                           ; $4C5F: $00
    nop                                           ; $4C60: $00
    ld b, $F3                                     ; $4C61: $06 $F3
    nop                                           ; $4C63: $00
    nop                                           ; $4C64: $00
    inc bc                                        ; $4C65: $03
    nop                                           ; $4C66: $00
    nop                                           ; $4C67: $00
    dec b                                         ; $4C68: $05
    inc c                                         ; $4C69: $0C
    dec sp                                        ; $4C6A: $3B
    nop                                           ; $4C6B: $00
    ld h, l                                       ; $4C6C: $65
    ld h, $00                                     ; $4C6D: $26 $00
    ld c, h                                       ; $4C6F: $4C
    ret                                           ; $4C70: $C9


    nop                                           ; $4C71: $00
    ld bc, $0000                                  ; $4C72: $01 $00 $00
    nop                                           ; $4C75: $00
    ld d, e                                       ; $4C76: $53
    nop                                           ; $4C77: $00
    daa                                           ; $4C78: $27
    ld d, e                                       ; $4C79: $53
    nop                                           ; $4C7A: $00
    ld [hl], a                                    ; $4C7B: $77
    daa                                           ; $4C7C: $27
    nop                                           ; $4C7D: $00
    ret                                           ; $4C7E: $C9


    nop                                           ; $4C7F: $00
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    ld b, $F3                                     ; $4C84: $06 $F3
    nop                                           ; $4C86: $00
    nop                                           ; $4C87: $00
    dec b                                         ; $4C88: $05
    ld b, b                                       ; $4C89: $40
    nop                                           ; $4C8A: $00
    nop                                           ; $4C8B: $00
    rlca                                          ; $4C8C: $07
    ldh a, [rP1]                                  ; $4C8D: $F0 $00
    nop                                           ; $4C8F: $00
    dec b                                         ; $4C90: $05
    add b                                         ; $4C91: $80
    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    ld [bc], a                                    ; $4C94: $02
    nop                                           ; $4C95: $00
    nop                                           ; $4C96: $00
    ld bc, $4C8E                                  ; $4C97: $01 $8E $4C
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    ld b, $F3                                     ; $4C9C: $06 $F3
    ld bc, $0100                                  ; $4C9E: $01 $00 $01
    ld bc, $AA00                                  ; $4CA1: $01 $00 $AA
    adc c                                         ; $4CA4: $89
    nop                                           ; $4CA5: $00
    cp a                                          ; $4CA6: $BF
    halt                                          ; $4CA7: $76
    nop                                           ; $4CA8: $00
    sbc d                                         ; $4CA9: $9A
    nop                                           ; $4CAA: $00
    nop                                           ; $4CAB: $00
    nop                                           ; $4CAC: $00
    ld bc, $0100                                  ; $4CAD: $01 $00 $01
    ld bc, $0100                                  ; $4CB0: $01 $00 $01
    db $F4                                        ; $4CB3: $F4
    nop                                           ; $4CB4: $00
    ld b, c                                       ; $4CB5: $41
    ld h, h                                       ; $4CB6: $64
    nop                                           ; $4CB7: $00
    daa                                           ; $4CB8: $27
    push af                                       ; $4CB9: $F5
    nop                                           ; $4CBA: $00
    ld bc, $0000                                  ; $4CBB: $01 $00 $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    rlca                                          ; $4CC1: $07
    inc a                                         ; $4CC2: $3C
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    inc bc                                        ; $4CC5: $03
    nop                                           ; $4CC6: $00
    nop                                           ; $4CC7: $00
    dec b                                         ; $4CC8: $05
    inc c                                         ; $4CC9: $0C
    ld a, b                                       ; $4CCA: $78
    nop                                           ; $4CCB: $00
    cp h                                          ; $4CCC: $BC
    sub h                                         ; $4CCD: $94
    nop                                           ; $4CCE: $00
    or b                                          ; $4CCF: $B0
    adc c                                         ; $4CD0: $89
    nop                                           ; $4CD1: $00
    ld b, e                                       ; $4CD2: $43
    or c                                          ; $4CD3: $B1
    nop                                           ; $4CD4: $00
    halt                                          ; $4CD5: $76
    pop bc                                        ; $4CD6: $C1
    nop                                           ; $4CD7: $00
    ld c, l                                       ; $4CD8: $4D
    nop                                           ; $4CD9: $00
    nop                                           ; $4CDA: $00
    nop                                           ; $4CDB: $00
    jr z, jr_039_4CDE                             ; $4CDC: $28 $00

jr_039_4CDE:
    ld l, b                                       ; $4CDE: $68
    ld l, l                                       ; $4CDF: $6D
    nop                                           ; $4CE0: $00
    ld a, [hl-]                                   ; $4CE1: $3A
    ld bc, $4100                                  ; $4CE2: $01 $00 $41
    jr z, jr_039_4CE7                             ; $4CE5: $28 $00

jr_039_4CE7:
    ld [hl], $77                                  ; $4CE7: $36 $77
    nop                                           ; $4CE9: $00
    ld l, a                                       ; $4CEA: $6F
    rlc b                                         ; $4CEB: $CB $00
    ld bc, $0000                                  ; $4CED: $01 $00 $00
    ld b, $F3                                     ; $4CF0: $06 $F3
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    inc bc                                        ; $4CF4: $03
    nop                                           ; $4CF5: $00
    nop                                           ; $4CF6: $00
    dec b                                         ; $4CF7: $05
    inc b                                         ; $4CF8: $04
    scf                                           ; $4CF9: $37
    nop                                           ; $4CFA: $00
    ld [hl], b                                    ; $4CFB: $70
    inc [hl]                                      ; $4CFC: $34
    nop                                           ; $4CFD: $00
    ld [hl], a                                    ; $4CFE: $77
    daa                                           ; $4CFF: $27
    nop                                           ; $4D00: $00
    bit 3, a                                      ; $4D01: $CB $5F
    nop                                           ; $4D03: $00
    inc a                                         ; $4D04: $3C
    dec hl                                        ; $4D05: $2B
    nop                                           ; $4D06: $00
    ld [hl], $27                                  ; $4D07: $36 $27
    nop                                           ; $4D09: $00
    ld c, l                                       ; $4D0A: $4D
    ld l, [hl]                                    ; $4D0B: $6E
    nop                                           ; $4D0C: $00
    ld a, a                                       ; $4D0D: $7F
    cp e                                          ; $4D0E: $BB
    nop                                           ; $4D0F: $00
    ld a, b                                       ; $4D10: $78
    ld [hl], $00                                  ; $4D11: $36 $00
    ld b, b                                       ; $4D13: $40
    ld h, l                                       ; $4D14: $65
    nop                                           ; $4D15: $00
    ld [hl], b                                    ; $4D16: $70
    ccf                                           ; $4D17: $3F
    nop                                           ; $4D18: $00
    ld c, l                                       ; $4D19: $4D
    ld c, h                                       ; $4D1A: $4C
    nop                                           ; $4D1B: $00
    ret                                           ; $4D1C: $C9


    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    ld b, $F3                                     ; $4D22: $06 $F3
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    inc bc                                        ; $4D26: $03
    nop                                           ; $4D27: $00
    nop                                           ; $4D28: $00
    dec b                                         ; $4D29: $05
    ld [$002A], sp                                ; $4D2A: $08 $2A $00
    ld c, b                                       ; $4D2D: $48
    ld l, h                                       ; $4D2E: $6C
    nop                                           ; $4D2F: $00
    inc l                                         ; $4D30: $2C
    ld c, c                                       ; $4D31: $49
    nop                                           ; $4D32: $00
    ld l, a                                       ; $4D33: $6F
    ld b, h                                       ; $4D34: $44
    nop                                           ; $4D35: $00
    or c                                          ; $4D36: $B1
    halt                                          ; $4D37: $76
    nop                                           ; $4D38: $00
    pop bc                                        ; $4D39: $C1
    ret                                           ; $4D3A: $C9


    nop                                           ; $4D3B: $00
    ld bc, $0000                                  ; $4D3C: $01 $00 $00
    nop                                           ; $4D3F: $00
    nop                                           ; $4D40: $00
    nop                                           ; $4D41: $00
    ld b, $F3                                     ; $4D42: $06 $F3
    nop                                           ; $4D44: $00
    nop                                           ; $4D45: $00
    inc bc                                        ; $4D46: $03
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    dec b                                         ; $4D49: $05
    inc b                                         ; $4D4A: $04
    ld b, e                                       ; $4D4B: $43
    nop                                           ; $4D4C: $00
    ld [hl], b                                    ; $4D4D: $70
    ld b, d                                       ; $4D4E: $42
    nop                                           ; $4D4F: $00
    ld a, [hl+]                                   ; $4D50: $2A
    inc l                                         ; $4D51: $2C
    nop                                           ; $4D52: $00
    ld c, l                                       ; $4D53: $4D
    xor d                                         ; $4D54: $AA
    nop                                           ; $4D55: $00
    adc c                                         ; $4D56: $89
    cp a                                          ; $4D57: $BF
    nop                                           ; $4D58: $00
    halt                                          ; $4D59: $76
    sbc d                                         ; $4D5A: $9A
    nop                                           ; $4D5B: $00
    ld l, [hl]                                    ; $4D5C: $6E
    sub d                                         ; $4D5D: $92
    db $10                                        ; $4D5E: $10
    add hl, hl                                    ; $4D5F: $29
    ld b, d                                       ; $4D60: $42
    nop                                           ; $4D61: $00
    ld h, $33                                     ; $4D62: $26 $33
    nop                                           ; $4D64: $00
    ld l, d                                       ; $4D65: $6A
    ld c, h                                       ; $4D66: $4C
    nop                                           ; $4D67: $00
    ld [hl], b                                    ; $4D68: $70
    ret                                           ; $4D69: $C9


    nop                                           ; $4D6A: $00
    ld bc, $0000                                  ; $4D6B: $01 $00 $00
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    nop                                           ; $4D70: $00
    ld b, $F3                                     ; $4D71: $06 $F3
    nop                                           ; $4D73: $00
    nop                                           ; $4D74: $00
    inc bc                                        ; $4D75: $03
    nop                                           ; $4D76: $00
    nop                                           ; $4D77: $00
    dec b                                         ; $4D78: $05
    inc b                                         ; $4D79: $04
    xor d                                         ; $4D7A: $AA
    nop                                           ; $4D7B: $00
    adc c                                         ; $4D7C: $89
    cp a                                          ; $4D7D: $BF
    nop                                           ; $4D7E: $00
    halt                                          ; $4D7F: $76
    sbc d                                         ; $4D80: $9A
    nop                                           ; $4D81: $00
    ld c, [hl]                                    ; $4D82: $4E
    ldh [rP1], a                                  ; $4D83: $E0 $00
    ldh [rP1], a                                  ; $4D85: $E0 $00
    nop                                           ; $4D87: $00
    nop                                           ; $4D88: $00
    nop                                           ; $4D89: $00
    nop                                           ; $4D8A: $00
    ld b, $F3                                     ; $4D8B: $06 $F3
    nop                                           ; $4D8D: $00
    nop                                           ; $4D8E: $00
    inc bc                                        ; $4D8F: $03
    nop                                           ; $4D90: $00
    nop                                           ; $4D91: $00
    dec b                                         ; $4D92: $05
    inc b                                         ; $4D93: $04
    ld bc, $F400                                  ; $4D94: $01 $00 $F4
    ld b, d                                       ; $4D97: $42
    nop                                           ; $4D98: $00
    ld e, [hl]                                    ; $4D99: $5E
    scf                                           ; $4D9A: $37
    nop                                           ; $4D9B: $00
    push af                                       ; $4D9C: $F5
    ld bc, $4700                                  ; $4D9D: $01 $00 $47
    ld [hl], a                                    ; $4DA0: $77
    nop                                           ; $4DA1: $00
    scf                                           ; $4DA2: $37
    ret                                           ; $4DA3: $C9


    nop                                           ; $4DA4: $00
    ld bc, $0000                                  ; $4DA5: $01 $00 $00
    nop                                           ; $4DA8: $00
    nop                                           ; $4DA9: $00
    nop                                           ; $4DAA: $00
    ld b, $F3                                     ; $4DAB: $06 $F3
    nop                                           ; $4DAD: $00
    nop                                           ; $4DAE: $00
    inc bc                                        ; $4DAF: $03
    nop                                           ; $4DB0: $00
    nop                                           ; $4DB1: $00
    dec b                                         ; $4DB2: $05
    ld [$002F], sp                                ; $4DB3: $08 $2F $00
    ld l, e                                       ; $4DB6: $6B
    ld l, [hl]                                    ; $4DB7: $6E
    nop                                           ; $4DB8: $00
    xor d                                         ; $4DB9: $AA
    adc c                                         ; $4DBA: $89
    nop                                           ; $4DBB: $00
    cp a                                          ; $4DBC: $BF
    halt                                          ; $4DBD: $76
    nop                                           ; $4DBE: $00
    sbc d                                         ; $4DBF: $9A
    ld c, l                                       ; $4DC0: $4D
    nop                                           ; $4DC1: $00
    ld b, e                                       ; $4DC2: $43
    cpl                                           ; $4DC3: $2F
    nop                                           ; $4DC4: $00
    ld l, h                                       ; $4DC5: $6C
    ld b, a                                       ; $4DC6: $47
    nop                                           ; $4DC7: $00
    ret z                                         ; $4DC8: $C8

    add hl, de                                    ; $4DC9: $19
    db $10                                        ; $4DCA: $10
    ld l, e                                       ; $4DCB: $6B
    ld l, d                                       ; $4DCC: $6A
    nop                                           ; $4DCD: $00
    ld l, a                                       ; $4DCE: $6F
    ld b, h                                       ; $4DCF: $44
    nop                                           ; $4DD0: $00
    or c                                          ; $4DD1: $B1
    halt                                          ; $4DD2: $76
    nop                                           ; $4DD3: $00
    pop bc                                        ; $4DD4: $C1
    ret                                           ; $4DD5: $C9


    nop                                           ; $4DD6: $00
    ld bc, $0000                                  ; $4DD7: $01 $00 $00
    nop                                           ; $4DDA: $00
    nop                                           ; $4DDB: $00
    nop                                           ; $4DDC: $00
    ld b, $F3                                     ; $4DDD: $06 $F3
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    inc bc                                        ; $4DE1: $03
    nop                                           ; $4DE2: $00
    nop                                           ; $4DE3: $00
    dec b                                         ; $4DE4: $05
    inc b                                         ; $4DE5: $04
    ld d, b                                       ; $4DE6: $50
    nop                                           ; $4DE7: $00
    ld d, b                                       ; $4DE8: $50
    ld d, b                                       ; $4DE9: $50
    nop                                           ; $4DEA: $00
    ld d, b                                       ; $4DEB: $50
    ret z                                         ; $4DEC: $C8

    nop                                           ; $4DED: $00
    cpl                                           ; $4DEE: $2F
    ld l, e                                       ; $4DEF: $6B
    nop                                           ; $4DF0: $00
    ld b, a                                       ; $4DF1: $47
    ld l, l                                       ; $4DF2: $6D
    nop                                           ; $4DF3: $00
    ccf                                           ; $4DF4: $3F
    ld [hl], $00                                  ; $4DF5: $36 $00
    ld c, l                                       ; $4DF7: $4D
    jr jr_039_4E0B                                ; $4DF8: $18 $11

    ld a, l                                       ; $4DFA: $7D
    ld h, h                                       ; $4DFB: $64
    nop                                           ; $4DFC: $00
    ret                                           ; $4DFD: $C9


    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    ld b, $F3                                     ; $4E03: $06 $F3
    nop                                           ; $4E05: $00
    nop                                           ; $4E06: $00
    inc bc                                        ; $4E07: $03
    nop                                           ; $4E08: $00
    nop                                           ; $4E09: $00
    dec b                                         ; $4E0A: $05

jr_039_4E0B:
    ld [$0078], sp                                ; $4E0B: $08 $78 $00
    cp h                                          ; $4E0E: $BC
    sub h                                         ; $4E0F: $94
    nop                                           ; $4E10: $00
    or b                                          ; $4E11: $B0
    adc c                                         ; $4E12: $89
    nop                                           ; $4E13: $00
    ld d, e                                       ; $4E14: $53
    ld [hl], b                                    ; $4E15: $70
    nop                                           ; $4E16: $00
    dec hl                                        ; $4E17: $2B
    ld l, c                                       ; $4E18: $69
    nop                                           ; $4E19: $00
    adc [hl]                                      ; $4E1A: $8E
    cp h                                          ; $4E1B: $BC
    nop                                           ; $4E1C: $00
    daa                                           ; $4E1D: $27
    ld l, a                                       ; $4E1E: $6F
    nop                                           ; $4E1F: $00
    ld b, h                                       ; $4E20: $44
    or c                                          ; $4E21: $B1
    nop                                           ; $4E22: $00
    halt                                          ; $4E23: $76
    pop bc                                        ; $4E24: $C1
    nop                                           ; $4E25: $00
    ret                                           ; $4E26: $C9


    nop                                           ; $4E27: $00
    nop                                           ; $4E28: $00
    nop                                           ; $4E29: $00
    nop                                           ; $4E2A: $00
    nop                                           ; $4E2B: $00
    ld b, $F3                                     ; $4E2C: $06 $F3
    nop                                           ; $4E2E: $00
    nop                                           ; $4E2F: $00
    inc bc                                        ; $4E30: $03
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    dec b                                         ; $4E33: $05
    inc b                                         ; $4E34: $04
    cpl                                           ; $4E35: $2F
    nop                                           ; $4E36: $00
    ld l, e                                       ; $4E37: $6B
    ld c, [hl]                                    ; $4E38: $4E
    nop                                           ; $4E39: $00
    inc l                                         ; $4E3A: $2C
    ld [hl], b                                    ; $4E3B: $70
    nop                                           ; $4E3C: $00
    ld b, e                                       ; $4E3D: $43
    ret z                                         ; $4E3E: $C8

    ld bc, $DD16                                  ; $4E3F: $01 $16 $DD
    db $10                                        ; $4E42: $10
    ld c, l                                       ; $4E43: $4D
    sbc $10                                       ; $4E44: $DE $10
    daa                                           ; $4E46: $27
    jr nc, jr_039_4E49                            ; $4E47: $30 $00

jr_039_4E49:
    daa                                           ; $4E49: $27
    daa                                           ; $4E4A: $27
    nop                                           ; $4E4B: $00
    dec hl                                        ; $4E4C: $2B
    ld l, b                                       ; $4E4D: $68
    nop                                           ; $4E4E: $00
    ld h, h                                       ; $4E4F: $64
    ret                                           ; $4E50: $C9


    nop                                           ; $4E51: $00
    ld bc, $0000                                  ; $4E52: $01 $00 $00
    nop                                           ; $4E55: $00
    nop                                           ; $4E56: $00
    nop                                           ; $4E57: $00
    ld b, $F3                                     ; $4E58: $06 $F3
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    inc bc                                        ; $4E5C: $03
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    dec b                                         ; $4E5F: $05
    ld [$00F2], sp                                ; $4E60: $08 $F2 $00
    dec a                                         ; $4E63: $3D
    halt                                          ; $4E64: $76
    nop                                           ; $4E65: $00
    ld l, a                                       ; $4E66: $6F
    dec a                                         ; $4E67: $3D
    nop                                           ; $4E68: $00
    ld l, a                                       ; $4E69: $6F
    ret z                                         ; $4E6A: $C8

    nop                                           ; $4E6B: $00
    daa                                           ; $4E6C: $27
    daa                                           ; $4E6D: $27
    nop                                           ; $4E6E: $00
    cpl                                           ; $4E6F: $2F
    ld b, e                                       ; $4E70: $43
    nop                                           ; $4E71: $00
    ld bc, $0001                                  ; $4E72: $01 $01 $00
    ld [hl], $42                                  ; $4E75: $36 $42
    nop                                           ; $4E77: $00
    ld c, c                                       ; $4E78: $49
    daa                                           ; $4E79: $27
    nop                                           ; $4E7A: $00
    or c                                          ; $4E7B: $B1
    halt                                          ; $4E7C: $76
    nop                                           ; $4E7D: $00
    pop bc                                        ; $4E7E: $C1
    ret                                           ; $4E7F: $C9


    nop                                           ; $4E80: $00
    di                                            ; $4E81: $F3
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    nop                                           ; $4E84: $00
    nop                                           ; $4E85: $00
    nop                                           ; $4E86: $00
    ld b, $F3                                     ; $4E87: $06 $F3
    nop                                           ; $4E89: $00
    nop                                           ; $4E8A: $00
    inc bc                                        ; $4E8B: $03
    nop                                           ; $4E8C: $00
    nop                                           ; $4E8D: $00
    dec b                                         ; $4E8E: $05
    inc b                                         ; $4E8F: $04
    ld c, c                                       ; $4E90: $49
    nop                                           ; $4E91: $00
    ld l, a                                       ; $4E92: $6F
    dec hl                                        ; $4E93: $2B
    nop                                           ; $4E94: $00
    ret z                                         ; $4E95: $C8

    rst RST_18                                    ; $4E96: $DF
    db $10                                        ; $4E97: $10
    ld [hl], b                                    ; $4E98: $70
    ccf                                           ; $4E99: $3F
    nop                                           ; $4E9A: $00
    call z, RST_00                                ; $4E9B: $CC $00 $00
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    nop                                           ; $4EA0: $00
    ld b, $F3                                     ; $4EA1: $06 $F3
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    inc bc                                        ; $4EA5: $03
    nop                                           ; $4EA6: $00
    nop                                           ; $4EA7: $00
    dec b                                         ; $4EA8: $05
    ld [$0049], sp                                ; $4EA9: $08 $49 $00
    ret z                                         ; $4EAC: $C8

    ld c, c                                       ; $4EAD: $49
    nop                                           ; $4EAE: $00
    halt                                          ; $4EAF: $76
    ld l, a                                       ; $4EB0: $6F
    nop                                           ; $4EB1: $00
    ld c, d                                       ; $4EB2: $4A
    ld h, c                                       ; $4EB3: $61
    ld bc, $70DF                                  ; $4EB4: $01 $DF $70
    nop                                           ; $4EB7: $00
    ld b, d                                       ; $4EB8: $42
    ld c, c                                       ; $4EB9: $49
    nop                                           ; $4EBA: $00
    daa                                           ; $4EBB: $27
    or c                                          ; $4EBC: $B1
    nop                                           ; $4EBD: $00
    halt                                          ; $4EBE: $76
    pop bc                                        ; $4EBF: $C1
    nop                                           ; $4EC0: $00
    ret                                           ; $4EC1: $C9


    nop                                           ; $4EC2: $00
    nop                                           ; $4EC3: $00
    nop                                           ; $4EC4: $00
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    ld b, $F3                                     ; $4EC7: $06 $F3
    nop                                           ; $4EC9: $00
    nop                                           ; $4ECA: $00
    inc bc                                        ; $4ECB: $03
    nop                                           ; $4ECC: $00
    nop                                           ; $4ECD: $00
    dec b                                         ; $4ECE: $05
    inc b                                         ; $4ECF: $04
    add hl, de                                    ; $4ED0: $19
    ld hl, $4E9C                                  ; $4ED1: $21 $9C $4E
    ld bc, $3F18                                  ; $4ED4: $01 $18 $3F
    nop                                           ; $4ED7: $00
    daa                                           ; $4ED8: $27
    ld l, a                                       ; $4ED9: $6F
    nop                                           ; $4EDA: $00
    ld b, a                                       ; $4EDB: $47
    ld [hl], $00                                  ; $4EDC: $36 $00
    ld h, a                                       ; $4EDE: $67
    ld [hl], a                                    ; $4EDF: $77
    nop                                           ; $4EE0: $00
    call z, RST_00                                ; $4EE1: $CC $00 $00
    ld b, $F3                                     ; $4EE4: $06 $F3
    nop                                           ; $4EE6: $00
    nop                                           ; $4EE7: $00
    inc bc                                        ; $4EE8: $03
    nop                                           ; $4EE9: $00
    nop                                           ; $4EEA: $00
    dec b                                         ; $4EEB: $05
    inc b                                         ; $4EEC: $04
    ld b, b                                       ; $4EED: $40
    nop                                           ; $4EEE: $00
    ld h, a                                       ; $4EEF: $67
    ld [hl], b                                    ; $4EF0: $70
    nop                                           ; $4EF1: $00
    ld b, e                                       ; $4EF2: $43
    ld b, h                                       ; $4EF3: $44
    nop                                           ; $4EF4: $00
    ld l, $49                                     ; $4EF5: $2E $49
    nop                                           ; $4EF7: $00
    ld l, b                                       ; $4EF8: $68
    ld bc, $B100                                  ; $4EF9: $01 $00 $B1
    halt                                          ; $4EFC: $76
    nop                                           ; $4EFD: $00
    pop bc                                        ; $4EFE: $C1
    ld b, e                                       ; $4EFF: $43
    nop                                           ; $4F00: $00
    ld bc, $002B                                  ; $4F01: $01 $2B $00
    ld l, l                                       ; $4F04: $6D
    ld [hl], b                                    ; $4F05: $70
    nop                                           ; $4F06: $00
    ld b, d                                       ; $4F07: $42
    ld h, $00                                     ; $4F08: $26 $00
    inc sp                                        ; $4F0A: $33
    ld l, d                                       ; $4F0B: $6A
    nop                                           ; $4F0C: $00
    ld l, l                                       ; $4F0D: $6D
    ld h, h                                       ; $4F0E: $64
    nop                                           ; $4F0F: $00
    ret                                           ; $4F10: $C9


    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    ld b, $F3                                     ; $4F13: $06 $F3
    nop                                           ; $4F15: $00
    nop                                           ; $4F16: $00
    inc bc                                        ; $4F17: $03
    nop                                           ; $4F18: $00
    nop                                           ; $4F19: $00
    dec b                                         ; $4F1A: $05
    ld [$003B], sp                                ; $4F1B: $08 $3B $00
    ld h, l                                       ; $4F1E: $65
    ld h, $00                                     ; $4F1F: $26 $00
    ld bc, $00D3                                  ; $4F21: $01 $D3 $00
    call nc, Call_000_00D5                        ; $4F24: $D4 $D5 $00
    ld bc, $0047                                  ; $4F27: $01 $47 $00
    ld bc, $0000                                  ; $4F2A: $01 $00 $00
    nop                                           ; $4F2D: $00
    adc d                                         ; $4F2E: $8A
    ld [hl+], a                                   ; $4F2F: $22
    adc e                                         ; $4F30: $8B
    scf                                           ; $4F31: $37
    nop                                           ; $4F32: $00
    ld l, d                                       ; $4F33: $6A
    ld l, a                                       ; $4F34: $6F
    nop                                           ; $4F35: $00
    ld b, h                                       ; $4F36: $44
    or c                                          ; $4F37: $B1
    nop                                           ; $4F38: $00
    halt                                          ; $4F39: $76
    pop bc                                        ; $4F3A: $C1
    nop                                           ; $4F3B: $00
    ret                                           ; $4F3C: $C9


    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    ld b, $F3                                     ; $4F42: $06 $F3
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    inc bc                                        ; $4F46: $03
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    dec b                                         ; $4F49: $05
    inc b                                         ; $4F4A: $04
    add hl, sp                                    ; $4F4B: $39
    nop                                           ; $4F4C: $00
    ld l, e                                       ; $4F4D: $6B
    dec sp                                        ; $4F4E: $3B
    nop                                           ; $4F4F: $00
    ld h, l                                       ; $4F50: $65
    ld h, $00                                     ; $4F51: $26 $00
    ret z                                         ; $4F53: $C8

    cpl                                           ; $4F54: $2F
    nop                                           ; $4F55: $00
    ld l, e                                       ; $4F56: $6B
    ld b, a                                       ; $4F57: $47
    nop                                           ; $4F58: $00
    ld a, [hl+]                                   ; $4F59: $2A
    ld [hl], $00                                  ; $4F5A: $36 $00
    ld e, l                                       ; $4F5C: $5D
    daa                                           ; $4F5D: $27
    nop                                           ; $4F5E: $00
    ld c, d                                       ; $4F5F: $4A
    ld [hl], $00                                  ; $4F60: $36 $00
    ld h, h                                       ; $4F62: $64
    jr z, jr_039_4F65                             ; $4F63: $28 $00

jr_039_4F65:
    ld h, h                                       ; $4F65: $64
    ret                                           ; $4F66: $C9


    nop                                           ; $4F67: $00
    ld bc, $0000                                  ; $4F68: $01 $00 $00
    nop                                           ; $4F6B: $00
    nop                                           ; $4F6C: $00
    nop                                           ; $4F6D: $00
    ld b, $F3                                     ; $4F6E: $06 $F3
    nop                                           ; $4F70: $00
    nop                                           ; $4F71: $00
    inc bc                                        ; $4F72: $03
    nop                                           ; $4F73: $00
    nop                                           ; $4F74: $00
    dec b                                         ; $4F75: $05
    ld [$0039], sp                                ; $4F76: $08 $39 $00
    ld l, e                                       ; $4F79: $6B
    jr nc, jr_039_4F7C                            ; $4F7A: $30 $00

jr_039_4F7C:
    daa                                           ; $4F7C: $27
    daa                                           ; $4F7D: $27
    nop                                           ; $4F7E: $00
    or c                                          ; $4F7F: $B1
    halt                                          ; $4F80: $76
    nop                                           ; $4F81: $00
    pop bc                                        ; $4F82: $C1
    ret                                           ; $4F83: $C9


    nop                                           ; $4F84: $00
    ld bc, $0000                                  ; $4F85: $01 $00 $00
    nop                                           ; $4F88: $00
    nop                                           ; $4F89: $00
    nop                                           ; $4F8A: $00
    ld b, $F3                                     ; $4F8B: $06 $F3
    nop                                           ; $4F8D: $00
    nop                                           ; $4F8E: $00
    inc bc                                        ; $4F8F: $03
    nop                                           ; $4F90: $00
    nop                                           ; $4F91: $00
    dec b                                         ; $4F92: $05
    inc c                                         ; $4F93: $0C
    dec sp                                        ; $4F94: $3B
    nop                                           ; $4F95: $00
    ld h, l                                       ; $4F96: $65
    ld h, $00                                     ; $4F97: $26 $00
    ld c, h                                       ; $4F99: $4C
    ret                                           ; $4F9A: $C9


    nop                                           ; $4F9B: $00
    ld bc, $0000                                  ; $4F9C: $01 $00 $00
    nop                                           ; $4F9F: $00
    ld d, e                                       ; $4FA0: $53
    nop                                           ; $4FA1: $00
    daa                                           ; $4FA2: $27
    ld d, e                                       ; $4FA3: $53
    nop                                           ; $4FA4: $00
    ld [hl], a                                    ; $4FA5: $77
    daa                                           ; $4FA6: $27
    nop                                           ; $4FA7: $00
    ret                                           ; $4FA8: $C9


    nop                                           ; $4FA9: $00
    nop                                           ; $4FAA: $00
    nop                                           ; $4FAB: $00
    nop                                           ; $4FAC: $00
    nop                                           ; $4FAD: $00
    ld b, $F3                                     ; $4FAE: $06 $F3
    nop                                           ; $4FB0: $00
    nop                                           ; $4FB1: $00
    dec b                                         ; $4FB2: $05
    ld b, b                                       ; $4FB3: $40
    nop                                           ; $4FB4: $00
    nop                                           ; $4FB5: $00
    rlca                                          ; $4FB6: $07
    ldh a, [rP1]                                  ; $4FB7: $F0 $00
    nop                                           ; $4FB9: $00
    dec b                                         ; $4FBA: $05
    add b                                         ; $4FBB: $80
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    ld [bc], a                                    ; $4FBE: $02
    nop                                           ; $4FBF: $00
    nop                                           ; $4FC0: $00
    ld bc, $4FB8                                  ; $4FC1: $01 $B8 $4F
    nop                                           ; $4FC4: $00
    nop                                           ; $4FC5: $00
    dec b                                         ; $4FC6: $05
    inc c                                         ; $4FC7: $0C
    ld a, b                                       ; $4FC8: $78
    nop                                           ; $4FC9: $00
    cp h                                          ; $4FCA: $BC
    sub h                                         ; $4FCB: $94
    nop                                           ; $4FCC: $00
    or b                                          ; $4FCD: $B0
    adc c                                         ; $4FCE: $89
    nop                                           ; $4FCF: $00
    ld b, e                                       ; $4FD0: $43
    or c                                          ; $4FD1: $B1
    nop                                           ; $4FD2: $00
    halt                                          ; $4FD3: $76
    pop bc                                        ; $4FD4: $C1
    nop                                           ; $4FD5: $00
    ld c, l                                       ; $4FD6: $4D
    nop                                           ; $4FD7: $00
    nop                                           ; $4FD8: $00
    nop                                           ; $4FD9: $00
    jr z, jr_039_4FDC                             ; $4FDA: $28 $00

jr_039_4FDC:
    ld l, b                                       ; $4FDC: $68
    ld l, l                                       ; $4FDD: $6D
    nop                                           ; $4FDE: $00
    ld a, [hl-]                                   ; $4FDF: $3A
    ld bc, $4100                                  ; $4FE0: $01 $00 $41
    jr z, jr_039_4FE5                             ; $4FE3: $28 $00

jr_039_4FE5:
    ld [hl], $77                                  ; $4FE5: $36 $77
    nop                                           ; $4FE7: $00
    ld l, a                                       ; $4FE8: $6F
    rlc b                                         ; $4FE9: $CB $00
    ld bc, $0000                                  ; $4FEB: $01 $00 $00
    ld b, $F3                                     ; $4FEE: $06 $F3
    nop                                           ; $4FF0: $00
    nop                                           ; $4FF1: $00
    inc bc                                        ; $4FF2: $03
    nop                                           ; $4FF3: $00
    nop                                           ; $4FF4: $00
    dec b                                         ; $4FF5: $05
    inc b                                         ; $4FF6: $04
    add hl, hl                                    ; $4FF7: $29
    nop                                           ; $4FF8: $00
    ld [hl], a                                    ; $4FF9: $77
    ld [hl], b                                    ; $4FFA: $70
    nop                                           ; $4FFB: $00
    rlc c                                         ; $4FFC: $CB $01
    nop                                           ; $4FFE: $00
    ccf                                           ; $4FFF: $3F
    ld b, c                                       ; $5000: $41
    nop                                           ; $5001: $00
    dec sp                                        ; $5002: $3B
    ld l, a                                       ; $5003: $6F
    nop                                           ; $5004: $00
    ld l, [hl]                                    ; $5005: $6E
    ld a, a                                       ; $5006: $7F
    nop                                           ; $5007: $00
    cp e                                          ; $5008: $BB
    ld a, b                                       ; $5009: $78
    nop                                           ; $500A: $00
    ld [hl], $40                                  ; $500B: $36 $40
    nop                                           ; $500D: $00
    ld h, l                                       ; $500E: $65
    ld [hl], b                                    ; $500F: $70
    nop                                           ; $5010: $00
    ccf                                           ; $5011: $3F
    ld c, l                                       ; $5012: $4D
    nop                                           ; $5013: $00
    set 1, e                                      ; $5014: $CB $CB
    nop                                           ; $5016: $00
    ld bc, $0000                                  ; $5017: $01 $00 $00
    nop                                           ; $501A: $00
    nop                                           ; $501B: $00
    nop                                           ; $501C: $00
    ld b, $F3                                     ; $501D: $06 $F3
    nop                                           ; $501F: $00
    nop                                           ; $5020: $00
    inc bc                                        ; $5021: $03
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    dec b                                         ; $5024: $05
    ld [$0037], sp                                ; $5025: $08 $37 $00
    ret z                                         ; $5028: $C8

    scf                                           ; $5029: $37
    nop                                           ; $502A: $00
    inc [hl]                                      ; $502B: $34
    daa                                           ; $502C: $27
    nop                                           ; $502D: $00
    ld l, a                                       ; $502E: $6F
    ld b, h                                       ; $502F: $44
    nop                                           ; $5030: $00
    or c                                          ; $5031: $B1
    halt                                          ; $5032: $76
    nop                                           ; $5033: $00
    pop bc                                        ; $5034: $C1
    ret                                           ; $5035: $C9


    nop                                           ; $5036: $00
    ld bc, $0000                                  ; $5037: $01 $00 $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    ld b, $F3                                     ; $503D: $06 $F3
    nop                                           ; $503F: $00
    nop                                           ; $5040: $00
    inc bc                                        ; $5041: $03
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    dec b                                         ; $5044: $05
    inc b                                         ; $5045: $04
    ld a, [hl+]                                   ; $5046: $2A
    nop                                           ; $5047: $00
    ld h, b                                       ; $5048: $60
    ld b, a                                       ; $5049: $47
    nop                                           ; $504A: $00
    ld b, e                                       ; $504B: $43
    jr z, jr_039_504E                             ; $504C: $28 $00

jr_039_504E:
    ld [hl], a                                    ; $504E: $77
    rlc b                                         ; $504F: $CB $00
    rlc b                                         ; $5051: $CB $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    ld b, $F3                                     ; $5057: $06 $F3
    nop                                           ; $5059: $00
    nop                                           ; $505A: $00
    inc bc                                        ; $505B: $03
    nop                                           ; $505C: $00
    nop                                           ; $505D: $00
    dec b                                         ; $505E: $05
    ld [$005D], sp                                ; $505F: $08 $5D $00
    daa                                           ; $5062: $27
    ld [hl], b                                    ; $5063: $70
    nop                                           ; $5064: $00
    ccf                                           ; $5065: $3F
    or c                                          ; $5066: $B1
    nop                                           ; $5067: $00
    halt                                          ; $5068: $76
    pop bc                                        ; $5069: $C1
    nop                                           ; $506A: $00
    ret                                           ; $506B: $C9


    nop                                           ; $506C: $00
    nop                                           ; $506D: $00
    nop                                           ; $506E: $00
    nop                                           ; $506F: $00
    nop                                           ; $5070: $00
    ld b, $F3                                     ; $5071: $06 $F3
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    inc bc                                        ; $5075: $03
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    dec b                                         ; $5078: $05
    inc b                                         ; $5079: $04
    add hl, sp                                    ; $507A: $39
    nop                                           ; $507B: $00
    ld l, e                                       ; $507C: $6B
    dec sp                                        ; $507D: $3B
    nop                                           ; $507E: $00
    ld h, l                                       ; $507F: $65
    ld h, $00                                     ; $5080: $26 $00
    ld bc, $00AA                                  ; $5082: $01 $AA $00
    adc c                                         ; $5085: $89
    cp a                                          ; $5086: $BF
    nop                                           ; $5087: $00
    halt                                          ; $5088: $76
    sbc d                                         ; $5089: $9A
    nop                                           ; $508A: $00
    ld l, [hl]                                    ; $508B: $6E
    ld a, [hl+]                                   ; $508C: $2A
    nop                                           ; $508D: $00
    ld [hl], $29                                  ; $508E: $36 $29
    nop                                           ; $5090: $00
    ld b, d                                       ; $5091: $42
    ld bc, $2600                                  ; $5092: $01 $00 $26
    inc sp                                        ; $5095: $33
    nop                                           ; $5096: $00
    ld l, d                                       ; $5097: $6A
    ld c, h                                       ; $5098: $4C
    nop                                           ; $5099: $00
    ld [hl], b                                    ; $509A: $70
    ret                                           ; $509B: $C9


    nop                                           ; $509C: $00
    ld bc, $0000                                  ; $509D: $01 $00 $00
    nop                                           ; $50A0: $00
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    ld b, $F3                                     ; $50A3: $06 $F3
    nop                                           ; $50A5: $00
    nop                                           ; $50A6: $00
    inc bc                                        ; $50A7: $03
    nop                                           ; $50A8: $00
    nop                                           ; $50A9: $00
    dec b                                         ; $50AA: $05
    inc b                                         ; $50AB: $04
    xor d                                         ; $50AC: $AA
    nop                                           ; $50AD: $00
    adc c                                         ; $50AE: $89
    cp a                                          ; $50AF: $BF
    nop                                           ; $50B0: $00
    halt                                          ; $50B1: $76
    sbc d                                         ; $50B2: $9A
    nop                                           ; $50B3: $00
    ld c, [hl]                                    ; $50B4: $4E
    ldh [rP1], a                                  ; $50B5: $E0 $00
    ldh [rP1], a                                  ; $50B7: $E0 $00
    nop                                           ; $50B9: $00
    nop                                           ; $50BA: $00
    nop                                           ; $50BB: $00
    nop                                           ; $50BC: $00
    ld b, $F3                                     ; $50BD: $06 $F3
    nop                                           ; $50BF: $00
    nop                                           ; $50C0: $00
    inc bc                                        ; $50C1: $03
    nop                                           ; $50C2: $00
    nop                                           ; $50C3: $00
    dec b                                         ; $50C4: $05
    inc b                                         ; $50C5: $04
    ld bc, $F400                                  ; $50C6: $01 $00 $F4
    add hl, hl                                    ; $50C9: $29
    nop                                           ; $50CA: $00
    ld l, a                                       ; $50CB: $6F
    ld c, b                                       ; $50CC: $48
    nop                                           ; $50CD: $00
    push af                                       ; $50CE: $F5
    ld bc, $4700                                  ; $50CF: $01 $00 $47
    ld [hl], a                                    ; $50D2: $77
    nop                                           ; $50D3: $00
    scf                                           ; $50D4: $37
    ret                                           ; $50D5: $C9


    nop                                           ; $50D6: $00
    ld bc, $0000                                  ; $50D7: $01 $00 $00
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    nop                                           ; $50DC: $00
    ld b, $F3                                     ; $50DD: $06 $F3
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    inc bc                                        ; $50E1: $03
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    dec b                                         ; $50E4: $05
    ld [$007B], sp                                ; $50E5: $08 $7B $00
    pop bc                                        ; $50E8: $C1
    sbc c                                         ; $50E9: $99
    nop                                           ; $50EA: $00
    call nz, Call_000_00C1                        ; $50EB: $C4 $C1 $00
    add h                                         ; $50EE: $84
    jr nc, jr_039_50F1                            ; $50EF: $30 $00

jr_039_50F1:
    ld bc, $0027                                  ; $50F1: $01 $27 $00
    ld b, c                                       ; $50F4: $41
    ld b, a                                       ; $50F5: $47
    nop                                           ; $50F6: $00
    ld h, c                                       ; $50F7: $61
    ld e, [hl]                                    ; $50F8: $5E
    nop                                           ; $50F9: $00
    ld l, e                                       ; $50FA: $6B
    ld l, d                                       ; $50FB: $6A
    nop                                           ; $50FC: $00
    ld l, a                                       ; $50FD: $6F
    ld b, h                                       ; $50FE: $44
    nop                                           ; $50FF: $00
    or c                                          ; $5100: $B1
    halt                                          ; $5101: $76
    nop                                           ; $5102: $00
    pop bc                                        ; $5103: $C1
    ret                                           ; $5104: $C9


    nop                                           ; $5105: $00
    ld bc, $0000                                  ; $5106: $01 $00 $00
    nop                                           ; $5109: $00
    nop                                           ; $510A: $00
    nop                                           ; $510B: $00
    ld b, $F3                                     ; $510C: $06 $F3
    nop                                           ; $510E: $00
    nop                                           ; $510F: $00
    inc bc                                        ; $5110: $03
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    dec b                                         ; $5113: $05
    inc b                                         ; $5114: $04
    ld h, $00                                     ; $5115: $26 $00
    ld b, e                                       ; $5117: $43
    ld c, h                                       ; $5118: $4C
    nop                                           ; $5119: $00
    halt                                          ; $511A: $76
    ret z                                         ; $511B: $C8

    nop                                           ; $511C: $00
    ld c, a                                       ; $511D: $4F
    ld e, [hl]                                    ; $511E: $5E
    nop                                           ; $511F: $00
    ld b, c                                       ; $5120: $41
    ld c, l                                       ; $5121: $4D
    nop                                           ; $5122: $00
    ld bc, $0038                                  ; $5123: $01 $38 $00
    ld b, c                                       ; $5126: $41
    ld h, b                                       ; $5127: $60
    nop                                           ; $5128: $00
    daa                                           ; $5129: $27
    ld h, c                                       ; $512A: $61
    nop                                           ; $512B: $00
    ld bc, $005E                                  ; $512C: $01 $5E $00
    ld l, e                                       ; $512F: $6B
    ld l, d                                       ; $5130: $6A
    nop                                           ; $5131: $00
    ld c, l                                       ; $5132: $4D
    ld h, h                                       ; $5133: $64
    nop                                           ; $5134: $00
    ret                                           ; $5135: $C9


    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513A: $00
    ld b, $F3                                     ; $513B: $06 $F3
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    inc bc                                        ; $513F: $03
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    dec b                                         ; $5142: $05
    inc b                                         ; $5143: $04
    ld a, [hl+]                                   ; $5144: $2A
    nop                                           ; $5145: $00
    ld e, l                                       ; $5146: $5D
    ld l, $00                                     ; $5147: $2E $00
    ld c, l                                       ; $5149: $4D
    xor h                                         ; $514A: $AC
    nop                                           ; $514B: $00
    cp [hl]                                       ; $514C: $BE
    and d                                         ; $514D: $A2
    nop                                           ; $514E: $00
    call nz, $0076                                ; $514F: $C4 $76 $00
    cp h                                          ; $5152: $BC
    ld b, a                                       ; $5153: $47
    nop                                           ; $5154: $00
    ldh [rP1], a                                  ; $5155: $E0 $00
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515A: $00
    ld b, $F3                                     ; $515B: $06 $F3
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    inc bc                                        ; $515F: $03
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    dec b                                         ; $5162: $05
    inc b                                         ; $5163: $04
    pop hl                                        ; $5164: $E1
    nop                                           ; $5165: $00
    sbc $6E                                       ; $5166: $DE $6E
    nop                                           ; $5168: $00
    ld a, [hl+]                                   ; $5169: $2A
    ld [hl], $00                                  ; $516A: $36 $00
    ld c, c                                       ; $516C: $49
    jr nc, jr_039_516F                            ; $516D: $30 $00

jr_039_516F:
    ld l, b                                       ; $516F: $68
    ld bc, $E200                                  ; $5170: $01 $00 $E2
    ld l, [hl]                                    ; $5173: $6E
    nop                                           ; $5174: $00
    ld a, [hl+]                                   ; $5175: $2A
    ld [hl], $00                                  ; $5176: $36 $00
    ld b, d                                       ; $5178: $42
    ld bc, $3800                                  ; $5179: $01 $00 $38
    ld b, c                                       ; $517C: $41
    nop                                           ; $517D: $00
    ld h, b                                       ; $517E: $60
    daa                                           ; $517F: $27
    nop                                           ; $5180: $00
    ld l, [hl]                                    ; $5181: $6E
    ld e, [hl]                                    ; $5182: $5E
    nop                                           ; $5183: $00
    ld b, d                                       ; $5184: $42
    ld c, h                                       ; $5185: $4C
    nop                                           ; $5186: $00
    ret                                           ; $5187: $C9


    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518A: $00
    nop                                           ; $518B: $00
    nop                                           ; $518C: $00
    ld b, $F3                                     ; $518D: $06 $F3
    nop                                           ; $518F: $00
    nop                                           ; $5190: $00
    inc bc                                        ; $5191: $03
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    dec b                                         ; $5194: $05
    ld [$0061], sp                                ; $5195: $08 $61 $00
    jr z, @+$31                                   ; $5198: $28 $2F

    nop                                           ; $519A: $00
    ld l, e                                       ; $519B: $6B
    ld b, a                                       ; $519C: $47
    nop                                           ; $519D: $00
    ld bc, $002A                                  ; $519E: $01 $2A $00
    ld [hl], $5D                                  ; $51A1: $36 $5D
    nop                                           ; $51A3: $00
    daa                                           ; $51A4: $27
    ld c, c                                       ; $51A5: $49
    nop                                           ; $51A6: $00
    ld l, a                                       ; $51A7: $6F
    ld b, h                                       ; $51A8: $44
    nop                                           ; $51A9: $00
    or c                                          ; $51AA: $B1
    halt                                          ; $51AB: $76
    nop                                           ; $51AC: $00
    pop bc                                        ; $51AD: $C1
    ret                                           ; $51AE: $C9


    nop                                           ; $51AF: $00
    ld bc, $0000                                  ; $51B0: $01 $00 $00
    nop                                           ; $51B3: $00
    nop                                           ; $51B4: $00
    nop                                           ; $51B5: $00
    ld b, $F3                                     ; $51B6: $06 $F3
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    inc bc                                        ; $51BA: $03
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    dec b                                         ; $51BD: $05
    inc c                                         ; $51BE: $0C
    dec sp                                        ; $51BF: $3B
    nop                                           ; $51C0: $00
    ld h, l                                       ; $51C1: $65
    ld h, $00                                     ; $51C2: $26 $00
    ld c, h                                       ; $51C4: $4C
    ret                                           ; $51C5: $C9


    nop                                           ; $51C6: $00
    ld bc, $0000                                  ; $51C7: $01 $00 $00
    nop                                           ; $51CA: $00
    ld d, e                                       ; $51CB: $53
    nop                                           ; $51CC: $00
    daa                                           ; $51CD: $27
    ld d, e                                       ; $51CE: $53
    nop                                           ; $51CF: $00
    ld [hl], a                                    ; $51D0: $77
    daa                                           ; $51D1: $27
    nop                                           ; $51D2: $00
    ret                                           ; $51D3: $C9


    nop                                           ; $51D4: $00
    nop                                           ; $51D5: $00
    nop                                           ; $51D6: $00
    nop                                           ; $51D7: $00
    nop                                           ; $51D8: $00
    ld b, $F3                                     ; $51D9: $06 $F3
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    inc bc                                        ; $51DD: $03
    ld bc, $0100                                  ; $51DE: $01 $00 $01
    jr z, jr_039_51E3                             ; $51E1: $28 $00

jr_039_51E3:
    ld l, b                                       ; $51E3: $68
    ld l, l                                       ; $51E4: $6D
    nop                                           ; $51E5: $00
    ld a, [hl-]                                   ; $51E6: $3A
    ld b, c                                       ; $51E7: $41
    nop                                           ; $51E8: $00
    jr z, jr_039_5221                             ; $51E9: $28 $36

    nop                                           ; $51EB: $00
    ld l, a                                       ; $51EC: $6F
    ld bc, $0100                                  ; $51ED: $01 $00 $01
    ld bc, $0100                                  ; $51F0: $01 $00 $01
    ld bc, $0100                                  ; $51F3: $01 $00 $01
    ld a, [hl+]                                   ; $51F6: $2A
    nop                                           ; $51F7: $00
    ld [hl], $5D                                  ; $51F8: $36 $5D
    nop                                           ; $51FA: $00
    daa                                           ; $51FB: $27
    ld bc, $0100                                  ; $51FC: $01 $00 $01
    ld bc, $0100                                  ; $51FF: $01 $00 $01
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    dec b                                         ; $5204: $05
    ld b, b                                       ; $5205: $40
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    rlca                                          ; $5208: $07
    ldh a, [rP1]                                  ; $5209: $F0 $00
    nop                                           ; $520B: $00
    dec b                                         ; $520C: $05
    add b                                         ; $520D: $80
    nop                                           ; $520E: $00
    nop                                           ; $520F: $00
    ld [bc], a                                    ; $5210: $02
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    ld bc, $520A                                  ; $5213: $01 $0A $52
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    dec b                                         ; $5218: $05
    inc c                                         ; $5219: $0C
    ld a, b                                       ; $521A: $78
    nop                                           ; $521B: $00
    cp h                                          ; $521C: $BC
    sub h                                         ; $521D: $94
    nop                                           ; $521E: $00
    or b                                          ; $521F: $B0
    adc c                                         ; $5220: $89

jr_039_5221:
    nop                                           ; $5221: $00
    ld b, e                                       ; $5222: $43
    or c                                          ; $5223: $B1
    nop                                           ; $5224: $00
    halt                                          ; $5225: $76
    pop bc                                        ; $5226: $C1
    nop                                           ; $5227: $00
    ld c, l                                       ; $5228: $4D
    nop                                           ; $5229: $00
    nop                                           ; $522A: $00
    nop                                           ; $522B: $00
    jr z, jr_039_522E                             ; $522C: $28 $00

jr_039_522E:
    ld l, b                                       ; $522E: $68
    ld l, l                                       ; $522F: $6D
    nop                                           ; $5230: $00
    ld a, [hl-]                                   ; $5231: $3A
    ld bc, $4100                                  ; $5232: $01 $00 $41
    jr z, jr_039_5237                             ; $5235: $28 $00

jr_039_5237:
    ld [hl], $77                                  ; $5237: $36 $77
    nop                                           ; $5239: $00
    ld l, a                                       ; $523A: $6F
    rlc b                                         ; $523B: $CB $00
    ld bc, $0000                                  ; $523D: $01 $00 $00
    ld b, $F3                                     ; $5240: $06 $F3
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    inc bc                                        ; $5244: $03
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    dec b                                         ; $5247: $05
    inc b                                         ; $5248: $04
    add hl, hl                                    ; $5249: $29
    nop                                           ; $524A: $00
    ld [hl], a                                    ; $524B: $77
    ld [hl], b                                    ; $524C: $70
    nop                                           ; $524D: $00
    rlc c                                         ; $524E: $CB $01
    ld bc, $81F8                                  ; $5250: $01 $F8 $81
    db $10                                        ; $5253: $10
    ld l, [hl]                                    ; $5254: $6E
    ld a, a                                       ; $5255: $7F
    nop                                           ; $5256: $00
    cp e                                          ; $5257: $BB
    ld a, b                                       ; $5258: $78
    nop                                           ; $5259: $00
    ld [hl], $40                                  ; $525A: $36 $40
    nop                                           ; $525C: $00
    ld h, l                                       ; $525D: $65
    ld [hl], b                                    ; $525E: $70
    nop                                           ; $525F: $00
    ccf                                           ; $5260: $3F
    ld c, l                                       ; $5261: $4D
    nop                                           ; $5262: $00
    set 1, e                                      ; $5263: $CB $CB
    nop                                           ; $5265: $00
    ld bc, $0000                                  ; $5266: $01 $00 $00
    nop                                           ; $5269: $00
    nop                                           ; $526A: $00
    nop                                           ; $526B: $00
    ld b, $F3                                     ; $526C: $06 $F3
    nop                                           ; $526E: $00
    nop                                           ; $526F: $00
    inc bc                                        ; $5270: $03
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    dec b                                         ; $5273: $05
    ld [$0037], sp                                ; $5274: $08 $37 $00
    ret z                                         ; $5277: $C8

    scf                                           ; $5278: $37
    nop                                           ; $5279: $00
    inc [hl]                                      ; $527A: $34
    daa                                           ; $527B: $27
    nop                                           ; $527C: $00
    ld l, a                                       ; $527D: $6F
    ld b, h                                       ; $527E: $44
    nop                                           ; $527F: $00
    or c                                          ; $5280: $B1
    halt                                          ; $5281: $76
    nop                                           ; $5282: $00
    pop bc                                        ; $5283: $C1
    ret                                           ; $5284: $C9


    nop                                           ; $5285: $00
    ld bc, $0000                                  ; $5286: $01 $00 $00
    nop                                           ; $5289: $00
    nop                                           ; $528A: $00
    nop                                           ; $528B: $00
    ld b, $F3                                     ; $528C: $06 $F3
    nop                                           ; $528E: $00
    nop                                           ; $528F: $00
    inc bc                                        ; $5290: $03
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    dec b                                         ; $5293: $05
    inc b                                         ; $5294: $04
    ld a, [hl+]                                   ; $5295: $2A
    nop                                           ; $5296: $00
    ld h, b                                       ; $5297: $60
    ld b, a                                       ; $5298: $47
    nop                                           ; $5299: $00
    ld b, e                                       ; $529A: $43
    jr z, jr_039_529D                             ; $529B: $28 $00

jr_039_529D:
    ld [hl], a                                    ; $529D: $77
    rlc b                                         ; $529E: $CB $00
    rlc b                                         ; $52A0: $CB $00
    nop                                           ; $52A2: $00
    nop                                           ; $52A3: $00
    nop                                           ; $52A4: $00
    nop                                           ; $52A5: $00
    ld b, $F3                                     ; $52A6: $06 $F3
    nop                                           ; $52A8: $00
    nop                                           ; $52A9: $00
    inc bc                                        ; $52AA: $03
    nop                                           ; $52AB: $00
    nop                                           ; $52AC: $00
    dec b                                         ; $52AD: $05
    ld [$005D], sp                                ; $52AE: $08 $5D $00
    daa                                           ; $52B1: $27
    ld [hl], b                                    ; $52B2: $70
    nop                                           ; $52B3: $00
    ccf                                           ; $52B4: $3F
    or c                                          ; $52B5: $B1
    nop                                           ; $52B6: $00
    halt                                          ; $52B7: $76
    pop bc                                        ; $52B8: $C1
    nop                                           ; $52B9: $00
    ret                                           ; $52BA: $C9


    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    ld b, $F3                                     ; $52C0: $06 $F3
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    inc bc                                        ; $52C4: $03
    nop                                           ; $52C5: $00
    nop                                           ; $52C6: $00
    dec b                                         ; $52C7: $05
    inc b                                         ; $52C8: $04
    add hl, sp                                    ; $52C9: $39
    nop                                           ; $52CA: $00
    ld l, e                                       ; $52CB: $6B
    dec sp                                        ; $52CC: $3B
    nop                                           ; $52CD: $00
    ld h, l                                       ; $52CE: $65
    ld h, $00                                     ; $52CF: $26 $00
    ld bc, $00AA                                  ; $52D1: $01 $AA $00
    adc c                                         ; $52D4: $89
    cp a                                          ; $52D5: $BF
    nop                                           ; $52D6: $00
    halt                                          ; $52D7: $76
    sbc d                                         ; $52D8: $9A
    nop                                           ; $52D9: $00
    ld l, [hl]                                    ; $52DA: $6E
    sub d                                         ; $52DB: $92
    db $10                                        ; $52DC: $10
    add hl, hl                                    ; $52DD: $29
    ld b, d                                       ; $52DE: $42
    nop                                           ; $52DF: $00
    ld h, $33                                     ; $52E0: $26 $33
    nop                                           ; $52E2: $00
    ld l, d                                       ; $52E3: $6A
    ld c, h                                       ; $52E4: $4C
    nop                                           ; $52E5: $00
    ld [hl], b                                    ; $52E6: $70
    ret                                           ; $52E7: $C9


    nop                                           ; $52E8: $00
    ld bc, $0000                                  ; $52E9: $01 $00 $00
    nop                                           ; $52EC: $00
    nop                                           ; $52ED: $00
    nop                                           ; $52EE: $00
    ld b, $F3                                     ; $52EF: $06 $F3
    nop                                           ; $52F1: $00
    nop                                           ; $52F2: $00
    inc bc                                        ; $52F3: $03
    nop                                           ; $52F4: $00
    nop                                           ; $52F5: $00
    dec b                                         ; $52F6: $05
    inc b                                         ; $52F7: $04
    xor d                                         ; $52F8: $AA
    nop                                           ; $52F9: $00
    adc c                                         ; $52FA: $89
    cp a                                          ; $52FB: $BF
    nop                                           ; $52FC: $00
    halt                                          ; $52FD: $76
    sbc d                                         ; $52FE: $9A
    nop                                           ; $52FF: $00
    ld c, [hl]                                    ; $5300: $4E
    ldh [rP1], a                                  ; $5301: $E0 $00
    ldh [rP1], a                                  ; $5303: $E0 $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    ld b, $F3                                     ; $5309: $06 $F3
    nop                                           ; $530B: $00
    nop                                           ; $530C: $00
    inc bc                                        ; $530D: $03
    nop                                           ; $530E: $00
    nop                                           ; $530F: $00
    dec b                                         ; $5310: $05
    inc b                                         ; $5311: $04
    ld bc, $F400                                  ; $5312: $01 $00 $F4
    add hl, hl                                    ; $5315: $29
    nop                                           ; $5316: $00
    ld l, a                                       ; $5317: $6F
    ld c, b                                       ; $5318: $48
    nop                                           ; $5319: $00
    push af                                       ; $531A: $F5
    ld bc, $4700                                  ; $531B: $01 $00 $47
    ld [hl], a                                    ; $531E: $77
    nop                                           ; $531F: $00
    scf                                           ; $5320: $37
    ret                                           ; $5321: $C9


    nop                                           ; $5322: $00
    ld bc, $0000                                  ; $5323: $01 $00 $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    ld b, $F3                                     ; $5329: $06 $F3
    nop                                           ; $532B: $00
    nop                                           ; $532C: $00
    inc bc                                        ; $532D: $03
    nop                                           ; $532E: $00
    nop                                           ; $532F: $00
    dec b                                         ; $5330: $05
    ld [$007B], sp                                ; $5331: $08 $7B $00
    pop bc                                        ; $5334: $C1
    sbc c                                         ; $5335: $99
    nop                                           ; $5336: $00
    call nz, Call_000_00C1                        ; $5337: $C4 $C1 $00
    add h                                         ; $533A: $84
    jr nc, jr_039_533D                            ; $533B: $30 $00

jr_039_533D:
    ld bc, $0027                                  ; $533D: $01 $27 $00
    ld b, c                                       ; $5340: $41
    ld b, a                                       ; $5341: $47
    nop                                           ; $5342: $00
    ld h, c                                       ; $5343: $61
    sbc b                                         ; $5344: $98
    db $10                                        ; $5345: $10
    ld l, e                                       ; $5346: $6B
    ld l, d                                       ; $5347: $6A
    nop                                           ; $5348: $00
    ld l, a                                       ; $5349: $6F
    ld b, h                                       ; $534A: $44
    nop                                           ; $534B: $00
    or c                                          ; $534C: $B1
    halt                                          ; $534D: $76
    nop                                           ; $534E: $00
    pop bc                                        ; $534F: $C1
    ret                                           ; $5350: $C9


    nop                                           ; $5351: $00
    ld bc, $0000                                  ; $5352: $01 $00 $00
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    ld b, $F3                                     ; $5358: $06 $F3
    nop                                           ; $535A: $00
    nop                                           ; $535B: $00
    inc bc                                        ; $535C: $03
    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    dec b                                         ; $535F: $05
    inc b                                         ; $5360: $04
    ld h, $00                                     ; $5361: $26 $00
    ld b, e                                       ; $5363: $43
    ld c, h                                       ; $5364: $4C
    nop                                           ; $5365: $00
    halt                                          ; $5366: $76
    ret z                                         ; $5367: $C8

    nop                                           ; $5368: $00
    ld c, a                                       ; $5369: $4F
    ld e, [hl]                                    ; $536A: $5E
    nop                                           ; $536B: $00
    ld b, c                                       ; $536C: $41
    ld c, l                                       ; $536D: $4D
    ld bc, $7675                                  ; $536E: $01 $75 $76
    db $10                                        ; $5371: $10
    ld h, c                                       ; $5372: $61
    sbc b                                         ; $5373: $98
    db $10                                        ; $5374: $10
    ld l, e                                       ; $5375: $6B
    ld l, d                                       ; $5376: $6A
    nop                                           ; $5377: $00
    ld c, l                                       ; $5378: $4D
    ld h, h                                       ; $5379: $64
    nop                                           ; $537A: $00
    ret                                           ; $537B: $C9


    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    nop                                           ; $5380: $00
    ld b, $F3                                     ; $5381: $06 $F3
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    inc bc                                        ; $5385: $03
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    dec b                                         ; $5388: $05
    inc b                                         ; $5389: $04
    ld a, [hl+]                                   ; $538A: $2A
    nop                                           ; $538B: $00
    ld e, l                                       ; $538C: $5D
    ld l, $00                                     ; $538D: $2E $00
    ld c, l                                       ; $538F: $4D
    xor h                                         ; $5390: $AC
    nop                                           ; $5391: $00
    cp [hl]                                       ; $5392: $BE
    and d                                         ; $5393: $A2
    nop                                           ; $5394: $00
    call nz, $0076                                ; $5395: $C4 $76 $00
    cp h                                          ; $5398: $BC
    ld b, a                                       ; $5399: $47
    nop                                           ; $539A: $00
    ldh [rP1], a                                  ; $539B: $E0 $00
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    nop                                           ; $539F: $00
    nop                                           ; $53A0: $00
    ld b, $F3                                     ; $53A1: $06 $F3
    nop                                           ; $53A3: $00
    nop                                           ; $53A4: $00
    inc bc                                        ; $53A5: $03
    nop                                           ; $53A6: $00
    nop                                           ; $53A7: $00
    dec b                                         ; $53A8: $05
    inc b                                         ; $53A9: $04
    pop hl                                        ; $53AA: $E1
    nop                                           ; $53AB: $00
    sbc $6E                                       ; $53AC: $DE $6E
    ld bc, $3687                                  ; $53AE: $01 $87 $36
    nop                                           ; $53B1: $00
    ld c, c                                       ; $53B2: $49
    jr nc, jr_039_53B5                            ; $53B3: $30 $00

jr_039_53B5:
    ld l, b                                       ; $53B5: $68
    ld bc, $E200                                  ; $53B6: $01 $00 $E2
    ld l, [hl]                                    ; $53B9: $6E
    nop                                           ; $53BA: $00
    ld bc, $1087                                  ; $53BB: $01 $87 $10
    ld [hl], $42                                  ; $53BE: $36 $42
    nop                                           ; $53C0: $00
    ld bc, $1175                                  ; $53C1: $01 $75 $11
    halt                                          ; $53C4: $76
    ld l, [hl]                                    ; $53C5: $6E
    ld bc, $4298                                  ; $53C6: $01 $98 $42
    nop                                           ; $53C9: $00
    ld c, h                                       ; $53CA: $4C
    ret                                           ; $53CB: $C9


    nop                                           ; $53CC: $00
    ld bc, $0000                                  ; $53CD: $01 $00 $00
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    ld b, $F3                                     ; $53D3: $06 $F3
    nop                                           ; $53D5: $00
    nop                                           ; $53D6: $00
    inc bc                                        ; $53D7: $03
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    dec b                                         ; $53DA: $05
    ld [$0061], sp                                ; $53DB: $08 $61 $00
    jr z, @+$31                                   ; $53DE: $28 $2F

    nop                                           ; $53E0: $00
    ld l, e                                       ; $53E1: $6B
    ld b, a                                       ; $53E2: $47
    nop                                           ; $53E3: $00
    ld bc, $002A                                  ; $53E4: $01 $2A $00
    ld [hl], $5D                                  ; $53E7: $36 $5D
    nop                                           ; $53E9: $00
    daa                                           ; $53EA: $27
    ld c, c                                       ; $53EB: $49
    nop                                           ; $53EC: $00
    ld l, a                                       ; $53ED: $6F
    ld b, h                                       ; $53EE: $44
    nop                                           ; $53EF: $00
    or c                                          ; $53F0: $B1
    halt                                          ; $53F1: $76
    nop                                           ; $53F2: $00
    pop bc                                        ; $53F3: $C1
    ret                                           ; $53F4: $C9


    nop                                           ; $53F5: $00
    ld bc, $0000                                  ; $53F6: $01 $00 $00
    nop                                           ; $53F9: $00
    nop                                           ; $53FA: $00
    nop                                           ; $53FB: $00
    ld b, $F3                                     ; $53FC: $06 $F3
    nop                                           ; $53FE: $00
    nop                                           ; $53FF: $00
    inc bc                                        ; $5400: $03
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    dec b                                         ; $5403: $05
    inc c                                         ; $5404: $0C
    dec sp                                        ; $5405: $3B
    nop                                           ; $5406: $00
    ld h, l                                       ; $5407: $65
    ld h, $00                                     ; $5408: $26 $00
    ld c, h                                       ; $540A: $4C
    ret                                           ; $540B: $C9


    nop                                           ; $540C: $00
    ld bc, $0000                                  ; $540D: $01 $00 $00
    nop                                           ; $5410: $00
    ld d, e                                       ; $5411: $53
    nop                                           ; $5412: $00
    daa                                           ; $5413: $27
    ld d, e                                       ; $5414: $53
    nop                                           ; $5415: $00
    ld [hl], a                                    ; $5416: $77
    daa                                           ; $5417: $27
    nop                                           ; $5418: $00
    ret                                           ; $5419: $C9


    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    ld b, $F3                                     ; $541F: $06 $F3
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    inc bc                                        ; $5423: $03
    ld bc, $0100                                  ; $5424: $01 $00 $01
    ld bc, $2800                                  ; $5427: $01 $00 $28
    ld l, b                                       ; $542A: $68
    nop                                           ; $542B: $00
    ld l, l                                       ; $542C: $6D
    ld a, [hl-]                                   ; $542D: $3A
    ld [bc], a                                    ; $542E: $02
    sbc h                                         ; $542F: $9C
    xor e                                         ; $5430: $AB
    jr nz, @+$03                                  ; $5431: $20 $01

    ld bc, $0100                                  ; $5433: $01 $00 $01
    ld bc, $0100                                  ; $5436: $01 $00 $01
    ld bc, $0100                                  ; $5439: $01 $00 $01
    ld a, [hl+]                                   ; $543C: $2A
    nop                                           ; $543D: $00
    ld [hl], $5D                                  ; $543E: $36 $5D
    nop                                           ; $5440: $00
    daa                                           ; $5441: $27
    ld bc, $0100                                  ; $5442: $01 $00 $01
    ld bc, $0100                                  ; $5445: $01 $00 $01
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    dec b                                         ; $544A: $05
    ld b, b                                       ; $544B: $40
    nop                                           ; $544C: $00
    nop                                           ; $544D: $00
    rlca                                          ; $544E: $07
    ldh a, [rP1]                                  ; $544F: $F0 $00
    nop                                           ; $5451: $00
    dec b                                         ; $5452: $05
    add b                                         ; $5453: $80
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld [bc], a                                    ; $5456: $02
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    ld bc, $5450                                  ; $5459: $01 $50 $54
    cpl                                           ; $545C: $2F
    nop                                           ; $545D: $00
    ld c, l                                       ; $545E: $4D
    scf                                           ; $545F: $37
    nop                                           ; $5460: $00
    daa                                           ; $5461: $27
    ld [hl], $00                                  ; $5462: $36 $00
    ld h, a                                       ; $5464: $67
    jr z, jr_039_5467                             ; $5465: $28 $00

jr_039_5467:
    ld c, l                                       ; $5467: $4D
    ld b, b                                       ; $5468: $40
    nop                                           ; $5469: $00
    dec hl                                        ; $546A: $2B
    ld l, b                                       ; $546B: $68
    nop                                           ; $546C: $00
    ret z                                         ; $546D: $C8

    sbc c                                         ; $546E: $99
    nop                                           ; $546F: $00
    adc c                                         ; $5470: $89
    sub l                                         ; $5471: $95
    nop                                           ; $5472: $00
    cp [hl]                                       ; $5473: $BE
    pop bc                                        ; $5474: $C1
    nop                                           ; $5475: $00
    ld c, d                                       ; $5476: $4A
    ld l, l                                       ; $5477: $6D
    nop                                           ; $5478: $00
    ccf                                           ; $5479: $3F
    dec [hl]                                      ; $547A: $35
    nop                                           ; $547B: $00
    ld c, c                                       ; $547C: $49
    daa                                           ; $547D: $27
    nop                                           ; $547E: $00
    rlc b                                         ; $547F: $CB $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    rlca                                          ; $5485: $07
    ldh a, [rP1]                                  ; $5486: $F0 $00
    nop                                           ; $5488: $00
    dec b                                         ; $5489: $05
    add b                                         ; $548A: $80
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    ld [bc], a                                    ; $548D: $02
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    ld bc, $5487                                  ; $5490: $01 $87 $54
    cpl                                           ; $5493: $2F
    nop                                           ; $5494: $00
    ld c, l                                       ; $5495: $4D
    sub e                                         ; $5496: $93
    ld hl, $4901                                  ; $5497: $21 $01 $49
    ld bc, $0302                                  ; $549A: $01 $02 $03
    db $10                                        ; $549D: $10
    ld c, l                                       ; $549E: $4D
    inc b                                         ; $549F: $04
    db $10                                        ; $54A0: $10
    ret z                                         ; $54A1: $C8

    nop                                           ; $54A2: $00
    nop                                           ; $54A3: $00
    nop                                           ; $54A4: $00
    dec b                                         ; $54A5: $05
    ld de, $3506                                  ; $54A6: $11 $06 $35
    nop                                           ; $54A9: $00
    jr c, jr_039_54FA                             ; $54AA: $38 $4E

    nop                                           ; $54AC: $00
    ld [hl], $49                                  ; $54AD: $36 $49
    nop                                           ; $54AF: $00
    daa                                           ; $54B0: $27
    rlc b                                         ; $54B1: $CB $00
    ld bc, $0000                                  ; $54B3: $01 $00 $00
    nop                                           ; $54B6: $00
    nop                                           ; $54B7: $00
    nop                                           ; $54B8: $00
    rlca                                          ; $54B9: $07
    ldh a, [rP1]                                  ; $54BA: $F0 $00
    nop                                           ; $54BC: $00
    dec b                                         ; $54BD: $05
    add b                                         ; $54BE: $80
    nop                                           ; $54BF: $00
    nop                                           ; $54C0: $00
    ld [bc], a                                    ; $54C1: $02
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    ld bc, $54BB                                  ; $54C4: $01 $BB $54
    add d                                         ; $54C7: $82
    nop                                           ; $54C8: $00
    and b                                         ; $54C9: $A0
    and b                                         ; $54CA: $A0
    nop                                           ; $54CB: $00
    and b                                         ; $54CC: $A0
    and b                                         ; $54CD: $A0
    nop                                           ; $54CE: $00
    and b                                         ; $54CF: $A0
    rlc b                                         ; $54D0: $CB $00
    ld bc, $0000                                  ; $54D2: $01 $00 $00
    nop                                           ; $54D5: $00
    ld b, c                                       ; $54D6: $41
    nop                                           ; $54D7: $00
    daa                                           ; $54D8: $27
    ld c, d                                       ; $54D9: $4A
    nop                                           ; $54DA: $00
    ret z                                         ; $54DB: $C8

    ld b, d                                       ; $54DC: $42
    nop                                           ; $54DD: $00
    ld c, d                                       ; $54DE: $4A
    daa                                           ; $54DF: $27
    nop                                           ; $54E0: $00
    ld l, e                                       ; $54E1: $6B
    ccf                                           ; $54E2: $3F
    nop                                           ; $54E3: $00
    ld a, $CB                                     ; $54E4: $3E $CB
    nop                                           ; $54E6: $00
    rlc b                                         ; $54E7: $CB $00
    nop                                           ; $54E9: $00
    rlca                                          ; $54EA: $07
    ldh a, [rP1]                                  ; $54EB: $F0 $00
    nop                                           ; $54ED: $00
    dec b                                         ; $54EE: $05
    add b                                         ; $54EF: $80
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    ld [bc], a                                    ; $54F2: $02
    nop                                           ; $54F3: $00
    nop                                           ; $54F4: $00
    ld bc, $54EC                                  ; $54F5: $01 $EC $54
    add d                                         ; $54F8: $82
    nop                                           ; $54F9: $00

jr_039_54FA:
    and b                                         ; $54FA: $A0
    and b                                         ; $54FB: $A0
    nop                                           ; $54FC: $00
    and b                                         ; $54FD: $A0
    and b                                         ; $54FE: $A0
    nop                                           ; $54FF: $00
    and b                                         ; $5500: $A0
    rlc b                                         ; $5501: $CB $00
    ld bc, $0000                                  ; $5503: $01 $00 $00
    nop                                           ; $5506: $00
    ld b, c                                       ; $5507: $41
    nop                                           ; $5508: $00
    daa                                           ; $5509: $27
    ld c, d                                       ; $550A: $4A
    nop                                           ; $550B: $00
    ret z                                         ; $550C: $C8

    rlca                                          ; $550D: $07
    db $10                                        ; $550E: $10
    ld c, d                                       ; $550F: $4A
    add hl, de                                    ; $5510: $19
    db $10                                        ; $5511: $10
    ld l, e                                       ; $5512: $6B
    ccf                                           ; $5513: $3F
    nop                                           ; $5514: $00
    ld a, $CB                                     ; $5515: $3E $CB
    nop                                           ; $5517: $00
    rlc b                                         ; $5518: $CB $00
    nop                                           ; $551A: $00
    rlca                                          ; $551B: $07
    ldh a, [rP1]                                  ; $551C: $F0 $00
    nop                                           ; $551E: $00
    dec b                                         ; $551F: $05
    add b                                         ; $5520: $80
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    ld [bc], a                                    ; $5523: $02
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    ld bc, $551D                                  ; $5526: $01 $1D $55
    cpl                                           ; $5529: $2F
    nop                                           ; $552A: $00
    ld c, l                                       ; $552B: $4D
    scf                                           ; $552C: $37
    nop                                           ; $552D: $00
    daa                                           ; $552E: $27
    ld [hl], $00                                  ; $552F: $36 $00
    ld h, a                                       ; $5531: $67
    jr z, jr_039_5534                             ; $5532: $28 $00

jr_039_5534:
    ld c, [hl]                                    ; $5534: $4E
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    ld [hl], $00                                  ; $5538: $36 $00
    dec a                                         ; $553A: $3D
    ld l, a                                       ; $553B: $6F
    nop                                           ; $553C: $00
    ld c, l                                       ; $553D: $4D
    ccf                                           ; $553E: $3F
    nop                                           ; $553F: $00
    ld h, b                                       ; $5540: $60
    ld c, d                                       ; $5541: $4A
    nop                                           ; $5542: $00
    ld bc, $0000                                  ; $5543: $01 $00 $00
    nop                                           ; $5546: $00
    ld b, c                                       ; $5547: $41
    nop                                           ; $5548: $00
    dec hl                                        ; $5549: $2B
    jr z, jr_039_554C                             ; $554A: $28 $00

jr_039_554C:
    ld d, [hl]                                    ; $554C: $56
    inc l                                         ; $554D: $2C
    nop                                           ; $554E: $00
    dec sp                                        ; $554F: $3B
    ld h, l                                       ; $5550: $65
    nop                                           ; $5551: $00
    ld c, c                                       ; $5552: $49
    ld a, c                                       ; $5553: $79
    nop                                           ; $5554: $00
    ld a, l                                       ; $5555: $7D
    ld c, c                                       ; $5556: $49
    nop                                           ; $5557: $00
    call z, RST_00                                ; $5558: $CC $00 $00
    rlca                                          ; $555B: $07
    ldh a, [rP1]                                  ; $555C: $F0 $00
    nop                                           ; $555E: $00
    dec b                                         ; $555F: $05
    add b                                         ; $5560: $80
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    ld [bc], a                                    ; $5563: $02
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    ld bc, $555D                                  ; $5566: $01 $5D $55
    cpl                                           ; $5569: $2F
    nop                                           ; $556A: $00
    ld c, l                                       ; $556B: $4D
    ld [bc], a                                    ; $556C: $02
    ld de, $4E03                                  ; $556D: $11 $03 $4E
    ld bc, $3332                                  ; $5570: $01 $32 $33
    db $10                                        ; $5573: $10
    ld c, l                                       ; $5574: $4D
    ccf                                           ; $5575: $3F
    nop                                           ; $5576: $00
    ld h, b                                       ; $5577: $60
    ld c, d                                       ; $5578: $4A
    nop                                           ; $5579: $00
    ld bc, $101A                                  ; $557A: $01 $1A $10
    jr z, jr_039_55D5                             ; $557D: $28 $56

    nop                                           ; $557F: $00
    inc l                                         ; $5580: $2C
    dec sp                                        ; $5581: $3B
    nop                                           ; $5582: $00
    ld h, l                                       ; $5583: $65
    ld c, c                                       ; $5584: $49
    nop                                           ; $5585: $00
    ld a, c                                       ; $5586: $79
    ld a, l                                       ; $5587: $7D
    nop                                           ; $5588: $00
    ld c, c                                       ; $5589: $49
    call z, Boot                                  ; $558A: $CC $00 $01
    nop                                           ; $558D: $00
    nop                                           ; $558E: $00
    rlca                                          ; $558F: $07
    ldh a, [rP1]                                  ; $5590: $F0 $00
    nop                                           ; $5592: $00
    dec b                                         ; $5593: $05
    add b                                         ; $5594: $80
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    ld [bc], a                                    ; $5597: $02
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    ld bc, $5591                                  ; $559A: $01 $91 $55
    cpl                                           ; $559D: $2F
    nop                                           ; $559E: $00
    ld c, l                                       ; $559F: $4D
    ld b, b                                       ; $55A0: $40
    nop                                           ; $55A1: $00
    dec hl                                        ; $55A2: $2B
    ld l, b                                       ; $55A3: $68
    nop                                           ; $55A4: $00
    jr nc, jr_039_55CD                            ; $55A5: $30 $26

    nop                                           ; $55A7: $00
    ld l, e                                       ; $55A8: $6B
    ld d, e                                       ; $55A9: $53
    nop                                           ; $55AA: $00
    ld bc, $0000                                  ; $55AB: $01 $00 $00
    nop                                           ; $55AE: $00
    ld c, d                                       ; $55AF: $4A
    nop                                           ; $55B0: $00
    daa                                           ; $55B1: $27
    ld b, b                                       ; $55B2: $40
    nop                                           ; $55B3: $00
    ld h, l                                       ; $55B4: $65
    ld l, a                                       ; $55B5: $6F
    nop                                           ; $55B6: $00
    ld l, [hl]                                    ; $55B7: $6E
    cpl                                           ; $55B8: $2F
    nop                                           ; $55B9: $00
    add hl, hl                                    ; $55BA: $29
    ld l, b                                       ; $55BB: $68
    nop                                           ; $55BC: $00
    ld l, e                                       ; $55BD: $6B
    ld l, d                                       ; $55BE: $6A
    nop                                           ; $55BF: $00
    rlc b                                         ; $55C0: $CB $00
    nop                                           ; $55C2: $00
    rlca                                          ; $55C3: $07
    ldh a, [rP1]                                  ; $55C4: $F0 $00
    nop                                           ; $55C6: $00
    dec b                                         ; $55C7: $05
    add b                                         ; $55C8: $80
    nop                                           ; $55C9: $00
    nop                                           ; $55CA: $00
    ld [bc], a                                    ; $55CB: $02
    nop                                           ; $55CC: $00

jr_039_55CD:
    nop                                           ; $55CD: $00
    ld bc, $55C5                                  ; $55CE: $01 $C5 $55
    cpl                                           ; $55D1: $2F
    nop                                           ; $55D2: $00
    ld c, l                                       ; $55D3: $4D
    inc b                                         ; $55D4: $04

jr_039_55D5:
    db $10                                        ; $55D5: $10
    jr nc, jr_039_55FE                            ; $55D6: $30 $26

    nop                                           ; $55D8: $00
    ld l, e                                       ; $55D9: $6B
    ld d, e                                       ; $55DA: $53
    ld bc, $3736                                  ; $55DB: $01 $36 $37
    db $10                                        ; $55DE: $10
    ld l, [hl]                                    ; $55DF: $6E
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    jr c, jr_039_55F5                             ; $55E3: $38 $10

    add hl, hl                                    ; $55E5: $29
    ld l, b                                       ; $55E6: $68
    nop                                           ; $55E7: $00
    ld l, e                                       ; $55E8: $6B
    ld l, d                                       ; $55E9: $6A
    nop                                           ; $55EA: $00
    set 1, e                                      ; $55EB: $CB $CB
    nop                                           ; $55ED: $00
    ld bc, $0000                                  ; $55EE: $01 $00 $00
    nop                                           ; $55F1: $00
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    rlca                                          ; $55F4: $07

jr_039_55F5:
    ldh a, [rP1]                                  ; $55F5: $F0 $00
    nop                                           ; $55F7: $00
    dec b                                         ; $55F8: $05
    add b                                         ; $55F9: $80
    nop                                           ; $55FA: $00
    nop                                           ; $55FB: $00
    ld [bc], a                                    ; $55FC: $02
    nop                                           ; $55FD: $00

jr_039_55FE:
    nop                                           ; $55FE: $00
    ld bc, $55F6                                  ; $55FF: $01 $F6 $55
    cpl                                           ; $5602: $2F
    nop                                           ; $5603: $00
    ld l, e                                       ; $5604: $6B
    ld b, a                                       ; $5605: $47
    nop                                           ; $5606: $00
    add a                                         ; $5607: $87
    ld a, c                                       ; $5608: $79
    nop                                           ; $5609: $00
    and l                                         ; $560A: $A5
    sub l                                         ; $560B: $95
    nop                                           ; $560C: $00
    cp [hl]                                       ; $560D: $BE
    pop bc                                        ; $560E: $C1
    nop                                           ; $560F: $00
    ld c, l                                       ; $5610: $4D
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    ld [hl], $00                                  ; $5614: $36 $00
    ld l, e                                       ; $5616: $6B
    daa                                           ; $5617: $27
    nop                                           ; $5618: $00
    dec hl                                        ; $5619: $2B
    ld l, a                                       ; $561A: $6F
    nop                                           ; $561B: $00
    ld c, d                                       ; $561C: $4A
    ld c, c                                       ; $561D: $49
    nop                                           ; $561E: $00
    ld l, e                                       ; $561F: $6B
    ld l, d                                       ; $5620: $6A
    nop                                           ; $5621: $00
    dec a                                         ; $5622: $3D
    rlc b                                         ; $5623: $CB $00
    ld bc, $0000                                  ; $5625: $01 $00 $00
    rlca                                          ; $5628: $07
    ldh a, [rP1]                                  ; $5629: $F0 $00
    nop                                           ; $562B: $00
    dec b                                         ; $562C: $05
    add b                                         ; $562D: $80
    nop                                           ; $562E: $00
    nop                                           ; $562F: $00
    ld [bc], a                                    ; $5630: $02
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    ld bc, $562A                                  ; $5633: $01 $2A $56
    cpl                                           ; $5636: $2F
    nop                                           ; $5637: $00
    ld l, e                                       ; $5638: $6B
    ld b, a                                       ; $5639: $47
    nop                                           ; $563A: $00
    add a                                         ; $563B: $87
    ld a, c                                       ; $563C: $79
    nop                                           ; $563D: $00
    and l                                         ; $563E: $A5
    sub l                                         ; $563F: $95
    nop                                           ; $5640: $00
    cp [hl]                                       ; $5641: $BE
    pop bc                                        ; $5642: $C1
    nop                                           ; $5643: $00
    ld c, l                                       ; $5644: $4D
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    ld de, $1211                                  ; $5648: $11 $11 $12
    inc de                                        ; $564B: $13
    db $10                                        ; $564C: $10
    ld c, d                                       ; $564D: $4A
    ld c, c                                       ; $564E: $49
    nop                                           ; $564F: $00
    ld l, e                                       ; $5650: $6B
    ld l, d                                       ; $5651: $6A
    nop                                           ; $5652: $00
    dec a                                         ; $5653: $3D

jr_039_5654:
    rlc b                                         ; $5654: $CB $00
    ld bc, $0000                                  ; $5656: $01 $00 $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    rlca                                          ; $565C: $07
    ldh a, [rP1]                                  ; $565D: $F0 $00
    nop                                           ; $565F: $00
    dec b                                         ; $5660: $05
    add b                                         ; $5661: $80
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    ld [bc], a                                    ; $5664: $02
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    ld bc, $565E                                  ; $5667: $01 $5E $56
    ld h, c                                       ; $566A: $61
    nop                                           ; $566B: $00
    jr z, jr_039_5698                             ; $566C: $28 $2A

    nop                                           ; $566E: $00
    ld l, l                                       ; $566F: $6D
    ld l, c                                       ; $5670: $69
    nop                                           ; $5671: $00
    dec hl                                        ; $5672: $2B
    rlc b                                         ; $5673: $CB $00
    ld b, c                                       ; $5675: $41
    ld e, l                                       ; $5676: $5D
    nop                                           ; $5677: $00
    ld l, b                                       ; $5678: $68
    ld l, a                                       ; $5679: $6F
    nop                                           ; $567A: $00
    ret                                           ; $567B: $C9


    ld e, l                                       ; $567C: $5D
    nop                                           ; $567D: $00
    ld h, $C8                                     ; $567E: $26 $C8
    nop                                           ; $5680: $00
    daa                                           ; $5681: $27
    daa                                           ; $5682: $27
    nop                                           ; $5683: $00
    ld b, h                                       ; $5684: $44
    ld l, h                                       ; $5685: $6C
    nop                                           ; $5686: $00
    jr z, @-$1E                                   ; $5687: $28 $E0

    nop                                           ; $5689: $00
    ld bc, $0000                                  ; $568A: $01 $00 $00
    rlca                                          ; $568D: $07
    ldh a, [rP1]                                  ; $568E: $F0 $00
    nop                                           ; $5690: $00
    dec b                                         ; $5691: $05
    add b                                         ; $5692: $80
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    ld [bc], a                                    ; $5695: $02
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00

jr_039_5698:
    ld bc, $568F                                  ; $5698: $01 $8F $56
    ld h, c                                       ; $569B: $61
    nop                                           ; $569C: $00
    jr z, jr_039_5654                             ; $569D: $28 $B5

    db $10                                        ; $569F: $10
    ld l, l                                       ; $56A0: $6D
    ld l, c                                       ; $56A1: $69
    nop                                           ; $56A2: $00
    dec hl                                        ; $56A3: $2B
    rlc b                                         ; $56A4: $CB $00
    ld b, c                                       ; $56A6: $41
    ld e, l                                       ; $56A7: $5D
    nop                                           ; $56A8: $00
    ld l, b                                       ; $56A9: $68
    ld l, a                                       ; $56AA: $6F
    nop                                           ; $56AB: $00
    ret                                           ; $56AC: $C9


    ld e, l                                       ; $56AD: $5D
    nop                                           ; $56AE: $00
    ld h, $C8                                     ; $56AF: $26 $C8
    nop                                           ; $56B1: $00
    daa                                           ; $56B2: $27
    daa                                           ; $56B3: $27
    nop                                           ; $56B4: $00
    ld b, h                                       ; $56B5: $44
    ld l, h                                       ; $56B6: $6C
    nop                                           ; $56B7: $00
    jr z, @-$1E                                   ; $56B8: $28 $E0

    nop                                           ; $56BA: $00
    ld bc, $0000                                  ; $56BB: $01 $00 $00
    rlca                                          ; $56BE: $07
    ldh a, [rP1]                                  ; $56BF: $F0 $00
    nop                                           ; $56C1: $00
    dec b                                         ; $56C2: $05
    add b                                         ; $56C3: $80
    nop                                           ; $56C4: $00

jr_039_56C5:
    nop                                           ; $56C5: $00
    ld [bc], a                                    ; $56C6: $02
    nop                                           ; $56C7: $00
    nop                                           ; $56C8: $00
    ld bc, $56C0                                  ; $56C9: $01 $C0 $56
    cpl                                           ; $56CC: $2F
    nop                                           ; $56CD: $00
    ld l, e                                       ; $56CE: $6B
    jr nc, jr_039_56D1                            ; $56CF: $30 $00

jr_039_56D1:
    ldh [rP1], a                                  ; $56D1: $E0 $00
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    ld a, e                                       ; $56D5: $7B
    nop                                           ; $56D6: $00
    sbc [hl]                                      ; $56D7: $9E
    cp h                                          ; $56D8: $BC
    nop                                           ; $56D9: $00
    add [hl]                                      ; $56DA: $86
    pop bc                                        ; $56DB: $C1
    nop                                           ; $56DC: $00
    scf                                           ; $56DD: $37
    daa                                           ; $56DE: $27
    nop                                           ; $56DF: $00
    ld [hl], $67                                  ; $56E0: $36 $67
    nop                                           ; $56E2: $00
    jr z, jr_039_56C5                             ; $56E3: $28 $E0

    nop                                           ; $56E5: $00
    ldh [rOBP1], a                                ; $56E6: $E0 $49
    nop                                           ; $56E8: $00
    ld l, a                                       ; $56E9: $6F
    ld b, d                                       ; $56EA: $42
    nop                                           ; $56EB: $00
    ld a, e                                       ; $56EC: $7B
    sbc [hl]                                      ; $56ED: $9E
    nop                                           ; $56EE: $00
    cp h                                          ; $56EF: $BC
    add e                                         ; $56F0: $83
    nop                                           ; $56F1: $00
    halt                                          ; $56F2: $76
    ld c, c                                       ; $56F3: $49
    nop                                           ; $56F4: $00
    ld l, a                                       ; $56F5: $6F
    ld b, h                                       ; $56F6: $44
    nop                                           ; $56F7: $00
    ret                                           ; $56F8: $C9


    nop                                           ; $56F9: $00
    nop                                           ; $56FA: $00
    rlca                                          ; $56FB: $07
    ldh a, [rP1]                                  ; $56FC: $F0 $00
    nop                                           ; $56FE: $00
    dec b                                         ; $56FF: $05
    add b                                         ; $5700: $80
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    ld [bc], a                                    ; $5703: $02
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    ld bc, $56FD                                  ; $5706: $01 $FD $56
    cpl                                           ; $5709: $2F
    nop                                           ; $570A: $00
    ld l, e                                       ; $570B: $6B
    jr nc, jr_039_570E                            ; $570C: $30 $00

jr_039_570E:
    ld a, e                                       ; $570E: $7B
    sbc [hl]                                      ; $570F: $9E
    nop                                           ; $5710: $00
    cp h                                          ; $5711: $BC
    add [hl]                                      ; $5712: $86
    nop                                           ; $5713: $00
    pop bc                                        ; $5714: $C1
    ld [bc], a                                    ; $5715: $02
    ld de, $E003                                  ; $5716: $11 $03 $E0
    nop                                           ; $5719: $00
    ldh [rOBP1], a                                ; $571A: $E0 $49
    nop                                           ; $571C: $00
    ld l, a                                       ; $571D: $6F
    ld b, d                                       ; $571E: $42
    nop                                           ; $571F: $00
    ld a, e                                       ; $5720: $7B
    sbc [hl]                                      ; $5721: $9E
    nop                                           ; $5722: $00
    cp h                                          ; $5723: $BC
    add e                                         ; $5724: $83
    nop                                           ; $5725: $00
    halt                                          ; $5726: $76
    ld c, c                                       ; $5727: $49
    nop                                           ; $5728: $00
    ld l, a                                       ; $5729: $6F
    ld b, h                                       ; $572A: $44
    nop                                           ; $572B: $00
    ret                                           ; $572C: $C9


    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    rlca                                          ; $572F: $07
    ldh a, [rP1]                                  ; $5730: $F0 $00
    nop                                           ; $5732: $00
    dec b                                         ; $5733: $05
    add b                                         ; $5734: $80
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    ld [bc], a                                    ; $5737: $02
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld bc, $5731                                  ; $573A: $01 $31 $57
    ld a, e                                       ; $573D: $7B
    nop                                           ; $573E: $00
    sbc [hl]                                      ; $573F: $9E
    cp h                                          ; $5740: $BC
    nop                                           ; $5741: $00
    add [hl]                                      ; $5742: $86
    pop bc                                        ; $5743: $C1
    nop                                           ; $5744: $00
    scf                                           ; $5745: $37
    daa                                           ; $5746: $27
    nop                                           ; $5747: $00
    ld [hl], $67                                  ; $5748: $36 $67
    nop                                           ; $574A: $00
    jr z, jr_039_57B1                             ; $574B: $28 $64

    nop                                           ; $574D: $00
    bit 7, h                                      ; $574E: $CB $7C
    nop                                           ; $5750: $00
    cp l                                          ; $5751: $BD
    dec [hl]                                      ; $5752: $35
    nop                                           ; $5753: $00
    ld e, l                                       ; $5754: $5D
    ld c, l                                       ; $5755: $4D
    nop                                           ; $5756: $00
    ld c, h                                       ; $5757: $4C
    jr nc, jr_039_575A                            ; $5758: $30 $00

jr_039_575A:
    daa                                           ; $575A: $27
    ld l, [hl]                                    ; $575B: $6E
    nop                                           ; $575C: $00
    ld bc, $0000                                  ; $575D: $01 $00 $00
    nop                                           ; $5760: $00
    dec hl                                        ; $5761: $2B
    nop                                           ; $5762: $00
    ld c, c                                       ; $5763: $49
    add hl, hl                                    ; $5764: $29
    nop                                           ; $5765: $00
    ld l, h                                       ; $5766: $6C
    rlc b                                         ; $5767: $CB $00
    ld bc, $0000                                  ; $5769: $01 $00 $00
    nop                                           ; $576C: $00
    nop                                           ; $576D: $00
    nop                                           ; $576E: $00
    rlca                                          ; $576F: $07
    ldh a, [rP1]                                  ; $5770: $F0 $00
    nop                                           ; $5772: $00
    dec b                                         ; $5773: $05
    add b                                         ; $5774: $80
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    ld [bc], a                                    ; $5777: $02
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    ld bc, $5771                                  ; $577A: $01 $71 $57
    dec [hl]                                      ; $577D: $35
    nop                                           ; $577E: $00
    ld h, $C8                                     ; $577F: $26 $C8
    nop                                           ; $5781: $00
    ld a, e                                       ; $5782: $7B
    sbc [hl]                                      ; $5783: $9E
    nop                                           ; $5784: $00
    cp h                                          ; $5785: $BC
    add [hl]                                      ; $5786: $86
    nop                                           ; $5787: $00
    pop bc                                        ; $5788: $C1
    ld [bc], a                                    ; $5789: $02
    ld de, $6403                                  ; $578A: $11 $03 $64
    nop                                           ; $578D: $00
    sra h                                         ; $578E: $CB $2C
    ld de, $4D2D                                  ; $5790: $11 $2D $4D
    ld bc, $272E                                  ; $5793: $01 $2E $27
    nop                                           ; $5796: $00
    ld l, [hl]                                    ; $5797: $6E
    dec hl                                        ; $5798: $2B
    nop                                           ; $5799: $00
    ld c, c                                       ; $579A: $49
    add hl, hl                                    ; $579B: $29
    nop                                           ; $579C: $00
    ld l, h                                       ; $579D: $6C
    rlc b                                         ; $579E: $CB $00
    ld bc, $0000                                  ; $57A0: $01 $00 $00
    rlca                                          ; $57A3: $07
    ldh a, [rP1]                                  ; $57A4: $F0 $00
    nop                                           ; $57A6: $00
    dec b                                         ; $57A7: $05
    add b                                         ; $57A8: $80
    nop                                           ; $57A9: $00
    nop                                           ; $57AA: $00
    ld [bc], a                                    ; $57AB: $02
    nop                                           ; $57AC: $00
    nop                                           ; $57AD: $00
    ld bc, $57A5                                  ; $57AE: $01 $A5 $57

jr_039_57B1:
    ld c, c                                       ; $57B1: $49
    nop                                           ; $57B2: $00
    ld l, a                                       ; $57B3: $6F
    dec hl                                        ; $57B4: $2B
    nop                                           ; $57B5: $00
    ldh [$FFC8], a                                ; $57B6: $E0 $C8
    nop                                           ; $57B8: $00
    ld bc, $0000                                  ; $57B9: $01 $00 $00
    nop                                           ; $57BC: $00
    ld a, [hl+]                                   ; $57BD: $2A
    nop                                           ; $57BE: $00
    ld [hl], b                                    ; $57BF: $70
    inc l                                         ; $57C0: $2C
    nop                                           ; $57C1: $00
    dec l                                         ; $57C2: $2D
    ld b, d                                       ; $57C3: $42
    nop                                           ; $57C4: $00
    dec sp                                        ; $57C5: $3B
    ld h, l                                       ; $57C6: $65
    nop                                           ; $57C7: $00
    ld e, l                                       ; $57C8: $5D
    ld b, h                                       ; $57C9: $44
    nop                                           ; $57CA: $00
    ld c, c                                       ; $57CB: $49
    ld [hl], a                                    ; $57CC: $77
    nop                                           ; $57CD: $00
    ret                                           ; $57CE: $C9


    cpl                                           ; $57CF: $2F
    nop                                           ; $57D0: $00
    ld l, a                                       ; $57D1: $6F
    ld c, c                                       ; $57D2: $49
    nop                                           ; $57D3: $00
    ld c, l                                       ; $57D4: $4D
    ldh [rP1], a                                  ; $57D5: $E0 $00
    ret z                                         ; $57D7: $C8

    daa                                           ; $57D8: $27
    nop                                           ; $57D9: $00
    ld l, b                                       ; $57DA: $68
    ld c, c                                       ; $57DB: $49
    nop                                           ; $57DC: $00
    daa                                           ; $57DD: $27
    ld h, d                                       ; $57DE: $62
    nop                                           ; $57DF: $00
    ret                                           ; $57E0: $C9


    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    rlca                                          ; $57E3: $07
    ldh a, [rP1]                                  ; $57E4: $F0 $00
    nop                                           ; $57E6: $00
    dec b                                         ; $57E7: $05
    add b                                         ; $57E8: $80
    nop                                           ; $57E9: $00
    nop                                           ; $57EA: $00
    ld [bc], a                                    ; $57EB: $02
    nop                                           ; $57EC: $00
    nop                                           ; $57ED: $00
    ld bc, $57E5                                  ; $57EE: $01 $E5 $57
    ld c, c                                       ; $57F1: $49
    nop                                           ; $57F2: $00
    ld l, a                                       ; $57F3: $6F
    dec hl                                        ; $57F4: $2B
    nop                                           ; $57F5: $00
    ldh [$FFC8], a                                ; $57F6: $E0 $C8
    nop                                           ; $57F8: $00
    ld bc, $0000                                  ; $57F9: $01 $00 $00
    nop                                           ; $57FC: $00
    ld bc, $2C10                                  ; $57FD: $01 $10 $2C
    dec l                                         ; $5800: $2D
    nop                                           ; $5801: $00
    ld b, d                                       ; $5802: $42
    dec sp                                        ; $5803: $3B
    nop                                           ; $5804: $00
    ld h, l                                       ; $5805: $65
    ld e, l                                       ; $5806: $5D
    nop                                           ; $5807: $00
    ld b, h                                       ; $5808: $44
    ld c, c                                       ; $5809: $49
    nop                                           ; $580A: $00
    ld [hl], a                                    ; $580B: $77
    ret                                           ; $580C: $C9


    nop                                           ; $580D: $00
    ld bc, $002F                                  ; $580E: $01 $2F $00

Call_039_5811:
    ld l, a                                       ; $5811: $6F
    ld c, c                                       ; $5812: $49
    nop                                           ; $5813: $00
    ld c, l                                       ; $5814: $4D
    ldh [rP1], a                                  ; $5815: $E0 $00
    ret z                                         ; $5817: $C8

    daa                                           ; $5818: $27
    nop                                           ; $5819: $00
    ld l, b                                       ; $581A: $68
    ld c, c                                       ; $581B: $49
    nop                                           ; $581C: $00
    daa                                           ; $581D: $27
    ld h, d                                       ; $581E: $62
    nop                                           ; $581F: $00
    ret                                           ; $5820: $C9


    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    rlca                                          ; $5823: $07
    ldh a, [rP1]                                  ; $5824: $F0 $00
    nop                                           ; $5826: $00
    dec b                                         ; $5827: $05
    add b                                         ; $5828: $80
    nop                                           ; $5829: $00
    nop                                           ; $582A: $00
    ld [bc], a                                    ; $582B: $02
    nop                                           ; $582C: $00
    nop                                           ; $582D: $00
    ld bc, $5825                                  ; $582E: $01 $25 $58
    ld l, l                                       ; $5831: $6D
    nop                                           ; $5832: $00
    ld [hl], a                                    ; $5833: $77
    daa                                           ; $5834: $27
    nop                                           ; $5835: $00
    ret z                                         ; $5836: $C8

    ld a, [hl]                                    ; $5837: $7E
    nop                                           ; $5838: $00
    cp d                                          ; $5839: $BA
    ld a, [hl]                                    ; $583A: $7E
    nop                                           ; $583B: $00
    cp d                                          ; $583C: $BA
    ld [hl], $00                                  ; $583D: $36 $00
    ld b, d                                       ; $583F: $42
    daa                                           ; $5840: $27
    nop                                           ; $5841: $00
    ld b, d                                       ; $5842: $42
    inc l                                         ; $5843: $2C
    nop                                           ; $5844: $00
    ld l, e                                       ; $5845: $6B
    ld [hl], a                                    ; $5846: $77
    nop                                           ; $5847: $00
    daa                                           ; $5848: $27
    rlc b                                         ; $5849: $CB $00
    rlc b                                         ; $584B: $CB $00
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    ld h, c                                       ; $584F: $61
    nop                                           ; $5850: $00
    ld l, b                                       ; $5851: $68
    ld [hl], b                                    ; $5852: $70
    nop                                           ; $5853: $00
    ld b, b                                       ; $5854: $40
    ld h, l                                       ; $5855: $65
    nop                                           ; $5856: $00
    ld a, [hl+]                                   ; $5857: $2A
    ld [hl], a                                    ; $5858: $77
    nop                                           ; $5859: $00
    ret                                           ; $585A: $C9


    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    nop                                           ; $585E: $00
    nop                                           ; $585F: $00
    rlca                                          ; $5860: $07
    ldh a, [rP1]                                  ; $5861: $F0 $00
    nop                                           ; $5863: $00
    dec b                                         ; $5864: $05
    add b                                         ; $5865: $80
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    ld [bc], a                                    ; $5868: $02
    nop                                           ; $5869: $00
    nop                                           ; $586A: $00
    ld bc, $5862                                  ; $586B: $01 $62 $58
    ld l, l                                       ; $586E: $6D
    nop                                           ; $586F: $00
    ld [hl], c                                    ; $5870: $71
    ld [hl], a                                    ; $5871: $77
    nop                                           ; $5872: $00
    ret z                                         ; $5873: $C8

    ld a, [hl]                                    ; $5874: $7E
    nop                                           ; $5875: $00
    cp d                                          ; $5876: $BA
    ld a, [hl]                                    ; $5877: $7E
    nop                                           ; $5878: $00
    cp d                                          ; $5879: $BA
    ld [hl], $00                                  ; $587A: $36 $00
    ld b, d                                       ; $587C: $42
    daa                                           ; $587D: $27
    nop                                           ; $587E: $00
    ld b, d                                       ; $587F: $42
    inc l                                         ; $5880: $2C
    nop                                           ; $5881: $00
    ld l, e                                       ; $5882: $6B
    daa                                           ; $5883: $27
    nop                                           ; $5884: $00
    ld c, c                                       ; $5885: $49
    ld c, l                                       ; $5886: $4D
    nop                                           ; $5887: $00
    set 1, e                                      ; $5888: $CB $CB
    nop                                           ; $588A: $00
    ld bc, $0000                                  ; $588B: $01 $00 $00
    nop                                           ; $588E: $00
    cpl                                           ; $588F: $2F
    nop                                           ; $5890: $00
    ld l, e                                       ; $5891: $6B
    ret z                                         ; $5892: $C8

    nop                                           ; $5893: $00
    ld h, c                                       ; $5894: $61
    ld l, b                                       ; $5895: $68
    nop                                           ; $5896: $00
    ld [hl], b                                    ; $5897: $70
    ld b, b                                       ; $5898: $40
    nop                                           ; $5899: $00
    ld h, l                                       ; $589A: $65
    ld a, [hl+]                                   ; $589B: $2A
    nop                                           ; $589C: $00
    ld [hl], a                                    ; $589D: $77
    ret                                           ; $589E: $C9


    nop                                           ; $589F: $00
    ld bc, $0000                                  ; $58A0: $01 $00 $00
    nop                                           ; $58A3: $00
    nop                                           ; $58A4: $00
    nop                                           ; $58A5: $00
    rlca                                          ; $58A6: $07
    ldh a, [rP1]                                  ; $58A7: $F0 $00
    nop                                           ; $58A9: $00
    dec b                                         ; $58AA: $05
    add b                                         ; $58AB: $80
    nop                                           ; $58AC: $00
    nop                                           ; $58AD: $00
    ld [bc], a                                    ; $58AE: $02
    nop                                           ; $58AF: $00
    nop                                           ; $58B0: $00
    ld bc, $58A8                                  ; $58B1: $01 $A8 $58
    ldh [rP1], a                                  ; $58B4: $E0 $00
    ldh [$FFE0], a                                ; $58B6: $E0 $E0
    nop                                           ; $58B8: $00
    ldh [$FFC9], a                                ; $58B9: $E0 $C9
    nop                                           ; $58BB: $00
    ld bc, $0000                                  ; $58BC: $01 $00 $00
    nop                                           ; $58BF: $00
    ld h, c                                       ; $58C0: $61
    nop                                           ; $58C1: $00
    ld [hl], b                                    ; $58C2: $70
    ld b, e                                       ; $58C3: $43
    nop                                           ; $58C4: $00
    jr nc, jr_039_5936                            ; $58C5: $30 $6F

    nop                                           ; $58C7: $00
    ld d, e                                       ; $58C8: $53
    ld [hl], b                                    ; $58C9: $70
    nop                                           ; $58CA: $00
    ld b, d                                       ; $58CB: $42
    dec l                                         ; $58CC: $2D
    nop                                           ; $58CD: $00
    ld l, e                                       ; $58CE: $6B
    ret                                           ; $58CF: $C9


    nop                                           ; $58D0: $00
    ld bc, $0000                                  ; $58D1: $01 $00 $00
    nop                                           ; $58D4: $00
    nop                                           ; $58D5: $00
    nop                                           ; $58D6: $00
    rlca                                          ; $58D7: $07
    ld e, $00                                     ; $58D8: $1E $00
    nop                                           ; $58DA: $00
    dec b                                         ; $58DB: $05
    add b                                         ; $58DC: $80
    nop                                           ; $58DD: $00
    nop                                           ; $58DE: $00
    ld [bc], a                                    ; $58DF: $02
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    ld bc, $58D9                                  ; $58E2: $01 $D9 $58
    ld e, l                                       ; $58E5: $5D
    nop                                           ; $58E6: $00
    ld b, h                                       ; $58E7: $44
    ld e, l                                       ; $58E8: $5D
    nop                                           ; $58E9: $00
    ld b, h                                       ; $58EA: $44
    ld b, h                                       ; $58EB: $44
    nop                                           ; $58EC: $00
    ld c, c                                       ; $58ED: $49
    ret                                           ; $58EE: $C9


    nop                                           ; $58EF: $00
    ld bc, $0000                                  ; $58F0: $01 $00 $00
    nop                                           ; $58F3: $00
    jr z, jr_039_58F6                             ; $58F4: $28 $00

jr_039_58F6:
    ld e, l                                       ; $58F6: $5D
    dec l                                         ; $58F7: $2D
    nop                                           ; $58F8: $00
    add d                                         ; $58F9: $82
    halt                                          ; $58FA: $76
    nop                                           ; $58FB: $00
    sbc d                                         ; $58FC: $9A
    ld [hl], $00                                  ; $58FD: $36 $00
    ld h, h                                       ; $58FF: $64
    jr z, jr_039_5902                             ; $5900: $28 $00

jr_039_5902:
    ret                                           ; $5902: $C9


    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    rlca                                          ; $5908: $07
    ld e, $00                                     ; $5909: $1E $00
    nop                                           ; $590B: $00
    dec b                                         ; $590C: $05
    add b                                         ; $590D: $80
    nop                                           ; $590E: $00
    nop                                           ; $590F: $00
    ld [bc], a                                    ; $5910: $02
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    ld bc, $590A                                  ; $5913: $01 $0A $59
    ld c, c                                       ; $5916: $49
    nop                                           ; $5917: $00
    dec hl                                        ; $5918: $2B
    ld c, c                                       ; $5919: $49
    nop                                           ; $591A: $00
    dec hl                                        ; $591B: $2B
    ret z                                         ; $591C: $C8

    nop                                           ; $591D: $00
    jr z, jr_039_597D                             ; $591E: $28 $5D

    nop                                           ; $5920: $00
    daa                                           ; $5921: $27
    ld c, c                                       ; $5922: $49
    nop                                           ; $5923: $00
    ret                                           ; $5924: $C9


    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    cpl                                           ; $5928: $2F
    nop                                           ; $5929: $00
    ld c, l                                       ; $592A: $4D
    ld b, b                                       ; $592B: $40
    nop                                           ; $592C: $00
    ld h, a                                       ; $592D: $67
    jr z, jr_039_5930                             ; $592E: $28 $00

jr_039_5930:
    ld [hl], $47                                  ; $5930: $36 $47
    nop                                           ; $5932: $00
    daa                                           ; $5933: $27
    cpl                                           ; $5934: $2F
    nop                                           ; $5935: $00

jr_039_5936:
    jr z, @-$35                                   ; $5936: $28 $C9

    nop                                           ; $5938: $00
    ld bc, $0000                                  ; $5939: $01 $00 $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    rlca                                          ; $593F: $07
    ld e, $00                                     ; $5940: $1E $00
    nop                                           ; $5942: $00
    dec b                                         ; $5943: $05
    add b                                         ; $5944: $80
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    ld [bc], a                                    ; $5947: $02
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    ld bc, $5941                                  ; $594A: $01 $41 $59
    jr z, jr_039_594F                             ; $594D: $28 $00

jr_039_594F:
    ld e, l                                       ; $594F: $5D
    daa                                           ; $5950: $27
    nop                                           ; $5951: $00
    ld a, $CB                                     ; $5952: $3E $CB
    nop                                           ; $5954: $00
    ld bc, $0000                                  ; $5955: $01 $00 $00
    nop                                           ; $5958: $00
    ld h, $00                                     ; $5959: $26 $00
    ld b, e                                       ; $595B: $43
    ld c, [hl]                                    ; $595C: $4E
    nop                                           ; $595D: $00
    ret z                                         ; $595E: $C8

    xor d                                         ; $595F: $AA
    nop                                           ; $5960: $00
    halt                                          ; $5961: $76
    and d                                         ; $5962: $A2
    nop                                           ; $5963: $00
    add $7F                                       ; $5964: $C6 $7F
    nop                                           ; $5966: $00
    sub l                                         ; $5967: $95
    ld l, [hl]                                    ; $5968: $6E
    nop                                           ; $5969: $00
    ld bc, $0060                                  ; $596A: $01 $60 $00
    ld a, [hl-]                                   ; $596D: $3A
    add hl, sp                                    ; $596E: $39
    nop                                           ; $596F: $00
    jr z, @-$35                                   ; $5970: $28 $C9

jr_039_5972:
    nop                                           ; $5972: $00
    ld bc, $0000                                  ; $5973: $01 $00 $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    rlca                                          ; $5979: $07
    ld e, $00                                     ; $597A: $1E $00
    nop                                           ; $597C: $00

jr_039_597D:
    dec b                                         ; $597D: $05
    add b                                         ; $597E: $80
    nop                                           ; $597F: $00
    nop                                           ; $5980: $00
    ld [bc], a                                    ; $5981: $02
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    ld bc, $597B                                  ; $5984: $01 $7B $59
    scf                                           ; $5987: $37
    nop                                           ; $5988: $00
    inc [hl]                                      ; $5989: $34
    daa                                           ; $598A: $27
    nop                                           ; $598B: $00
    ld a, $CB                                     ; $598C: $3E $CB
    nop                                           ; $598E: $00
    ld bc, $0000                                  ; $598F: $01 $00 $00
    nop                                           ; $5992: $00
    ld h, h                                       ; $5993: $64
    nop                                           ; $5994: $00
    ld [hl], $C8                                  ; $5995: $36 $C8
    nop                                           ; $5997: $00
    xor d                                         ; $5998: $AA
    adc c                                         ; $5999: $89
    nop                                           ; $599A: $00
    cp a                                          ; $599B: $BF
    halt                                          ; $599C: $76
    nop                                           ; $599D: $00
    sbc d                                         ; $599E: $9A
    ld l, [hl]                                    ; $599F: $6E
    nop                                           ; $59A0: $00
    ld a, [hl+]                                   ; $59A1: $2A
    ld [hl], $00                                  ; $59A2: $36 $00
    add hl, hl                                    ; $59A4: $29
    ld h, h                                       ; $59A5: $64
    nop                                           ; $59A6: $00
    jr z, jr_039_5972                             ; $59A7: $28 $C9

    nop                                           ; $59A9: $00
    ld bc, $0000                                  ; $59AA: $01 $00 $00
    nop                                           ; $59AD: $00
    ld bc, $0100                                  ; $59AE: $01 $00 $01

jr_039_59B1:
    ld bc, $F400                                  ; $59B1: $01 $00 $F4
    ld b, c                                       ; $59B4: $41
    nop                                           ; $59B5: $00
    jr z, jr_039_5A2F                             ; $59B6: $28 $77

    nop                                           ; $59B8: $00
    push af                                       ; $59B9: $F5
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    nop                                           ; $59BD: $00
    nop                                           ; $59BE: $00
    rlca                                          ; $59BF: $07
    ld e, $00                                     ; $59C0: $1E $00
    nop                                           ; $59C2: $00
    dec b                                         ; $59C3: $05
    add b                                         ; $59C4: $80
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
    ld [bc], a                                    ; $59C7: $02
    nop                                           ; $59C8: $00
    nop                                           ; $59C9: $00
    ld bc, $59C1                                  ; $59CA: $01 $C1 $59
    ld e, a                                       ; $59CD: $5F
    nop                                           ; $59CE: $00
    jr z, jr_039_59B1                             ; $59CF: $28 $E0

    nop                                           ; $59D1: $00
    ret                                           ; $59D2: $C9


    nop                                           ; $59D3: $00
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
    ld c, c                                       ; $59D6: $49
    nop                                           ; $59D7: $00
    ld l, a                                       ; $59D8: $6F
    ld b, e                                       ; $59D9: $43
    nop                                           ; $59DA: $00
    dec hl                                        ; $59DB: $2B
    ret z                                         ; $59DC: $C8

    nop                                           ; $59DD: $00
    ld c, c                                       ; $59DE: $49
    ld l, b                                       ; $59DF: $68
    nop                                           ; $59E0: $00
    ld l, a                                       ; $59E1: $6F
    ld c, l                                       ; $59E2: $4D
    nop                                           ; $59E3: $00
    dec hl                                        ; $59E4: $2B
    rlc b                                         ; $59E5: $CB $00
    rlc b                                         ; $59E7: $CB $00
    nop                                           ; $59E9: $00
    rlca                                          ; $59EA: $07
    ld e, $00                                     ; $59EB: $1E $00
    nop                                           ; $59ED: $00
    dec b                                         ; $59EE: $05
    add b                                         ; $59EF: $80
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    ld [bc], a                                    ; $59F2: $02
    nop                                           ; $59F3: $00
    nop                                           ; $59F4: $00
    ld bc, $59EC                                  ; $59F5: $01 $EC $59
    ld h, c                                       ; $59F8: $61
    nop                                           ; $59F9: $00
    ld [hl], b                                    ; $59FA: $70
    ld b, e                                       ; $59FB: $43
    nop                                           ; $59FC: $00
    ret z                                         ; $59FD: $C8

    jr z, jr_039_5A00                             ; $59FE: $28 $00

jr_039_5A00:
    ld e, l                                       ; $5A00: $5D
    dec l                                         ; $5A01: $2D
    nop                                           ; $5A02: $00
    add d                                         ; $5A03: $82
    halt                                          ; $5A04: $76
    nop                                           ; $5A05: $00
    sbc d                                         ; $5A06: $9A
    ld l, [hl]                                    ; $5A07: $6E
    nop                                           ; $5A08: $00
    ld bc, $0047                                  ; $5A09: $01 $47 $00
    inc l                                         ; $5A0C: $2C
    ld l, a                                       ; $5A0D: $6F
    nop                                           ; $5A0E: $00
    ld c, l                                       ; $5A0F: $4D
    dec hl                                        ; $5A10: $2B
    nop                                           ; $5A11: $00
    call z, RST_00                                ; $5A12: $CC $00 $00
    nop                                           ; $5A15: $00
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    rlca                                          ; $5A18: $07
    ld e, $00                                     ; $5A19: $1E $00
    nop                                           ; $5A1B: $00
    dec b                                         ; $5A1C: $05
    add b                                         ; $5A1D: $80
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    ld [bc], a                                    ; $5A20: $02
    nop                                           ; $5A21: $00
    nop                                           ; $5A22: $00
    ld bc, $5A1A                                  ; $5A23: $01 $1A $5A
    ld e, l                                       ; $5A26: $5D
    nop                                           ; $5A27: $00
    ld h, $5D                                     ; $5A28: $26 $5D
    nop                                           ; $5A2A: $00
    ld h, $44                                     ; $5A2B: $26 $44
    nop                                           ; $5A2D: $00
    ld c, c                                       ; $5A2E: $49

jr_039_5A2F:
    ret                                           ; $5A2F: $C9


    nop                                           ; $5A30: $00
    ld bc, $0000                                  ; $5A31: $01 $00 $00
    nop                                           ; $5A34: $00
    cpl                                           ; $5A35: $2F
    nop                                           ; $5A36: $00
    ld l, a                                       ; $5A37: $6F
    ld c, c                                       ; $5A38: $49
    nop                                           ; $5A39: $00
    ld h, c                                       ; $5A3A: $61
    ld c, l                                       ; $5A3B: $4D
    nop                                           ; $5A3C: $00
    ld b, h                                       ; $5A3D: $44
    ld l, h                                       ; $5A3E: $6C
    nop                                           ; $5A3F: $00
    jr z, @-$35                                   ; $5A40: $28 $C9

    nop                                           ; $5A42: $00
    ld bc, $0000                                  ; $5A43: $01 $00 $00
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    rlca                                          ; $5A49: $07
    ld e, $00                                     ; $5A4A: $1E $00
    nop                                           ; $5A4C: $00
    dec b                                         ; $5A4D: $05
    add b                                         ; $5A4E: $80
    nop                                           ; $5A4F: $00
    nop                                           ; $5A50: $00
    ld [bc], a                                    ; $5A51: $02
    nop                                           ; $5A52: $00
    nop                                           ; $5A53: $00
    ld bc, $5A4B                                  ; $5A54: $01 $4B $5A
    daa                                           ; $5A57: $27
    nop                                           ; $5A58: $00
    daa                                           ; $5A59: $27
    ld b, h                                       ; $5A5A: $44
    nop                                           ; $5A5B: $00
    ld l, h                                       ; $5A5C: $6C
    jr z, jr_039_5A5F                             ; $5A5D: $28 $00

jr_039_5A5F:
    ret                                           ; $5A5F: $C9


    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    ld c, c                                       ; $5A63: $49
    nop                                           ; $5A64: $00
    dec hl                                        ; $5A65: $2B
    ld c, c                                       ; $5A66: $49
    nop                                           ; $5A67: $00
    dec hl                                        ; $5A68: $2B
    ld c, l                                       ; $5A69: $4D
    nop                                           ; $5A6A: $00
    jr c, jr_039_5A94                             ; $5A6B: $38 $27

    nop                                           ; $5A6D: $00
    jr c, jr_039_5A9C                             ; $5A6E: $38 $2C

    nop                                           ; $5A70: $00
    ld b, h                                       ; $5A71: $44
    ret                                           ; $5A72: $C9


    nop                                           ; $5A73: $00
    ld bc, $0000                                  ; $5A74: $01 $00 $00
    rlca                                          ; $5A77: $07
    ld e, $00                                     ; $5A78: $1E $00
    nop                                           ; $5A7A: $00
    dec b                                         ; $5A7B: $05
    add b                                         ; $5A7C: $80
    nop                                           ; $5A7D: $00
    nop                                           ; $5A7E: $00
    ld [bc], a                                    ; $5A7F: $02
    nop                                           ; $5A80: $00
    nop                                           ; $5A81: $00
    ld bc, $5A79                                  ; $5A82: $01 $79 $5A
    ld e, l                                       ; $5A85: $5D
    nop                                           ; $5A86: $00
    dec [hl]                                      ; $5A87: $35
    dec hl                                        ; $5A88: $2B
    nop                                           ; $5A89: $00
    ldh [$FFC8], a                                ; $5A8A: $E0 $C8
    nop                                           ; $5A8C: $00
    ld bc, $0000                                  ; $5A8D: $01 $00 $00
    nop                                           ; $5A90: $00
    cpl                                           ; $5A91: $2F
    nop                                           ; $5A92: $00
    cpl                                           ; $5A93: $2F

jr_039_5A94:
    ld e, l                                       ; $5A94: $5D
    nop                                           ; $5A95: $00
    ld b, a                                       ; $5A96: $47
    ld b, a                                       ; $5A97: $47
    nop                                           ; $5A98: $00
    inc l                                         ; $5A99: $2C
    ld l, d                                       ; $5A9A: $6A
    nop                                           ; $5A9B: $00

jr_039_5A9C:
    ld b, e                                       ; $5A9C: $43
    ld c, [hl]                                    ; $5A9D: $4E
    nop                                           ; $5A9E: $00
    ldh [$FFE0], a                                ; $5A9F: $E0 $E0
    nop                                           ; $5AA1: $00
    ret                                           ; $5AA2: $C9


    cpl                                           ; $5AA3: $2F
    nop                                           ; $5AA4: $00
    ld l, e                                       ; $5AA5: $6B
    jr nc, jr_039_5AA8                            ; $5AA6: $30 $00

jr_039_5AA8:
    xor d                                         ; $5AA8: $AA
    adc c                                         ; $5AA9: $89
    nop                                           ; $5AAA: $00
    cp a                                          ; $5AAB: $BF
    halt                                          ; $5AAC: $76
    nop                                           ; $5AAD: $00
    sbc d                                         ; $5AAE: $9A
    ld b, h                                       ; $5AAF: $44
    nop                                           ; $5AB0: $00
    ret                                           ; $5AB1: $C9


    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    ld bc, $0100                                  ; $5AB5: $01 $00 $01
    ld bc, $F400                                  ; $5AB8: $01 $00 $F4
    ld b, c                                       ; $5ABB: $41
    nop                                           ; $5ABC: $00
    jr z, jr_039_5B36                             ; $5ABD: $28 $77

    nop                                           ; $5ABF: $00
    push af                                       ; $5AC0: $F5
    nop                                           ; $5AC1: $00
    nop                                           ; $5AC2: $00
    nop                                           ; $5AC3: $00
    nop                                           ; $5AC4: $00
    nop                                           ; $5AC5: $00
    rlca                                          ; $5AC6: $07
    ld e, $00                                     ; $5AC7: $1E $00
    nop                                           ; $5AC9: $00
    dec b                                         ; $5ACA: $05
    add b                                         ; $5ACB: $80
    nop                                           ; $5ACC: $00
    nop                                           ; $5ACD: $00
    ld [bc], a                                    ; $5ACE: $02
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    ld bc, $5AC8                                  ; $5AD1: $01 $C8 $5A
    ldh [rP1], a                                  ; $5AD4: $E0 $00
    ldh [$FFE0], a                                ; $5AD6: $E0 $E0
    nop                                           ; $5AD8: $00
    ldh [$FFE0], a                                ; $5AD9: $E0 $E0
    nop                                           ; $5ADB: $00
    ret                                           ; $5ADC: $C9


    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    rlca                                          ; $5AE2: $07
    ld e, $00                                     ; $5AE3: $1E $00
    nop                                           ; $5AE5: $00
    dec b                                         ; $5AE6: $05
    add b                                         ; $5AE7: $80
    nop                                           ; $5AE8: $00
    nop                                           ; $5AE9: $00
    ld [bc], a                                    ; $5AEA: $02
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00
    ld bc, $5AE4                                  ; $5AED: $01 $E4 $5A
    jr z, jr_039_5AF2                             ; $5AF0: $28 $00

jr_039_5AF2:
    ld e, a                                       ; $5AF2: $5F
    ret                                           ; $5AF3: $C9


    nop                                           ; $5AF4: $00
    ld bc, $0000                                  ; $5AF5: $01 $00 $00
    nop                                           ; $5AF8: $00
    ld h, $00                                     ; $5AF9: $26 $00
    ld e, l                                       ; $5AFB: $5D
    ld l, c                                       ; $5AFC: $69
    nop                                           ; $5AFD: $00
    ret z                                         ; $5AFE: $C8

    ld h, h                                       ; $5AFF: $64
    nop                                           ; $5B00: $00
    ld l, h                                       ; $5B01: $6C
    ld [hl], $00                                  ; $5B02: $36 $00
    dec l                                         ; $5B04: $2D
    ld c, c                                       ; $5B05: $49
    nop                                           ; $5B06: $00
    daa                                           ; $5B07: $27
    ret                                           ; $5B08: $C9


    nop                                           ; $5B09: $00
    ld bc, $0000                                  ; $5B0A: $01 $00 $00
    rlca                                          ; $5B0D: $07
    ld e, $00                                     ; $5B0E: $1E $00
    nop                                           ; $5B10: $00
    dec b                                         ; $5B11: $05
    add b                                         ; $5B12: $80
    nop                                           ; $5B13: $00
    nop                                           ; $5B14: $00
    ld [bc], a                                    ; $5B15: $02
    nop                                           ; $5B16: $00
    nop                                           ; $5B17: $00
    ld bc, $5B0F                                  ; $5B18: $01 $0F $5B
    jr z, jr_039_5B1D                             ; $5B1B: $28 $00

jr_039_5B1D:
    ld e, a                                       ; $5B1D: $5F
    ret                                           ; $5B1E: $C9


    nop                                           ; $5B1F: $00
    ld bc, $0000                                  ; $5B20: $01 $00 $00
    nop                                           ; $5B23: $00
    ld c, c                                       ; $5B24: $49
    nop                                           ; $5B25: $00
    dec hl                                        ; $5B26: $2B
    ld c, c                                       ; $5B27: $49
    nop                                           ; $5B28: $00
    dec hl                                        ; $5B29: $2B
    ld b, a                                       ; $5B2A: $47
    nop                                           ; $5B2B: $00
    ld h, $6A                                     ; $5B2C: $26 $6A
    nop                                           ; $5B2E: $00
    ret                                           ; $5B2F: $C9


    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    rlca                                          ; $5B35: $07

jr_039_5B36:
    ld e, $00                                     ; $5B36: $1E $00
    nop                                           ; $5B38: $00
    dec b                                         ; $5B39: $05
    add b                                         ; $5B3A: $80
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    ld [bc], a                                    ; $5B3D: $02
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    ld bc, $5B37                                  ; $5B40: $01 $37 $5B
    jr z, jr_039_5B45                             ; $5B43: $28 $00

jr_039_5B45:
    ld e, a                                       ; $5B45: $5F
    ret                                           ; $5B46: $C9


    nop                                           ; $5B47: $00
    ld bc, $0000                                  ; $5B48: $01 $00 $00
    nop                                           ; $5B4B: $00
    ld b, e                                       ; $5B4C: $43
    nop                                           ; $5B4D: $00
    ld b, d                                       ; $5B4E: $42
    ld h, c                                       ; $5B4F: $61
    nop                                           ; $5B50: $00
    ld h, h                                       ; $5B51: $64
    ld l, h                                       ; $5B52: $6C
    nop                                           ; $5B53: $00
    ld [hl], $27                                  ; $5B54: $36 $27
    nop                                           ; $5B56: $00
    ret                                           ; $5B57: $C9


    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    nop                                           ; $5B5A: $00
    nop                                           ; $5B5B: $00

jr_039_5B5C:
    nop                                           ; $5B5C: $00
    rlca                                          ; $5B5D: $07
    ld e, $00                                     ; $5B5E: $1E $00
    nop                                           ; $5B60: $00
    dec b                                         ; $5B61: $05
    add b                                         ; $5B62: $80
    nop                                           ; $5B63: $00
    nop                                           ; $5B64: $00
    ld [bc], a                                    ; $5B65: $02
    nop                                           ; $5B66: $00
    nop                                           ; $5B67: $00
    ld bc, $5B5F                                  ; $5B68: $01 $5F $5B
    jr z, jr_039_5B6D                             ; $5B6B: $28 $00

jr_039_5B6D:
    ld e, a                                       ; $5B6D: $5F
    ret z                                         ; $5B6E: $C8

    nop                                           ; $5B6F: $00
    scf                                           ; $5B70: $37
    ld d, e                                       ; $5B71: $53
    nop                                           ; $5B72: $00
    ld l, b                                       ; $5B73: $68
    ld [hl], $00                                  ; $5B74: $36 $00
    daa                                           ; $5B76: $27
    ret                                           ; $5B77: $C9


    nop                                           ; $5B78: $00
    ld bc, $0000                                  ; $5B79: $01 $00 $00
    nop                                           ; $5B7C: $00
    xor d                                         ; $5B7D: $AA
    nop                                           ; $5B7E: $00
    adc c                                         ; $5B7F: $89
    cp a                                          ; $5B80: $BF
    nop                                           ; $5B81: $00
    halt                                          ; $5B82: $76
    sbc d                                         ; $5B83: $9A
    nop                                           ; $5B84: $00
    ld l, [hl]                                    ; $5B85: $6E
    ld a, [hl+]                                   ; $5B86: $2A
    nop                                           ; $5B87: $00
    ld [hl], $29                                  ; $5B88: $36 $29
    nop                                           ; $5B8A: $00
    ld b, d                                       ; $5B8B: $42
    ld h, $00                                     ; $5B8C: $26 $00
    inc sp                                        ; $5B8E: $33
    ld h, h                                       ; $5B8F: $64
    nop                                           ; $5B90: $00
    jr z, jr_039_5B5C                             ; $5B91: $28 $C9

    nop                                           ; $5B93: $00
    ld bc, $0000                                  ; $5B94: $01 $00 $00
    nop                                           ; $5B97: $00
    ld bc, $0100                                  ; $5B98: $01 $00 $01
    ld bc, $F400                                  ; $5B9B: $01 $00 $F4
    ld b, c                                       ; $5B9E: $41
    nop                                           ; $5B9F: $00
    jr z, jr_039_5C19                             ; $5BA0: $28 $77

    nop                                           ; $5BA2: $00
    push af                                       ; $5BA3: $F5
    nop                                           ; $5BA4: $00
    nop                                           ; $5BA5: $00
    nop                                           ; $5BA6: $00
    nop                                           ; $5BA7: $00
    nop                                           ; $5BA8: $00
    rlca                                          ; $5BA9: $07
    ld e, $00                                     ; $5BAA: $1E $00
    nop                                           ; $5BAC: $00
    dec b                                         ; $5BAD: $05
    add b                                         ; $5BAE: $80
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    ld [bc], a                                    ; $5BB1: $02
    nop                                           ; $5BB2: $00
    nop                                           ; $5BB3: $00
    ld bc, $5BAB                                  ; $5BB4: $01 $AB $5B
    sub [hl]                                      ; $5BB7: $96
    nop                                           ; $5BB8: $00
    or d                                          ; $5BB9: $B2
    ld c, c                                       ; $5BBA: $49
    nop                                           ; $5BBB: $00
    ld l, a                                       ; $5BBC: $6F
    ld b, h                                       ; $5BBD: $44
    nop                                           ; $5BBE: $00
    ld a, $C9                                     ; $5BBF: $3E $C9
    nop                                           ; $5BC1: $00
    ld bc, $0000                                  ; $5BC2: $01 $00 $00
    nop                                           ; $5BC5: $00
    scf                                           ; $5BC6: $37
    nop                                           ; $5BC7: $00
    inc [hl]                                      ; $5BC8: $34
    dec l                                         ; $5BC9: $2D
    nop                                           ; $5BCA: $00
    daa                                           ; $5BCB: $27
    ccf                                           ; $5BCC: $3F
    nop                                           ; $5BCD: $00
    daa                                           ; $5BCE: $27
    ld l, a                                       ; $5BCF: $6F
    nop                                           ; $5BD0: $00
    ld b, h                                       ; $5BD1: $44
    ld a, $00                                     ; $5BD2: $3E $00
    ret                                           ; $5BD4: $C9


    nop                                           ; $5BD5: $00
    nop                                           ; $5BD6: $00
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    rlca                                          ; $5BDA: $07
    ld e, $00                                     ; $5BDB: $1E $00
    nop                                           ; $5BDD: $00
    dec b                                         ; $5BDE: $05
    add b                                         ; $5BDF: $80
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    ld [bc], a                                    ; $5BE2: $02
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    ld bc, $5BDC                                  ; $5BE5: $01 $DC $5B
    daa                                           ; $5BE8: $27
    nop                                           ; $5BE9: $00
    ccf                                           ; $5BEA: $3F
    daa                                           ; $5BEB: $27
    nop                                           ; $5BEC: $00
    ld l, a                                       ; $5BED: $6F
    ld b, h                                       ; $5BEE: $44
    nop                                           ; $5BEF: $00
    ld a, $C9                                     ; $5BF0: $3E $C9
    nop                                           ; $5BF2: $00
    ld bc, $0000                                  ; $5BF3: $01 $00 $00
    nop                                           ; $5BF6: $00
    ld h, c                                       ; $5BF7: $61
    nop                                           ; $5BF8: $00
    ld [hl], b                                    ; $5BF9: $70
    ld b, e                                       ; $5BFA: $43
    nop                                           ; $5BFB: $00
    add d                                         ; $5BFC: $82
    halt                                          ; $5BFD: $76
    nop                                           ; $5BFE: $00
    sbc d                                         ; $5BFF: $9A
    scf                                           ; $5C00: $37
    nop                                           ; $5C01: $00
    ld l, d                                       ; $5C02: $6A
    ld l, a                                       ; $5C03: $6F
    nop                                           ; $5C04: $00
    ld b, h                                       ; $5C05: $44
    ld a, $00                                     ; $5C06: $3E $00
    ret                                           ; $5C08: $C9


    nop                                           ; $5C09: $00
    nop                                           ; $5C0A: $00
    rlca                                          ; $5C0B: $07
    ld e, $00                                     ; $5C0C: $1E $00
    nop                                           ; $5C0E: $00
    dec b                                         ; $5C0F: $05
    add b                                         ; $5C10: $80
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    ld [bc], a                                    ; $5C13: $02
    nop                                           ; $5C14: $00
    nop                                           ; $5C15: $00
    ld bc, $5C0D                                  ; $5C16: $01 $0D $5C

jr_039_5C19:
    ld e, l                                       ; $5C19: $5D
    nop                                           ; $5C1A: $00
    ld h, $5D                                     ; $5C1B: $26 $5D
    nop                                           ; $5C1D: $00
    ld h, $49                                     ; $5C1E: $26 $49
    nop                                           ; $5C20: $00
    ld l, a                                       ; $5C21: $6F
    ld b, h                                       ; $5C22: $44
    nop                                           ; $5C23: $00
    ld a, $C9                                     ; $5C24: $3E $C9
    nop                                           ; $5C26: $00
    ld bc, $0000                                  ; $5C27: $01 $00 $00
    nop                                           ; $5C2A: $00
    ld h, c                                       ; $5C2B: $61
    nop                                           ; $5C2C: $00
    ld [hl], b                                    ; $5C2D: $70
    ld b, e                                       ; $5C2E: $43
    nop                                           ; $5C2F: $00
    dec hl                                        ; $5C30: $2B
    ld l, a                                       ; $5C31: $6F
    nop                                           ; $5C32: $00
    ld d, e                                       ; $5C33: $53
    ld l, d                                       ; $5C34: $6A
    nop                                           ; $5C35: $00
    ld l, a                                       ; $5C36: $6F
    ld b, h                                       ; $5C37: $44
    nop                                           ; $5C38: $00
    ld a, $C9                                     ; $5C39: $3E $C9
    nop                                           ; $5C3B: $00
    ld bc, $0000                                  ; $5C3C: $01 $00 $00
    rlca                                          ; $5C3F: $07
    ld e, $00                                     ; $5C40: $1E $00
    nop                                           ; $5C42: $00
    dec b                                         ; $5C43: $05
    add b                                         ; $5C44: $80
    nop                                           ; $5C45: $00
    nop                                           ; $5C46: $00
    ld [bc], a                                    ; $5C47: $02
    nop                                           ; $5C48: $00
    nop                                           ; $5C49: $00
    ld bc, $5C41                                  ; $5C4A: $01 $41 $5C
    ld c, c                                       ; $5C4D: $49
    nop                                           ; $5C4E: $00
    dec hl                                        ; $5C4F: $2B
    ld c, c                                       ; $5C50: $49
    nop                                           ; $5C51: $00
    dec hl                                        ; $5C52: $2B
    ret z                                         ; $5C53: $C8

    nop                                           ; $5C54: $00
    jr z, jr_039_5CB4                             ; $5C55: $28 $5D

    nop                                           ; $5C57: $00
    daa                                           ; $5C58: $27
    ld l, a                                       ; $5C59: $6F
    nop                                           ; $5C5A: $00
    ld b, h                                       ; $5C5B: $44
    ld a, $00                                     ; $5C5C: $3E $00
    ret                                           ; $5C5E: $C9


    ld h, h                                       ; $5C5F: $64
    nop                                           ; $5C60: $00
    dec l                                         ; $5C61: $2D
    ld h, d                                       ; $5C62: $62
    nop                                           ; $5C63: $00
    ld [hl], b                                    ; $5C64: $70
    ccf                                           ; $5C65: $3F
    nop                                           ; $5C66: $00
    ld c, c                                       ; $5C67: $49
    ret                                           ; $5C68: $C9


    nop                                           ; $5C69: $00
    ld bc, $0000                                  ; $5C6A: $01 $00 $00
    nop                                           ; $5C6D: $00
    nop                                           ; $5C6E: $00
    nop                                           ; $5C6F: $00
    rlca                                          ; $5C70: $07
    ld e, $00                                     ; $5C71: $1E $00
    nop                                           ; $5C73: $00
    dec b                                         ; $5C74: $05
    add b                                         ; $5C75: $80
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    ld [bc], a                                    ; $5C78: $02
    nop                                           ; $5C79: $00
    nop                                           ; $5C7A: $00
    ld bc, $5C72                                  ; $5C7B: $01 $72 $5C
    scf                                           ; $5C7E: $37
    nop                                           ; $5C7F: $00
    ret z                                         ; $5C80: $C8

    scf                                           ; $5C81: $37
    nop                                           ; $5C82: $00
    inc [hl]                                      ; $5C83: $34
    daa                                           ; $5C84: $27
    nop                                           ; $5C85: $00
    ld l, a                                       ; $5C86: $6F
    ld b, h                                       ; $5C87: $44
    nop                                           ; $5C88: $00
    ld a, $CB                                     ; $5C89: $3E $CB
    nop                                           ; $5C8B: $00
    ld bc, $0000                                  ; $5C8C: $01 $00 $00
    nop                                           ; $5C8F: $00
    scf                                           ; $5C90: $37
    nop                                           ; $5C91: $00
    inc [hl]                                      ; $5C92: $34
    daa                                           ; $5C93: $27
    nop                                           ; $5C94: $00
    dec hl                                        ; $5C95: $2B
    ld l, b                                       ; $5C96: $68
    nop                                           ; $5C97: $00
    ret z                                         ; $5C98: $C8

    xor d                                         ; $5C99: $AA
    nop                                           ; $5C9A: $00
    adc c                                         ; $5C9B: $89
    cp a                                          ; $5C9C: $BF
    nop                                           ; $5C9D: $00
    halt                                          ; $5C9E: $76
    sbc d                                         ; $5C9F: $9A
    nop                                           ; $5CA0: $00
    ld l, [hl]                                    ; $5CA1: $6E
    ld a, [hl+]                                   ; $5CA2: $2A
    nop                                           ; $5CA3: $00
    ld [hl], $29                                  ; $5CA4: $36 $29
    nop                                           ; $5CA6: $00
    ld b, d                                       ; $5CA7: $42
    ld h, d                                       ; $5CA8: $62
    nop                                           ; $5CA9: $00
    ld l, d                                       ; $5CAA: $6A
    ld l, a                                       ; $5CAB: $6F
    nop                                           ; $5CAC: $00
    ld b, h                                       ; $5CAD: $44
    ld a, $00                                     ; $5CAE: $3E $00
    ret                                           ; $5CB0: $C9


    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
    nop                                           ; $5CB3: $00

jr_039_5CB4:
    ld bc, $0100                                  ; $5CB4: $01 $00 $01
    ld bc, $F400                                  ; $5CB7: $01 $00 $F4
    ld b, c                                       ; $5CBA: $41
    nop                                           ; $5CBB: $00
    jr z, @+$79                                   ; $5CBC: $28 $77

    nop                                           ; $5CBE: $00
    push af                                       ; $5CBF: $F5
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    dec b                                         ; $5CC5: $05
    add b                                         ; $5CC6: $80
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    ld [bc], a                                    ; $5CC9: $02
    nop                                           ; $5CCA: $00
    nop                                           ; $5CCB: $00
    ld bc, $5CC3                                  ; $5CCC: $01 $C3 $5C
    daa                                           ; $5CCF: $27
    nop                                           ; $5CD0: $00
    ld b, d                                       ; $5CD1: $42
    ld b, d                                       ; $5CD2: $42
    nop                                           ; $5CD3: $00
    ld b, d                                       ; $5CD4: $42
    ld b, d                                       ; $5CD5: $42
    nop                                           ; $5CD6: $00
    ret                                           ; $5CD7: $C9


    nop                                           ; $5CD8: $00
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    dec a                                         ; $5CDB: $3D
    nop                                           ; $5CDC: $00
    ld l, a                                       ; $5CDD: $6F
    dec a                                         ; $5CDE: $3D
    nop                                           ; $5CDF: $00
    ld l, a                                       ; $5CE0: $6F
    sub [hl]                                      ; $5CE1: $96
    nop                                           ; $5CE2: $00
    or d                                          ; $5CE3: $B2
    dec sp                                        ; $5CE4: $3B
    nop                                           ; $5CE5: $00
    ld h, l                                       ; $5CE6: $65
    ld [hl], a                                    ; $5CE7: $77
    nop                                           ; $5CE8: $00
    ld l, a                                       ; $5CE9: $6F
    ret                                           ; $5CEA: $C9


    nop                                           ; $5CEB: $00
    ld bc, $0000                                  ; $5CEC: $01 $00 $00
    rlca                                          ; $5CEF: $07
    ld e, $00                                     ; $5CF0: $1E $00
    nop                                           ; $5CF2: $00
    dec b                                         ; $5CF3: $05
    add b                                         ; $5CF4: $80
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    ld [bc], a                                    ; $5CF7: $02
    nop                                           ; $5CF8: $00
    nop                                           ; $5CF9: $00
    ld bc, $5CF1                                  ; $5CFA: $01 $F1 $5C
    ld h, c                                       ; $5CFD: $61
    nop                                           ; $5CFE: $00
    ld [hl], b                                    ; $5CFF: $70
    ld b, e                                       ; $5D00: $43
    nop                                           ; $5D01: $00
    jr z, jr_039_5D61                             ; $5D02: $28 $5D

    nop                                           ; $5D04: $00
    dec l                                         ; $5D05: $2D
    add d                                         ; $5D06: $82
    nop                                           ; $5D07: $00
    halt                                          ; $5D08: $76
    sbc d                                         ; $5D09: $9A
    nop                                           ; $5D0A: $00
    ld [hl], $42                                  ; $5D0B: $36 $42
    nop                                           ; $5D0D: $00
    dec l                                         ; $5D0E: $2D
    ld l, e                                       ; $5D0F: $6B
    nop                                           ; $5D10: $00
    ld h, h                                       ; $5D11: $64
    ld [hl], a                                    ; $5D12: $77
    nop                                           ; $5D13: $00
    ret                                           ; $5D14: $C9


    nop                                           ; $5D15: $00
    nop                                           ; $5D16: $00
    nop                                           ; $5D17: $00
    add b                                         ; $5D18: $80
    nop                                           ; $5D19: $00
    add d                                         ; $5D1A: $82
    ld b, h                                       ; $5D1B: $44
    nop                                           ; $5D1C: $00
    ld l, b                                       ; $5D1D: $68
    ld l, $00                                     ; $5D1E: $2E $00
    ld b, h                                       ; $5D20: $44
    dec a                                         ; $5D21: $3D
    nop                                           ; $5D22: $00
    ret                                           ; $5D23: $C9


    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    rlca                                          ; $5D29: $07
    ld e, $00                                     ; $5D2A: $1E $00
    nop                                           ; $5D2C: $00
    dec b                                         ; $5D2D: $05
    add b                                         ; $5D2E: $80
    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    ld [bc], a                                    ; $5D31: $02
    nop                                           ; $5D32: $00
    nop                                           ; $5D33: $00
    ld bc, $5D2B                                  ; $5D34: $01 $2B $5D
    ld c, c                                       ; $5D37: $49
    nop                                           ; $5D38: $00
    dec hl                                        ; $5D39: $2B
    ld c, c                                       ; $5D3A: $49
    nop                                           ; $5D3B: $00
    dec hl                                        ; $5D3C: $2B
    ret z                                         ; $5D3D: $C8

    nop                                           ; $5D3E: $00
    daa                                           ; $5D3F: $27
    daa                                           ; $5D40: $27
    nop                                           ; $5D41: $00
    ld c, c                                       ; $5D42: $49
    ret                                           ; $5D43: $C9


    nop                                           ; $5D44: $00
    ld bc, $0000                                  ; $5D45: $01 $00 $00
    nop                                           ; $5D48: $00
    ld b, a                                       ; $5D49: $47
    nop                                           ; $5D4A: $00
    ld h, c                                       ; $5D4B: $61
    ret z                                         ; $5D4C: $C8

    nop                                           ; $5D4D: $00
    ld h, c                                       ; $5D4E: $61
    ld [hl], b                                    ; $5D4F: $70
    nop                                           ; $5D50: $00
    ld b, e                                       ; $5D51: $43
    daa                                           ; $5D52: $27
    nop                                           ; $5D53: $00
    ld l, $6A                                     ; $5D54: $2E $6A
    nop                                           ; $5D56: $00
    dec a                                         ; $5D57: $3D
    ret                                           ; $5D58: $C9


    nop                                           ; $5D59: $00
    ld bc, $0000                                  ; $5D5A: $01 $00 $00
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    rlca                                          ; $5D60: $07

jr_039_5D61:
    ld e, $00                                     ; $5D61: $1E $00
    nop                                           ; $5D63: $00
    dec b                                         ; $5D64: $05
    add b                                         ; $5D65: $80
    nop                                           ; $5D66: $00
    nop                                           ; $5D67: $00
    ld [bc], a                                    ; $5D68: $02
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    ld bc, $5D62                                  ; $5D6B: $01 $62 $5D
    ld h, d                                       ; $5D6E: $62
    nop                                           ; $5D6F: $00
    ld l, d                                       ; $5D70: $6A
    dec sp                                        ; $5D71: $3B
    nop                                           ; $5D72: $00
    ld h, l                                       ; $5D73: $65
    ld l, a                                       ; $5D74: $6F
    nop                                           ; $5D75: $00
    ret                                           ; $5D76: $C9


    nop                                           ; $5D77: $00
    nop                                           ; $5D78: $00
    nop                                           ; $5D79: $00
    daa                                           ; $5D7A: $27
    nop                                           ; $5D7B: $00
    daa                                           ; $5D7C: $27
    ld b, b                                       ; $5D7D: $40
    nop                                           ; $5D7E: $00
    ld h, a                                       ; $5D7F: $67
    jr z, jr_039_5D82                             ; $5D80: $28 $00

jr_039_5D82:
    ld [hl], $44                                  ; $5D82: $36 $44
    nop                                           ; $5D84: $00
    dec a                                         ; $5D85: $3D
    rlc b                                         ; $5D86: $CB $00
    ld bc, $0000                                  ; $5D88: $01 $00 $00
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    nop                                           ; $5D8D: $00
    rlca                                          ; $5D8E: $07
    ld e, $00                                     ; $5D8F: $1E $00
    nop                                           ; $5D91: $00
    dec b                                         ; $5D92: $05
    add b                                         ; $5D93: $80
    nop                                           ; $5D94: $00
    nop                                           ; $5D95: $00
    ld [bc], a                                    ; $5D96: $02
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
    ld bc, $5D90                                  ; $5D99: $01 $90 $5D
    scf                                           ; $5D9C: $37
    nop                                           ; $5D9D: $00
    inc [hl]                                      ; $5D9E: $34
    daa                                           ; $5D9F: $27
    nop                                           ; $5DA0: $00
    dec sp                                        ; $5DA1: $3B
    ld h, l                                       ; $5DA2: $65
    nop                                           ; $5DA3: $00
    ld l, a                                       ; $5DA4: $6F
    rlc b                                         ; $5DA5: $CB $00
    ld bc, $0000                                  ; $5DA7: $01 $00 $00
    nop                                           ; $5DAA: $00
    xor d                                         ; $5DAB: $AA
    nop                                           ; $5DAC: $00
    adc c                                         ; $5DAD: $89
    cp a                                          ; $5DAE: $BF
    nop                                           ; $5DAF: $00
    halt                                          ; $5DB0: $76
    sbc d                                         ; $5DB1: $9A
    nop                                           ; $5DB2: $00
    ld l, [hl]                                    ; $5DB3: $6E
    ld a, [hl+]                                   ; $5DB4: $2A
    nop                                           ; $5DB5: $00
    ld [hl], $29                                  ; $5DB6: $36 $29
    nop                                           ; $5DB8: $00
    ld l, d                                       ; $5DB9: $6A
    dec a                                         ; $5DBA: $3D
    nop                                           ; $5DBB: $00
    ret                                           ; $5DBC: $C9


    ld bc, $0100                                  ; $5DBD: $01 $00 $01
    ld bc, $F400                                  ; $5DC0: $01 $00 $F4
    ld b, c                                       ; $5DC3: $41
    nop                                           ; $5DC4: $00
    jr z, jr_039_5E3E                             ; $5DC5: $28 $77

    nop                                           ; $5DC7: $00
    push af                                       ; $5DC8: $F5
    nop                                           ; $5DC9: $00
    nop                                           ; $5DCA: $00
    nop                                           ; $5DCB: $00
    nop                                           ; $5DCC: $00
    nop                                           ; $5DCD: $00
    rlca                                          ; $5DCE: $07
    ld e, $00                                     ; $5DCF: $1E $00
    nop                                           ; $5DD1: $00
    dec b                                         ; $5DD2: $05
    add b                                         ; $5DD3: $80
    nop                                           ; $5DD4: $00
    nop                                           ; $5DD5: $00
    ld [bc], a                                    ; $5DD6: $02
    nop                                           ; $5DD7: $00
    nop                                           ; $5DD8: $00
    ld bc, $5DD0                                  ; $5DD9: $01 $D0 $5D
    inc l                                         ; $5DDC: $2C
    nop                                           ; $5DDD: $00
    dec [hl]                                      ; $5DDE: $35
    ld e, l                                       ; $5DDF: $5D
    nop                                           ; $5DE0: $00
    ldh [$FFE0], a                                ; $5DE1: $E0 $E0
    nop                                           ; $5DE3: $00
    ld bc, $0000                                  ; $5DE4: $01 $00 $00
    nop                                           ; $5DE7: $00
    ld h, d                                       ; $5DE8: $62
    nop                                           ; $5DE9: $00
    ld l, d                                       ; $5DEA: $6A
    inc l                                         ; $5DEB: $2C
    nop                                           ; $5DEC: $00
    jr nc, jr_039_5E15                            ; $5DED: $30 $26

    nop                                           ; $5DEF: $00
    ld l, d                                       ; $5DF0: $6A
    ld c, l                                       ; $5DF1: $4D
    nop                                           ; $5DF2: $00
    dec hl                                        ; $5DF3: $2B
    rlc b                                         ; $5DF4: $CB $00
    ld bc, $0000                                  ; $5DF6: $01 $00 $00
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00
    nop                                           ; $5DFB: $00
    rlca                                          ; $5DFC: $07
    ldh a, [rP1]                                  ; $5DFD: $F0 $00
    nop                                           ; $5DFF: $00
    dec b                                         ; $5E00: $05
    add b                                         ; $5E01: $80
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    ld [bc], a                                    ; $5E04: $02
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    ld bc, $5DFE                                  ; $5E07: $01 $FE $5D
    ld e, l                                       ; $5E0A: $5D
    nop                                           ; $5E0B: $00
    ld b, h                                       ; $5E0C: $44
    ld e, l                                       ; $5E0D: $5D
    nop                                           ; $5E0E: $00
    ld b, h                                       ; $5E0F: $44
    ld b, h                                       ; $5E10: $44
    nop                                           ; $5E11: $00
    ret                                           ; $5E12: $C9


    nop                                           ; $5E13: $00
    nop                                           ; $5E14: $00

jr_039_5E15:
    nop                                           ; $5E15: $00
    cpl                                           ; $5E16: $2F
    nop                                           ; $5E17: $00
    ld l, a                                       ; $5E18: $6F
    ld c, c                                       ; $5E19: $49
    nop                                           ; $5E1A: $00
    ld h, c                                       ; $5E1B: $61

jr_039_5E1C:
    ld c, l                                       ; $5E1C: $4D
    nop                                           ; $5E1D: $00
    ld b, a                                       ; $5E1E: $47
    ld c, [hl]                                    ; $5E1F: $4E
    nop                                           ; $5E20: $00
    ld h, e                                       ; $5E21: $63
    ld l, d                                       ; $5E22: $6A
    nop                                           ; $5E23: $00
    dec [hl]                                      ; $5E24: $35
    ld l, a                                       ; $5E25: $6F
    nop                                           ; $5E26: $00
    rlc b                                         ; $5E27: $CB $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    rlca                                          ; $5E2D: $07
    ldh a, [rP1]                                  ; $5E2E: $F0 $00
    nop                                           ; $5E30: $00
    dec b                                         ; $5E31: $05
    add b                                         ; $5E32: $80
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    ld [bc], a                                    ; $5E35: $02
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    ld bc, $5E2F                                  ; $5E38: $01 $2F $5E
    ld c, c                                       ; $5E3B: $49
    nop                                           ; $5E3C: $00
    ld l, a                                       ; $5E3D: $6F

jr_039_5E3E:
    ld b, e                                       ; $5E3E: $43
    nop                                           ; $5E3F: $00
    dec hl                                        ; $5E40: $2B
    ld c, c                                       ; $5E41: $49
    nop                                           ; $5E42: $00
    ld [hl], b                                    ; $5E43: $70
    ld b, d                                       ; $5E44: $42
    nop                                           ; $5E45: $00
    inc l                                         ; $5E46: $2C
    ccf                                           ; $5E47: $3F
    nop                                           ; $5E48: $00
    ld c, c                                       ; $5E49: $49
    ret                                           ; $5E4A: $C9


    nop                                           ; $5E4B: $00
    ld bc, $0000                                  ; $5E4C: $01 $00 $00
    nop                                           ; $5E4F: $00
    ld b, h                                       ; $5E50: $44
    nop                                           ; $5E51: $00
    jr nc, jr_039_5E1C                            ; $5E52: $30 $C8

    nop                                           ; $5E54: $00
    ld e, l                                       ; $5E55: $5D
    ld b, h                                       ; $5E56: $44
    nop                                           ; $5E57: $00
    ld b, a                                       ; $5E58: $47
    inc l                                         ; $5E59: $2C
    nop                                           ; $5E5A: $00
    ld l, d                                       ; $5E5B: $6A
    ld c, [hl]                                    ; $5E5C: $4E
    nop                                           ; $5E5D: $00
    inc a                                         ; $5E5E: $3C
    ld b, h                                       ; $5E5F: $44
    nop                                           ; $5E60: $00
    ret                                           ; $5E61: $C9


    nop                                           ; $5E62: $00
    nop                                           ; $5E63: $00
    nop                                           ; $5E64: $00
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    rlca                                          ; $5E67: $07
    ldh a, [rP1]                                  ; $5E68: $F0 $00
    nop                                           ; $5E6A: $00
    dec b                                         ; $5E6B: $05
    add b                                         ; $5E6C: $80
    nop                                           ; $5E6D: $00
    nop                                           ; $5E6E: $00
    ld [bc], a                                    ; $5E6F: $02
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    ld bc, $5E69                                  ; $5E72: $01 $69 $5E
    ld d, b                                       ; $5E75: $50
    nop                                           ; $5E76: $00
    ld e, a                                       ; $5E77: $5F
    ret                                           ; $5E78: $C9


    nop                                           ; $5E79: $00
    ld bc, $0000                                  ; $5E7A: $01 $00 $00
    nop                                           ; $5E7D: $00
    dec hl                                        ; $5E7E: $2B
    nop                                           ; $5E7F: $00
    ld c, c                                       ; $5E80: $49
    ld l, c                                       ; $5E81: $69
    nop                                           ; $5E82: $00
    ld b, a                                       ; $5E83: $47
    inc l                                         ; $5E84: $2C
    nop                                           ; $5E85: $00
    ld l, d                                       ; $5E86: $6A
    ld h, h                                       ; $5E87: $64
    nop                                           ; $5E88: $00
    jr z, @+$46                                   ; $5E89: $28 $44

    nop                                           ; $5E8B: $00
    ld c, c                                       ; $5E8C: $49
    ret                                           ; $5E8D: $C9


    nop                                           ; $5E8E: $00
    ld bc, $0000                                  ; $5E8F: $01 $00 $00
    nop                                           ; $5E92: $00
    nop                                           ; $5E93: $00
    nop                                           ; $5E94: $00
    rlca                                          ; $5E95: $07
    ldh a, [rP1]                                  ; $5E96: $F0 $00
    nop                                           ; $5E98: $00
    dec b                                         ; $5E99: $05
    add b                                         ; $5E9A: $80
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    ld [bc], a                                    ; $5E9D: $02
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    ld bc, $5E97                                  ; $5EA0: $01 $97 $5E
    daa                                           ; $5EA3: $27
    nop                                           ; $5EA4: $00
    daa                                           ; $5EA5: $27
    ld b, h                                       ; $5EA6: $44
    nop                                           ; $5EA7: $00
    ld l, h                                       ; $5EA8: $6C
    jr z, jr_039_5EAB                             ; $5EA9: $28 $00

jr_039_5EAB:
    ret                                           ; $5EAB: $C9


    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    xor d                                         ; $5EAF: $AA
    nop                                           ; $5EB0: $00
    adc c                                         ; $5EB1: $89
    cp a                                          ; $5EB2: $BF
    nop                                           ; $5EB3: $00
    halt                                          ; $5EB4: $76
    sbc d                                         ; $5EB5: $9A
    nop                                           ; $5EB6: $00
    ld l, [hl]                                    ; $5EB7: $6E
    ld a, [hl+]                                   ; $5EB8: $2A
    nop                                           ; $5EB9: $00
    ld [hl], $29                                  ; $5EBA: $36 $29
    nop                                           ; $5EBC: $00
    ld b, d                                       ; $5EBD: $42
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    ld h, d                                       ; $5EC1: $62
    nop                                           ; $5EC2: $00
    ld l, h                                       ; $5EC3: $6C
    jr z, jr_039_5EC6                             ; $5EC4: $28 $00

jr_039_5EC6:
    ret                                           ; $5EC6: $C9


    nop                                           ; $5EC7: $00
    nop                                           ; $5EC8: $00
    nop                                           ; $5EC9: $00
    ld bc, $0100                                  ; $5ECA: $01 $00 $01
    ld bc, $F400                                  ; $5ECD: $01 $00 $F4
    ld b, c                                       ; $5ED0: $41
    nop                                           ; $5ED1: $00
    jr z, jr_039_5F4B                             ; $5ED2: $28 $77

    nop                                           ; $5ED4: $00
    push af                                       ; $5ED5: $F5
    nop                                           ; $5ED6: $00
    nop                                           ; $5ED7: $00
    nop                                           ; $5ED8: $00
    nop                                           ; $5ED9: $00
    nop                                           ; $5EDA: $00
    rlca                                          ; $5EDB: $07
    ldh a, [rP1]                                  ; $5EDC: $F0 $00
    nop                                           ; $5EDE: $00
    dec b                                         ; $5EDF: $05
    add b                                         ; $5EE0: $80
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    ld [bc], a                                    ; $5EE3: $02
    nop                                           ; $5EE4: $00
    nop                                           ; $5EE5: $00
    ld bc, $5EDD                                  ; $5EE6: $01 $DD $5E
    jr z, jr_039_5EEB                             ; $5EE9: $28 $00

jr_039_5EEB:
    halt                                          ; $5EEB: $76
    ld l, a                                       ; $5EEC: $6F
    nop                                           ; $5EED: $00
    ret                                           ; $5EEE: $C9


    nop                                           ; $5EEF: $00
    nop                                           ; $5EF0: $00
    nop                                           ; $5EF1: $00
    ld h, c                                       ; $5EF2: $61
    nop                                           ; $5EF3: $00
    ld [hl], b                                    ; $5EF4: $70
    ld b, e                                       ; $5EF5: $43
    nop                                           ; $5EF6: $00
    jr nc, jr_039_5F68                            ; $5EF7: $30 $6F

    nop                                           ; $5EF9: $00
    ld d, e                                       ; $5EFA: $53
    ld [hl], b                                    ; $5EFB: $70
    nop                                           ; $5EFC: $00
    ld b, d                                       ; $5EFD: $42
    dec l                                         ; $5EFE: $2D
    nop                                           ; $5EFF: $00
    ld l, e                                       ; $5F00: $6B
    ret                                           ; $5F01: $C9


    nop                                           ; $5F02: $00
    ld bc, $0000                                  ; $5F03: $01 $00 $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    rlca                                          ; $5F09: $07
    ld e, $00                                     ; $5F0A: $1E $00
    nop                                           ; $5F0C: $00
    dec b                                         ; $5F0D: $05
    add b                                         ; $5F0E: $80
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    ld [bc], a                                    ; $5F11: $02
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    ld bc, $5F0B                                  ; $5F14: $01 $0B $5F
    ld h, c                                       ; $5F17: $61
    nop                                           ; $5F18: $00
    ld [hl], b                                    ; $5F19: $70
    ld b, e                                       ; $5F1A: $43
    nop                                           ; $5F1B: $00
    jr z, jr_039_5F7B                             ; $5F1C: $28 $5D

    nop                                           ; $5F1E: $00
    dec l                                         ; $5F1F: $2D
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    add d                                         ; $5F23: $82
    nop                                           ; $5F24: $00
    halt                                          ; $5F25: $76
    sbc d                                         ; $5F26: $9A
    nop                                           ; $5F27: $00
    ld l, [hl]                                    ; $5F28: $6E
    ld [hl], $00                                  ; $5F29: $36 $00
    ld b, d                                       ; $5F2B: $42
    dec l                                         ; $5F2C: $2D
    nop                                           ; $5F2D: $00
    ld l, e                                       ; $5F2E: $6B
    ret                                           ; $5F2F: $C9


    nop                                           ; $5F30: $00
    ld bc, $0000                                  ; $5F31: $01 $00 $00
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    rlca                                          ; $5F37: $07
    ld e, $00                                     ; $5F38: $1E $00
    nop                                           ; $5F3A: $00
    dec b                                         ; $5F3B: $05
    add b                                         ; $5F3C: $80
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    ld [bc], a                                    ; $5F3F: $02
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    ld bc, $5F39                                  ; $5F42: $01 $39 $5F
    ld c, c                                       ; $5F45: $49
    nop                                           ; $5F46: $00
    dec hl                                        ; $5F47: $2B
    ld c, c                                       ; $5F48: $49
    nop                                           ; $5F49: $00
    dec hl                                        ; $5F4A: $2B

jr_039_5F4B:
    ret z                                         ; $5F4B: $C8

    nop                                           ; $5F4C: $00
    jr z, jr_039_5FAC                             ; $5F4D: $28 $5D

    nop                                           ; $5F4F: $00
    daa                                           ; $5F50: $27
    ld c, c                                       ; $5F51: $49
    nop                                           ; $5F52: $00
    ret                                           ; $5F53: $C9


    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    daa                                           ; $5F57: $27
    nop                                           ; $5F58: $00
    daa                                           ; $5F59: $27
    dec hl                                        ; $5F5A: $2B
    nop                                           ; $5F5B: $00
    ld l, a                                       ; $5F5C: $6F
    dec sp                                        ; $5F5D: $3B

jr_039_5F5E:
    nop                                           ; $5F5E: $00
    ld b, h                                       ; $5F5F: $44
    ret                                           ; $5F60: $C9


    nop                                           ; $5F61: $00
    ld bc, $0000                                  ; $5F62: $01 $00 $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00

jr_039_5F68:
    rlca                                          ; $5F68: $07
    ld e, $00                                     ; $5F69: $1E $00
    nop                                           ; $5F6B: $00
    dec b                                         ; $5F6C: $05
    add b                                         ; $5F6D: $80
    nop                                           ; $5F6E: $00
    nop                                           ; $5F6F: $00
    ld [bc], a                                    ; $5F70: $02
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    ld bc, $5F6A                                  ; $5F73: $01 $6A $5F
    daa                                           ; $5F76: $27
    nop                                           ; $5F77: $00
    daa                                           ; $5F78: $27
    ld a, $00                                     ; $5F79: $3E $00

jr_039_5F7B:
    rlc b                                         ; $5F7B: $CB $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    dec [hl]                                      ; $5F7F: $35
    nop                                           ; $5F80: $00
    ld h, $C8                                     ; $5F81: $26 $C8
    nop                                           ; $5F83: $00
    inc bc                                        ; $5F84: $03
    ld [bc], a                                    ; $5F85: $02
    nop                                           ; $5F86: $00
    ld [bc], a                                    ; $5F87: $02
    ld b, d                                       ; $5F88: $42
    nop                                           ; $5F89: $00
    ld l, a                                       ; $5F8A: $6F
    ld l, [hl]                                    ; $5F8B: $6E
    nop                                           ; $5F8C: $00
    ld bc, $0060                                  ; $5F8D: $01 $60 $00
    ld a, [hl-]                                   ; $5F90: $3A
    add hl, sp                                    ; $5F91: $39
    nop                                           ; $5F92: $00
    jr z, jr_039_5F5E                             ; $5F93: $28 $C9

    nop                                           ; $5F95: $00
    ld bc, $0000                                  ; $5F96: $01 $00 $00
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    nop                                           ; $5F9B: $00
    rlca                                          ; $5F9C: $07
    ld e, $00                                     ; $5F9D: $1E $00
    nop                                           ; $5F9F: $00
    dec b                                         ; $5FA0: $05
    add b                                         ; $5FA1: $80
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    ld [bc], a                                    ; $5FA4: $02
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    ld bc, $5F9E                                  ; $5FA7: $01 $9E $5F
    scf                                           ; $5FAA: $37
    nop                                           ; $5FAB: $00

jr_039_5FAC:
    inc [hl]                                      ; $5FAC: $34
    daa                                           ; $5FAD: $27
    nop                                           ; $5FAE: $00
    ld a, $CB                                     ; $5FAF: $3E $CB
    nop                                           ; $5FB1: $00
    ld bc, $0000                                  ; $5FB2: $01 $00 $00
    nop                                           ; $5FB5: $00
    xor d                                         ; $5FB6: $AA
    nop                                           ; $5FB7: $00
    adc c                                         ; $5FB8: $89
    cp a                                          ; $5FB9: $BF
    nop                                           ; $5FBA: $00
    halt                                          ; $5FBB: $76
    sbc d                                         ; $5FBC: $9A
    nop                                           ; $5FBD: $00
    ld l, [hl]                                    ; $5FBE: $6E
    ld a, [hl+]                                   ; $5FBF: $2A
    nop                                           ; $5FC0: $00
    ld [hl], $29                                  ; $5FC1: $36 $29
    nop                                           ; $5FC3: $00
    ld h, h                                       ; $5FC4: $64
    jr z, jr_039_5FC7                             ; $5FC5: $28 $00

jr_039_5FC7:
    ret                                           ; $5FC7: $C9


    ld bc, $0100                                  ; $5FC8: $01 $00 $01
    ld bc, $F400                                  ; $5FCB: $01 $00 $F4
    ld b, c                                       ; $5FCE: $41
    nop                                           ; $5FCF: $00
    jr z, jr_039_6049                             ; $5FD0: $28 $77

    nop                                           ; $5FD2: $00
    push af                                       ; $5FD3: $F5
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    rlca                                          ; $5FD9: $07
    ld e, $00                                     ; $5FDA: $1E $00
    nop                                           ; $5FDC: $00
    dec b                                         ; $5FDD: $05
    add b                                         ; $5FDE: $80
    nop                                           ; $5FDF: $00
    nop                                           ; $5FE0: $00
    ld [bc], a                                    ; $5FE1: $02
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    ld bc, $5FDB                                  ; $5FE4: $01 $DB $5F
    jr z, jr_039_5FE9                             ; $5FE7: $28 $00

jr_039_5FE9:
    ld [hl], a                                    ; $5FE9: $77
    ld l, a                                       ; $5FEA: $6F
    nop                                           ; $5FEB: $00
    ret                                           ; $5FEC: $C9


    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    nop                                           ; $5FEF: $00
    ld c, c                                       ; $5FF0: $49
    nop                                           ; $5FF1: $00
    ld c, d                                       ; $5FF2: $4A
    jr nc, jr_039_5FF5                            ; $5FF3: $30 $00

jr_039_5FF5:
    ld a, [hl+]                                   ; $5FF5: $2A
    inc l                                         ; $5FF6: $2C
    nop                                           ; $5FF7: $00
    ccf                                           ; $5FF8: $3F
    ld c, l                                       ; $5FF9: $4D
    nop                                           ; $5FFA: $00
    ld b, h                                       ; $5FFB: $44
    call z, Boot                                  ; $5FFC: $CC $00 $01
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    rlca                                          ; $6004: $07
    ld e, $00                                     ; $6005: $1E $00
    nop                                           ; $6007: $00
    dec b                                         ; $6008: $05
    add b                                         ; $6009: $80
    nop                                           ; $600A: $00
    nop                                           ; $600B: $00
    ld [bc], a                                    ; $600C: $02
    nop                                           ; $600D: $00
    nop                                           ; $600E: $00
    ld bc, $6006                                  ; $600F: $01 $06 $60
    ld h, c                                       ; $6012: $61
    nop                                           ; $6013: $00
    ld [hl], b                                    ; $6014: $70
    ld b, e                                       ; $6015: $43
    nop                                           ; $6016: $00
    ld h, c                                       ; $6017: $61
    ld [hl], b                                    ; $6018: $70
    nop                                           ; $6019: $00
    ld b, e                                       ; $601A: $43
    nop                                           ; $601B: $00
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    inc l                                         ; $601E: $2C
    nop                                           ; $601F: $00
    ccf                                           ; $6020: $3F
    add hl, hl                                    ; $6021: $29
    nop                                           ; $6022: $00
    ld l, d                                       ; $6023: $6A
    ld c, l                                       ; $6024: $4D
    nop                                           ; $6025: $00
    ld b, h                                       ; $6026: $44
    rlc b                                         ; $6027: $CB $00
    ld bc, $0000                                  ; $6029: $01 $00 $00
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    rlca                                          ; $602F: $07
    ld e, $00                                     ; $6030: $1E $00
    nop                                           ; $6032: $00
    dec b                                         ; $6033: $05
    add b                                         ; $6034: $80
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    ld [bc], a                                    ; $6037: $02
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    ld bc, $6031                                  ; $603A: $01 $31 $60
    ld h, d                                       ; $603D: $62
    nop                                           ; $603E: $00
    ld [hl], b                                    ; $603F: $70
    ld b, e                                       ; $6040: $43
    nop                                           ; $6041: $00
    ret z                                         ; $6042: $C8

    ld d, b                                       ; $6043: $50
    nop                                           ; $6044: $00
    ld b, c                                       ; $6045: $41
    jr z, jr_039_6048                             ; $6046: $28 $00

jr_039_6048:
    ld b, h                                       ; $6048: $44

jr_039_6049:
    ld c, c                                       ; $6049: $49
    nop                                           ; $604A: $00
    ret                                           ; $604B: $C9


    nop                                           ; $604C: $00
    nop                                           ; $604D: $00
    nop                                           ; $604E: $00
    ld h, c                                       ; $604F: $61
    nop                                           ; $6050: $00
    ld [hl], b                                    ; $6051: $70
    ld b, e                                       ; $6052: $43
    nop                                           ; $6053: $00
    ld b, a                                       ; $6054: $47
    inc l                                         ; $6055: $2C
    nop                                           ; $6056: $00
    ld l, d                                       ; $6057: $6A
    ld c, [hl]                                    ; $6058: $4E
    nop                                           ; $6059: $00
    inc a                                         ; $605A: $3C
    ld b, h                                       ; $605B: $44
    nop                                           ; $605C: $00
    ret                                           ; $605D: $C9


    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    rlca                                          ; $6063: $07
    ld e, $00                                     ; $6064: $1E $00
    nop                                           ; $6066: $00
    dec b                                         ; $6067: $05
    add b                                         ; $6068: $80
    nop                                           ; $6069: $00
    nop                                           ; $606A: $00
    ld [bc], a                                    ; $606B: $02
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    ld bc, $6065                                  ; $606E: $01 $65 $60
    daa                                           ; $6071: $27
    nop                                           ; $6072: $00
    daa                                           ; $6073: $27
    ld b, e                                       ; $6074: $43
    nop                                           ; $6075: $00
    cpl                                           ; $6076: $2F
    ld l, h                                       ; $6077: $6C
    nop                                           ; $6078: $00
    ld e, l                                       ; $6079: $5D
    ld b, a                                       ; $607A: $47
    nop                                           ; $607B: $00
    daa                                           ; $607C: $27
    ld [hl], b                                    ; $607D: $70
    nop                                           ; $607E: $00
    ccf                                           ; $607F: $3F
    ld c, c                                       ; $6080: $49
    nop                                           ; $6081: $00
    ret                                           ; $6082: $C9


    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    ld h, c                                       ; $6086: $61
    nop                                           ; $6087: $00
    jr z, jr_039_60C1                             ; $6088: $28 $37

    nop                                           ; $608A: $00
    cpl                                           ; $608B: $2F
    ld [hl], $00                                  ; $608C: $36 $00
    ld b, h                                       ; $608E: $44
    ret                                           ; $608F: $C9


    nop                                           ; $6090: $00
    ld bc, $0000                                  ; $6091: $01 $00 $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    rlca                                          ; $6097: $07
    ld e, $00                                     ; $6098: $1E $00
    nop                                           ; $609A: $00
    dec b                                         ; $609B: $05
    add b                                         ; $609C: $80
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    ld [bc], a                                    ; $609F: $02
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    ld bc, $6099                                  ; $60A2: $01 $99 $60
    ld c, c                                       ; $60A5: $49
    nop                                           ; $60A6: $00
    dec hl                                        ; $60A7: $2B
    ld c, c                                       ; $60A8: $49
    nop                                           ; $60A9: $00
    dec hl                                        ; $60AA: $2B
    ld b, a                                       ; $60AB: $47
    nop                                           ; $60AC: $00
    inc l                                         ; $60AD: $2C
    ld l, d                                       ; $60AE: $6A
    nop                                           ; $60AF: $00
    ld c, c                                       ; $60B0: $49
    ret                                           ; $60B1: $C9


    nop                                           ; $60B2: $00
    ld bc, $0000                                  ; $60B3: $01 $00 $00
    nop                                           ; $60B6: $00
    daa                                           ; $60B7: $27
    nop                                           ; $60B8: $00
    daa                                           ; $60B9: $27
    ld b, h                                       ; $60BA: $44
    nop                                           ; $60BB: $00
    ld l, h                                       ; $60BC: $6C
    jr z, jr_039_60BF                             ; $60BD: $28 $00

jr_039_60BF:
    ret z                                         ; $60BF: $C8

    cpl                                           ; $60C0: $2F

jr_039_60C1:
    nop                                           ; $60C1: $00
    ld l, e                                       ; $60C2: $6B
    jr nc, jr_039_60C5                            ; $60C3: $30 $00

jr_039_60C5:
    ld bc, $0000                                  ; $60C5: $01 $00 $00
    nop                                           ; $60C8: $00
    xor d                                         ; $60C9: $AA
    nop                                           ; $60CA: $00
    adc c                                         ; $60CB: $89
    cp a                                          ; $60CC: $BF
    nop                                           ; $60CD: $00
    halt                                          ; $60CE: $76
    sbc d                                         ; $60CF: $9A
    nop                                           ; $60D0: $00
    ld b, h                                       ; $60D1: $44
    ret                                           ; $60D2: $C9


    nop                                           ; $60D3: $00
    ld bc, $0000                                  ; $60D4: $01 $00 $00
    nop                                           ; $60D7: $00
    ld bc, $0100                                  ; $60D8: $01 $00 $01
    ld bc, $F400                                  ; $60DB: $01 $00 $F4
    ld b, c                                       ; $60DE: $41
    nop                                           ; $60DF: $00
    jr z, @+$79                                   ; $60E0: $28 $77

    nop                                           ; $60E2: $00
    push af                                       ; $60E3: $F5
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    rlca                                          ; $60E9: $07
    ld e, $00                                     ; $60EA: $1E $00
    nop                                           ; $60EC: $00
    dec b                                         ; $60ED: $05
    add b                                         ; $60EE: $80
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    ld [bc], a                                    ; $60F1: $02
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    ld bc, $60EB                                  ; $60F4: $01 $EB $60
    inc l                                         ; $60F7: $2C
    nop                                           ; $60F8: $00
    ld h, $27                                     ; $60F9: $26 $27
    nop                                           ; $60FB: $00
    jr nc, @-$36                                  ; $60FC: $30 $C8

    nop                                           ; $60FE: $00
    ccf                                           ; $60FF: $3F
    ld l, c                                       ; $6100: $69
    nop                                           ; $6101: $00
    halt                                          ; $6102: $76
    ld l, a                                       ; $6103: $6F
    nop                                           ; $6104: $00
    set 1, e                                      ; $6105: $CB $CB
    nop                                           ; $6107: $00
    ld bc, $0000                                  ; $6108: $01 $00 $00
    rlca                                          ; $610B: $07
    ld e, $00                                     ; $610C: $1E $00
    nop                                           ; $610E: $00
    dec b                                         ; $610F: $05
    add b                                         ; $6110: $80
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    ld [bc], a                                    ; $6113: $02
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    ld bc, $610D                                  ; $6116: $01 $0D $61
    ld [hl], $00                                  ; $6119: $36 $00
    ld h, [hl]                                    ; $611B: $66
    ld sp, $6700                                  ; $611C: $31 $00 $67
    jr z, jr_039_6121                             ; $611F: $28 $00

jr_039_6121:
    jr nc, @-$36                                  ; $6121: $30 $C8

    nop                                           ; $6123: $00
    ccf                                           ; $6124: $3F
    ld l, c                                       ; $6125: $69
    nop                                           ; $6126: $00
    ld l, a                                       ; $6127: $6F
    rlc b                                         ; $6128: $CB $00
    rlc b                                         ; $612A: $CB $00
    nop                                           ; $612C: $00
    rlca                                          ; $612D: $07
    ld e, $00                                     ; $612E: $1E $00
    nop                                           ; $6130: $00
    dec b                                         ; $6131: $05
    add b                                         ; $6132: $80
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    ld [bc], a                                    ; $6135: $02
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    ld bc, $612F                                  ; $6138: $01 $2F $61
    ld e, l                                       ; $613B: $5D
    nop                                           ; $613C: $00
    ld h, $5D                                     ; $613D: $26 $5D
    nop                                           ; $613F: $00
    ld h, $44                                     ; $6140: $26 $44
    nop                                           ; $6142: $00
    ld c, c                                       ; $6143: $49
    ret                                           ; $6144: $C9


    nop                                           ; $6145: $00
    ld bc, $0000                                  ; $6146: $01 $00 $00
    nop                                           ; $6149: $00
    nop                                           ; $614A: $00
    nop                                           ; $614B: $00
    rlca                                          ; $614C: $07
    ld e, $00                                     ; $614D: $1E $00
    nop                                           ; $614F: $00
    dec b                                         ; $6150: $05
    add b                                         ; $6151: $80
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    ld [bc], a                                    ; $6154: $02
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    ld bc, $614E                                  ; $6157: $01 $4E $61
    daa                                           ; $615A: $27
    nop                                           ; $615B: $00
    daa                                           ; $615C: $27
    ld a, $00                                     ; $615D: $3E $00
    ret                                           ; $615F: $C9


    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    sub d                                         ; $6163: $92
    nop                                           ; $6164: $00
    or a                                          ; $6165: $B7
    pop bc                                        ; $6166: $C1
    nop                                           ; $6167: $00
    xor e                                         ; $6168: $AB
    ld a, h                                       ; $6169: $7C
    nop                                           ; $616A: $00
    pop bc                                        ; $616B: $C1
    ld c, [hl]                                    ; $616C: $4E
    nop                                           ; $616D: $00
    ld b, b                                       ; $616E: $40
    dec hl                                        ; $616F: $2B
    nop                                           ; $6170: $00
    daa                                           ; $6171: $27
    ld a, $00                                     ; $6172: $3E $00
    rlc b                                         ; $6174: $CB $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    rlca                                          ; $617A: $07
    ld e, $00                                     ; $617B: $1E $00
    nop                                           ; $617D: $00
    dec b                                         ; $617E: $05
    add b                                         ; $617F: $80
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    ld [bc], a                                    ; $6182: $02
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    ld bc, $617C                                  ; $6185: $01 $7C $61
    ld h, d                                       ; $6188: $62
    nop                                           ; $6189: $00
    ld [hl], b                                    ; $618A: $70
    ccf                                           ; $618B: $3F
    nop                                           ; $618C: $00
    sra h                                         ; $618D: $CB $2C
    nop                                           ; $618F: $00
    ld e, [hl]                                    ; $6190: $5E
    cpl                                           ; $6191: $2F
    nop                                           ; $6192: $00
    add hl, sp                                    ; $6193: $39
    sub d                                         ; $6194: $92
    nop                                           ; $6195: $00
    or a                                          ; $6196: $B7
    pop bc                                        ; $6197: $C1
    nop                                           ; $6198: $00
    xor e                                         ; $6199: $AB
    ld a, h                                       ; $619A: $7C
    nop                                           ; $619B: $00
    pop bc                                        ; $619C: $C1
    ld b, h                                       ; $619D: $44
    nop                                           ; $619E: $00
    rlc b                                         ; $619F: $CB $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    xor d                                         ; $61A3: $AA
    nop                                           ; $61A4: $00
    adc c                                         ; $61A5: $89
    cp a                                          ; $61A6: $BF
    nop                                           ; $61A7: $00
    halt                                          ; $61A8: $76
    sbc d                                         ; $61A9: $9A
    nop                                           ; $61AA: $00
    ld l, [hl]                                    ; $61AB: $6E
    ld a, [hl+]                                   ; $61AC: $2A
    nop                                           ; $61AD: $00
    ld [hl], $29                                  ; $61AE: $36 $29
    nop                                           ; $61B0: $00
    ld h, h                                       ; $61B1: $64
    jr z, jr_039_61B4                             ; $61B2: $28 $00

jr_039_61B4:
    ret                                           ; $61B4: $C9


    ld bc, $0100                                  ; $61B5: $01 $00 $01
    ld bc, $F400                                  ; $61B8: $01 $00 $F4
    ld b, c                                       ; $61BB: $41
    nop                                           ; $61BC: $00
    jr z, jr_039_6236                             ; $61BD: $28 $77

    nop                                           ; $61BF: $00
    push af                                       ; $61C0: $F5
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    rlca                                          ; $61C6: $07
    ld e, $00                                     ; $61C7: $1E $00
    nop                                           ; $61C9: $00
    dec b                                         ; $61CA: $05
    add b                                         ; $61CB: $80
    nop                                           ; $61CC: $00
    nop                                           ; $61CD: $00
    ld [bc], a                                    ; $61CE: $02
    nop                                           ; $61CF: $00
    nop                                           ; $61D0: $00
    ld bc, $61C8                                  ; $61D1: $01 $C8 $61
    daa                                           ; $61D4: $27
    nop                                           ; $61D5: $00
    ld [hl], b                                    ; $61D6: $70
    ccf                                           ; $61D7: $3F
    nop                                           ; $61D8: $00
    ld [hl], a                                    ; $61D9: $77
    daa                                           ; $61DA: $27
    nop                                           ; $61DB: $00
    rlc b                                         ; $61DC: $CB $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    ld h, c                                       ; $61E0: $61
    nop                                           ; $61E1: $00
    jr z, jr_039_625B                             ; $61E2: $28 $77

    nop                                           ; $61E4: $00
    ret z                                         ; $61E5: $C8

    ld b, b                                       ; $61E6: $40
    nop                                           ; $61E7: $00
    ld h, l                                       ; $61E8: $65
    ld l, a                                       ; $61E9: $6F
    nop                                           ; $61EA: $00
    ld b, e                                       ; $61EB: $43
    add d                                         ; $61EC: $82
    nop                                           ; $61ED: $00
    halt                                          ; $61EE: $76
    sbc d                                         ; $61EF: $9A
    nop                                           ; $61F0: $00
    ld [hl], $42                                  ; $61F1: $36 $42
    nop                                           ; $61F3: $00
    ld h, h                                       ; $61F4: $64
    ld c, h                                       ; $61F5: $4C
    nop                                           ; $61F6: $00
    ld [hl], a                                    ; $61F7: $77
    ret                                           ; $61F8: $C9


    nop                                           ; $61F9: $00
    ld bc, $0000                                  ; $61FA: $01 $00 $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00
    rlca                                          ; $6200: $07
    ld e, $00                                     ; $6201: $1E $00
    nop                                           ; $6203: $00
    dec b                                         ; $6204: $05
    add b                                         ; $6205: $80
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    ld [bc], a                                    ; $6208: $02
    nop                                           ; $6209: $00
    nop                                           ; $620A: $00
    ld bc, $6202                                  ; $620B: $01 $02 $62
    daa                                           ; $620E: $27
    nop                                           ; $620F: $00
    ccf                                           ; $6210: $3F
    ccf                                           ; $6211: $3F
    nop                                           ; $6212: $00
    ccf                                           ; $6213: $3F
    ccf                                           ; $6214: $3F
    nop                                           ; $6215: $00
    ret                                           ; $6216: $C9


    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    ld h, c                                       ; $621A: $61
    nop                                           ; $621B: $00
    jr z, jr_039_6255                             ; $621C: $28 $37

    nop                                           ; $621E: $00
    cpl                                           ; $621F: $2F
    ld [hl], $00                                  ; $6220: $36 $00
    add d                                         ; $6222: $82
    halt                                          ; $6223: $76
    nop                                           ; $6224: $00
    sbc d                                         ; $6225: $9A
    ld [hl], $00                                  ; $6226: $36 $00
    ld b, d                                       ; $6228: $42
    ld d, d                                       ; $6229: $52
    nop                                           ; $622A: $00
    ld [hl], $27                                  ; $622B: $36 $27
    nop                                           ; $622D: $00
    ld c, l                                       ; $622E: $4D
    ld h, h                                       ; $622F: $64
    nop                                           ; $6230: $00
    ld c, h                                       ; $6231: $4C
    ld [hl], a                                    ; $6232: $77
    nop                                           ; $6233: $00
    ret                                           ; $6234: $C9


    nop                                           ; $6235: $00

jr_039_6236:
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    rlca                                          ; $623A: $07
    ld e, $00                                     ; $623B: $1E $00
    nop                                           ; $623D: $00
    dec b                                         ; $623E: $05
    add b                                         ; $623F: $80
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    ld [bc], a                                    ; $6242: $02
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    ld bc, $623C                                  ; $6245: $01 $3C $62
    ld e, l                                       ; $6248: $5D
    nop                                           ; $6249: $00
    ld h, $5D                                     ; $624A: $26 $5D
    nop                                           ; $624C: $00
    ld h, $4C                                     ; $624D: $26 $4C
    nop                                           ; $624F: $00
    ret                                           ; $6250: $C9


    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    ld h, c                                       ; $6254: $61

jr_039_6255:
    nop                                           ; $6255: $00
    ld [hl], b                                    ; $6256: $70
    ld b, e                                       ; $6257: $43
    nop                                           ; $6258: $00
    jr nc, jr_039_62CA                            ; $6259: $30 $6F

jr_039_625B:
    nop                                           ; $625B: $00
    ld d, e                                       ; $625C: $53
    ld [hl], b                                    ; $625D: $70
    nop                                           ; $625E: $00
    ld b, d                                       ; $625F: $42
    ld c, h                                       ; $6260: $4C
    nop                                           ; $6261: $00
    ret                                           ; $6262: $C9


    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    rlca                                          ; $6268: $07
    ld e, $00                                     ; $6269: $1E $00
    nop                                           ; $626B: $00
    dec b                                         ; $626C: $05
    add b                                         ; $626D: $80
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    ld [bc], a                                    ; $6270: $02
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    ld bc, $626A                                  ; $6273: $01 $6A $62
    scf                                           ; $6276: $37
    nop                                           ; $6277: $00
    inc [hl]                                      ; $6278: $34
    daa                                           ; $6279: $27
    nop                                           ; $627A: $00
    ld l, l                                       ; $627B: $6D
    ld c, h                                       ; $627C: $4C
    nop                                           ; $627D: $00
    ret                                           ; $627E: $C9


    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    ld c, c                                       ; $6282: $49
    nop                                           ; $6283: $00
    dec hl                                        ; $6284: $2B
    ld c, c                                       ; $6285: $49
    nop                                           ; $6286: $00
    dec hl                                        ; $6287: $2B
    ret z                                         ; $6288: $C8

    nop                                           ; $6289: $00
    daa                                           ; $628A: $27
    daa                                           ; $628B: $27
    nop                                           ; $628C: $00
    ld h, h                                       ; $628D: $64
    ret                                           ; $628E: $C9


    nop                                           ; $628F: $00
    ld bc, $0000                                  ; $6290: $01 $00 $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    rlca                                          ; $6296: $07
    ld e, $00                                     ; $6297: $1E $00
    nop                                           ; $6299: $00
    dec b                                         ; $629A: $05
    add b                                         ; $629B: $80
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    ld [bc], a                                    ; $629E: $02
    nop                                           ; $629F: $00
    nop                                           ; $62A0: $00
    ld bc, $6298                                  ; $62A1: $01 $98 $62
    ld h, d                                       ; $62A4: $62
    nop                                           ; $62A5: $00
    ld [hl], b                                    ; $62A6: $70
    ccf                                           ; $62A7: $3F
    nop                                           ; $62A8: $00
    halt                                          ; $62A9: $76
    ret                                           ; $62AA: $C9


    nop                                           ; $62AB: $00
    ld bc, $0000                                  ; $62AC: $01 $00 $00
    nop                                           ; $62AF: $00
    xor d                                         ; $62B0: $AA
    nop                                           ; $62B1: $00
    adc c                                         ; $62B2: $89
    cp a                                          ; $62B3: $BF
    nop                                           ; $62B4: $00
    halt                                          ; $62B5: $76
    sbc d                                         ; $62B6: $9A
    nop                                           ; $62B7: $00
    ld l, [hl]                                    ; $62B8: $6E
    ld a, [hl+]                                   ; $62B9: $2A
    nop                                           ; $62BA: $00
    ld [hl], $29                                  ; $62BB: $36 $29
    nop                                           ; $62BD: $00
    ld b, d                                       ; $62BE: $42
    ld h, $00                                     ; $62BF: $26 $00
    inc sp                                        ; $62C1: $33
    ld l, d                                       ; $62C2: $6A
    nop                                           ; $62C3: $00
    ld l, l                                       ; $62C4: $6D
    ld h, h                                       ; $62C5: $64
    nop                                           ; $62C6: $00
    ret                                           ; $62C7: $C9


    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00

jr_039_62CA:
    nop                                           ; $62CA: $00

jr_039_62CB:
    ld bc, $0100                                  ; $62CB: $01 $00 $01
    ld bc, $F400                                  ; $62CE: $01 $00 $F4
    ld b, c                                       ; $62D1: $41
    nop                                           ; $62D2: $00
    jr z, jr_039_634C                             ; $62D3: $28 $77

    nop                                           ; $62D5: $00
    push af                                       ; $62D6: $F5
    nop                                           ; $62D7: $00
    nop                                           ; $62D8: $00
    nop                                           ; $62D9: $00
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    rlca                                          ; $62DC: $07
    ld e, $00                                     ; $62DD: $1E $00
    nop                                           ; $62DF: $00
    dec b                                         ; $62E0: $05
    add b                                         ; $62E1: $80
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    ld [bc], a                                    ; $62E4: $02
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    ld bc, $62DE                                  ; $62E7: $01 $DE $62
    sub l                                         ; $62EA: $95
    nop                                           ; $62EB: $00
    jp nz, Jump_000_00AC                          ; $62EC: $C2 $AC $00

    ld l, [hl]                                    ; $62EF: $6E
    ld h, b                                       ; $62F0: $60
    nop                                           ; $62F1: $00
    ld a, [hl-]                                   ; $62F2: $3A
    ld [hl], $00                                  ; $62F3: $36 $00
    ld b, d                                       ; $62F5: $42
    ret z                                         ; $62F6: $C8

    nop                                           ; $62F7: $00
    dec hl                                        ; $62F8: $2B
    ld l, a                                       ; $62F9: $6F
    nop                                           ; $62FA: $00
    ld d, e                                       ; $62FB: $53
    ld l, h                                       ; $62FC: $6C
    nop                                           ; $62FD: $00
    jr z, jr_039_62CB                             ; $62FE: $28 $CB

    nop                                           ; $6300: $00
    ld bc, $0000                                  ; $6301: $01 $00 $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    rlca                                          ; $6307: $07
    ld e, $00                                     ; $6308: $1E $00
    nop                                           ; $630A: $00
    dec b                                         ; $630B: $05
    add b                                         ; $630C: $80
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    ld [bc], a                                    ; $630F: $02
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    ld bc, $6309                                  ; $6312: $01 $09 $63
    ld h, d                                       ; $6315: $62
    nop                                           ; $6316: $00
    ld [hl], b                                    ; $6317: $70
    ccf                                           ; $6318: $3F
    nop                                           ; $6319: $00
    res 4, b                                      ; $631A: $CB $A0
    nop                                           ; $631C: $00
    ld a, c                                       ; $631D: $79
    adc c                                         ; $631E: $89
    nop                                           ; $631F: $00
    add c                                         ; $6320: $81
    ld a, b                                       ; $6321: $78
    nop                                           ; $6322: $00
    ld b, h                                       ; $6323: $44
    rlc b                                         ; $6324: $CB $00
    swap a                                        ; $6326: $CB $37
    nop                                           ; $6328: $00
    inc [hl]                                      ; $6329: $34
    daa                                           ; $632A: $27
    nop                                           ; $632B: $00
    ld a, $CB                                     ; $632C: $3E $CB
    nop                                           ; $632E: $00
    ld bc, $0000                                  ; $632F: $01 $00 $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    ld bc, $0100                                  ; $6336: $01 $00 $01

jr_039_6339:
    ld bc, $F400                                  ; $6339: $01 $00 $F4
    ld [hl], $00                                  ; $633C: $36 $00
    ld [hl], a                                    ; $633E: $77
    ld l, d                                       ; $633F: $6A
    nop                                           ; $6340: $00
    push af                                       ; $6341: $F5
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    rlca                                          ; $6347: $07
    ld e, $00                                     ; $6348: $1E $00
    nop                                           ; $634A: $00
    dec b                                         ; $634B: $05

jr_039_634C:
    add b                                         ; $634C: $80
    nop                                           ; $634D: $00
    nop                                           ; $634E: $00
    ld [bc], a                                    ; $634F: $02
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    ld bc, $6349                                  ; $6352: $01 $49 $63
    ld e, a                                       ; $6355: $5F
    nop                                           ; $6356: $00
    jr z, jr_039_6339                             ; $6357: $28 $E0

    nop                                           ; $6359: $00
    ret                                           ; $635A: $C9


    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    sub l                                         ; $635E: $95
    nop                                           ; $635F: $00
    jp nz, Jump_000_00AC                          ; $6360: $C2 $AC $00

    ld l, [hl]                                    ; $6363: $6E
    ld h, b                                       ; $6364: $60
    nop                                           ; $6365: $00
    ld a, [hl-]                                   ; $6366: $3A
    scf                                           ; $6367: $37
    nop                                           ; $6368: $00
    ld c, l                                       ; $6369: $4D
    ld b, h                                       ; $636A: $44
    nop                                           ; $636B: $00
    set 1, e                                      ; $636C: $CB $CB
    nop                                           ; $636E: $00
    ld bc, $0000                                  ; $636F: $01 $00 $00
    rlca                                          ; $6372: $07
    ld e, $00                                     ; $6373: $1E $00
    nop                                           ; $6375: $00
    dec b                                         ; $6376: $05
    add b                                         ; $6377: $80
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    ld [bc], a                                    ; $637A: $02
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    ld bc, $6374                                  ; $637D: $01 $74 $63
    ld a, [hl+]                                   ; $6380: $2A
    nop                                           ; $6381: $00
    ld a, [hl+]                                   ; $6382: $2A
    ret z                                         ; $6383: $C8

    nop                                           ; $6384: $00
    sub l                                         ; $6385: $95
    jp nz, $AC00                                  ; $6386: $C2 $00 $AC

    ld c, d                                       ; $6389: $4A
    nop                                           ; $638A: $00
    ld c, c                                       ; $638B: $49
    ld [hl], b                                    ; $638C: $70
    nop                                           ; $638D: $00
    ccf                                           ; $638E: $3F
    ld c, c                                       ; $638F: $49
    nop                                           ; $6390: $00
    ret                                           ; $6391: $C9


    ld h, d                                       ; $6392: $62
    nop                                           ; $6393: $00
    ld l, d                                       ; $6394: $6A
    ld b, a                                       ; $6395: $47
    nop                                           ; $6396: $00
    ld c, [hl]                                    ; $6397: $4E
    ld c, c                                       ; $6398: $49
    nop                                           ; $6399: $00
    daa                                           ; $639A: $27
    dec hl                                        ; $639B: $2B
    nop                                           ; $639C: $00
    ret                                           ; $639D: $C9


    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    ld bc, $0100                                  ; $63A4: $01 $00 $01
    ld bc, $F400                                  ; $63A7: $01 $00 $F4
    ld [hl], $00                                  ; $63AA: $36 $00
    ld [hl], a                                    ; $63AC: $77
    ld l, d                                       ; $63AD: $6A
    nop                                           ; $63AE: $00
    push af                                       ; $63AF: $F5
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00
    rlca                                          ; $63B5: $07
    ld e, $00                                     ; $63B6: $1E $00
    nop                                           ; $63B8: $00
    dec b                                         ; $63B9: $05
    add b                                         ; $63BA: $80
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    ld [bc], a                                    ; $63BD: $02
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    ld bc, $63B7                                  ; $63C0: $01 $B7 $63
    jr z, jr_039_63C5                             ; $63C3: $28 $00

jr_039_63C5:
    ld e, a                                       ; $63C5: $5F
    ret                                           ; $63C6: $C9


    nop                                           ; $63C7: $00
    ld bc, $0000                                  ; $63C8: $01 $00 $00
    nop                                           ; $63CB: $00
    ld h, c                                       ; $63CC: $61
    nop                                           ; $63CD: $00
    ld [hl], b                                    ; $63CE: $70
    ld b, e                                       ; $63CF: $43
    nop                                           ; $63D0: $00
    ld b, a                                       ; $63D1: $47
    inc l                                         ; $63D2: $2C
    nop                                           ; $63D3: $00
    add hl, sp                                    ; $63D4: $39
    jr z, jr_039_63D7                             ; $63D5: $28 $00

jr_039_63D7:
    ld b, h                                       ; $63D7: $44
    ld a, $00                                     ; $63D8: $3E $00
    ret                                           ; $63DA: $C9


    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    rlca                                          ; $63E0: $07
    ld e, $00                                     ; $63E1: $1E $00
    nop                                           ; $63E3: $00
    dec b                                         ; $63E4: $05
    add b                                         ; $63E5: $80
    nop                                           ; $63E6: $00
    nop                                           ; $63E7: $00
    ld [bc], a                                    ; $63E8: $02
    nop                                           ; $63E9: $00
    nop                                           ; $63EA: $00
    ld bc, $63E2                                  ; $63EB: $01 $E2 $63
    jr z, jr_039_63F0                             ; $63EE: $28 $00

jr_039_63F0:
    ld e, a                                       ; $63F0: $5F
    ret                                           ; $63F1: $C9


    nop                                           ; $63F2: $00
    ld bc, $0000                                  ; $63F3: $01 $00 $00
    nop                                           ; $63F6: $00
    and b                                         ; $63F7: $A0
    nop                                           ; $63F8: $00
    ld a, c                                       ; $63F9: $79
    adc c                                         ; $63FA: $89
    nop                                           ; $63FB: $00
    add c                                         ; $63FC: $81
    ld a, b                                       ; $63FD: $78
    nop                                           ; $63FE: $00
    ld b, h                                       ; $63FF: $44
    ret                                           ; $6400: $C9


    nop                                           ; $6401: $00
    ld bc, $0000                                  ; $6402: $01 $00 $00
    nop                                           ; $6405: $00
    scf                                           ; $6406: $37
    nop                                           ; $6407: $00
    ld d, e                                       ; $6408: $53
    ld l, b                                       ; $6409: $68
    nop                                           ; $640A: $00
    ld [hl], $27                                  ; $640B: $36 $27
    nop                                           ; $640D: $00
    ld c, l                                       ; $640E: $4D
    ld b, a                                       ; $640F: $47
    nop                                           ; $6410: $00
    ld h, $6A                                     ; $6411: $26 $6A
    nop                                           ; $6413: $00
    ret                                           ; $6414: $C9


    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    ld bc, $0100                                  ; $6418: $01 $00 $01
    ld bc, $F400                                  ; $641B: $01 $00 $F4
    ld [hl], $00                                  ; $641E: $36 $00
    ld [hl], a                                    ; $6420: $77
    ld l, d                                       ; $6421: $6A
    nop                                           ; $6422: $00
    push af                                       ; $6423: $F5
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    rlca                                          ; $6429: $07
    ld e, $00                                     ; $642A: $1E $00
    nop                                           ; $642C: $00
    dec b                                         ; $642D: $05
    add b                                         ; $642E: $80
    nop                                           ; $642F: $00
    nop                                           ; $6430: $00
    ld [bc], a                                    ; $6431: $02
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    ld bc, $642B                                  ; $6434: $01 $2B $64
    ld e, l                                       ; $6437: $5D
    nop                                           ; $6438: $00
    ld b, h                                       ; $6439: $44
    ret z                                         ; $643A: $C8

    nop                                           ; $643B: $00
    sub l                                         ; $643C: $95
    jp nz, $AC00                                  ; $643D: $C2 $00 $AC

    dec sp                                        ; $6440: $3B
    nop                                           ; $6441: $00
    ld h, l                                       ; $6442: $65
    ld c, c                                       ; $6443: $49
    nop                                           ; $6444: $00
    daa                                           ; $6445: $27
    ld l, a                                       ; $6446: $6F
    nop                                           ; $6447: $00
    ld b, h                                       ; $6448: $44
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    ld a, $00                                     ; $644C: $3E $00
    ret                                           ; $644E: $C9


    nop                                           ; $644F: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    rlca                                          ; $6454: $07
    ld e, $00                                     ; $6455: $1E $00
    nop                                           ; $6457: $00
    dec b                                         ; $6458: $05
    add b                                         ; $6459: $80
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    ld [bc], a                                    ; $645C: $02
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    ld bc, $6456                                  ; $645F: $01 $56 $64
    sub l                                         ; $6462: $95
    nop                                           ; $6463: $00
    jp nz, Jump_000_00AC                          ; $6464: $C2 $AC $00

    ld c, c                                       ; $6467: $49
    ld l, a                                       ; $6468: $6F
    nop                                           ; $6469: $00
    ld b, h                                       ; $646A: $44
    ld a, $00                                     ; $646B: $3E $00
    ret                                           ; $646D: $C9


    nop                                           ; $646E: $00
    nop                                           ; $646F: $00
    nop                                           ; $6470: $00
    scf                                           ; $6471: $37
    nop                                           ; $6472: $00
    inc [hl]                                      ; $6473: $34
    daa                                           ; $6474: $27
    nop                                           ; $6475: $00
    ld l, a                                       ; $6476: $6F
    ld b, h                                       ; $6477: $44
    nop                                           ; $6478: $00
    ld a, $CB                                     ; $6479: $3E $CB
    nop                                           ; $647B: $00
    ld bc, $0000                                  ; $647C: $01 $00 $00
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    ld bc, $0100                                  ; $6483: $01 $00 $01
    ld bc, $F400                                  ; $6486: $01 $00 $F4
    ld [hl], $00                                  ; $6489: $36 $00
    ld [hl], a                                    ; $648B: $77
    ld l, d                                       ; $648C: $6A
    nop                                           ; $648D: $00
    push af                                       ; $648E: $F5
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    rlca                                          ; $6494: $07
    ld e, $00                                     ; $6495: $1E $00
    nop                                           ; $6497: $00
    dec b                                         ; $6498: $05
    add b                                         ; $6499: $80
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    ld [bc], a                                    ; $649C: $02
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    ld bc, $6496                                  ; $649F: $01 $96 $64
    ld e, l                                       ; $64A2: $5D
    nop                                           ; $64A3: $00
    ld b, h                                       ; $64A4: $44
    ld e, l                                       ; $64A5: $5D
    nop                                           ; $64A6: $00
    ld b, h                                       ; $64A7: $44
    sub l                                         ; $64A8: $95
    nop                                           ; $64A9: $00
    jp nz, Jump_000_00AC                          ; $64AA: $C2 $AC $00

    ld c, d                                       ; $64AD: $4A
    ld c, c                                       ; $64AE: $49
    nop                                           ; $64AF: $00
    ld l, e                                       ; $64B0: $6B
    ld c, c                                       ; $64B1: $49
    nop                                           ; $64B2: $00
    daa                                           ; $64B3: $27
    dec sp                                        ; $64B4: $3B
    nop                                           ; $64B5: $00
    ld h, l                                       ; $64B6: $65
    ld [hl], a                                    ; $64B7: $77
    nop                                           ; $64B8: $00
    ld l, a                                       ; $64B9: $6F
    ret                                           ; $64BA: $C9


    nop                                           ; $64BB: $00
    ld bc, $0000                                  ; $64BC: $01 $00 $00
    nop                                           ; $64BF: $00
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    rlca                                          ; $64C2: $07
    ld e, $00                                     ; $64C3: $1E $00
    nop                                           ; $64C5: $00
    dec b                                         ; $64C6: $05
    add b                                         ; $64C7: $80
    nop                                           ; $64C8: $00
    nop                                           ; $64C9: $00
    ld [bc], a                                    ; $64CA: $02
    nop                                           ; $64CB: $00
    nop                                           ; $64CC: $00
    ld bc, $64C4                                  ; $64CD: $01 $C4 $64
    sub l                                         ; $64D0: $95
    nop                                           ; $64D1: $00
    jp nz, Jump_000_00AC                          ; $64D2: $C2 $AC $00

    dec sp                                        ; $64D5: $3B
    ld h, l                                       ; $64D6: $65
    nop                                           ; $64D7: $00
    ld [hl], a                                    ; $64D8: $77
    ld l, a                                       ; $64D9: $6F
    nop                                           ; $64DA: $00
    ret                                           ; $64DB: $C9


    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    scf                                           ; $64DF: $37
    nop                                           ; $64E0: $00
    inc [hl]                                      ; $64E1: $34
    daa                                           ; $64E2: $27
    nop                                           ; $64E3: $00
    dec sp                                        ; $64E4: $3B
    ld h, l                                       ; $64E5: $65
    nop                                           ; $64E6: $00
    ld [hl], a                                    ; $64E7: $77
    ld [hl], a                                    ; $64E8: $77
    nop                                           ; $64E9: $00
    ld l, a                                       ; $64EA: $6F
    ret                                           ; $64EB: $C9


    nop                                           ; $64EC: $00
    ld bc, $0000                                  ; $64ED: $01 $00 $00
    nop                                           ; $64F0: $00
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    nop                                           ; $64F3: $00
    ld bc, $0100                                  ; $64F4: $01 $00 $01
    ld bc, $F400                                  ; $64F7: $01 $00 $F4
    ld [hl], $00                                  ; $64FA: $36 $00
    ld [hl], a                                    ; $64FC: $77
    ld l, d                                       ; $64FD: $6A
    nop                                           ; $64FE: $00
    push af                                       ; $64FF: $F5
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    rlca                                          ; $6505: $07
    ld e, $00                                     ; $6506: $1E $00
    nop                                           ; $6508: $00
    dec b                                         ; $6509: $05
    add b                                         ; $650A: $80
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    ld [bc], a                                    ; $650D: $02
    nop                                           ; $650E: $00
    nop                                           ; $650F: $00
    ld bc, $6507                                  ; $6510: $01 $07 $65
    ld c, b                                       ; $6513: $48
    nop                                           ; $6514: $00
    jr z, jr_039_654D                             ; $6515: $28 $36

    nop                                           ; $6517: $00
    ccf                                           ; $6518: $3F
    call z, Boot                                  ; $6519: $CC $00 $01
    nop                                           ; $651C: $00
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    ld a, [hl+]                                   ; $651F: $2A
    nop                                           ; $6520: $00
    ld e, l                                       ; $6521: $5D
    add hl, hl                                    ; $6522: $29
    nop                                           ; $6523: $00
    ld c, l                                       ; $6524: $4D
    ld b, b                                       ; $6525: $40
    nop                                           ; $6526: $00
    dec hl                                        ; $6527: $2B
    ld l, b                                       ; $6528: $68
    nop                                           ; $6529: $00
    ld c, [hl]                                    ; $652A: $4E
    ret z                                         ; $652B: $C8

    nop                                           ; $652C: $00
    add hl, sp                                    ; $652D: $39
    ld l, a                                       ; $652E: $6F
    nop                                           ; $652F: $00
    ld c, c                                       ; $6530: $49
    ld h, c                                       ; $6531: $61
    nop                                           ; $6532: $00
    ld c, l                                       ; $6533: $4D
    dec hl                                        ; $6534: $2B
    nop                                           ; $6535: $00
    call z, RST_00                                ; $6536: $CC $00 $00
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    nop                                           ; $653B: $00
    rlca                                          ; $653C: $07
    ldh a, [rP1]                                  ; $653D: $F0 $00
    nop                                           ; $653F: $00
    dec b                                         ; $6540: $05
    add b                                         ; $6541: $80
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    ld [bc], a                                    ; $6544: $02
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    ld bc, $653E                                  ; $6547: $01 $3E $65
    and b                                         ; $654A: $A0
    nop                                           ; $654B: $00
    ld a, c                                       ; $654C: $79

jr_039_654D:
    adc c                                         ; $654D: $89
    nop                                           ; $654E: $00
    add c                                         ; $654F: $81
    ld a, b                                       ; $6550: $78
    nop                                           ; $6551: $00
    ld b, h                                       ; $6552: $44
    ret                                           ; $6553: $C9


    nop                                           ; $6554: $00
    ld bc, $0000                                  ; $6555: $01 $00 $00
    nop                                           ; $6558: $00
    ld c, c                                       ; $6559: $49
    nop                                           ; $655A: $00
    dec hl                                        ; $655B: $2B
    ld c, c                                       ; $655C: $49
    nop                                           ; $655D: $00
    dec hl                                        ; $655E: $2B
    ld h, d                                       ; $655F: $62
    nop                                           ; $6560: $00
    ld l, d                                       ; $6561: $6A
    ld c, c                                       ; $6562: $49
    nop                                           ; $6563: $00
    ret                                           ; $6564: $C9


    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656A: $00
    ld bc, $0100                                  ; $656B: $01 $00 $01
    ld bc, $F400                                  ; $656E: $01 $00 $F4
    ld [hl], $00                                  ; $6571: $36 $00
    ld [hl], a                                    ; $6573: $77
    ld l, d                                       ; $6574: $6A
    nop                                           ; $6575: $00
    push af                                       ; $6576: $F5
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    rlca                                          ; $657C: $07
    ldh a, [rP1]                                  ; $657D: $F0 $00
    nop                                           ; $657F: $00
    dec b                                         ; $6580: $05
    add b                                         ; $6581: $80
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    ld [bc], a                                    ; $6584: $02
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    ld bc, $657E                                  ; $6587: $01 $7E $65
    ld e, l                                       ; $658A: $5D
    nop                                           ; $658B: $00
    ld b, h                                       ; $658C: $44
    ld e, l                                       ; $658D: $5D
    nop                                           ; $658E: $00
    ld b, h                                       ; $658F: $44
    ret z                                         ; $6590: $C8

    nop                                           ; $6591: $00
    ld b, a                                       ; $6592: $47
    inc l                                         ; $6593: $2C
    nop                                           ; $6594: $00
    ld l, d                                       ; $6595: $6A
    ld a, $00                                     ; $6596: $3E $00
    ret                                           ; $6598: $C9


    nop                                           ; $6599: $00
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    jr nc, jr_039_659E                            ; $659C: $30 $00

jr_039_659E:
    ld l, a                                       ; $659E: $6F
    ld d, e                                       ; $659F: $53
    nop                                           ; $65A0: $00
    ld [hl], b                                    ; $65A1: $70
    ld b, d                                       ; $65A2: $42
    nop                                           ; $65A3: $00
    dec l                                         ; $65A4: $2D
    ld l, e                                       ; $65A5: $6B
    nop                                           ; $65A6: $00
    ret                                           ; $65A7: $C9


    nop                                           ; $65A8: $00
    nop                                           ; $65A9: $00
    nop                                           ; $65AA: $00
    nop                                           ; $65AB: $00
    nop                                           ; $65AC: $00
    rlca                                          ; $65AD: $07
    ldh a, [rP1]                                  ; $65AE: $F0 $00
    nop                                           ; $65B0: $00
    dec b                                         ; $65B1: $05
    add b                                         ; $65B2: $80
    nop                                           ; $65B3: $00
    nop                                           ; $65B4: $00
    ld [bc], a                                    ; $65B5: $02
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    ld bc, $65AF                                  ; $65B8: $01 $AF $65
    ld h, d                                       ; $65BB: $62
    nop                                           ; $65BC: $00
    ld [hl], b                                    ; $65BD: $70
    ccf                                           ; $65BE: $3F
    nop                                           ; $65BF: $00
    ret                                           ; $65C0: $C9


    and b                                         ; $65C1: $A0
    nop                                           ; $65C2: $00
    ld a, c                                       ; $65C3: $79
    adc c                                         ; $65C4: $89
    nop                                           ; $65C5: $00
    add c                                         ; $65C6: $81
    ld a, b                                       ; $65C7: $78
    nop                                           ; $65C8: $00
    ld b, h                                       ; $65C9: $44
    ret                                           ; $65CA: $C9


    nop                                           ; $65CB: $00
    ld bc, $0030                                  ; $65CC: $01 $30 $00
    ld l, a                                       ; $65CF: $6F
    ld d, e                                       ; $65D0: $53
    nop                                           ; $65D1: $00
    ld [hl], b                                    ; $65D2: $70
    ccf                                           ; $65D3: $3F
    nop                                           ; $65D4: $00
    ld c, c                                       ; $65D5: $49
    ret                                           ; $65D6: $C9


    nop                                           ; $65D7: $00
    ld bc, $0000                                  ; $65D8: $01 $00 $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    ld bc, $0100                                  ; $65DF: $01 $00 $01
    ld bc, $F400                                  ; $65E2: $01 $00 $F4
    ld [hl], $00                                  ; $65E5: $36 $00
    ld [hl], a                                    ; $65E7: $77
    ld l, d                                       ; $65E8: $6A
    nop                                           ; $65E9: $00
    push af                                       ; $65EA: $F5
    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    rlca                                          ; $65F0: $07
    ldh a, [rP1]                                  ; $65F1: $F0 $00
    nop                                           ; $65F3: $00
    dec b                                         ; $65F4: $05
    add b                                         ; $65F5: $80
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    ld [bc], a                                    ; $65F8: $02
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    ld bc, $65F2                                  ; $65FB: $01 $F2 $65
    ld d, b                                       ; $65FE: $50
    nop                                           ; $65FF: $00
    ld [hl], b                                    ; $6600: $70
    ret z                                         ; $6601: $C8

    nop                                           ; $6602: $00
    add hl, sp                                    ; $6603: $39
    ld l, a                                       ; $6604: $6F
    nop                                           ; $6605: $00
    ld c, c                                       ; $6606: $49
    ld h, c                                       ; $6607: $61
    nop                                           ; $6608: $00
    ld c, l                                       ; $6609: $4D
    dec hl                                        ; $660A: $2B
    nop                                           ; $660B: $00
    ret                                           ; $660C: $C9


    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    and b                                         ; $6610: $A0
    nop                                           ; $6611: $00
    ld a, c                                       ; $6612: $79
    adc c                                         ; $6613: $89
    nop                                           ; $6614: $00
    add c                                         ; $6615: $81
    ld a, b                                       ; $6616: $78
    nop                                           ; $6617: $00
    ld c, d                                       ; $6618: $4A

jr_039_6619:
    ld b, e                                       ; $6619: $43
    nop                                           ; $661A: $00
    ld c, b                                       ; $661B: $48
    dec hl                                        ; $661C: $2B
    nop                                           ; $661D: $00
    ld l, a                                       ; $661E: $6F
    ld c, c                                       ; $661F: $49
    nop                                           ; $6620: $00
    ret                                           ; $6621: $C9


    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    rlca                                          ; $6627: $07
    ldh a, [rP1]                                  ; $6628: $F0 $00
    nop                                           ; $662A: $00
    dec b                                         ; $662B: $05
    add b                                         ; $662C: $80
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    ld [bc], a                                    ; $662F: $02
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    ld bc, $6629                                  ; $6632: $01 $29 $66
    ld e, a                                       ; $6635: $5F
    nop                                           ; $6636: $00
    jr z, jr_039_6619                             ; $6637: $28 $E0

    nop                                           ; $6639: $00
    ldh [$FFC8], a                                ; $663A: $E0 $C8
    nop                                           ; $663C: $00
    ld h, d                                       ; $663D: $62
    ld l, d                                       ; $663E: $6A
    nop                                           ; $663F: $00
    ld c, c                                       ; $6640: $49
    ret                                           ; $6641: $C9


    nop                                           ; $6642: $00
    ld bc, $0000                                  ; $6643: $01 $00 $00
    nop                                           ; $6646: $00
    and b                                         ; $6647: $A0
    nop                                           ; $6648: $00
    ld a, c                                       ; $6649: $79

jr_039_664A:
    adc c                                         ; $664A: $89
    nop                                           ; $664B: $00
    add c                                         ; $664C: $81
    ld a, b                                       ; $664D: $78
    nop                                           ; $664E: $00
    ld b, h                                       ; $664F: $44
    ret                                           ; $6650: $C9


    nop                                           ; $6651: $00
    ld bc, $0000                                  ; $6652: $01 $00 $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    ld bc, $0100                                  ; $6659: $01 $00 $01
    ld bc, $F400                                  ; $665C: $01 $00 $F4
    ld [hl], $00                                  ; $665F: $36 $00
    ld [hl], a                                    ; $6661: $77
    ld l, d                                       ; $6662: $6A
    nop                                           ; $6663: $00
    push af                                       ; $6664: $F5
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    rlca                                          ; $666A: $07
    ldh a, [rP1]                                  ; $666B: $F0 $00
    nop                                           ; $666D: $00
    dec b                                         ; $666E: $05
    add b                                         ; $666F: $80
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    ld [bc], a                                    ; $6672: $02
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    ld bc, $666C                                  ; $6675: $01 $6C $66
    cpl                                           ; $6678: $2F
    nop                                           ; $6679: $00
    ld l, a                                       ; $667A: $6F
    dec sp                                        ; $667B: $3B
    nop                                           ; $667C: $00
    ld h, a                                       ; $667D: $67
    jr z, jr_039_6680                             ; $667E: $28 $00

jr_039_6680:
    jr nc, jr_039_664A                            ; $6680: $30 $C8

    nop                                           ; $6682: $00
    ccf                                           ; $6683: $3F
    ld l, c                                       ; $6684: $69
    nop                                           ; $6685: $00
    halt                                          ; $6686: $76
    ld l, a                                       ; $6687: $6F
    nop                                           ; $6688: $00
    rlc b                                         ; $6689: $CB $00
    nop                                           ; $668B: $00
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    rlca                                          ; $668F: $07
    ld e, $00                                     ; $6690: $1E $00
    nop                                           ; $6692: $00
    dec b                                         ; $6693: $05
    add b                                         ; $6694: $80
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    ld [bc], a                                    ; $6697: $02
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    ld bc, $6691                                  ; $669A: $01 $91 $66
    ld h, d                                       ; $669D: $62
    nop                                           ; $669E: $00
    ld [hl], b                                    ; $669F: $70
    ccf                                           ; $66A0: $3F
    nop                                           ; $66A1: $00
    halt                                          ; $66A2: $76
    ret                                           ; $66A3: $C9


    nop                                           ; $66A4: $00
    ld bc, $0000                                  ; $66A5: $01 $00 $00
    nop                                           ; $66A8: $00
    sub d                                         ; $66A9: $92
    nop                                           ; $66AA: $00
    or a                                          ; $66AB: $B7
    pop bc                                        ; $66AC: $C1
    nop                                           ; $66AD: $00
    xor e                                         ; $66AE: $AB
    ld a, h                                       ; $66AF: $7C
    nop                                           ; $66B0: $00
    pop bc                                        ; $66B1: $C1
    ld b, h                                       ; $66B2: $44
    nop                                           ; $66B3: $00
    ld [hl], c                                    ; $66B4: $71
    halt                                          ; $66B5: $76
    nop                                           ; $66B6: $00
    ret                                           ; $66B7: $C9


    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    nop                                           ; $66BA: $00
    nop                                           ; $66BB: $00
    nop                                           ; $66BC: $00
    nop                                           ; $66BD: $00
    ld bc, $0100                                  ; $66BE: $01 $00 $01
    ld bc, $F400                                  ; $66C1: $01 $00 $F4
    ld [hl], $00                                  ; $66C4: $36 $00
    ld [hl], a                                    ; $66C6: $77
    ld l, d                                       ; $66C7: $6A
    nop                                           ; $66C8: $00
    push af                                       ; $66C9: $F5
    nop                                           ; $66CA: $00
    nop                                           ; $66CB: $00
    nop                                           ; $66CC: $00
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    rlca                                          ; $66CF: $07
    ld e, $00                                     ; $66D0: $1E $00
    nop                                           ; $66D2: $00
    dec b                                         ; $66D3: $05
    add b                                         ; $66D4: $80
    nop                                           ; $66D5: $00
    nop                                           ; $66D6: $00
    ld [bc], a                                    ; $66D7: $02
    nop                                           ; $66D8: $00
    nop                                           ; $66D9: $00
    ld bc, $66D1                                  ; $66DA: $01 $D1 $66
    ld b, h                                       ; $66DD: $44
    nop                                           ; $66DE: $00
    ld h, b                                       ; $66DF: $60
    ld c, h                                       ; $66E0: $4C
    nop                                           ; $66E1: $00
    ld [hl], a                                    ; $66E2: $77
    ret                                           ; $66E3: $C9


    nop                                           ; $66E4: $00
    ld bc, $0000                                  ; $66E5: $01 $00 $00
    nop                                           ; $66E8: $00
    ld h, c                                       ; $66E9: $61
    nop                                           ; $66EA: $00
    ld [hl], b                                    ; $66EB: $70
    ld b, e                                       ; $66EC: $43
    nop                                           ; $66ED: $00
    jr nc, jr_039_675F                            ; $66EE: $30 $6F

    nop                                           ; $66F0: $00
    ld d, e                                       ; $66F1: $53
    ld [hl], b                                    ; $66F2: $70
    nop                                           ; $66F3: $00
    ld b, d                                       ; $66F4: $42
    nop                                           ; $66F5: $00
    nop                                           ; $66F6: $00
    nop                                           ; $66F7: $00
    and b                                         ; $66F8: $A0
    nop                                           ; $66F9: $00
    ld a, c                                       ; $66FA: $79
    adc c                                         ; $66FB: $89
    nop                                           ; $66FC: $00
    add c                                         ; $66FD: $81
    ld a, b                                       ; $66FE: $78
    nop                                           ; $66FF: $00
    ld h, b                                       ; $6700: $60
    ld a, [hl-]                                   ; $6701: $3A
    nop                                           ; $6702: $00
    ld [hl], $42                                  ; $6703: $36 $42
    nop                                           ; $6705: $00
    ld c, h                                       ; $6706: $4C
    ret                                           ; $6707: $C9


    nop                                           ; $6708: $00
    ld bc, $0000                                  ; $6709: $01 $00 $00
    rlca                                          ; $670C: $07
    ld e, $00                                     ; $670D: $1E $00
    nop                                           ; $670F: $00
    dec b                                         ; $6710: $05
    add b                                         ; $6711: $80
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    ld [bc], a                                    ; $6714: $02
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    ld bc, $670E                                  ; $6717: $01 $0E $67
    scf                                           ; $671A: $37
    nop                                           ; $671B: $00
    ld [hl], b                                    ; $671C: $70
    inc [hl]                                      ; $671D: $34
    nop                                           ; $671E: $00
    ld [hl], a                                    ; $671F: $77
    daa                                           ; $6720: $27
    nop                                           ; $6721: $00
    rlc b                                         ; $6722: $CB $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    and b                                         ; $6726: $A0
    nop                                           ; $6727: $00
    ld a, c                                       ; $6728: $79
    adc c                                         ; $6729: $89
    nop                                           ; $672A: $00
    add c                                         ; $672B: $81
    ld a, b                                       ; $672C: $78
    nop                                           ; $672D: $00
    ld h, h                                       ; $672E: $64
    rlc b                                         ; $672F: $CB $00
    ld bc, $0000                                  ; $6731: $01 $00 $00
    nop                                           ; $6734: $00
    and b                                         ; $6735: $A0
    nop                                           ; $6736: $00
    ld a, c                                       ; $6737: $79
    adc c                                         ; $6738: $89
    nop                                           ; $6739: $00
    add c                                         ; $673A: $81
    ld a, b                                       ; $673B: $78
    nop                                           ; $673C: $00
    ld c, c                                       ; $673D: $49
    ld c, l                                       ; $673E: $4D
    nop                                           ; $673F: $00
    ld h, h                                       ; $6740: $64
    rlc b                                         ; $6741: $CB $00
    ld bc, $0000                                  ; $6743: $01 $00 $00
    nop                                           ; $6746: $00
    ld bc, $0100                                  ; $6747: $01 $00 $01
    ld bc, $F400                                  ; $674A: $01 $00 $F4
    ld [hl], $00                                  ; $674D: $36 $00
    ld [hl], a                                    ; $674F: $77
    ld l, d                                       ; $6750: $6A
    nop                                           ; $6751: $00
    push af                                       ; $6752: $F5
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    rlca                                          ; $6758: $07
    ld e, $00                                     ; $6759: $1E $00
    nop                                           ; $675B: $00
    dec b                                         ; $675C: $05
    add b                                         ; $675D: $80
    nop                                           ; $675E: $00

jr_039_675F:
    nop                                           ; $675F: $00
    ld [bc], a                                    ; $6760: $02
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    ld bc, $675A                                  ; $6763: $01 $5A $67
    ld e, l                                       ; $6766: $5D
    nop                                           ; $6767: $00
    ld b, h                                       ; $6768: $44
    ld b, a                                       ; $6769: $47
    nop                                           ; $676A: $00
    inc l                                         ; $676B: $2C
    ld l, d                                       ; $676C: $6A
    nop                                           ; $676D: $00
    ld c, [hl]                                    ; $676E: $4E
    inc a                                         ; $676F: $3C
    nop                                           ; $6770: $00
    ld b, h                                       ; $6771: $44
    ret                                           ; $6772: $C9


    nop                                           ; $6773: $00
    ld bc, $0000                                  ; $6774: $01 $00 $00
    nop                                           ; $6777: $00
    jr nc, jr_039_677A                            ; $6778: $30 $00

jr_039_677A:
    ld l, a                                       ; $677A: $6F
    ld d, e                                       ; $677B: $53
    nop                                           ; $677C: $00
    ld [hl], b                                    ; $677D: $70
    ld b, d                                       ; $677E: $42
    nop                                           ; $677F: $00
    dec l                                         ; $6780: $2D
    ld l, e                                       ; $6781: $6B

jr_039_6782:
    nop                                           ; $6782: $00
    ret                                           ; $6783: $C9


    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    rlca                                          ; $6789: $07
    ld e, $00                                     ; $678A: $1E $00
    nop                                           ; $678C: $00
    dec b                                         ; $678D: $05
    add b                                         ; $678E: $80
    nop                                           ; $678F: $00
    nop                                           ; $6790: $00
    ld [bc], a                                    ; $6791: $02
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    ld bc, $678B                                  ; $6794: $01 $8B $67
    scf                                           ; $6797: $37
    nop                                           ; $6798: $00
    inc [hl]                                      ; $6799: $34
    daa                                           ; $679A: $27
    nop                                           ; $679B: $00
    ld a, $CB                                     ; $679C: $3E $CB
    nop                                           ; $679E: $00
    ld bc, $0000                                  ; $679F: $01 $00 $00
    nop                                           ; $67A2: $00
    ld h, h                                       ; $67A3: $64
    nop                                           ; $67A4: $00
    ld [hl], $C8                                  ; $67A5: $36 $C8
    nop                                           ; $67A7: $00
    xor d                                         ; $67A8: $AA
    adc c                                         ; $67A9: $89
    nop                                           ; $67AA: $00
    cp a                                          ; $67AB: $BF
    halt                                          ; $67AC: $76
    nop                                           ; $67AD: $00
    sbc d                                         ; $67AE: $9A
    ld l, [hl]                                    ; $67AF: $6E
    nop                                           ; $67B0: $00
    ld a, [hl+]                                   ; $67B1: $2A
    ld [hl], $00                                  ; $67B2: $36 $00
    add hl, hl                                    ; $67B4: $29
    ld h, h                                       ; $67B5: $64
    nop                                           ; $67B6: $00
    jr z, jr_039_6782                             ; $67B7: $28 $C9

    nop                                           ; $67B9: $00
    ld bc, $0000                                  ; $67BA: $01 $00 $00
    nop                                           ; $67BD: $00
    ld bc, $0100                                  ; $67BE: $01 $00 $01
    ld bc, $F400                                  ; $67C1: $01 $00 $F4
    jr nc, jr_039_67C6                            ; $67C4: $30 $00

jr_039_67C6:
    ld [hl], a                                    ; $67C6: $77
    ld c, b                                       ; $67C7: $48
    nop                                           ; $67C8: $00
    push af                                       ; $67C9: $F5
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    rlca                                          ; $67CF: $07
    ld e, $00                                     ; $67D0: $1E $00
    nop                                           ; $67D2: $00
    dec b                                         ; $67D3: $05
    add b                                         ; $67D4: $80
    nop                                           ; $67D5: $00
    nop                                           ; $67D6: $00
    ld [bc], a                                    ; $67D7: $02
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00

jr_039_67DA:
    ld bc, $67D1                                  ; $67DA: $01 $D1 $67
    ld h, c                                       ; $67DD: $61
    nop                                           ; $67DE: $00
    ld [hl], b                                    ; $67DF: $70
    ld b, e                                       ; $67E0: $43
    nop                                           ; $67E1: $00
    ld b, a                                       ; $67E2: $47
    inc l                                         ; $67E3: $2C
    nop                                           ; $67E4: $00
    ld l, d                                       ; $67E5: $6A
    ld c, [hl]                                    ; $67E6: $4E
    nop                                           ; $67E7: $00
    inc a                                         ; $67E8: $3C
    ld b, h                                       ; $67E9: $44
    nop                                           ; $67EA: $00
    ret                                           ; $67EB: $C9


    nop                                           ; $67EC: $00
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    ld b, a                                       ; $67EF: $47
    nop                                           ; $67F0: $00
    ld c, c                                       ; $67F1: $49
    ld a, [hl+]                                   ; $67F2: $2A
    nop                                           ; $67F3: $00
    ld [hl], $42                                  ; $67F4: $36 $42
    nop                                           ; $67F6: $00
    cpl                                           ; $67F7: $2F
    daa                                           ; $67F8: $27
    nop                                           ; $67F9: $00
    ret                                           ; $67FA: $C9


    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    rlca                                          ; $6800: $07
    ld e, $00                                     ; $6801: $1E $00
    nop                                           ; $6803: $00
    dec b                                         ; $6804: $05
    add b                                         ; $6805: $80
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    ld [bc], a                                    ; $6808: $02
    nop                                           ; $6809: $00
    nop                                           ; $680A: $00
    ld bc, $6802                                  ; $680B: $01 $02 $68
    ld d, d                                       ; $680E: $52
    nop                                           ; $680F: $00
    jr z, jr_039_67DA                             ; $6810: $28 $C8

    nop                                           ; $6812: $00
    and b                                         ; $6813: $A0
    ld a, c                                       ; $6814: $79
    nop                                           ; $6815: $00
    adc c                                         ; $6816: $89
    add c                                         ; $6817: $81
    nop                                           ; $6818: $00
    ld a, b                                       ; $6819: $78
    ld b, h                                       ; $681A: $44
    nop                                           ; $681B: $00
    ld c, c                                       ; $681C: $49
    ret                                           ; $681D: $C9


    nop                                           ; $681E: $00
    ld bc, $0000                                  ; $681F: $01 $00 $00
    nop                                           ; $6822: $00
    daa                                           ; $6823: $27
    nop                                           ; $6824: $00
    daa                                           ; $6825: $27
    ld b, h                                       ; $6826: $44
    nop                                           ; $6827: $00
    ld l, h                                       ; $6828: $6C
    jr z, jr_039_682B                             ; $6829: $28 $00

jr_039_682B:
    ret z                                         ; $682B: $C8

    xor d                                         ; $682C: $AA
    nop                                           ; $682D: $00
    adc c                                         ; $682E: $89
    cp a                                          ; $682F: $BF
    nop                                           ; $6830: $00
    halt                                          ; $6831: $76
    sbc d                                         ; $6832: $9A
    nop                                           ; $6833: $00
    ld l, [hl]                                    ; $6834: $6E
    ld a, [hl+]                                   ; $6835: $2A
    nop                                           ; $6836: $00
    ld [hl], $29                                  ; $6837: $36 $29
    nop                                           ; $6839: $00
    ld b, d                                       ; $683A: $42
    ld h, d                                       ; $683B: $62
    nop                                           ; $683C: $00
    ld l, h                                       ; $683D: $6C
    jr z, jr_039_6840                             ; $683E: $28 $00

jr_039_6840:
    ret                                           ; $6840: $C9


    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    ld bc, $0100                                  ; $6844: $01 $00 $01
    ld bc, $F400                                  ; $6847: $01 $00 $F4
    jr nc, jr_039_684C                            ; $684A: $30 $00

jr_039_684C:
    ld [hl], a                                    ; $684C: $77
    ld c, b                                       ; $684D: $48
    nop                                           ; $684E: $00
    push af                                       ; $684F: $F5
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    rlca                                          ; $6855: $07
    ld e, $00                                     ; $6856: $1E $00
    nop                                           ; $6858: $00
    dec b                                         ; $6859: $05
    add b                                         ; $685A: $80
    nop                                           ; $685B: $00
    nop                                           ; $685C: $00
    ld [bc], a                                    ; $685D: $02
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    ld bc, $6857                                  ; $6860: $01 $57 $68
    jr z, jr_039_6865                             ; $6863: $28 $00

jr_039_6865:
    ld e, a                                       ; $6865: $5F
    ret                                           ; $6866: $C9


    nop                                           ; $6867: $00
    ld bc, $0000                                  ; $6868: $01 $00 $00
    nop                                           ; $686B: $00
    ld e, l                                       ; $686C: $5D
    nop                                           ; $686D: $00
    ld b, h                                       ; $686E: $44
    daa                                           ; $686F: $27
    nop                                           ; $6870: $00
    ld l, $6A                                     ; $6871: $2E $6A
    nop                                           ; $6873: $00
    ld b, e                                       ; $6874: $43
    ld a, [hl+]                                   ; $6875: $2A
    nop                                           ; $6876: $00
    ld h, c                                       ; $6877: $61
    jr z, jr_039_687A                             ; $6878: $28 $00

jr_039_687A:
    ld a, $C9                                     ; $687A: $3E $C9
    nop                                           ; $687C: $00
    ld bc, $0000                                  ; $687D: $01 $00 $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    rlca                                          ; $6883: $07
    ld e, $00                                     ; $6884: $1E $00
    nop                                           ; $6886: $00
    dec b                                         ; $6887: $05
    add b                                         ; $6888: $80
    nop                                           ; $6889: $00
    nop                                           ; $688A: $00
    ld [bc], a                                    ; $688B: $02
    nop                                           ; $688C: $00
    nop                                           ; $688D: $00
    ld bc, $6885                                  ; $688E: $01 $85 $68
    jr z, jr_039_6893                             ; $6891: $28 $00

jr_039_6893:
    ld e, a                                       ; $6893: $5F
    ret z                                         ; $6894: $C8

    nop                                           ; $6895: $00
    and b                                         ; $6896: $A0
    ld a, c                                       ; $6897: $79
    nop                                           ; $6898: $00
    adc c                                         ; $6899: $89
    add c                                         ; $689A: $81
    nop                                           ; $689B: $00
    ld a, b                                       ; $689C: $78
    ld b, h                                       ; $689D: $44
    nop                                           ; $689E: $00
    ret                                           ; $689F: $C9


    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    xor d                                         ; $68A3: $AA
    nop                                           ; $68A4: $00
    adc c                                         ; $68A5: $89
    cp a                                          ; $68A6: $BF
    nop                                           ; $68A7: $00
    halt                                          ; $68A8: $76
    sbc d                                         ; $68A9: $9A
    nop                                           ; $68AA: $00
    ld l, [hl]                                    ; $68AB: $6E
    ld a, [hl+]                                   ; $68AC: $2A
    nop                                           ; $68AD: $00
    ld [hl], $29                                  ; $68AE: $36 $29
    nop                                           ; $68B0: $00
    ld h, h                                       ; $68B1: $64
    jr z, jr_039_68B4                             ; $68B2: $28 $00

jr_039_68B4:
    ret                                           ; $68B4: $C9


    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    ld bc, $0100                                  ; $68B8: $01 $00 $01
    ld bc, $F400                                  ; $68BB: $01 $00 $F4
    jr nc, jr_039_68C0                            ; $68BE: $30 $00

jr_039_68C0:
    ld [hl], a                                    ; $68C0: $77
    ld c, b                                       ; $68C1: $48
    nop                                           ; $68C2: $00
    push af                                       ; $68C3: $F5
    nop                                           ; $68C4: $00
    nop                                           ; $68C5: $00
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    rlca                                          ; $68C9: $07
    ld e, $00                                     ; $68CA: $1E $00
    nop                                           ; $68CC: $00
    dec b                                         ; $68CD: $05
    add b                                         ; $68CE: $80
    nop                                           ; $68CF: $00
    nop                                           ; $68D0: $00
    ld [bc], a                                    ; $68D1: $02
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    ld bc, $68CB                                  ; $68D4: $01 $CB $68
    ld e, l                                       ; $68D7: $5D
    nop                                           ; $68D8: $00
    ld b, h                                       ; $68D9: $44
    ld e, l                                       ; $68DA: $5D
    nop                                           ; $68DB: $00
    ld b, h                                       ; $68DC: $44
    and b                                         ; $68DD: $A0
    nop                                           ; $68DE: $00
    ld a, c                                       ; $68DF: $79
    adc c                                         ; $68E0: $89
    nop                                           ; $68E1: $00
    add c                                         ; $68E2: $81
    ld a, b                                       ; $68E3: $78
    nop                                           ; $68E4: $00
    ld c, d                                       ; $68E5: $4A
    nop                                           ; $68E6: $00
    nop                                           ; $68E7: $00
    nop                                           ; $68E8: $00
    ld b, e                                       ; $68E9: $43
    nop                                           ; $68EA: $00
    ld c, b                                       ; $68EB: $48
    dec hl                                        ; $68EC: $2B
    nop                                           ; $68ED: $00
    ld c, c                                       ; $68EE: $49
    daa                                           ; $68EF: $27
    nop                                           ; $68F0: $00
    ld l, a                                       ; $68F1: $6F
    ld b, h                                       ; $68F2: $44
    nop                                           ; $68F3: $00
    ld a, $C9                                     ; $68F4: $3E $C9
    nop                                           ; $68F6: $00
    ld bc, $0000                                  ; $68F7: $01 $00 $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    rlca                                          ; $68FD: $07
    ld e, $00                                     ; $68FE: $1E $00
    nop                                           ; $6900: $00
    dec b                                         ; $6901: $05
    add b                                         ; $6902: $80
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    ld [bc], a                                    ; $6905: $02
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    ld bc, $68FF                                  ; $6908: $01 $FF $68
    scf                                           ; $690B: $37
    nop                                           ; $690C: $00
    inc [hl]                                      ; $690D: $34
    daa                                           ; $690E: $27
    nop                                           ; $690F: $00
    ld l, a                                       ; $6910: $6F
    ld b, h                                       ; $6911: $44
    nop                                           ; $6912: $00
    ld a, $CB                                     ; $6913: $3E $CB
    nop                                           ; $6915: $00
    ld bc, $0000                                  ; $6916: $01 $00 $00
    nop                                           ; $6919: $00
    xor d                                         ; $691A: $AA
    nop                                           ; $691B: $00
    adc c                                         ; $691C: $89
    cp a                                          ; $691D: $BF
    nop                                           ; $691E: $00
    halt                                          ; $691F: $76
    sbc d                                         ; $6920: $9A
    nop                                           ; $6921: $00
    ld l, [hl]                                    ; $6922: $6E
    ld a, [hl+]                                   ; $6923: $2A
    nop                                           ; $6924: $00
    ld [hl], $29                                  ; $6925: $36 $29
    nop                                           ; $6927: $00
    ld b, d                                       ; $6928: $42
    ld h, d                                       ; $6929: $62
    nop                                           ; $692A: $00
    ld l, d                                       ; $692B: $6A
    ld l, a                                       ; $692C: $6F
    nop                                           ; $692D: $00
    ld b, h                                       ; $692E: $44
    ld a, $00                                     ; $692F: $3E $00
    ret                                           ; $6931: $C9


    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    ld bc, $0100                                  ; $6935: $01 $00 $01
    ld bc, $F400                                  ; $6938: $01 $00 $F4
    jr nc, jr_039_693D                            ; $693B: $30 $00

jr_039_693D:
    ld [hl], a                                    ; $693D: $77
    ld c, b                                       ; $693E: $48
    nop                                           ; $693F: $00
    push af                                       ; $6940: $F5
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    rlca                                          ; $6946: $07
    ld e, $00                                     ; $6947: $1E $00
    nop                                           ; $6949: $00
    dec b                                         ; $694A: $05
    add b                                         ; $694B: $80
    nop                                           ; $694C: $00
    nop                                           ; $694D: $00
    ld [bc], a                                    ; $694E: $02
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    ld bc, $6948                                  ; $6951: $01 $48 $69
    ld c, c                                       ; $6954: $49
    nop                                           ; $6955: $00
    halt                                          ; $6956: $76
    ld l, a                                       ; $6957: $6F
    nop                                           ; $6958: $00
    ld b, h                                       ; $6959: $44
    ret z                                         ; $695A: $C8

    nop                                           ; $695B: $00
    ccf                                           ; $695C: $3F
    daa                                           ; $695D: $27
    nop                                           ; $695E: $00
    ld [hl], $3F                                  ; $695F: $36 $3F
    nop                                           ; $6961: $00
    cpl                                           ; $6962: $2F
    ld b, e                                       ; $6963: $43
    nop                                           ; $6964: $00
    ld bc, $0049                                  ; $6965: $01 $49 $00
    daa                                           ; $6968: $27
    dec sp                                        ; $6969: $3B
    nop                                           ; $696A: $00
    ld h, l                                       ; $696B: $65
    halt                                          ; $696C: $76
    nop                                           ; $696D: $00
    ld l, a                                       ; $696E: $6F
    ret                                           ; $696F: $C9


    nop                                           ; $6970: $00
    ld bc, $0000                                  ; $6971: $01 $00 $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    rlca                                          ; $6977: $07
    ld e, $00                                     ; $6978: $1E $00
    nop                                           ; $697A: $00
    dec b                                         ; $697B: $05
    add b                                         ; $697C: $80
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    ld [bc], a                                    ; $697F: $02
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    ld bc, $6979                                  ; $6982: $01 $79 $69
    ld d, c                                       ; $6985: $51
    nop                                           ; $6986: $00
    halt                                          ; $6987: $76
    ret z                                         ; $6988: $C8

    nop                                           ; $6989: $00
    ld h, d                                       ; $698A: $62
    ld l, d                                       ; $698B: $6A
    nop                                           ; $698C: $00
    dec sp                                        ; $698D: $3B
    ld h, l                                       ; $698E: $65
    nop                                           ; $698F: $00
    ld l, a                                       ; $6990: $6F
    rlc b                                         ; $6991: $CB $00
    ld bc, $0000                                  ; $6993: $01 $00 $00
    nop                                           ; $6996: $00
    ld h, h                                       ; $6997: $64
    nop                                           ; $6998: $00
    ld [hl], $C8                                  ; $6999: $36 $C8
    nop                                           ; $699B: $00
    xor d                                         ; $699C: $AA
    adc c                                         ; $699D: $89
    nop                                           ; $699E: $00
    cp a                                          ; $699F: $BF
    halt                                          ; $69A0: $76
    nop                                           ; $69A1: $00
    sbc d                                         ; $69A2: $9A
    ld l, [hl]                                    ; $69A3: $6E
    nop                                           ; $69A4: $00
    ld a, [hl+]                                   ; $69A5: $2A
    ld [hl], $00                                  ; $69A6: $36 $00
    add hl, hl                                    ; $69A8: $29
    ld b, d                                       ; $69A9: $42
    nop                                           ; $69AA: $00
    ld h, d                                       ; $69AB: $62
    ld l, d                                       ; $69AC: $6A
    nop                                           ; $69AD: $00
    dec a                                         ; $69AE: $3D
    ret                                           ; $69AF: $C9


    nop                                           ; $69B0: $00
    ld bc, $0000                                  ; $69B1: $01 $00 $00
    nop                                           ; $69B4: $00
    ld bc, $0100                                  ; $69B5: $01 $00 $01
    ld bc, $F400                                  ; $69B8: $01 $00 $F4
    jr nc, jr_039_69BD                            ; $69BB: $30 $00

jr_039_69BD:
    ld [hl], a                                    ; $69BD: $77
    ld c, b                                       ; $69BE: $48
    nop                                           ; $69BF: $00
    push af                                       ; $69C0: $F5
    nop                                           ; $69C1: $00
    nop                                           ; $69C2: $00
    nop                                           ; $69C3: $00
    nop                                           ; $69C4: $00
    nop                                           ; $69C5: $00
    rlca                                          ; $69C6: $07
    ld e, $00                                     ; $69C7: $1E $00
    nop                                           ; $69C9: $00
    dec b                                         ; $69CA: $05
    add b                                         ; $69CB: $80
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    ld [bc], a                                    ; $69CE: $02
    nop                                           ; $69CF: $00
    nop                                           ; $69D0: $00
    ld bc, $69C8                                  ; $69D1: $01 $C8 $69
    add hl, sp                                    ; $69D4: $39
    nop                                           ; $69D5: $00
    ld l, a                                       ; $69D6: $6F
    ld c, c                                       ; $69D7: $49
    nop                                           ; $69D8: $00
    ld h, c                                       ; $69D9: $61
    ld c, l                                       ; $69DA: $4D
    nop                                           ; $69DB: $00
    dec hl                                        ; $69DC: $2B
    ldh [rP1], a                                  ; $69DD: $E0 $00
    ldh [rP1], a                                  ; $69DF: $E0 $00
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    inc l                                         ; $69E3: $2C
    nop                                           ; $69E4: $00
    ccf                                           ; $69E5: $3F
    daa                                           ; $69E6: $27
    nop                                           ; $69E7: $00
    ld c, [hl]                                    ; $69E8: $4E
    inc a                                         ; $69E9: $3C
    nop                                           ; $69EA: $00
    ld l, e                                       ; $69EB: $6B
    ld b, h                                       ; $69EC: $44
    nop                                           ; $69ED: $00
    ld [hl], b                                    ; $69EE: $70
    ccf                                           ; $69EF: $3F
    nop                                           ; $69F0: $00
    ld c, c                                       ; $69F1: $49
    ret                                           ; $69F2: $C9


    nop                                           ; $69F3: $00
    ld bc, $0000                                  ; $69F4: $01 $00 $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    nop                                           ; $69F9: $00
    rlca                                          ; $69FA: $07
    ld e, $00                                     ; $69FB: $1E $00
    nop                                           ; $69FD: $00
    dec b                                         ; $69FE: $05
    add b                                         ; $69FF: $80
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    ld [bc], a                                    ; $6A02: $02
    nop                                           ; $6A03: $00
    nop                                           ; $6A04: $00
    ld bc, $69FC                                  ; $6A05: $01 $FC $69
    ld d, b                                       ; $6A08: $50
    nop                                           ; $6A09: $00
    ld [hl], b                                    ; $6A0A: $70
    ret z                                         ; $6A0B: $C8

    nop                                           ; $6A0C: $00
    ld h, d                                       ; $6A0D: $62
    ld l, d                                       ; $6A0E: $6A
    nop                                           ; $6A0F: $00
    ld c, c                                       ; $6A10: $49
    ret                                           ; $6A11: $C9


    nop                                           ; $6A12: $00
    ld bc, $0000                                  ; $6A13: $01 $00 $00
    nop                                           ; $6A16: $00
    ld a, [hl+]                                   ; $6A17: $2A
    nop                                           ; $6A18: $00
    ld d, a                                       ; $6A19: $57
    add hl, hl                                    ; $6A1A: $29
    nop                                           ; $6A1B: $00
    ld b, d                                       ; $6A1C: $42
    ld a, [hl+]                                   ; $6A1D: $2A
    nop                                           ; $6A1E: $00
    ld l, $C8                                     ; $6A1F: $2E $C8
    nop                                           ; $6A21: $00
    cpl                                           ; $6A22: $2F
    ld l, e                                       ; $6A23: $6B
    nop                                           ; $6A24: $00
    jr nc, jr_039_6A27                            ; $6A25: $30 $00

jr_039_6A27:
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    xor d                                         ; $6A29: $AA
    nop                                           ; $6A2A: $00
    adc c                                         ; $6A2B: $89
    cp a                                          ; $6A2C: $BF
    nop                                           ; $6A2D: $00
    halt                                          ; $6A2E: $76
    sbc d                                         ; $6A2F: $9A
    nop                                           ; $6A30: $00
    ld b, h                                       ; $6A31: $44
    ret                                           ; $6A32: $C9


    nop                                           ; $6A33: $00
    ld bc, $0000                                  ; $6A34: $01 $00 $00
    nop                                           ; $6A37: $00
    ld bc, $0100                                  ; $6A38: $01 $00 $01
    ld bc, $F400                                  ; $6A3B: $01 $00 $F4
    jr nc, jr_039_6A40                            ; $6A3E: $30 $00

jr_039_6A40:
    ld [hl], a                                    ; $6A40: $77
    ld c, b                                       ; $6A41: $48
    nop                                           ; $6A42: $00
    push af                                       ; $6A43: $F5
    nop                                           ; $6A44: $00
    nop                                           ; $6A45: $00
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    rlca                                          ; $6A49: $07
    ld e, $00                                     ; $6A4A: $1E $00
    nop                                           ; $6A4C: $00
    dec b                                         ; $6A4D: $05
    add b                                         ; $6A4E: $80
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    ld [bc], a                                    ; $6A51: $02
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    ld bc, $6A4B                                  ; $6A54: $01 $4B $6A
    jr nc, jr_039_6A59                            ; $6A57: $30 $00

jr_039_6A59:
    ld l, a                                       ; $6A59: $6F
    ld d, e                                       ; $6A5A: $53
    nop                                           ; $6A5B: $00
    ld [hl], b                                    ; $6A5C: $70
    ld b, d                                       ; $6A5D: $42
    nop                                           ; $6A5E: $00
    dec l                                         ; $6A5F: $2D
    ld l, e                                       ; $6A60: $6B
    nop                                           ; $6A61: $00
    ret                                           ; $6A62: $C9


    nop                                           ; $6A63: $00
    nop                                           ; $6A64: $00
    nop                                           ; $6A65: $00
    ld h, c                                       ; $6A66: $61
    nop                                           ; $6A67: $00
    ld [hl], b                                    ; $6A68: $70
    ld b, e                                       ; $6A69: $43
    nop                                           ; $6A6A: $00
    ld b, a                                       ; $6A6B: $47
    inc l                                         ; $6A6C: $2C
    nop                                           ; $6A6D: $00
    ld l, d                                       ; $6A6E: $6A
    ld c, [hl]                                    ; $6A6F: $4E
    nop                                           ; $6A70: $00
    inc a                                         ; $6A71: $3C
    ld b, h                                       ; $6A72: $44
    nop                                           ; $6A73: $00
    ret                                           ; $6A74: $C9


    nop                                           ; $6A75: $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    rlca                                          ; $6A7A: $07
    ld e, $00                                     ; $6A7B: $1E $00
    nop                                           ; $6A7D: $00
    dec b                                         ; $6A7E: $05
    add b                                         ; $6A7F: $80
    nop                                           ; $6A80: $00
    nop                                           ; $6A81: $00
    ld [bc], a                                    ; $6A82: $02
    nop                                           ; $6A83: $00
    nop                                           ; $6A84: $00
    ld bc, $6A7C                                  ; $6A85: $01 $7C $6A
    ld h, h                                       ; $6A88: $64
    nop                                           ; $6A89: $00
    dec l                                         ; $6A8A: $2D
    ld b, a                                       ; $6A8B: $47
    nop                                           ; $6A8C: $00
    inc l                                         ; $6A8D: $2C
    ccf                                           ; $6A8E: $3F
    nop                                           ; $6A8F: $00
    rlc b                                         ; $6A90: $CB $00
    nop                                           ; $6A92: $00
    nop                                           ; $6A93: $00
    cpl                                           ; $6A94: $2F
    nop                                           ; $6A95: $00
    ld l, e                                       ; $6A96: $6B
    jr nc, jr_039_6A99                            ; $6A97: $30 $00

jr_039_6A99:
    xor d                                         ; $6A99: $AA
    adc c                                         ; $6A9A: $89
    nop                                           ; $6A9B: $00
    cp a                                          ; $6A9C: $BF
    halt                                          ; $6A9D: $76
    nop                                           ; $6A9E: $00
    sbc d                                         ; $6A9F: $9A
    ld b, h                                       ; $6AA0: $44
    nop                                           ; $6AA1: $00
    ret                                           ; $6AA2: $C9


    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    ld bc, $0100                                  ; $6AA6: $01 $00 $01
    ld bc, $F400                                  ; $6AA9: $01 $00 $F4
    jr nc, jr_039_6AAE                            ; $6AAC: $30 $00

jr_039_6AAE:
    ld [hl], a                                    ; $6AAE: $77
    ld c, b                                       ; $6AAF: $48
    nop                                           ; $6AB0: $00
    push af                                       ; $6AB1: $F5
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    rlca                                          ; $6AB7: $07
    ld e, $00                                     ; $6AB8: $1E $00
    nop                                           ; $6ABA: $00
    dec b                                         ; $6ABB: $05
    add b                                         ; $6ABC: $80
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    ld [bc], a                                    ; $6ABF: $02
    nop                                           ; $6AC0: $00
    nop                                           ; $6AC1: $00
    ld bc, $6AB9                                  ; $6AC2: $01 $B9 $6A
    ld e, l                                       ; $6AC5: $5D
    nop                                           ; $6AC6: $00
    ld b, h                                       ; $6AC7: $44
    ld e, l                                       ; $6AC8: $5D
    nop                                           ; $6AC9: $00
    ld b, h                                       ; $6ACA: $44
    ld b, h                                       ; $6ACB: $44
    nop                                           ; $6ACC: $00
    ld c, c                                       ; $6ACD: $49
    ret                                           ; $6ACE: $C9


jr_039_6ACF:
    nop                                           ; $6ACF: $00
    ld bc, $0000                                  ; $6AD0: $01 $00 $00
    nop                                           ; $6AD3: $00
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    rlca                                          ; $6AD6: $07
    ld e, $00                                     ; $6AD7: $1E $00
    nop                                           ; $6AD9: $00
    dec b                                         ; $6ADA: $05
    add b                                         ; $6ADB: $80
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    ld [bc], a                                    ; $6ADE: $02
    nop                                           ; $6ADF: $00
    nop                                           ; $6AE0: $00
    ld bc, $6AD8                                  ; $6AE1: $01 $D8 $6A
    ld h, d                                       ; $6AE4: $62
    nop                                           ; $6AE5: $00
    ld l, d                                       ; $6AE6: $6A
    ld c, c                                       ; $6AE7: $49
    nop                                           ; $6AE8: $00
    ret                                           ; $6AE9: $C9


    nop                                           ; $6AEA: $00
    nop                                           ; $6AEB: $00
    nop                                           ; $6AEC: $00
    ld b, c                                       ; $6AED: $41
    nop                                           ; $6AEE: $00
    ld sp, $004D                                  ; $6AEF: $31 $4D $00
    xor d                                         ; $6AF2: $AA
    adc c                                         ; $6AF3: $89
    nop                                           ; $6AF4: $00
    cp a                                          ; $6AF5: $BF
    halt                                          ; $6AF6: $76
    nop                                           ; $6AF7: $00
    sbc d                                         ; $6AF8: $9A
    ld l, [hl]                                    ; $6AF9: $6E
    nop                                           ; $6AFA: $00
    ld a, [hl+]                                   ; $6AFB: $2A
    ld [hl], $00                                  ; $6AFC: $36 $00
    add hl, hl                                    ; $6AFE: $29
    ld b, d                                       ; $6AFF: $42
    nop                                           ; $6B00: $00
    ld h, d                                       ; $6B01: $62
    ld l, h                                       ; $6B02: $6C
    nop                                           ; $6B03: $00
    jr z, jr_039_6ACF                             ; $6B04: $28 $C9

    nop                                           ; $6B06: $00
    ld bc, $0000                                  ; $6B07: $01 $00 $00
    nop                                           ; $6B0A: $00
    ld bc, $0100                                  ; $6B0B: $01 $00 $01
    ld bc, $F400                                  ; $6B0E: $01 $00 $F4
    jr nc, jr_039_6B13                            ; $6B11: $30 $00

jr_039_6B13:
    ld [hl], a                                    ; $6B13: $77
    ld c, b                                       ; $6B14: $48
    nop                                           ; $6B15: $00
    push af                                       ; $6B16: $F5
    nop                                           ; $6B17: $00
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    rlca                                          ; $6B1C: $07
    ld e, $00                                     ; $6B1D: $1E $00
    nop                                           ; $6B1F: $00
    dec b                                         ; $6B20: $05
    add b                                         ; $6B21: $80
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    ld [bc], a                                    ; $6B24: $02
    nop                                           ; $6B25: $00
    nop                                           ; $6B26: $00
    ld bc, $6B1E                                  ; $6B27: $01 $1E $6B
    ccf                                           ; $6B2A: $3F
    nop                                           ; $6B2B: $00
    ld b, h                                       ; $6B2C: $44
    ret z                                         ; $6B2D: $C8

    nop                                           ; $6B2E: $00
    ld c, c                                       ; $6B2F: $49
    ld c, d                                       ; $6B30: $4A
    nop                                           ; $6B31: $00
    ld h, c                                       ; $6B32: $61
    dec hl                                        ; $6B33: $2B
    nop                                           ; $6B34: $00
    ld l, a                                       ; $6B35: $6F
    jr nc, jr_039_6B38                            ; $6B36: $30 $00

jr_039_6B38:
    add hl, hl                                    ; $6B38: $29
    inc a                                         ; $6B39: $3C
    nop                                           ; $6B3A: $00
    ret z                                         ; $6B3B: $C8

    ld c, a                                       ; $6B3C: $4F
    nop                                           ; $6B3D: $00
    ccf                                           ; $6B3E: $3F
    scf                                           ; $6B3F: $37
    nop                                           ; $6B40: $00
    ld l, b                                       ; $6B41: $68
    ret z                                         ; $6B42: $C8

    nop                                           ; $6B43: $00
    jr z, jr_039_6B87                             ; $6B44: $28 $41

    nop                                           ; $6B46: $00
    ld d, [hl]                                    ; $6B47: $56
    ld [hl], $00                                  ; $6B48: $36 $00
    rlc b                                         ; $6B4A: $CB $00
    nop                                           ; $6B4C: $00
    nop                                           ; $6B4D: $00
    jr z, jr_039_6B50                             ; $6B4E: $28 $00

jr_039_6B50:
    ld b, c                                       ; $6B50: $41
    ld d, [hl]                                    ; $6B51: $56
    nop                                           ; $6B52: $00
    ld [hl], $CB                                  ; $6B53: $36 $CB
    nop                                           ; $6B55: $00
    ld bc, $0028                                  ; $6B56: $01 $28 $00
    ld b, c                                       ; $6B59: $41
    ld d, [hl]                                    ; $6B5A: $56
    nop                                           ; $6B5B: $00
    ld [hl], $CB                                  ; $6B5C: $36 $CB
    nop                                           ; $6B5E: $00
    rlc b                                         ; $6B5F: $CB $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    rlca                                          ; $6B65: $07
    ld e, $00                                     ; $6B66: $1E $00
    nop                                           ; $6B68: $00
    dec b                                         ; $6B69: $05
    add b                                         ; $6B6A: $80
    nop                                           ; $6B6B: $00
    nop                                           ; $6B6C: $00
    ld [bc], a                                    ; $6B6D: $02
    nop                                           ; $6B6E: $00
    nop                                           ; $6B6F: $00
    ld bc, $6B67                                  ; $6B70: $01 $67 $6B
    ld h, h                                       ; $6B73: $64
    nop                                           ; $6B74: $00
    ld [hl], a                                    ; $6B75: $77
    ld [hl], $00                                  ; $6B76: $36 $00
    ret z                                         ; $6B78: $C8

    daa                                           ; $6B79: $27
    nop                                           ; $6B7A: $00
    daa                                           ; $6B7B: $27
    ld a, $00                                     ; $6B7C: $3E $00
    ret                                           ; $6B7E: $C9


    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    dec [hl]                                      ; $6B82: $35
    nop                                           ; $6B83: $00
    ld h, $C8                                     ; $6B84: $26 $C8
    nop                                           ; $6B86: $00

jr_039_6B87:
    cpl                                           ; $6B87: $2F
    ld c, l                                       ; $6B88: $4D
    nop                                           ; $6B89: $00
    xor d                                         ; $6B8A: $AA
    adc c                                         ; $6B8B: $89
    nop                                           ; $6B8C: $00
    cp a                                          ; $6B8D: $BF
    halt                                          ; $6B8E: $76
    nop                                           ; $6B8F: $00
    sbc d                                         ; $6B90: $9A
    ld b, a                                       ; $6B91: $47
    nop                                           ; $6B92: $00
    ret z                                         ; $6B93: $C8

    ld b, c                                       ; $6B94: $41
    nop                                           ; $6B95: $00
    ld sp, $0051                                  ; $6B96: $31 $51 $00
    scf                                           ; $6B99: $37
    scf                                           ; $6B9A: $37
    nop                                           ; $6B9B: $00
    ld h, b                                       ; $6B9C: $60
    rlc b                                         ; $6B9D: $CB $00
    ld bc, $0000                                  ; $6B9F: $01 $00 $00
    nop                                           ; $6BA2: $00
    ld bc, $0100                                  ; $6BA3: $01 $00 $01
    ld bc, $F400                                  ; $6BA6: $01 $00 $F4
    jr nc, jr_039_6BAB                            ; $6BA9: $30 $00

jr_039_6BAB:
    ld [hl], a                                    ; $6BAB: $77
    ld c, b                                       ; $6BAC: $48
    nop                                           ; $6BAD: $00
    push af                                       ; $6BAE: $F5
    nop                                           ; $6BAF: $00
    nop                                           ; $6BB0: $00
    nop                                           ; $6BB1: $00
    nop                                           ; $6BB2: $00
    nop                                           ; $6BB3: $00
    rlca                                          ; $6BB4: $07
    ld e, $00                                     ; $6BB5: $1E $00
    nop                                           ; $6BB7: $00
    dec b                                         ; $6BB8: $05
    add b                                         ; $6BB9: $80
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00
    ld [bc], a                                    ; $6BBC: $02
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    ld bc, $6BB6                                  ; $6BBF: $01 $B6 $6B
    ld h, c                                       ; $6BC2: $61
    nop                                           ; $6BC3: $00
    ld [hl], a                                    ; $6BC4: $77
    ret z                                         ; $6BC5: $C8

    nop                                           ; $6BC6: $00
    add hl, sp                                    ; $6BC7: $39
    ld l, a                                       ; $6BC8: $6F
    nop                                           ; $6BC9: $00
    ld c, c                                       ; $6BCA: $49
    ld b, d                                       ; $6BCB: $42
    nop                                           ; $6BCC: $00
    ld l, a                                       ; $6BCD: $6F
    scf                                           ; $6BCE: $37
    nop                                           ; $6BCF: $00
    jr z, jr_039_6C0D                             ; $6BD0: $28 $3B

    nop                                           ; $6BD2: $00
    ld h, l                                       ; $6BD3: $65
    xor d                                         ; $6BD4: $AA
    nop                                           ; $6BD5: $00
    adc c                                         ; $6BD6: $89
    cp a                                          ; $6BD7: $BF
    nop                                           ; $6BD8: $00
    halt                                          ; $6BD9: $76
    sbc d                                         ; $6BDA: $9A
    nop                                           ; $6BDB: $00
    ld a, [hl+]                                   ; $6BDC: $2A
    ld [hl], $00                                  ; $6BDD: $36 $00
    add hl, hl                                    ; $6BDF: $29
    ld b, d                                       ; $6BE0: $42
    nop                                           ; $6BE1: $00
    ld h, $33                                     ; $6BE2: $26 $33
    nop                                           ; $6BE4: $00
    ld l, b                                       ; $6BE5: $68
    ld l, a                                       ; $6BE6: $6F
    nop                                           ; $6BE7: $00
    ld c, c                                       ; $6BE8: $49
    daa                                           ; $6BE9: $27
    nop                                           ; $6BEA: $00
    ld l, l                                       ; $6BEB: $6D
    ld h, h                                       ; $6BEC: $64
    nop                                           ; $6BED: $00
    ret                                           ; $6BEE: $C9


    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    nop                                           ; $6BF2: $00
    nop                                           ; $6BF3: $00
    rlca                                          ; $6BF4: $07
    ld e, $00                                     ; $6BF5: $1E $00
    nop                                           ; $6BF7: $00
    dec b                                         ; $6BF8: $05
    add b                                         ; $6BF9: $80
    nop                                           ; $6BFA: $00
    nop                                           ; $6BFB: $00
    ld [bc], a                                    ; $6BFC: $02
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    ld bc, $6BF6                                  ; $6BFF: $01 $F6 $6B
    ld h, d                                       ; $6C02: $62
    nop                                           ; $6C03: $00
    ld [hl], b                                    ; $6C04: $70
    ccf                                           ; $6C05: $3F
    nop                                           ; $6C06: $00
    ld [hl], a                                    ; $6C07: $77
    ret                                           ; $6C08: $C9


    nop                                           ; $6C09: $00
    ld bc, $0000                                  ; $6C0A: $01 $00 $00

jr_039_6C0D:
    nop                                           ; $6C0D: $00
    dec [hl]                                      ; $6C0E: $35
    nop                                           ; $6C0F: $00
    ld h, $C8                                     ; $6C10: $26 $C8
    nop                                           ; $6C12: $00
    xor d                                         ; $6C13: $AA
    adc c                                         ; $6C14: $89
    nop                                           ; $6C15: $00
    cp a                                          ; $6C16: $BF
    halt                                          ; $6C17: $76
    nop                                           ; $6C18: $00
    sbc d                                         ; $6C19: $9A
    ld l, [hl]                                    ; $6C1A: $6E
    nop                                           ; $6C1B: $00
    ld a, [hl+]                                   ; $6C1C: $2A
    ld [hl], $00                                  ; $6C1D: $36 $00
    add hl, hl                                    ; $6C1F: $29
    ld b, d                                       ; $6C20: $42
    nop                                           ; $6C21: $00
    ld h, $33                                     ; $6C22: $26 $33
    nop                                           ; $6C24: $00
    ld l, d                                       ; $6C25: $6A
    ld l, l                                       ; $6C26: $6D
    nop                                           ; $6C27: $00
    ret                                           ; $6C28: $C9


    nop                                           ; $6C29: $00
    nop                                           ; $6C2A: $00
    nop                                           ; $6C2B: $00
    ld bc, $0100                                  ; $6C2C: $01 $00 $01
    ld bc, $F400                                  ; $6C2F: $01 $00 $F4
    jr nc, jr_039_6C34                            ; $6C32: $30 $00

jr_039_6C34:
    ld [hl], a                                    ; $6C34: $77
    ld c, b                                       ; $6C35: $48
    nop                                           ; $6C36: $00
    push af                                       ; $6C37: $F5
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    nop                                           ; $6C3A: $00
    nop                                           ; $6C3B: $00
    nop                                           ; $6C3C: $00
    rlca                                          ; $6C3D: $07
    ld e, $00                                     ; $6C3E: $1E $00
    nop                                           ; $6C40: $00
    dec b                                         ; $6C41: $05
    add b                                         ; $6C42: $80
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00
    ld [bc], a                                    ; $6C45: $02
    nop                                           ; $6C46: $00
    nop                                           ; $6C47: $00
    ld bc, $6C3F                                  ; $6C48: $01 $3F $6C
    ld h, c                                       ; $6C4B: $61
    nop                                           ; $6C4C: $00
    ld [hl], b                                    ; $6C4D: $70
    ld b, e                                       ; $6C4E: $43
    nop                                           ; $6C4F: $00
    jr nc, jr_039_6CC1                            ; $6C50: $30 $6F

    nop                                           ; $6C52: $00
    ld d, e                                       ; $6C53: $53
    ld l, c                                       ; $6C54: $69
    nop                                           ; $6C55: $00
    ld e, l                                       ; $6C56: $5D
    ld [hl], $00                                  ; $6C57: $36 $00
    ld h, a                                       ; $6C59: $67
    jr z, jr_039_6C5C                             ; $6C5A: $28 $00

jr_039_6C5C:
    ret                                           ; $6C5C: $C9


    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    rlca                                          ; $6C62: $07
    ld e, $00                                     ; $6C63: $1E $00
    nop                                           ; $6C65: $00
    dec b                                         ; $6C66: $05

jr_039_6C67:
    add b                                         ; $6C67: $80
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    ld [bc], a                                    ; $6C6A: $02
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    ld bc, $6C64                                  ; $6C6D: $01 $64 $6C
    ld h, c                                       ; $6C70: $61
    nop                                           ; $6C71: $00
    ld [hl], b                                    ; $6C72: $70
    ld b, e                                       ; $6C73: $43
    nop                                           ; $6C74: $00
    daa                                           ; $6C75: $27
    ld l, $00                                     ; $6C76: $2E $00
    ld l, d                                       ; $6C78: $6A
    ld a, $00                                     ; $6C79: $3E $00
    ret                                           ; $6C7B: $C9


    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    ld b, d                                       ; $6C7F: $42
    nop                                           ; $6C80: $00
    inc l                                         ; $6C81: $2C
    ld l, [hl]                                    ; $6C82: $6E
    nop                                           ; $6C83: $00
    ld b, a                                       ; $6C84: $47
    inc l                                         ; $6C85: $2C
    nop                                           ; $6C86: $00
    ld l, d                                       ; $6C87: $6A
    ld b, h                                       ; $6C88: $44
    nop                                           ; $6C89: $00
    ld l, $C8                                     ; $6C8A: $2E $C8
    nop                                           ; $6C8C: $00
    ld c, d                                       ; $6C8D: $4A
    jr nc, jr_039_6C90                            ; $6C8E: $30 $00

jr_039_6C90:
    dec [hl]                                      ; $6C90: $35
    ld c, c                                       ; $6C91: $49
    nop                                           ; $6C92: $00
    daa                                           ; $6C93: $27
    ld h, h                                       ; $6C94: $64
    nop                                           ; $6C95: $00
    jr z, jr_039_6CE2                             ; $6C96: $28 $4A

    nop                                           ; $6C98: $00
    ld [hl], $64                                  ; $6C99: $36 $64
    nop                                           ; $6C9B: $00
    jr z, jr_039_6C67                             ; $6C9C: $28 $C9

    nop                                           ; $6C9E: $00
    ld bc, $0000                                  ; $6C9F: $01 $00 $00
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    rlca                                          ; $6CA5: $07
    ld e, $00                                     ; $6CA6: $1E $00
    nop                                           ; $6CA8: $00
    dec b                                         ; $6CA9: $05
    add b                                         ; $6CAA: $80
    nop                                           ; $6CAB: $00
    nop                                           ; $6CAC: $00
    ld [bc], a                                    ; $6CAD: $02
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    ld bc, $6CA7                                  ; $6CB0: $01 $A7 $6C
    ld h, d                                       ; $6CB3: $62
    nop                                           ; $6CB4: $00
    ld l, d                                       ; $6CB5: $6A
    ld c, c                                       ; $6CB6: $49
    nop                                           ; $6CB7: $00
    ret                                           ; $6CB8: $C9


    jr z, jr_039_6CBB                             ; $6CB9: $28 $00

jr_039_6CBB:
    ld e, l                                       ; $6CBB: $5D
    daa                                           ; $6CBC: $27
    nop                                           ; $6CBD: $00
    ld a, $CB                                     ; $6CBE: $3E $CB
    nop                                           ; $6CC0: $00

jr_039_6CC1:
    ld bc, $0000                                  ; $6CC1: $01 $00 $00
    nop                                           ; $6CC4: $00
    ret nc                                        ; $6CC5: $D0

    nop                                           ; $6CC6: $00
    dec l                                         ; $6CC7: $2D
    ld l, h                                       ; $6CC8: $6C
    nop                                           ; $6CC9: $00
    daa                                           ; $6CCA: $27
    and l                                         ; $6CCB: $A5
    nop                                           ; $6CCC: $00
    ld a, a                                       ; $6CCD: $7F
    sub h                                         ; $6CCE: $94
    nop                                           ; $6CCF: $00
    cp e                                          ; $6CD0: $BB
    ld a, b                                       ; $6CD1: $78
    nop                                           ; $6CD2: $00
    pop de                                        ; $6CD3: $D1
    ld c, d                                       ; $6CD4: $4A
    nop                                           ; $6CD5: $00
    ld bc, $0026                                  ; $6CD6: $01 $26 $00
    add hl, hl                                    ; $6CD9: $29
    ccf                                           ; $6CDA: $3F
    nop                                           ; $6CDB: $00
    dec hl                                        ; $6CDC: $2B
    ld c, c                                       ; $6CDD: $49
    nop                                           ; $6CDE: $00
    call z, RST_00                                ; $6CDF: $CC $00 $00

jr_039_6CE2:
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    rlca                                          ; $6CE5: $07
    ld e, $00                                     ; $6CE6: $1E $00
    nop                                           ; $6CE8: $00
    dec b                                         ; $6CE9: $05
    add b                                         ; $6CEA: $80
    nop                                           ; $6CEB: $00
    nop                                           ; $6CEC: $00
    ld [bc], a                                    ; $6CED: $02
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    ld bc, $6CE7                                  ; $6CF0: $01 $E7 $6C
    scf                                           ; $6CF3: $37
    nop                                           ; $6CF4: $00
    inc [hl]                                      ; $6CF5: $34
    daa                                           ; $6CF6: $27
    nop                                           ; $6CF7: $00
    ld a, $CB                                     ; $6CF8: $3E $CB
    nop                                           ; $6CFA: $00
    ld bc, $0000                                  ; $6CFB: $01 $00 $00
    nop                                           ; $6CFE: $00
    xor d                                         ; $6CFF: $AA
    nop                                           ; $6D00: $00
    adc c                                         ; $6D01: $89
    cp a                                          ; $6D02: $BF
    nop                                           ; $6D03: $00
    halt                                          ; $6D04: $76
    sbc d                                         ; $6D05: $9A
    nop                                           ; $6D06: $00
    ld l, [hl]                                    ; $6D07: $6E
    ld a, [hl+]                                   ; $6D08: $2A
    nop                                           ; $6D09: $00
    ld [hl], $29                                  ; $6D0A: $36 $29
    nop                                           ; $6D0C: $00
    ld b, d                                       ; $6D0D: $42
    ld h, $00                                     ; $6D0E: $26 $00
    inc sp                                        ; $6D10: $33
    ld l, d                                       ; $6D11: $6A
    nop                                           ; $6D12: $00
    ld h, h                                       ; $6D13: $64
    ret                                           ; $6D14: $C9


    nop                                           ; $6D15: $00
    ld bc, $0000                                  ; $6D16: $01 $00 $00
    nop                                           ; $6D19: $00
    ld bc, $0100                                  ; $6D1A: $01 $00 $01
    ld bc, $F400                                  ; $6D1D: $01 $00 $F4
    ld d, h                                       ; $6D20: $54
    nop                                           ; $6D21: $00
    ld bc, $0054                                  ; $6D22: $01 $54 $00
    push af                                       ; $6D25: $F5
    nop                                           ; $6D26: $00
    nop                                           ; $6D27: $00
    nop                                           ; $6D28: $00
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    rlca                                          ; $6D2B: $07
    ld e, $00                                     ; $6D2C: $1E $00
    nop                                           ; $6D2E: $00
    dec b                                         ; $6D2F: $05
    add b                                         ; $6D30: $80
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    ld [bc], a                                    ; $6D33: $02
    nop                                           ; $6D34: $00
    nop                                           ; $6D35: $00
    ld bc, $6D2D                                  ; $6D36: $01 $2D $6D
    inc bc                                        ; $6D39: $03
    nop                                           ; $6D3A: $00
    inc b                                         ; $6D3B: $04
    ld c, d                                       ; $6D3C: $4A
    nop                                           ; $6D3D: $00
    ld l, a                                       ; $6D3E: $6F
    add hl, hl                                    ; $6D3F: $29
    nop                                           ; $6D40: $00
    ld l, b                                       ; $6D41: $68
    ld d, [hl]                                    ; $6D42: $56
    nop                                           ; $6D43: $00
    ld l, d                                       ; $6D44: $6A
    ld b, e                                       ; $6D45: $43
    nop                                           ; $6D46: $00
    inc l                                         ; $6D47: $2C
    ld c, d                                       ; $6D48: $4A
    nop                                           ; $6D49: $00
    ld bc, $00E1                                  ; $6D4A: $01 $E1 $00
    ret c                                         ; $6D4D: $D8

    ld b, e                                       ; $6D4E: $43
    nop                                           ; $6D4F: $00
    db $D3                                        ; $6D50: $D3
    call nc, $D500                                ; $6D51: $D4 $00 $D5
    ld l, [hl]                                    ; $6D54: $6E
    nop                                           ; $6D55: $00
    ld a, [hl+]                                   ; $6D56: $2A
    ld [hl], $00                                  ; $6D57: $36 $00
    ld c, c                                       ; $6D59: $49
    jr nc, jr_039_6D5C                            ; $6D5A: $30 $00

jr_039_6D5C:
    ld l, b                                       ; $6D5C: $68
    ldh [c], a                                    ; $6D5D: $E2
    nop                                           ; $6D5E: $00
    ld l, [hl]                                    ; $6D5F: $6E
    ld a, [hl+]                                   ; $6D60: $2A
    nop                                           ; $6D61: $00
    scf                                           ; $6D62: $37
    ld c, l                                       ; $6D63: $4D
    nop                                           ; $6D64: $00
    ld h, h                                       ; $6D65: $64
    ret                                           ; $6D66: $C9


    nop                                           ; $6D67: $00
    ld bc, $0000                                  ; $6D68: $01 $00 $00
    nop                                           ; $6D6B: $00
    nop                                           ; $6D6C: $00
    nop                                           ; $6D6D: $00
    rlca                                          ; $6D6E: $07
    ld e, $00                                     ; $6D6F: $1E $00
    nop                                           ; $6D71: $00
    dec b                                         ; $6D72: $05
    add b                                         ; $6D73: $80
    nop                                           ; $6D74: $00
    nop                                           ; $6D75: $00
    ld [bc], a                                    ; $6D76: $02
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    ld bc, $6D70                                  ; $6D79: $01 $70 $6D
    inc bc                                        ; $6D7C: $03
    nop                                           ; $6D7D: $00
    inc b                                         ; $6D7E: $04
    ld c, d                                       ; $6D7F: $4A
    nop                                           ; $6D80: $00
    ld l, a                                       ; $6D81: $6F
    add hl, hl                                    ; $6D82: $29
    nop                                           ; $6D83: $00
    ld l, b                                       ; $6D84: $68
    ld d, [hl]                                    ; $6D85: $56
    nop                                           ; $6D86: $00
    ld l, d                                       ; $6D87: $6A
    ld b, e                                       ; $6D88: $43
    nop                                           ; $6D89: $00
    inc l                                         ; $6D8A: $2C
    ld c, d                                       ; $6D8B: $4A
    nop                                           ; $6D8C: $00
    ld bc, $00E1                                  ; $6D8D: $01 $E1 $00
    call c, Call_000_0043                         ; $6D90: $DC $43 $00
    db $D3                                        ; $6D93: $D3
    call nc, $D500                                ; $6D94: $D4 $00 $D5
    ld l, [hl]                                    ; $6D97: $6E
    nop                                           ; $6D98: $00
    ld a, [hl+]                                   ; $6D99: $2A
    ld [hl], $00                                  ; $6D9A: $36 $00
    ld c, c                                       ; $6D9C: $49
    jr nc, jr_039_6D9F                            ; $6D9D: $30 $00

jr_039_6D9F:
    ld l, b                                       ; $6D9F: $68
    ldh [c], a                                    ; $6DA0: $E2
    nop                                           ; $6DA1: $00
    ld l, [hl]                                    ; $6DA2: $6E
    ld a, [hl+]                                   ; $6DA3: $2A
    nop                                           ; $6DA4: $00
    scf                                           ; $6DA5: $37
    ld b, a                                       ; $6DA6: $47
    nop                                           ; $6DA7: $00
    ld a, b                                       ; $6DA8: $78
    or b                                          ; $6DA9: $B0
    nop                                           ; $6DAA: $00
    halt                                          ; $6DAB: $76
    add [hl]                                      ; $6DAC: $86
    nop                                           ; $6DAD: $00
    ret                                           ; $6DAE: $C9


    nop                                           ; $6DAF: $00
    nop                                           ; $6DB0: $00
    nop                                           ; $6DB1: $00
    nop                                           ; $6DB2: $00
    nop                                           ; $6DB3: $00
    rlca                                          ; $6DB4: $07
    ld e, $00                                     ; $6DB5: $1E $00
    nop                                           ; $6DB7: $00
    dec b                                         ; $6DB8: $05
    add b                                         ; $6DB9: $80
    nop                                           ; $6DBA: $00
    nop                                           ; $6DBB: $00
    ld [bc], a                                    ; $6DBC: $02
    nop                                           ; $6DBD: $00
    nop                                           ; $6DBE: $00
    ld bc, $6DB6                                  ; $6DBF: $01 $B6 $6D
    inc bc                                        ; $6DC2: $03
    nop                                           ; $6DC3: $00
    inc b                                         ; $6DC4: $04
    ld c, d                                       ; $6DC5: $4A
    nop                                           ; $6DC6: $00
    ld l, a                                       ; $6DC7: $6F
    add hl, hl                                    ; $6DC8: $29
    nop                                           ; $6DC9: $00
    ld l, b                                       ; $6DCA: $68
    ld d, [hl]                                    ; $6DCB: $56
    nop                                           ; $6DCC: $00
    ld l, d                                       ; $6DCD: $6A
    ld b, e                                       ; $6DCE: $43
    nop                                           ; $6DCF: $00
    inc l                                         ; $6DD0: $2C
    ld c, d                                       ; $6DD1: $4A
    nop                                           ; $6DD2: $00
    ld bc, $0089                                  ; $6DD3: $01 $89 $00
    ld a, a                                       ; $6DD6: $7F
    halt                                          ; $6DD7: $76
    nop                                           ; $6DD8: $00
    and l                                         ; $6DD9: $A5
    ld b, a                                       ; $6DDA: $47
    nop                                           ; $6DDB: $00
    db $D3                                        ; $6DDC: $D3
    call nc, $D500                                ; $6DDD: $D4 $00 $D5
    ld l, [hl]                                    ; $6DE0: $6E
    nop                                           ; $6DE1: $00
    ld a, [hl+]                                   ; $6DE2: $2A
    ld [hl], $00                                  ; $6DE3: $36 $00
    ld c, c                                       ; $6DE5: $49
    jr nc, jr_039_6DE8                            ; $6DE6: $30 $00

jr_039_6DE8:
    ld l, b                                       ; $6DE8: $68
    ld bc, $E200                                  ; $6DE9: $01 $00 $E2
    ld l, [hl]                                    ; $6DEC: $6E
    nop                                           ; $6DED: $00
    ld a, [hl+]                                   ; $6DEE: $2A
    scf                                           ; $6DEF: $37
    nop                                           ; $6DF0: $00
    ld l, a                                       ; $6DF1: $6F
    ld h, d                                       ; $6DF2: $62
    nop                                           ; $6DF3: $00
    ld b, a                                       ; $6DF4: $47
    ret                                           ; $6DF5: $C9


    nop                                           ; $6DF6: $00
    ld bc, $0000                                  ; $6DF7: $01 $00 $00
    nop                                           ; $6DFA: $00
    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    rlca                                          ; $6DFD: $07
    ld e, $00                                     ; $6DFE: $1E $00
    nop                                           ; $6E00: $00
    dec b                                         ; $6E01: $05
    add b                                         ; $6E02: $80
    nop                                           ; $6E03: $00
    nop                                           ; $6E04: $00
    ld [bc], a                                    ; $6E05: $02
    nop                                           ; $6E06: $00
    nop                                           ; $6E07: $00
    ld bc, $6DFF                                  ; $6E08: $01 $FF $6D
    ld h, $00                                     ; $6E0B: $26 $00
    ld c, c                                       ; $6E0D: $49
    ld c, d                                       ; $6E0E: $4A
    nop                                           ; $6E0F: $00
    ld a, [hl+]                                   ; $6E10: $2A
    ld b, b                                       ; $6E11: $40
    nop                                           ; $6E12: $00
    ld c, c                                       ; $6E13: $49
    daa                                           ; $6E14: $27
    nop                                           ; $6E15: $00
    ld h, h                                       ; $6E16: $64
    jr z, jr_039_6E19                             ; $6E17: $28 $00

jr_039_6E19:
    ld c, d                                       ; $6E19: $4A
    ld [hl], $00                                  ; $6E1A: $36 $00
    ld b, d                                       ; $6E1C: $42
    ld c, [hl]                                    ; $6E1D: $4E
    nop                                           ; $6E1E: $00
    ld h, d                                       ; $6E1F: $62
    dec l                                         ; $6E20: $2D
    nop                                           ; $6E21: $00
    add [hl]                                      ; $6E22: $86
    halt                                          ; $6E23: $76
    nop                                           ; $6E24: $00
    cp h                                          ; $6E25: $BC
    ld l, [hl]                                    ; $6E26: $6E
    nop                                           ; $6E27: $00
    ld h, b                                       ; $6E28: $60
    ld a, [hl-]                                   ; $6E29: $3A
    nop                                           ; $6E2A: $00
    add hl, sp                                    ; $6E2B: $39
    jr z, jr_039_6E2E                             ; $6E2C: $28 $00

jr_039_6E2E:
    ret                                           ; $6E2E: $C9


    nop                                           ; $6E2F: $00
    nop                                           ; $6E30: $00
    nop                                           ; $6E31: $00
    nop                                           ; $6E32: $00
    nop                                           ; $6E33: $00
    rlca                                          ; $6E34: $07
    ld e, $00                                     ; $6E35: $1E $00
    nop                                           ; $6E37: $00
    dec b                                         ; $6E38: $05
    add b                                         ; $6E39: $80
    nop                                           ; $6E3A: $00
    nop                                           ; $6E3B: $00

jr_039_6E3C:
    ld [bc], a                                    ; $6E3C: $02
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    ld bc, $6E36                                  ; $6E3F: $01 $36 $6E
    ld e, l                                       ; $6E42: $5D
    nop                                           ; $6E43: $00
    add hl, hl                                    ; $6E44: $29
    ld c, d                                       ; $6E45: $4A
    nop                                           ; $6E46: $00
    daa                                           ; $6E47: $27
    dec l                                         ; $6E48: $2D
    nop                                           ; $6E49: $00
    ld d, d                                       ; $6E4A: $52
    ld c, b                                       ; $6E4B: $48
    nop                                           ; $6E4C: $00
    ret z                                         ; $6E4D: $C8

    ld c, [hl]                                    ; $6E4E: $4E
    nop                                           ; $6E4F: $00
    ld h, d                                       ; $6E50: $62
    dec l                                         ; $6E51: $2D
    nop                                           ; $6E52: $00
    ld bc, $0037                                  ; $6E53: $01 $37 $00
    scf                                           ; $6E56: $37
    ld h, b                                       ; $6E57: $60
    nop                                           ; $6E58: $00
    ld l, d                                       ; $6E59: $6A
    ld l, a                                       ; $6E5A: $6F
    nop                                           ; $6E5B: $00
    ld b, h                                       ; $6E5C: $44
    ret                                           ; $6E5D: $C9


    nop                                           ; $6E5E: $00
    ld bc, $0000                                  ; $6E5F: $01 $00 $00
    nop                                           ; $6E62: $00
    ld h, c                                       ; $6E63: $61
    nop                                           ; $6E64: $00
    ld [hl], b                                    ; $6E65: $70
    ld b, e                                       ; $6E66: $43
    nop                                           ; $6E67: $00
    ret z                                         ; $6E68: $C8

    ld c, [hl]                                    ; $6E69: $4E
    nop                                           ; $6E6A: $00
    ld h, d                                       ; $6E6B: $62
    dec l                                         ; $6E6C: $2D
    nop                                           ; $6E6D: $00
    ld c, c                                       ; $6E6E: $49
    ld l, h                                       ; $6E6F: $6C
    nop                                           ; $6E70: $00
    jr z, jr_039_6E3C                             ; $6E71: $28 $C9

    nop                                           ; $6E73: $00
    ld bc, $0000                                  ; $6E74: $01 $00 $00
    rlca                                          ; $6E77: $07
    ld e, $00                                     ; $6E78: $1E $00
    nop                                           ; $6E7A: $00
    dec b                                         ; $6E7B: $05
    add b                                         ; $6E7C: $80
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    ld [bc], a                                    ; $6E7F: $02
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    ld bc, $6E79                                  ; $6E82: $01 $79 $6E
    ld c, c                                       ; $6E85: $49
    nop                                           ; $6E86: $00
    dec hl                                        ; $6E87: $2B
    ld c, c                                       ; $6E88: $49
    nop                                           ; $6E89: $00
    dec hl                                        ; $6E8A: $2B
    ld h, d                                       ; $6E8B: $62
    nop                                           ; $6E8C: $00
    ld l, d                                       ; $6E8D: $6A
    ld c, c                                       ; $6E8E: $49
    nop                                           ; $6E8F: $00
    ret                                           ; $6E90: $C9


    nop                                           ; $6E91: $00
    nop                                           ; $6E92: $00
    nop                                           ; $6E93: $00
    ld h, c                                       ; $6E94: $61
    nop                                           ; $6E95: $00
    jr z, jr_039_6ED8                             ; $6E96: $28 $40

    nop                                           ; $6E98: $00
    ld h, a                                       ; $6E99: $67
    ld [hl], b                                    ; $6E9A: $70
    nop                                           ; $6E9B: $00
    ld b, e                                       ; $6E9C: $43
    ret z                                         ; $6E9D: $C8

    nop                                           ; $6E9E: $00
    ld c, [hl]                                    ; $6E9F: $4E
    ld h, d                                       ; $6EA0: $62
    nop                                           ; $6EA1: $00
    dec l                                         ; $6EA2: $2D
    ld c, c                                       ; $6EA3: $49
    nop                                           ; $6EA4: $00
    ld [hl], b                                    ; $6EA5: $70
    ccf                                           ; $6EA6: $3F
    nop                                           ; $6EA7: $00
    ld l, b                                       ; $6EA8: $68
    xor d                                         ; $6EA9: $AA
    nop                                           ; $6EAA: $00
    adc c                                         ; $6EAB: $89
    cp a                                          ; $6EAC: $BF
    nop                                           ; $6EAD: $00
    halt                                          ; $6EAE: $76
    sbc d                                         ; $6EAF: $9A
    nop                                           ; $6EB0: $00
    ld l, [hl]                                    ; $6EB1: $6E
    ld a, [hl+]                                   ; $6EB2: $2A
    nop                                           ; $6EB3: $00
    ld [hl], $29                                  ; $6EB4: $36 $29
    nop                                           ; $6EB6: $00
    ld b, d                                       ; $6EB7: $42
    ld h, $00                                     ; $6EB8: $26 $00
    inc sp                                        ; $6EBA: $33
    ld l, d                                       ; $6EBB: $6A
    nop                                           ; $6EBC: $00
    ld h, h                                       ; $6EBD: $64
    ret                                           ; $6EBE: $C9


    nop                                           ; $6EBF: $00
    ld bc, $0000                                  ; $6EC0: $01 $00 $00
    nop                                           ; $6EC3: $00
    nop                                           ; $6EC4: $00
    nop                                           ; $6EC5: $00
    rlca                                          ; $6EC6: $07
    ld e, $00                                     ; $6EC7: $1E $00
    nop                                           ; $6EC9: $00
    dec b                                         ; $6ECA: $05
    add b                                         ; $6ECB: $80
    nop                                           ; $6ECC: $00
    nop                                           ; $6ECD: $00
    ld [bc], a                                    ; $6ECE: $02
    nop                                           ; $6ECF: $00
    nop                                           ; $6ED0: $00
    ld bc, $6EC8                                  ; $6ED1: $01 $C8 $6E
    scf                                           ; $6ED4: $37
    nop                                           ; $6ED5: $00
    inc [hl]                                      ; $6ED6: $34
    daa                                           ; $6ED7: $27

jr_039_6ED8:
    nop                                           ; $6ED8: $00
    ld a, $CB                                     ; $6ED9: $3E $CB
    nop                                           ; $6EDB: $00
    ld bc, $0000                                  ; $6EDC: $01 $00 $00
    nop                                           ; $6EDF: $00
    ld h, h                                       ; $6EE0: $64
    nop                                           ; $6EE1: $00
    ld [hl], a                                    ; $6EE2: $77
    ld [hl], $00                                  ; $6EE3: $36 $00
    ret z                                         ; $6EE5: $C8

    xor d                                         ; $6EE6: $AA
    nop                                           ; $6EE7: $00
    adc c                                         ; $6EE8: $89
    cp a                                          ; $6EE9: $BF
    nop                                           ; $6EEA: $00
    halt                                          ; $6EEB: $76
    sbc d                                         ; $6EEC: $9A
    nop                                           ; $6EED: $00
    ld b, h                                       ; $6EEE: $44
    rlc b                                         ; $6EEF: $CB $00
    ld bc, $0001                                  ; $6EF1: $01 $01 $00
    ld bc, $0001                                  ; $6EF4: $01 $01 $00
    db $F4                                        ; $6EF7: $F4
    jr z, jr_039_6EFA                             ; $6EF8: $28 $00

jr_039_6EFA:
    ld b, d                                       ; $6EFA: $42
    ld [hl], b                                    ; $6EFB: $70
    nop                                           ; $6EFC: $00
    push af                                       ; $6EFD: $F5
    nop                                           ; $6EFE: $00
    nop                                           ; $6EFF: $00
    nop                                           ; $6F00: $00
    nop                                           ; $6F01: $00
    nop                                           ; $6F02: $00
    rlca                                          ; $6F03: $07
    ld e, $00                                     ; $6F04: $1E $00
    nop                                           ; $6F06: $00
    dec b                                         ; $6F07: $05
    add b                                         ; $6F08: $80
    nop                                           ; $6F09: $00
    nop                                           ; $6F0A: $00
    ld [bc], a                                    ; $6F0B: $02
    nop                                           ; $6F0C: $00
    nop                                           ; $6F0D: $00
    ld bc, $6F05                                  ; $6F0E: $01 $05 $6F
    nop                                           ; $6F11: $00
    nop                                           ; $6F12: $00
    inc b                                         ; $6F13: $04
    ld bc, $0000                                  ; $6F14: $01 $00 $00
    rlca                                          ; $6F17: $07
    or h                                          ; $6F18: $B4
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    dec b                                         ; $6F1B: $05
    jr nz, jr_039_6F1E                            ; $6F1C: $20 $00

jr_039_6F1E:
    nop                                           ; $6F1E: $00
    rlca                                          ; $6F1F: $07
    stop                                          ; $6F20: $10 $00
    nop                                           ; $6F22: $00
    inc b                                         ; $6F23: $04
    ld [bc], a                                    ; $6F24: $02
    nop                                           ; $6F25: $00
    nop                                           ; $6F26: $00
    rlca                                          ; $6F27: $07
    stop                                          ; $6F28: $10 $00
    nop                                           ; $6F2A: $00
    nop                                           ; $6F2B: $00
    dec [hl]                                      ; $6F2C: $35
    nop                                           ; $6F2D: $00
    ld b, e                                       ; $6F2E: $43
    jr z, jr_039_6F31                             ; $6F2F: $28 $00

jr_039_6F31:
    ld bc, $004F                                  ; $6F31: $01 $4F $00
    ld l, h                                       ; $6F34: $6C
    ld c, a                                       ; $6F35: $4F
    nop                                           ; $6F36: $00
    dec [hl]                                      ; $6F37: $35
    nop                                           ; $6F38: $00
    nop                                           ; $6F39: $00
    rlca                                          ; $6F3A: $07
    or h                                          ; $6F3B: $B4
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    dec b                                         ; $6F3E: $05
    jr nz, jr_039_6F41                            ; $6F3F: $20 $00

jr_039_6F41:
    nop                                           ; $6F41: $00
    rlca                                          ; $6F42: $07
    stop                                          ; $6F43: $10 $00
    nop                                           ; $6F45: $00
    inc b                                         ; $6F46: $04
    inc bc                                        ; $6F47: $03
    nop                                           ; $6F48: $00
    nop                                           ; $6F49: $00
    rlca                                          ; $6F4A: $07
    db $10                                        ; $6F4B: $10
    ld h, c                                       ; $6F4C: $61
    nop                                           ; $6F4D: $00
    ld l, c                                       ; $6F4E: $69
    dec hl                                        ; $6F4F: $2B
    nop                                           ; $6F50: $00
    ld l, l                                       ; $6F51: $6D
    ld bc, $5D00                                  ; $6F52: $01 $00 $5D
    dec [hl]                                      ; $6F55: $35
    nop                                           ; $6F56: $00
    ld c, a                                       ; $6F57: $4F
    ld l, h                                       ; $6F58: $6C
    nop                                           ; $6F59: $00
    ld bc, $0000                                  ; $6F5A: $01 $00 $00
    rlca                                          ; $6F5D: $07
    or h                                          ; $6F5E: $B4
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    dec b                                         ; $6F61: $05
    jr nz, jr_039_6F64                            ; $6F62: $20 $00

jr_039_6F64:
    nop                                           ; $6F64: $00
    rlca                                          ; $6F65: $07
    stop                                          ; $6F66: $10 $00
    nop                                           ; $6F68: $00
    inc b                                         ; $6F69: $04
    inc b                                         ; $6F6A: $04
    nop                                           ; $6F6B: $00
    nop                                           ; $6F6C: $00
    rlca                                          ; $6F6D: $07
    db $10                                        ; $6F6E: $10
    ccf                                           ; $6F6F: $3F
    nop                                           ; $6F70: $00
    ld c, c                                       ; $6F71: $49
    dec hl                                        ; $6F72: $2B
    nop                                           ; $6F73: $00
    ld bc, $0043                                  ; $6F74: $01 $43 $00
    ld a, [hl+]                                   ; $6F77: $2A
    ld l, d                                       ; $6F78: $6A
    nop                                           ; $6F79: $00
    ld bc, $0000                                  ; $6F7A: $01 $00 $00
    nop                                           ; $6F7D: $00
    daa                                           ; $6F7E: $27
    nop                                           ; $6F7F: $00
    ld [hl], $30                                  ; $6F80: $36 $30
    nop                                           ; $6F82: $00
    daa                                           ; $6F83: $27
    ld bc, $4300                                  ; $6F84: $01 $00 $43
    ld h, c                                       ; $6F87: $61
    nop                                           ; $6F88: $00
    ld c, a                                       ; $6F89: $4F
    ld l, h                                       ; $6F8A: $6C
    nop                                           ; $6F8B: $00
    ld bc, $0000                                  ; $6F8C: $01 $00 $00
    rlca                                          ; $6F8F: $07
    or h                                          ; $6F90: $B4
    nop                                           ; $6F91: $00
    nop                                           ; $6F92: $00
    dec b                                         ; $6F93: $05
    jr nz, jr_039_6F96                            ; $6F94: $20 $00

jr_039_6F96:
    nop                                           ; $6F96: $00
    rlca                                          ; $6F97: $07
    stop                                          ; $6F98: $10 $00
    nop                                           ; $6F9A: $00
    inc b                                         ; $6F9B: $04
    dec b                                         ; $6F9C: $05
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00
    rlca                                          ; $6F9F: $07
    db $10                                        ; $6FA0: $10
    daa                                           ; $6FA1: $27
    nop                                           ; $6FA2: $00
    ld l, $3A                                     ; $6FA3: $2E $3A
    nop                                           ; $6FA5: $00
    ld l, l                                       ; $6FA6: $6D
    ld bc, $4300                                  ; $6FA7: $01 $00 $43
    ld [hl], $00                                  ; $6FAA: $36 $00
    ld c, a                                       ; $6FAC: $4F
    cpl                                           ; $6FAD: $2F
    nop                                           ; $6FAE: $00
    ld bc, $0000                                  ; $6FAF: $01 $00 $00
    rlca                                          ; $6FB2: $07
    or h                                          ; $6FB3: $B4
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    dec b                                         ; $6FB6: $05
    jr nz, jr_039_6FB9                            ; $6FB7: $20 $00

jr_039_6FB9:
    nop                                           ; $6FB9: $00
    rlca                                          ; $6FBA: $07
    stop                                          ; $6FBB: $10 $00
    nop                                           ; $6FBD: $00
    inc b                                         ; $6FBE: $04
    ld c, $00                                     ; $6FBF: $0E $00
    nop                                           ; $6FC1: $00
    rlca                                          ; $6FC2: $07
    db $10                                        ; $6FC3: $10
    ld e, l                                       ; $6FC4: $5D
    nop                                           ; $6FC5: $00
    ld b, b                                       ; $6FC6: $40
    ccf                                           ; $6FC7: $3F
    nop                                           ; $6FC8: $00
    ld bc, $0043                                  ; $6FC9: $01 $43 $00
    ld [hl], $4F                                  ; $6FCC: $36 $4F
    nop                                           ; $6FCE: $00
    cpl                                           ; $6FCF: $2F
    nop                                           ; $6FD0: $00
    nop                                           ; $6FD1: $00
    rlca                                          ; $6FD2: $07
    or h                                          ; $6FD3: $B4
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    dec b                                         ; $6FD6: $05
    jr nz, jr_039_6FD9                            ; $6FD7: $20 $00

jr_039_6FD9:
    nop                                           ; $6FD9: $00
    rlca                                          ; $6FDA: $07
    stop                                          ; $6FDB: $10 $00
    nop                                           ; $6FDD: $00
    inc b                                         ; $6FDE: $04
    ld b, $00                                     ; $6FDF: $06 $00
    nop                                           ; $6FE1: $00
    rlca                                          ; $6FE2: $07
    db $10                                        ; $6FE3: $10
    cpl                                           ; $6FE4: $2F
    nop                                           ; $6FE5: $00
    daa                                           ; $6FE6: $27
    add hl, sp                                    ; $6FE7: $39
    nop                                           ; $6FE8: $00
    ld bc, $004F                                  ; $6FE9: $01 $4F $00
    ld l, h                                       ; $6FEC: $6C
    ld h, $00                                     ; $6FED: $26 $00
    inc l                                         ; $6FEF: $2C
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    ld a, [hl+]                                   ; $6FF3: $2A
    nop                                           ; $6FF4: $00
    ld a, [hl+]                                   ; $6FF5: $2A
    ld b, c                                       ; $6FF6: $41
    nop                                           ; $6FF7: $00
    dec hl                                        ; $6FF8: $2B
    ld bc, $2F00                                  ; $6FF9: $01 $00 $2F
    jr z, jr_039_6FFE                             ; $6FFC: $28 $00

jr_039_6FFE:
    dec sp                                        ; $6FFE: $3B
    nop                                           ; $6FFF: $00
    nop                                           ; $7000: $00
    rlca                                          ; $7001: $07
    or h                                          ; $7002: $B4
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    dec b                                         ; $7005: $05
    jr nz, jr_039_7008                            ; $7006: $20 $00

jr_039_7008:
    nop                                           ; $7008: $00
    rlca                                          ; $7009: $07
    stop                                          ; $700A: $10 $00
    nop                                           ; $700C: $00
    inc b                                         ; $700D: $04
    rlca                                          ; $700E: $07
    nop                                           ; $700F: $00
    nop                                           ; $7010: $00
    rlca                                          ; $7011: $07
    db $10                                        ; $7012: $10
    dec [hl]                                      ; $7013: $35
    nop                                           ; $7014: $00
    daa                                           ; $7015: $27
    ld b, e                                       ; $7016: $43
    nop                                           ; $7017: $00
    jr z, jr_039_701B                             ; $7018: $28 $01

    nop                                           ; $701A: $00

jr_039_701B:
    ccf                                           ; $701B: $3F
    dec l                                         ; $701C: $2D
    nop                                           ; $701D: $00
    ld h, d                                       ; $701E: $62
    nop                                           ; $701F: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    ld b, c                                       ; $7022: $41
    nop                                           ; $7023: $00
    ld h, e                                       ; $7024: $63
    inc l                                         ; $7025: $2C
    nop                                           ; $7026: $00
    ld bc, $0026                                  ; $7027: $01 $26 $00
    ld b, c                                       ; $702A: $41
    ld [hl], $00                                  ; $702B: $36 $00
    ld bc, $0000                                  ; $702D: $01 $00 $00
    nop                                           ; $7030: $00
    ld a, [hl+]                                   ; $7031: $2A
    nop                                           ; $7032: $00
    dec l                                         ; $7033: $2D
    ld h, d                                       ; $7034: $62
    nop                                           ; $7035: $00
    ld e, l                                       ; $7036: $5D
    ld b, h                                       ; $7037: $44
    nop                                           ; $7038: $00
    ld bc, $0037                                  ; $7039: $01 $37 $00
    ld l, $35                                     ; $703C: $2E $35
    nop                                           ; $703E: $00
    ld d, l                                       ; $703F: $55
    ld l, h                                       ; $7040: $6C
    nop                                           ; $7041: $00
    jr z, jr_039_7044                             ; $7042: $28 $00

jr_039_7044:
    nop                                           ; $7044: $00
    rlca                                          ; $7045: $07
    or h                                          ; $7046: $B4
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    dec b                                         ; $7049: $05
    jr nz, jr_039_704C                            ; $704A: $20 $00

jr_039_704C:
    nop                                           ; $704C: $00
    rlca                                          ; $704D: $07
    stop                                          ; $704E: $10 $00
    nop                                           ; $7050: $00
    inc b                                         ; $7051: $04
    rrca                                          ; $7052: $0F
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    rlca                                          ; $7055: $07
    db $10                                        ; $7056: $10
    ld h, $00                                     ; $7057: $26 $00
    ld a, [hl+]                                   ; $7059: $2A
    inc l                                         ; $705A: $2C
    nop                                           ; $705B: $00
    ld bc, $002E                                  ; $705C: $01 $2E $00
    ld l, a                                       ; $705F: $6F
    ccf                                           ; $7060: $3F
    nop                                           ; $7061: $00
    ld bc, $0000                                  ; $7062: $01 $00 $00
    rlca                                          ; $7065: $07
    or h                                          ; $7066: $B4
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    dec b                                         ; $7069: $05
    jr nz, jr_039_706C                            ; $706A: $20 $00

jr_039_706C:
    nop                                           ; $706C: $00
    rlca                                          ; $706D: $07
    stop                                          ; $706E: $10 $00
    nop                                           ; $7070: $00
    inc b                                         ; $7071: $04
    ld [$0000], sp                                ; $7072: $08 $00 $00
    rlca                                          ; $7075: $07
    db $10                                        ; $7076: $10
    adc c                                         ; $7077: $89
    nop                                           ; $7078: $00
    sub c                                         ; $7079: $91
    adc l                                         ; $707A: $8D
    nop                                           ; $707B: $00
    ld a, h                                       ; $707C: $7C
    jp z, Jump_000_1B00                           ; $707D: $CA $00 $1B

    dec d                                         ; $7080: $15
    nop                                           ; $7081: $00
    ld bc, $0000                                  ; $7082: $01 $00 $00
    rlca                                          ; $7085: $07
    or h                                          ; $7086: $B4
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    dec b                                         ; $7089: $05
    jr nz, jr_039_708C                            ; $708A: $20 $00

jr_039_708C:
    nop                                           ; $708C: $00
    rlca                                          ; $708D: $07
    stop                                          ; $708E: $10 $00
    nop                                           ; $7090: $00
    inc b                                         ; $7091: $04
    add hl, bc                                    ; $7092: $09
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    rlca                                          ; $7095: $07
    db $10                                        ; $7096: $10
    ld h, c                                       ; $7097: $61
    nop                                           ; $7098: $00
    ld l, c                                       ; $7099: $69
    ld a, [hl+]                                   ; $709A: $2A
    nop                                           ; $709B: $00
    dec hl                                        ; $709C: $2B
    ld bc, $4300                                  ; $709D: $01 $00 $43
    ld [hl], $00                                  ; $70A0: $36 $00
    ld c, a                                       ; $70A2: $4F
    ld l, h                                       ; $70A3: $6C
    nop                                           ; $70A4: $00
    ld bc, $0000                                  ; $70A5: $01 $00 $00
    rlca                                          ; $70A8: $07
    or h                                          ; $70A9: $B4
    nop                                           ; $70AA: $00
    nop                                           ; $70AB: $00
    dec b                                         ; $70AC: $05
    jr nz, jr_039_70AF                            ; $70AD: $20 $00

jr_039_70AF:
    nop                                           ; $70AF: $00
    rlca                                          ; $70B0: $07
    stop                                          ; $70B1: $10 $00
    nop                                           ; $70B3: $00
    inc b                                         ; $70B4: $04
    ld a, [bc]                                    ; $70B5: $0A
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    rlca                                          ; $70B8: $07
    db $10                                        ; $70B9: $10
    ld b, e                                       ; $70BA: $43
    nop                                           ; $70BB: $00
    ld l, c                                       ; $70BC: $69
    ld c, [hl]                                    ; $70BD: $4E
    nop                                           ; $70BE: $00
    ld e, l                                       ; $70BF: $5D
    ld bc, $2B00                                  ; $70C0: $01 $00 $2B
    ld b, c                                       ; $70C3: $41
    nop                                           ; $70C4: $00
    ld h, d                                       ; $70C5: $62
    nop                                           ; $70C6: $00
    nop                                           ; $70C7: $00
    nop                                           ; $70C8: $00
    daa                                           ; $70C9: $27
    nop                                           ; $70CA: $00
    ld l, l                                       ; $70CB: $6D
    dec [hl]                                      ; $70CC: $35
    nop                                           ; $70CD: $00
    inc l                                         ; $70CE: $2C
    ld bc, $5D00                                  ; $70CF: $01 $00 $5D
    dec [hl]                                      ; $70D2: $35
    nop                                           ; $70D3: $00
    ld c, a                                       ; $70D4: $4F
    ld l, h                                       ; $70D5: $6C
    nop                                           ; $70D6: $00
    ld bc, $0000                                  ; $70D7: $01 $00 $00
    nop                                           ; $70DA: $00
    ld c, a                                       ; $70DB: $4F
    nop                                           ; $70DC: $00
    ld l, h                                       ; $70DD: $6C
    jr c, jr_039_70E0                             ; $70DE: $38 $00

jr_039_70E0:
    ld bc, $004D                                  ; $70E0: $01 $4D $00
    ld l, c                                       ; $70E3: $69
    ld h, $00                                     ; $70E4: $26 $00
    inc l                                         ; $70E6: $2C
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    rlca                                          ; $70E9: $07
    or h                                          ; $70EA: $B4
    nop                                           ; $70EB: $00
    nop                                           ; $70EC: $00
    dec b                                         ; $70ED: $05
    jr nz, jr_039_70F0                            ; $70EE: $20 $00

jr_039_70F0:
    nop                                           ; $70F0: $00
    rlca                                          ; $70F1: $07
    stop                                          ; $70F2: $10 $00
    nop                                           ; $70F4: $00
    inc b                                         ; $70F5: $04
    dec bc                                        ; $70F6: $0B
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    rlca                                          ; $70F9: $07
    db $10                                        ; $70FA: $10
    dec l                                         ; $70FB: $2D
    nop                                           ; $70FC: $00
    ld e, l                                       ; $70FD: $5D
    ccf                                           ; $70FE: $3F
    nop                                           ; $70FF: $00
    ld bc, $0035                                  ; $7100: $01 $35 $00
    ld b, e                                       ; $7103: $43
    ld [hl], $00                                  ; $7104: $36 $00
    ld bc, $0000                                  ; $7106: $01 $00 $00
    nop                                           ; $7109: $00
    ld h, d                                       ; $710A: $62
    nop                                           ; $710B: $00
    ld e, l                                       ; $710C: $5D
    ld a, [hl-]                                   ; $710D: $3A
    nop                                           ; $710E: $00
    inc l                                         ; $710F: $2C
    ld bc, $4F00                                  ; $7110: $01 $00 $4F
    ld l, h                                       ; $7113: $6C
    nop                                           ; $7114: $00
    ld [hl], $00                                  ; $7115: $36 $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    ccf                                           ; $7119: $3F
    nop                                           ; $711A: $00
    jr z, jr_039_7185                             ; $711B: $28 $68

    nop                                           ; $711D: $00
    ld bc, $003F                                  ; $711E: $01 $3F $00
    ld b, c                                       ; $7121: $41
    ld h, d                                       ; $7122: $62
    nop                                           ; $7123: $00
    ld bc, $0000                                  ; $7124: $01 $00 $00
    rlca                                          ; $7127: $07
    or h                                          ; $7128: $B4
    nop                                           ; $7129: $00
    nop                                           ; $712A: $00
    dec b                                         ; $712B: $05
    jr nz, jr_039_712E                            ; $712C: $20 $00

jr_039_712E:
    nop                                           ; $712E: $00
    rlca                                          ; $712F: $07
    stop                                          ; $7130: $10 $00
    nop                                           ; $7132: $00
    inc b                                         ; $7133: $04
    dec bc                                        ; $7134: $0B
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    rlca                                          ; $7137: $07
    db $10                                        ; $7138: $10
    daa                                           ; $7139: $27
    nop                                           ; $713A: $00
    daa                                           ; $713B: $27
    ld b, h                                       ; $713C: $44
    nop                                           ; $713D: $00
    ld bc, $0042                                  ; $713E: $01 $42 $00
    ld b, c                                       ; $7141: $41
    ld h, d                                       ; $7142: $62
    nop                                           ; $7143: $00
    ld bc, $0000                                  ; $7144: $01 $00 $00
    nop                                           ; $7147: $00
    ld e, l                                       ; $7148: $5D
    nop                                           ; $7149: $00
    ld b, c                                       ; $714A: $41
    dec hl                                        ; $714B: $2B
    nop                                           ; $714C: $00
    ld l, l                                       ; $714D: $6D
    ld bc, $5F00                                  ; $714E: $01 $00 $5F
    ld b, c                                       ; $7151: $41
    nop                                           ; $7152: $00
    ld e, [hl]                                    ; $7153: $5E
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    dec [hl]                                      ; $7157: $35
    nop                                           ; $7158: $00
    ld b, e                                       ; $7159: $43
    jr z, jr_039_715C                             ; $715A: $28 $00

jr_039_715C:
    ld bc, $003F                                  ; $715C: $01 $3F $00
    dec hl                                        ; $715F: $2B
    ld a, [hl+]                                   ; $7160: $2A
    nop                                           ; $7161: $00
    ld bc, $0000                                  ; $7162: $01 $00 $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    rlca                                          ; $7168: $07
    or h                                          ; $7169: $B4
    nop                                           ; $716A: $00
    nop                                           ; $716B: $00
    dec b                                         ; $716C: $05
    jr nz, jr_039_716F                            ; $716D: $20 $00

jr_039_716F:
    nop                                           ; $716F: $00
    rlca                                          ; $7170: $07
    stop                                          ; $7171: $10 $00
    nop                                           ; $7173: $00
    inc b                                         ; $7174: $04
    dec bc                                        ; $7175: $0B
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    rlca                                          ; $7178: $07
    db $10                                        ; $7179: $10
    ld h, $00                                     ; $717A: $26 $00
    ld a, [hl+]                                   ; $717C: $2A
    inc l                                         ; $717D: $2C
    nop                                           ; $717E: $00
    ld bc, $005D                                  ; $717F: $01 $5D $00
    dec [hl]                                      ; $7182: $35
    ld l, d                                       ; $7183: $6A
    nop                                           ; $7184: $00

jr_039_7185:
    ld bc, $0000                                  ; $7185: $01 $00 $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718A: $00
    rlca                                          ; $718B: $07
    or h                                          ; $718C: $B4
    nop                                           ; $718D: $00
    nop                                           ; $718E: $00
    dec b                                         ; $718F: $05
    jr nz, jr_039_7192                            ; $7190: $20 $00

jr_039_7192:
    nop                                           ; $7192: $00
    rlca                                          ; $7193: $07
    stop                                          ; $7194: $10 $00
    nop                                           ; $7196: $00
    inc b                                         ; $7197: $04
    dec bc                                        ; $7198: $0B
    nop                                           ; $7199: $00
    nop                                           ; $719A: $00
    rlca                                          ; $719B: $07
    db $10                                        ; $719C: $10
    ld a, [hl+]                                   ; $719D: $2A
    nop                                           ; $719E: $00
    ld a, [hl+]                                   ; $719F: $2A
    dec l                                         ; $71A0: $2D
    nop                                           ; $71A1: $00
    dec [hl]                                      ; $71A2: $35
    ld bc, $3600                                  ; $71A3: $01 $00 $36
    ld h, [hl]                                    ; $71A6: $66
    nop                                           ; $71A7: $00
    ld l, a                                       ; $71A8: $6F
    daa                                           ; $71A9: $27
    nop                                           ; $71AA: $00
    ld b, b                                       ; $71AB: $40
    nop                                           ; $71AC: $00
    nop                                           ; $71AD: $00
    nop                                           ; $71AE: $00
    daa                                           ; $71AF: $27
    nop                                           ; $71B0: $00
    ld l, $4D                                     ; $71B1: $2E $4D
    nop                                           ; $71B3: $00
    jr z, jr_039_71DF                             ; $71B4: $28 $29

    nop                                           ; $71B6: $00
    ld bc, $003F                                  ; $71B7: $01 $3F $00
    ld l, $36                                     ; $71BA: $2E $36
    nop                                           ; $71BC: $00
    ld bc, $0000                                  ; $71BD: $01 $00 $00
    nop                                           ; $71C0: $00
    ccf                                           ; $71C1: $3F
    nop                                           ; $71C2: $00
    dec hl                                        ; $71C3: $2B
    ld b, h                                       ; $71C4: $44
    nop                                           ; $71C5: $00
    ld bc, $0049                                  ; $71C6: $01 $49 $00
    ld a, [hl+]                                   ; $71C9: $2A
    ld h, e                                       ; $71CA: $63
    nop                                           ; $71CB: $00
    inc l                                         ; $71CC: $2C
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    inc l                                         ; $71D0: $2C
    nop                                           ; $71D1: $00
    ld e, a                                       ; $71D2: $5F
    ld l, b                                       ; $71D3: $68
    nop                                           ; $71D4: $00
    ld bc, $0026                                  ; $71D5: $01 $26 $00
    inc l                                         ; $71D8: $2C
    ld c, a                                       ; $71D9: $4F
    nop                                           ; $71DA: $00
    cpl                                           ; $71DB: $2F
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    rlca                                          ; $71DE: $07

jr_039_71DF:
    or h                                          ; $71DF: $B4
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    dec b                                         ; $71E2: $05
    jr nz, jr_039_71E5                            ; $71E3: $20 $00

jr_039_71E5:
    nop                                           ; $71E5: $00
    rlca                                          ; $71E6: $07
    stop                                          ; $71E7: $10 $00
    nop                                           ; $71E9: $00
    inc b                                         ; $71EA: $04
    dec bc                                        ; $71EB: $0B
    nop                                           ; $71EC: $00
    nop                                           ; $71ED: $00
    rlca                                          ; $71EE: $07
    db $10                                        ; $71EF: $10
    ld c, [hl]                                    ; $71F0: $4E
    nop                                           ; $71F1: $00
    ld h, d                                       ; $71F2: $62
    dec [hl]                                      ; $71F3: $35
    nop                                           ; $71F4: $00
    dec hl                                        ; $71F5: $2B
    ld bc, $4D00                                  ; $71F6: $01 $00 $4D
    ld l, c                                       ; $71F9: $69
    nop                                           ; $71FA: $00
    ld c, a                                       ; $71FB: $4F
    ld l, h                                       ; $71FC: $6C
    nop                                           ; $71FD: $00
    ld bc, $0000                                  ; $71FE: $01 $00 $00
    nop                                           ; $7201: $00
    dec hl                                        ; $7202: $2B
    nop                                           ; $7203: $00
    dec [hl]                                      ; $7204: $35
    dec hl                                        ; $7205: $2B
    nop                                           ; $7206: $00
    ld l, l                                       ; $7207: $6D
    ld bc, $4F00                                  ; $7208: $01 $00 $4F
    ld l, h                                       ; $720B: $6C
    nop                                           ; $720C: $00
    ld d, b                                       ; $720D: $50
    ld e, [hl]                                    ; $720E: $5E
    nop                                           ; $720F: $00
    ld bc, $0000                                  ; $7210: $01 $00 $00
    nop                                           ; $7213: $00
    ld a, [hl+]                                   ; $7214: $2A
    nop                                           ; $7215: $00
    ld a, [hl-]                                   ; $7216: $3A
    ld l, l                                       ; $7217: $6D
    nop                                           ; $7218: $00
    ld bc, $0050                                  ; $7219: $01 $50 $00
    ld e, [hl]                                    ; $721C: $5E
    ld c, a                                       ; $721D: $4F
    nop                                           ; $721E: $00
    cpl                                           ; $721F: $2F
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    daa                                           ; $7223: $27
    nop                                           ; $7224: $00
    jr nc, jr_039_728F                            ; $7225: $30 $68

    nop                                           ; $7227: $00
    ld [hl], $01                                  ; $7228: $36 $01
    nop                                           ; $722A: $00
    ld b, c                                       ; $722B: $41
    ld h, h                                       ; $722C: $64
    nop                                           ; $722D: $00
    ld [hl], $00                                  ; $722E: $36 $00
    nop                                           ; $7230: $00
    rlca                                          ; $7231: $07
    or h                                          ; $7232: $B4
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    dec b                                         ; $7235: $05
    jr nz, jr_039_7238                            ; $7236: $20 $00

jr_039_7238:
    nop                                           ; $7238: $00
    rlca                                          ; $7239: $07
    stop                                          ; $723A: $10 $00
    nop                                           ; $723C: $00
    inc b                                         ; $723D: $04
    inc c                                         ; $723E: $0C
    nop                                           ; $723F: $00
    nop                                           ; $7240: $00
    rlca                                          ; $7241: $07
    db $10                                        ; $7242: $10
    dec hl                                        ; $7243: $2B
    nop                                           ; $7244: $00
    ld d, l                                       ; $7245: $55
    ld [hl], $00                                  ; $7246: $36 $00
    inc l                                         ; $7248: $2C
    jr nc, jr_039_724B                            ; $7249: $30 $00

jr_039_724B:
    daa                                           ; $724B: $27
    ld [hl], $00                                  ; $724C: $36 $00
    ld h, l                                       ; $724E: $65
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    ld bc, $0100                                  ; $7252: $01 $00 $01
    adc c                                         ; $7255: $89
    nop                                           ; $7256: $00
    xor l                                         ; $7257: $AD
    halt                                          ; $7258: $76
    nop                                           ; $7259: $00
    adc c                                         ; $725A: $89
    cp d                                          ; $725B: $BA
    nop                                           ; $725C: $00
    jp nz, Jump_000_00AC                          ; $725D: $C2 $AC $00

    ld bc, $0000                                  ; $7260: $01 $00 $00
    rlca                                          ; $7263: $07
    or h                                          ; $7264: $B4
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    dec b                                         ; $7267: $05
    jr nz, jr_039_726A                            ; $7268: $20 $00

jr_039_726A:
    nop                                           ; $726A: $00
    rlca                                          ; $726B: $07
    stop                                          ; $726C: $10 $00
    nop                                           ; $726E: $00
    inc b                                         ; $726F: $04
    dec c                                         ; $7270: $0D
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    rlca                                          ; $7273: $07
    db $10                                        ; $7274: $10
    xor [hl]                                      ; $7275: $AE
    nop                                           ; $7276: $00
    halt                                          ; $7277: $76
    cp h                                          ; $7278: $BC
    nop                                           ; $7279: $00
    sub l                                         ; $727A: $95
    push bc                                       ; $727B: $C5
    nop                                           ; $727C: $00
    ld a, d                                       ; $727D: $7A
    call nz, $C100                                ; $727E: $C4 $00 $C1
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    ld bc, $0100                                  ; $7284: $01 $00 $01
    dec hl                                        ; $7287: $2B
    nop                                           ; $7288: $00
    ld d, l                                       ; $7289: $55
    ld [hl], $00                                  ; $728A: $36 $00
    inc l                                         ; $728C: $2C
    jr nc, jr_039_728F                            ; $728D: $30 $00

jr_039_728F:
    daa                                           ; $728F: $27
    ld [hl], $00                                  ; $7290: $36 $00
    ld h, l                                       ; $7292: $65
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    rlca                                          ; $7295: $07
    or h                                          ; $7296: $B4
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    dec b                                         ; $7299: $05
    ld h, b                                       ; $729A: $60
    nop                                           ; $729B: $00
    nop                                           ; $729C: $00
    rlca                                          ; $729D: $07
    stop                                          ; $729E: $10 $00
    nop                                           ; $72A0: $00
    rlca                                          ; $72A1: $07
    add b                                         ; $72A2: $80
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    dec b                                         ; $72A5: $05
    add b                                         ; $72A6: $80
    nop                                           ; $72A7: $00
    nop                                           ; $72A8: $00
    ld [bc], a                                    ; $72A9: $02
    nop                                           ; $72AA: $00
    nop                                           ; $72AB: $00
    ld bc, $72A3                                  ; $72AC: $01 $A3 $72
    nop                                           ; $72AF: $00
    nop                                           ; $72B0: $00
    inc b                                         ; $72B1: $04
    ld bc, $0000                                  ; $72B2: $01 $00 $00
    rlca                                          ; $72B5: $07
    or h                                          ; $72B6: $B4
    nop                                           ; $72B7: $00
    nop                                           ; $72B8: $00
    dec b                                         ; $72B9: $05
    jr nz, jr_039_72BC                            ; $72BA: $20 $00

jr_039_72BC:
    nop                                           ; $72BC: $00
    rlca                                          ; $72BD: $07
    stop                                          ; $72BE: $10 $00
    nop                                           ; $72C0: $00
    inc b                                         ; $72C1: $04
    ld [bc], a                                    ; $72C2: $02
    nop                                           ; $72C3: $00
    nop                                           ; $72C4: $00
    rlca                                          ; $72C5: $07
    stop                                          ; $72C6: $10 $00
    nop                                           ; $72C8: $00
    nop                                           ; $72C9: $00
    ldh [rNR11], a                                ; $72CA: $E0 $11
    push bc                                       ; $72CC: $C5
    ld bc, $E101                                  ; $72CD: $01 $01 $E1
    ldh [c], a                                    ; $72D0: $E2
    db $10                                        ; $72D1: $10
    ld bc, $0000                                  ; $72D2: $01 $00 $00
    rlca                                          ; $72D5: $07
    or h                                          ; $72D6: $B4
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    dec b                                         ; $72D9: $05
    jr nz, jr_039_72DC                            ; $72DA: $20 $00

jr_039_72DC:
    nop                                           ; $72DC: $00
    rlca                                          ; $72DD: $07
    stop                                          ; $72DE: $10 $00
    nop                                           ; $72E0: $00
    inc b                                         ; $72E1: $04
    inc bc                                        ; $72E2: $03
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    rlca                                          ; $72E5: $07
    db $10                                        ; $72E6: $10
    db $E3                                        ; $72E7: $E3
    ld de, $01E4                                  ; $72E8: $11 $E4 $01
    ld bc, $E1E5                                  ; $72EB: $01 $E5 $E1
    db $10                                        ; $72EE: $10
    ld bc, $0000                                  ; $72EF: $01 $00 $00
    rlca                                          ; $72F2: $07
    or h                                          ; $72F3: $B4
    nop                                           ; $72F4: $00
    nop                                           ; $72F5: $00
    dec b                                         ; $72F6: $05
    jr nz, jr_039_72F9                            ; $72F7: $20 $00

jr_039_72F9:
    nop                                           ; $72F9: $00
    rlca                                          ; $72FA: $07
    stop                                          ; $72FB: $10 $00
    nop                                           ; $72FD: $00
    inc b                                         ; $72FE: $04
    inc b                                         ; $72FF: $04
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    rlca                                          ; $7302: $07
    db $10                                        ; $7303: $10
    call Call_039_5811                            ; $7304: $CD $11 $58
    ld bc, $E601                                  ; $7307: $01 $01 $E6
    nop                                           ; $730A: $00
    nop                                           ; $730B: $00
    nop                                           ; $730C: $00
    cp h                                          ; $730D: $BC
    ld de, $01BD                                  ; $730E: $11 $BD $01
    ld bc, $BFBE                                  ; $7311: $01 $BE $BF
    db $10                                        ; $7314: $10
    ld bc, $0000                                  ; $7315: $01 $00 $00
    rlca                                          ; $7318: $07
    or h                                          ; $7319: $B4
    nop                                           ; $731A: $00
    nop                                           ; $731B: $00
    dec b                                         ; $731C: $05
    jr nz, jr_039_731F                            ; $731D: $20 $00

jr_039_731F:
    nop                                           ; $731F: $00
    rlca                                          ; $7320: $07
    stop                                          ; $7321: $10 $00
    nop                                           ; $7323: $00
    inc b                                         ; $7324: $04
    dec b                                         ; $7325: $05
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    rlca                                          ; $7328: $07
    db $10                                        ; $7329: $10
    rst RST_20                                    ; $732A: $E7
    ld de, $01E8                                  ; $732B: $11 $E8 $01
    ld bc, $CFE9                                  ; $732E: $01 $E9 $CF
    db $10                                        ; $7331: $10
    ld bc, $0000                                  ; $7332: $01 $00 $00
    rlca                                          ; $7335: $07
    or h                                          ; $7336: $B4
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    dec b                                         ; $7339: $05
    jr nz, jr_039_733C                            ; $733A: $20 $00

jr_039_733C:
    nop                                           ; $733C: $00
    rlca                                          ; $733D: $07
    stop                                          ; $733E: $10 $00
    nop                                           ; $7340: $00
    inc b                                         ; $7341: $04
    ld c, $00                                     ; $7342: $0E $00
    nop                                           ; $7344: $00
    rlca                                          ; $7345: $07
    db $10                                        ; $7346: $10
    call z, $CD11                                 ; $7347: $CC $11 $CD
    ld bc, $CE01                                  ; $734A: $01 $01 $CE
    rst RST_08                                    ; $734D: $CF
    db $10                                        ; $734E: $10
    ld bc, $0000                                  ; $734F: $01 $00 $00
    rlca                                          ; $7352: $07
    or h                                          ; $7353: $B4
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    dec b                                         ; $7356: $05
    jr nz, jr_039_7359                            ; $7357: $20 $00

jr_039_7359:
    nop                                           ; $7359: $00
    rlca                                          ; $735A: $07
    stop                                          ; $735B: $10 $00
    nop                                           ; $735D: $00
    inc b                                         ; $735E: $04
    ld b, $00                                     ; $735F: $06 $00
    nop                                           ; $7361: $00
    rlca                                          ; $7362: $07
    db $10                                        ; $7363: $10
    ret nz                                        ; $7364: $C0

    ld de, $01C1                                  ; $7365: $11 $C1 $01
    ld bc, $C3C2                                  ; $7368: $01 $C2 $C3
    db $10                                        ; $736B: $10
    ld bc, $0000                                  ; $736C: $01 $00 $00
    nop                                           ; $736F: $00
    ld bc, $D011                                  ; $7370: $01 $11 $D0
    ld bc, $D101                                  ; $7373: $01 $01 $D1
    jp nc, $0110                                  ; $7376: $D2 $10 $01

    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    rlca                                          ; $737B: $07
    or h                                          ; $737C: $B4
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    dec b                                         ; $737F: $05
    jr nz, jr_039_7382                            ; $7380: $20 $00

jr_039_7382:
    nop                                           ; $7382: $00
    rlca                                          ; $7383: $07
    stop                                          ; $7384: $10 $00
    nop                                           ; $7386: $00
    inc b                                         ; $7387: $04
    rlca                                          ; $7388: $07
    nop                                           ; $7389: $00
    nop                                           ; $738A: $00
    rlca                                          ; $738B: $07
    db $10                                        ; $738C: $10
    call nz, $C511                                ; $738D: $C4 $11 $C5
    ld bc, $C601                                  ; $7390: $01 $01 $C6
    rst RST_00                                    ; $7393: $C7
    db $10                                        ; $7394: $10
    ld bc, $0000                                  ; $7395: $01 $00 $00
    nop                                           ; $7398: $00
    ret z                                         ; $7399: $C8

    ld de, $01C9                                  ; $739A: $11 $C9 $01
    ld bc, $CBCA                                  ; $739D: $01 $CA $CB
    db $10                                        ; $73A0: $10
    ld bc, $0000                                  ; $73A1: $01 $00 $00
    nop                                           ; $73A4: $00
    db $D3                                        ; $73A5: $D3
    ld de, $CDD4                                  ; $73A6: $11 $D4 $CD
    db $10                                        ; $73A9: $10
    ld bc, $11D5                                  ; $73AA: $01 $D5 $11
    sub $D7                                       ; $73AD: $D6 $D7
    db $10                                        ; $73AF: $10
    ld bc, $0000                                  ; $73B0: $01 $00 $00
    rlca                                          ; $73B3: $07
    or h                                          ; $73B4: $B4
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    dec b                                         ; $73B7: $05
    jr nz, jr_039_73BA                            ; $73B8: $20 $00

jr_039_73BA:
    nop                                           ; $73BA: $00
    rlca                                          ; $73BB: $07
    stop                                          ; $73BC: $10 $00
    nop                                           ; $73BE: $00
    inc b                                         ; $73BF: $04
    rrca                                          ; $73C0: $0F
    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    rlca                                          ; $73C3: $07
    db $10                                        ; $73C4: $10
    sub h                                         ; $73C5: $94
    ld hl, $01C9                                  ; $73C6: $21 $C9 $01
    ld [bc], a                                    ; $73C9: $02
    xor c                                         ; $73CA: $A9
    xor d                                         ; $73CB: $AA
    jr nz, jr_039_73CF                            ; $73CC: $20 $01

    nop                                           ; $73CE: $00

jr_039_73CF:
    nop                                           ; $73CF: $00
    rlca                                          ; $73D0: $07
    or h                                          ; $73D1: $B4
    nop                                           ; $73D2: $00
    nop                                           ; $73D3: $00
    dec b                                         ; $73D4: $05
    jr nz, jr_039_73D7                            ; $73D5: $20 $00

jr_039_73D7:
    nop                                           ; $73D7: $00
    rlca                                          ; $73D8: $07
    stop                                          ; $73D9: $10 $00
    nop                                           ; $73DB: $00
    inc b                                         ; $73DC: $04
    ld [$0000], sp                                ; $73DD: $08 $00 $00
    rlca                                          ; $73E0: $07
    db $10                                        ; $73E1: $10
    adc c                                         ; $73E2: $89
    nop                                           ; $73E3: $00
    sub c                                         ; $73E4: $91
    adc l                                         ; $73E5: $8D
    nop                                           ; $73E6: $00
    ld a, h                                       ; $73E7: $7C
    jp z, Jump_000_1B00                           ; $73E8: $CA $00 $1B

    dec d                                         ; $73EB: $15
    nop                                           ; $73EC: $00
    ld bc, $0000                                  ; $73ED: $01 $00 $00
    rlca                                          ; $73F0: $07
    or h                                          ; $73F1: $B4
    nop                                           ; $73F2: $00
    nop                                           ; $73F3: $00
    dec b                                         ; $73F4: $05
    jr nz, jr_039_73F7                            ; $73F5: $20 $00

jr_039_73F7:
    nop                                           ; $73F7: $00
    rlca                                          ; $73F8: $07
    stop                                          ; $73F9: $10 $00
    nop                                           ; $73FB: $00
    inc b                                         ; $73FC: $04
    add hl, bc                                    ; $73FD: $09
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
    rlca                                          ; $7400: $07
    db $10                                        ; $7401: $10
    db $E3                                        ; $7402: $E3
    ld de, $01EA                                  ; $7403: $11 $EA $01
    ld bc, $EBCE                                  ; $7406: $01 $CE $EB
    db $10                                        ; $7409: $10
    ld bc, $0000                                  ; $740A: $01 $00 $00
    rlca                                          ; $740D: $07
    or h                                          ; $740E: $B4
    nop                                           ; $740F: $00
    nop                                           ; $7410: $00
    dec b                                         ; $7411: $05
    jr nz, jr_039_7414                            ; $7412: $20 $00

jr_039_7414:
    nop                                           ; $7414: $00
    rlca                                          ; $7415: $07
    stop                                          ; $7416: $10 $00
    nop                                           ; $7418: $00
    inc b                                         ; $7419: $04
    ld a, [bc]                                    ; $741A: $0A
    nop                                           ; $741B: $00
    nop                                           ; $741C: $00
    rlca                                          ; $741D: $07
    db $10                                        ; $741E: $10
    db $EC                                        ; $741F: $EC
    ld de, $01ED                                  ; $7420: $11 $ED $01
    ld bc, $EFEE                                  ; $7423: $01 $EE $EF
    db $10                                        ; $7426: $10
    ld bc, $0000                                  ; $7427: $01 $00 $00
    nop                                           ; $742A: $00
    xor c                                         ; $742B: $A9
    ld de, $01F0                                  ; $742C: $11 $F0 $01
    ld bc, $F182                                  ; $742F: $01 $82 $F1
    db $10                                        ; $7432: $10
    ld bc, $0000                                  ; $7433: $01 $00 $00
    nop                                           ; $7436: $00
    db $EB                                        ; $7437: $EB
    ld de, $01F2                                  ; $7438: $11 $F2 $01
    ld bc, $76F3                                  ; $743B: $01 $F3 $76
    db $10                                        ; $743E: $10
    ld bc, $0000                                  ; $743F: $01 $00 $00
    rlca                                          ; $7442: $07
    or h                                          ; $7443: $B4
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    dec b                                         ; $7446: $05
    jr nz, jr_039_7449                            ; $7447: $20 $00

jr_039_7449:
    nop                                           ; $7449: $00
    rlca                                          ; $744A: $07
    stop                                          ; $744B: $10 $00
    nop                                           ; $744D: $00
    inc b                                         ; $744E: $04
    dec bc                                        ; $744F: $0B
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    rlca                                          ; $7452: $07
    db $10                                        ; $7453: $10
    db $F4                                        ; $7454: $F4
    ld de, $01CD                                  ; $7455: $11 $CD $01
    ld bc, $00F5                                  ; $7458: $01 $F5 $00
    nop                                           ; $745B: $00
    nop                                           ; $745C: $00
    call nc, $F011                                ; $745D: $D4 $11 $F0
    ld bc, $F601                                  ; $7460: $01 $01 $F6
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    call $F711                                    ; $7466: $CD $11 $F7
    ld bc, $F801                                  ; $7469: $01 $01 $F8
    rst RST_00                                    ; $746C: $C7
    db $10                                        ; $746D: $10
    ld bc, $0000                                  ; $746E: $01 $00 $00
    rlca                                          ; $7471: $07
    or h                                          ; $7472: $B4
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    dec b                                         ; $7475: $05
    jr nz, jr_039_7478                            ; $7476: $20 $00

jr_039_7478:
    nop                                           ; $7478: $00
    rlca                                          ; $7479: $07
    stop                                          ; $747A: $10 $00
    nop                                           ; $747C: $00
    inc b                                         ; $747D: $04
    dec bc                                        ; $747E: $0B
    nop                                           ; $747F: $00
    nop                                           ; $7480: $00
    rlca                                          ; $7481: $07
    db $10                                        ; $7482: $10
    ld sp, hl                                     ; $7483: $F9
    ld de, $01CD                                  ; $7484: $11 $CD $01
    ld bc, $C7FA                                  ; $7487: $01 $FA $C7
    db $10                                        ; $748A: $10
    ld bc, $0000                                  ; $748B: $01 $00 $00
    nop                                           ; $748E: $00
    and c                                         ; $748F: $A1
    ld hl, $01E4                                  ; $7490: $21 $E4 $01
    ld bc, $FDFC                                  ; $7493: $01 $FC $FD
    db $10                                        ; $7496: $10
    ld bc, $0000                                  ; $7497: $01 $00 $00
    nop                                           ; $749A: $00
    ldh [rNR11], a                                ; $749B: $E0 $11
    push bc                                       ; $749D: $C5
    ld bc, $FE01                                  ; $749E: $01 $01 $FE
    rst RST_38                                    ; $74A1: $FF
    db $10                                        ; $74A2: $10
    ld bc, $0000                                  ; $74A3: $01 $00 $00
    rlca                                          ; $74A6: $07
    or h                                          ; $74A7: $B4
    nop                                           ; $74A8: $00
    nop                                           ; $74A9: $00
    dec b                                         ; $74AA: $05
    jr nz, jr_039_74AD                            ; $74AB: $20 $00

jr_039_74AD:
    nop                                           ; $74AD: $00
    rlca                                          ; $74AE: $07
    stop                                          ; $74AF: $10 $00
    nop                                           ; $74B1: $00
    inc b                                         ; $74B2: $04
    dec bc                                        ; $74B3: $0B
    nop                                           ; $74B4: $00
    nop                                           ; $74B5: $00
    rlca                                          ; $74B6: $07
    db $10                                        ; $74B7: $10
    sub h                                         ; $74B8: $94
    ld hl, $01C9                                  ; $74B9: $21 $C9 $01
    ld [bc], a                                    ; $74BC: $02
    ld bc, $0000                                  ; $74BD: $01 $00 $00
    rlca                                          ; $74C0: $07
    or h                                          ; $74C1: $B4
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    dec b                                         ; $74C4: $05
    jr nz, jr_039_74C7                            ; $74C5: $20 $00

jr_039_74C7:
    nop                                           ; $74C7: $00
    rlca                                          ; $74C8: $07
    stop                                          ; $74C9: $10 $00
    nop                                           ; $74CB: $00
    inc b                                         ; $74CC: $04
    dec bc                                        ; $74CD: $0B
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    rlca                                          ; $74D0: $07
    db $10                                        ; $74D1: $10
    ld bc, $0212                                  ; $74D2: $01 $12 $02
    ld bc, $CE01                                  ; $74D5: $01 $01 $CE
    ld a, d                                       ; $74D8: $7A
    db $10                                        ; $74D9: $10
    ld bc, $0000                                  ; $74DA: $01 $00 $00
    nop                                           ; $74DD: $00
    rst RST_20                                    ; $74DE: $E7
    ld de, $018A                                  ; $74DF: $11 $8A $01
    ld [bc], a                                    ; $74E2: $02
    inc bc                                        ; $74E3: $03
    rl b                                          ; $74E4: $CB $10
    ld bc, $0000                                  ; $74E6: $01 $00 $00
    nop                                           ; $74E9: $00
    inc b                                         ; $74EA: $04
    ld hl, $01CD                                  ; $74EB: $21 $CD $01
    ld [bc], a                                    ; $74EE: $02
    dec b                                         ; $74EF: $05
    pop de                                        ; $74F0: $D1
    db $10                                        ; $74F1: $10
    ld bc, $0000                                  ; $74F2: $01 $00 $00
    nop                                           ; $74F5: $00
    ret                                           ; $74F6: $C9


    ld de, $01FB                                  ; $74F7: $11 $FB $01
    ld bc, $CFC3                                  ; $74FA: $01 $C3 $CF
    db $10                                        ; $74FD: $10
    ld bc, $0000                                  ; $74FE: $01 $00 $00
    rlca                                          ; $7501: $07
    or h                                          ; $7502: $B4
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    dec b                                         ; $7505: $05
    jr nz, jr_039_7508                            ; $7506: $20 $00

jr_039_7508:
    nop                                           ; $7508: $00
    rlca                                          ; $7509: $07
    stop                                          ; $750A: $10 $00
    nop                                           ; $750C: $00
    inc b                                         ; $750D: $04
    dec bc                                        ; $750E: $0B
    nop                                           ; $750F: $00
    nop                                           ; $7510: $00
    rlca                                          ; $7511: $07
    db $10                                        ; $7512: $10
    ld b, $22                                     ; $7513: $06 $22
    rlca                                          ; $7515: $07
    ld bc, $F301                                  ; $7516: $01 $01 $F3
    ld [$0120], sp                                ; $7519: $08 $20 $01
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    add hl, bc                                    ; $751F: $09
    ld hl, $01E4                                  ; $7520: $21 $E4 $01
    ld bc, $CBF6                                  ; $7523: $01 $F6 $CB
    db $10                                        ; $7526: $10
    ld bc, $0000                                  ; $7527: $01 $00 $00
    nop                                           ; $752A: $00
    ret nz                                        ; $752B: $C0

    ld de, $01E8                                  ; $752C: $11 $E8 $01
    ld [bc], a                                    ; $752F: $02
    ld a, [bc]                                    ; $7530: $0A
    rst RST_08                                    ; $7531: $CF
    db $10                                        ; $7532: $10
    ld bc, $0000                                  ; $7533: $01 $00 $00
    nop                                           ; $7536: $00
    dec bc                                        ; $7537: $0B
    ld [hl+], a                                   ; $7538: $22
    inc c                                         ; $7539: $0C
    dec c                                         ; $753A: $0D
    jr nz, @+$03                                  ; $753B: $20 $01

    ld c, $20                                     ; $753D: $0E $20
    ld bc, $0000                                  ; $753F: $01 $00 $00
    rlca                                          ; $7542: $07
    or h                                          ; $7543: $B4
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    dec b                                         ; $7546: $05
    jr nz, jr_039_7549                            ; $7547: $20 $00

jr_039_7549:
    nop                                           ; $7549: $00
    rlca                                          ; $754A: $07
    stop                                          ; $754B: $10 $00
    nop                                           ; $754D: $00
    inc b                                         ; $754E: $04
    inc c                                         ; $754F: $0C
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    rlca                                          ; $7552: $07
    db $10                                        ; $7553: $10
    rrca                                          ; $7554: $0F
    ld [hl+], a                                   ; $7555: $22
    db $10                                        ; $7556: $10
    ld a, h                                       ; $7557: $7C
    ld [de], a                                    ; $7558: $12
    ld de, $0089                                  ; $7559: $11 $89 $00
    xor l                                         ; $755C: $AD
    halt                                          ; $755D: $76
    nop                                           ; $755E: $00
    adc c                                         ; $755F: $89
    cp d                                          ; $7560: $BA
    nop                                           ; $7561: $00
    jp nz, Jump_000_00AC                          ; $7562: $C2 $AC $00

    ld bc, $0000                                  ; $7565: $01 $00 $00
    rlca                                          ; $7568: $07
    or h                                          ; $7569: $B4
    nop                                           ; $756A: $00
    nop                                           ; $756B: $00
    dec b                                         ; $756C: $05
    jr nz, jr_039_756F                            ; $756D: $20 $00

jr_039_756F:
    nop                                           ; $756F: $00
    rlca                                          ; $7570: $07
    stop                                          ; $7571: $10 $00
    nop                                           ; $7573: $00
    inc b                                         ; $7574: $04
    dec c                                         ; $7575: $0D
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    rlca                                          ; $7578: $07
    db $10                                        ; $7579: $10
    xor [hl]                                      ; $757A: $AE
    nop                                           ; $757B: $00
    halt                                          ; $757C: $76
    cp h                                          ; $757D: $BC
    nop                                           ; $757E: $00
    sub l                                         ; $757F: $95
    push bc                                       ; $7580: $C5
    nop                                           ; $7581: $00
    ld a, d                                       ; $7582: $7A
    call nz, $C100                                ; $7583: $C4 $00 $C1
    rrca                                          ; $7586: $0F
    ld [hl+], a                                   ; $7587: $22
    db $10                                        ; $7588: $10
    ld a, h                                       ; $7589: $7C
    ld [de], a                                    ; $758A: $12
    ld de, $0000                                  ; $758B: $11 $00 $00
    rlca                                          ; $758E: $07
    or h                                          ; $758F: $B4
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    dec b                                         ; $7592: $05
    ld h, b                                       ; $7593: $60
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    rlca                                          ; $7596: $07
    stop                                          ; $7597: $10 $00
    nop                                           ; $7599: $00
    rlca                                          ; $759A: $07
    add b                                         ; $759B: $80
    nop                                           ; $759C: $00
    nop                                           ; $759D: $00
    dec b                                         ; $759E: $05
    add b                                         ; $759F: $80
    nop                                           ; $75A0: $00
    nop                                           ; $75A1: $00
    ld [bc], a                                    ; $75A2: $02
    nop                                           ; $75A3: $00
    nop                                           ; $75A4: $00
    ld bc, $759C                                  ; $75A5: $01 $9C $75
    and d                                         ; $75A8: $A2
    nop                                           ; $75A9: $00
    and d                                         ; $75AA: $A2
    and d                                         ; $75AB: $A2
    nop                                           ; $75AC: $00
    ldh [rSB], a                                  ; $75AD: $E0 $01
    nop                                           ; $75AF: $00
    ld a, [hl+]                                   ; $75B0: $2A
    ld b, c                                       ; $75B1: $41
    nop                                           ; $75B2: $00
    dec hl                                        ; $75B3: $2B
    ld l, e                                       ; $75B4: $6B
    nop                                           ; $75B5: $00
    ld c, l                                       ; $75B6: $4D
    ld h, h                                       ; $75B7: $64
    nop                                           ; $75B8: $00
    jr z, jr_039_75FF                             ; $75B9: $28 $44

    nop                                           ; $75BB: $00
    ld c, c                                       ; $75BC: $49
    ret                                           ; $75BD: $C9


    nop                                           ; $75BE: $00
    ld bc, $0000                                  ; $75BF: $01 $00 $00
    nop                                           ; $75C2: $00
    nop                                           ; $75C3: $00
    nop                                           ; $75C4: $00
    inc bc                                        ; $75C5: $03
    ld a, [hl+]                                   ; $75C6: $2A
    nop                                           ; $75C7: $00
    ld e, l                                       ; $75C8: $5D
    ld c, e                                       ; $75C9: $4B
    nop                                           ; $75CA: $00
    ld l, $49                                     ; $75CB: $2E $49
    nop                                           ; $75CD: $00
    ld bc, $007E                                  ; $75CE: $01 $7E $00
    add a                                         ; $75D1: $87
    xor a                                         ; $75D2: $AF
    nop                                           ; $75D3: $00
    ld l, b                                       ; $75D4: $68
    jr nc, jr_039_75D7                            ; $75D5: $30 $00

jr_039_75D7:
    ld bc, $0037                                  ; $75D7: $01 $37 $00
    daa                                           ; $75DA: $27
    ld [hl], $00                                  ; $75DB: $36 $00
    ld h, a                                       ; $75DD: $67
    jr z, jr_039_75E0                             ; $75DE: $28 $00

jr_039_75E0:
    ld c, d                                       ; $75E0: $4A
    ld b, c                                       ; $75E1: $41
    nop                                           ; $75E2: $00
    ld l, b                                       ; $75E3: $68
    ld l, e                                       ; $75E4: $6B
    nop                                           ; $75E5: $00
    ld b, d                                       ; $75E6: $42
    ldh [rP1], a                                  ; $75E7: $E0 $00
    ld bc, $0000                                  ; $75E9: $01 $00 $00
    inc bc                                        ; $75EC: $03
    ld b, c                                       ; $75ED: $41
    nop                                           ; $75EE: $00
    ld d, l                                       ; $75EF: $55
    ld [hl], $00                                  ; $75F0: $36 $00
    ld h, $28                                     ; $75F2: $26 $28
    nop                                           ; $75F4: $00
    ld c, l                                       ; $75F5: $4D
    ld l, [hl]                                    ; $75F6: $6E
    nop                                           ; $75F7: $00
    ld bc, $005D                                  ; $75F8: $01 $5D $00
    ld [hl], b                                    ; $75FB: $70
    ld b, d                                       ; $75FC: $42
    nop                                           ; $75FD: $00
    daa                                           ; $75FE: $27

jr_039_75FF:
    ccf                                           ; $75FF: $3F
    nop                                           ; $7600: $00
    ld c, l                                       ; $7601: $4D
    ld b, h                                       ; $7602: $44
    nop                                           ; $7603: $00
    rlc b                                         ; $7604: $CB $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    inc bc                                        ; $760A: $03
    add hl, sp                                    ; $760B: $39
    nop                                           ; $760C: $00
    ld [hl], $42                                  ; $760D: $36 $42
    nop                                           ; $760F: $00
    ld bc, $004D                                  ; $7610: $01 $4D $00
    cpl                                           ; $7613: $2F
    ld [hl], b                                    ; $7614: $70
    nop                                           ; $7615: $00
    ccf                                           ; $7616: $3F
    ld a, [hl+]                                   ; $7617: $2A
    nop                                           ; $7618: $00
    ld e, l                                       ; $7619: $5D
    add hl, hl                                    ; $761A: $29
    nop                                           ; $761B: $00
    ld b, h                                       ; $761C: $44
    ld l, $00                                     ; $761D: $2E $00
    ld l, [hl]                                    ; $761F: $6E
    ld bc, $3F00                                  ; $7620: $01 $00 $3F
    ld a, [hl+]                                   ; $7623: $2A
    nop                                           ; $7624: $00
    jr c, jr_039_767A                             ; $7625: $38 $53

    nop                                           ; $7627: $00
    ldh [rP1], a                                  ; $7628: $E0 $00
    nop                                           ; $762A: $00
    nop                                           ; $762B: $00
    nop                                           ; $762C: $00
    nop                                           ; $762D: $00
    inc bc                                        ; $762E: $03
    cpl                                           ; $762F: $2F
    nop                                           ; $7630: $00
    ld c, l                                       ; $7631: $4D
    ld bc, $2A00                                  ; $7632: $01 $00 $2A
    ld l, e                                       ; $7635: $6B
    nop                                           ; $7636: $00
    dec [hl]                                      ; $7637: $35
    ld e, l                                       ; $7638: $5D
    nop                                           ; $7639: $00
    ld c, l                                       ; $763A: $4D
    ld bc, $3500                                  ; $763B: $01 $00 $35
    dec l                                         ; $763E: $2D
    nop                                           ; $763F: $00
    jr c, jr_039_76B1                             ; $7640: $38 $6F

    nop                                           ; $7642: $00
    ld c, b                                       ; $7643: $48
    ld a, [hl+]                                   ; $7644: $2A
    nop                                           ; $7645: $00
    ld l, c                                       ; $7646: $69
    ld [hl], b                                    ; $7647: $70
    nop                                           ; $7648: $00
    ld b, d                                       ; $7649: $42
    ld bc, $6D00                                  ; $764A: $01 $00 $6D
    ld l, $00                                     ; $764D: $2E $00
    ld b, h                                       ; $764F: $44
    rlc b                                         ; $7650: $CB $00
    ld bc, $0000                                  ; $7652: $01 $00 $00
    inc bc                                        ; $7655: $03
    add e                                         ; $7656: $83
    nop                                           ; $7657: $00
    jp nz, Jump_000_0091                          ; $7658: $C2 $91 $00

    pop bc                                        ; $765B: $C1
    add e                                         ; $765C: $83
    nop                                           ; $765D: $00
    jp nz, Jump_000_0091                          ; $765E: $C2 $91 $00

    pop bc                                        ; $7661: $C1
    ld c, d                                       ; $7662: $4A
    nop                                           ; $7663: $00
    ld bc, $0036                                  ; $7664: $01 $36 $00
    ld b, d                                       ; $7667: $42
    ld h, d                                       ; $7668: $62
    nop                                           ; $7669: $00
    ld l, d                                       ; $766A: $6A
    rlc b                                         ; $766B: $CB $00
    ld bc, $0000                                  ; $766D: $01 $00 $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    rlca                                          ; $7673: $07
    ld e, $00                                     ; $7674: $1E $00
    nop                                           ; $7676: $00
    dec b                                         ; $7677: $05
    add b                                         ; $7678: $80
    nop                                           ; $7679: $00

jr_039_767A:
    nop                                           ; $767A: $00
    ld [bc], a                                    ; $767B: $02
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    ld bc, $7675                                  ; $767E: $01 $75 $76
    and d                                         ; $7681: $A2
    nop                                           ; $7682: $00
    and d                                         ; $7683: $A2
    and d                                         ; $7684: $A2
    nop                                           ; $7685: $00
    ldh [rSB], a                                  ; $7686: $E0 $01
    nop                                           ; $7688: $00
    ld a, [hl+]                                   ; $7689: $2A
    adc [hl]                                      ; $768A: $8E
    jr nz, jr_039_76F8                            ; $768B: $20 $6B

    ld c, l                                       ; $768D: $4D
    nop                                           ; $768E: $00
    ld h, h                                       ; $768F: $64
    jr z, jr_039_7692                             ; $7690: $28 $00

jr_039_7692:
    ld b, h                                       ; $7692: $44
    ld c, c                                       ; $7693: $49
    nop                                           ; $7694: $00
    ret                                           ; $7695: $C9


    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    inc bc                                        ; $769B: $03
    ld a, [hl+]                                   ; $769C: $2A
    ld bc, $8F7F                                  ; $769D: $01 $7F $8F
    jr nz, jr_039_76D0                            ; $76A0: $20 $2E

    ld c, c                                       ; $76A2: $49
    nop                                           ; $76A3: $00
    ld a, [hl]                                    ; $76A4: $7E
    add a                                         ; $76A5: $87
    nop                                           ; $76A6: $00
    xor a                                         ; $76A7: $AF
    ld l, b                                       ; $76A8: $68
    nop                                           ; $76A9: $00
    jr nc, @+$03                                  ; $76AA: $30 $01

    ld bc, $0302                                  ; $76AC: $01 $02 $03
    db $10                                        ; $76AF: $10
    ld c, d                                       ; $76B0: $4A

jr_039_76B1:
    ld b, c                                       ; $76B1: $41
    nop                                           ; $76B2: $00
    ld l, b                                       ; $76B3: $68
    ld l, e                                       ; $76B4: $6B
    nop                                           ; $76B5: $00
    ld b, d                                       ; $76B6: $42
    ld bc, $4401                                  ; $76B7: $01 $01 $44
    ld [hl], $00                                  ; $76BA: $36 $00
    ld h, $28                                     ; $76BC: $26 $28
    nop                                           ; $76BE: $00
    ld c, l                                       ; $76BF: $4D
    ld l, [hl]                                    ; $76C0: $6E
    nop                                           ; $76C1: $00
    ld bc, $109F                                  ; $76C2: $01 $9F $10
    ld [hl], b                                    ; $76C5: $70
    ld b, d                                       ; $76C6: $42
    nop                                           ; $76C7: $00
    daa                                           ; $76C8: $27
    ccf                                           ; $76C9: $3F
    nop                                           ; $76CA: $00
    ld c, l                                       ; $76CB: $4D
    ld b, h                                       ; $76CC: $44
    nop                                           ; $76CD: $00
    rlc b                                         ; $76CE: $CB $00

jr_039_76D0:
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    nop                                           ; $76D2: $00
    nop                                           ; $76D3: $00
    inc bc                                        ; $76D4: $03
    add hl, sp                                    ; $76D5: $39
    nop                                           ; $76D6: $00
    ld [hl], $42                                  ; $76D7: $36 $42
    ld [bc], a                                    ; $76D9: $02
    daa                                           ; $76DA: $27
    ld [hl], b                                    ; $76DB: $70
    nop                                           ; $76DC: $00
    ccf                                           ; $76DD: $3F
    ld bc, $2A00                                  ; $76DE: $01 $00 $2A
    adc c                                         ; $76E1: $89
    db $10                                        ; $76E2: $10
    ld b, h                                       ; $76E3: $44
    ld l, $00                                     ; $76E4: $2E $00
    ld l, [hl]                                    ; $76E6: $6E
    or d                                          ; $76E7: $B2
    db $10                                        ; $76E8: $10
    jr c, jr_039_773E                             ; $76E9: $38 $53

    nop                                           ; $76EB: $00
    ld bc, $002F                                  ; $76EC: $01 $2F $00
    ld c, l                                       ; $76EF: $4D
    inc l                                         ; $76F0: $2C
    ld de, $4D2D                                  ; $76F1: $11 $2D $4D
    ld bc, $625A                                  ; $76F4: $01 $5A $62
    db $10                                        ; $76F7: $10

jr_039_76F8:
    ld c, b                                       ; $76F8: $48
    ld a, [hl+]                                   ; $76F9: $2A
    nop                                           ; $76FA: $00
    ld l, c                                       ; $76FB: $69
    ld [hl], b                                    ; $76FC: $70
    nop                                           ; $76FD: $00
    ld b, d                                       ; $76FE: $42
    ld b, a                                       ; $76FF: $47
    db $10                                        ; $7700: $10
    ld b, h                                       ; $7701: $44
    rlc b                                         ; $7702: $CB $00
    ld bc, $0000                                  ; $7704: $01 $00 $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    inc bc                                        ; $770A: $03
    add e                                         ; $770B: $83
    nop                                           ; $770C: $00
    jp nz, Jump_000_0091                          ; $770D: $C2 $91 $00

    pop bc                                        ; $7710: $C1
    add e                                         ; $7711: $83
    nop                                           ; $7712: $00
    jp nz, Jump_000_0091                          ; $7713: $C2 $91 $00

    pop bc                                        ; $7716: $C1
    ld c, d                                       ; $7717: $4A
    nop                                           ; $7718: $00
    ld bc, $0036                                  ; $7719: $01 $36 $00
    ld b, d                                       ; $771C: $42
    ld h, d                                       ; $771D: $62
    nop                                           ; $771E: $00
    ld l, d                                       ; $771F: $6A
    rlc b                                         ; $7720: $CB $00
    ld bc, $0000                                  ; $7722: $01 $00 $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    rlca                                          ; $7728: $07
    ld e, $00                                     ; $7729: $1E $00
    nop                                           ; $772B: $00
    dec b                                         ; $772C: $05
    add b                                         ; $772D: $80
    nop                                           ; $772E: $00
    nop                                           ; $772F: $00
    ld [bc], a                                    ; $7730: $02
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    ld bc, $772A                                  ; $7733: $01 $2A $77
    ld e, l                                       ; $7736: $5D
    nop                                           ; $7737: $00
    ld b, d                                       ; $7738: $42
    ld [hl], h                                    ; $7739: $74
    nop                                           ; $773A: $00
    halt                                          ; $773B: $76
    daa                                           ; $773C: $27
    nop                                           ; $773D: $00

jr_039_773E:
    set 1, e                                      ; $773E: $CB $CB
    nop                                           ; $7740: $00
    ld bc, $0000                                  ; $7741: $01 $00 $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    inc bc                                        ; $7747: $03
    ld a, h                                       ; $7748: $7C
    nop                                           ; $7749: $00
    cp l                                          ; $774A: $BD
    ld c, [hl]                                    ; $774B: $4E
    nop                                           ; $774C: $00
    ld bc, $0035                                  ; $774D: $01 $35 $00
    daa                                           ; $7750: $27
    inc l                                         ; $7751: $2C
    nop                                           ; $7752: $00
    ld h, a                                       ; $7753: $67
    jr z, jr_039_7756                             ; $7754: $28 $00

jr_039_7756:
    ld l, [hl]                                    ; $7756: $6E
    ld bc, $6000                                  ; $7757: $01 $00 $60
    ld a, [hl-]                                   ; $775A: $3A
    nop                                           ; $775B: $00
    scf                                           ; $775C: $37
    ld bc, $2A00                                  ; $775D: $01 $00 $2A
    ld b, e                                       ; $7760: $43
    nop                                           ; $7761: $00
    cpl                                           ; $7762: $2F
    ldh [rP1], a                                  ; $7763: $E0 $00
    ld bc, $0000                                  ; $7765: $01 $00 $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776A: $00
    inc bc                                        ; $776B: $03
    and b                                         ; $776C: $A0
    nop                                           ; $776D: $00
    ld a, c                                       ; $776E: $79
    xor d                                         ; $776F: $AA
    nop                                           ; $7770: $00
    halt                                          ; $7771: $76
    xor c                                         ; $7772: $A9
    nop                                           ; $7773: $00
    ld a, a                                       ; $7774: $7F
    add a                                         ; $7775: $87
    nop                                           ; $7776: $00
    halt                                          ; $7777: $76
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777A: $00
    ld bc, $8900                                  ; $777B: $01 $00 $89
    sub c                                         ; $777E: $91
    nop                                           ; $777F: $00
    halt                                          ; $7780: $76
    ld a, b                                       ; $7781: $78
    nop                                           ; $7782: $00
    jp nz, Jump_000_00AA                          ; $7783: $C2 $AA $00

    halt                                          ; $7786: $76
    ld b, h                                       ; $7787: $44
    nop                                           ; $7788: $00
    rlc b                                         ; $7789: $CB $00
    nop                                           ; $778B: $00
    nop                                           ; $778C: $00
    nop                                           ; $778D: $00
    nop                                           ; $778E: $00
    inc bc                                        ; $778F: $03
    ld a, [hl+]                                   ; $7790: $2A
    nop                                           ; $7791: $00
    ld e, l                                       ; $7792: $5D
    add hl, hl                                    ; $7793: $29
    nop                                           ; $7794: $00
    jr nc, jr_039_7798                            ; $7795: $30 $01

    nop                                           ; $7797: $00

jr_039_7798:
    dec [hl]                                      ; $7798: $35
    daa                                           ; $7799: $27
    nop                                           ; $779A: $00
    inc l                                         ; $779B: $2C
    ld h, a                                       ; $779C: $67
    nop                                           ; $779D: $00
    jr z, jr_039_77E4                             ; $779E: $28 $44

    nop                                           ; $77A0: $00
    ld b, e                                       ; $77A1: $43
    daa                                           ; $77A2: $27
    nop                                           ; $77A3: $00
    jr z, jr_039_77F3                             ; $77A4: $28 $4D

    nop                                           ; $77A6: $00
    ld c, c                                       ; $77A7: $49
    ld l, b                                       ; $77A8: $68
    nop                                           ; $77A9: $00
    ld d, e                                       ; $77AA: $53
    ld bc, $7C00                                  ; $77AB: $01 $00 $7C
    cp l                                          ; $77AE: $BD
    nop                                           ; $77AF: $00
    ld l, [hl]                                    ; $77B0: $6E
    ld bc, $3F00                                  ; $77B1: $01 $00 $3F
    ld a, [hl+]                                   ; $77B4: $2A
    nop                                           ; $77B5: $00
    ld [hl], $42                                  ; $77B6: $36 $42
    nop                                           ; $77B8: $00
    ld e, [hl]                                    ; $77B9: $5E
    jr c, jr_039_77BC                             ; $77BA: $38 $00

jr_039_77BC:
    ld l, h                                       ; $77BC: $6C
    rlc b                                         ; $77BD: $CB $00
    rlc b                                         ; $77BF: $CB $00
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    nop                                           ; $77C3: $00
    nop                                           ; $77C4: $00
    inc bc                                        ; $77C5: $03
    dec [hl]                                      ; $77C6: $35
    nop                                           ; $77C7: $00
    ld h, $01                                     ; $77C8: $26 $01
    nop                                           ; $77CA: $00
    ld [hl], $67                                  ; $77CB: $36 $67
    nop                                           ; $77CD: $00
    jr z, @+$57                                   ; $77CE: $28 $55

    nop                                           ; $77D0: $00
    ld b, h                                       ; $77D1: $44
    rlc b                                         ; $77D2: $CB $00
    rlc b                                         ; $77D4: $CB $00
    nop                                           ; $77D6: $00
    nop                                           ; $77D7: $00
    nop                                           ; $77D8: $00
    nop                                           ; $77D9: $00
    rlca                                          ; $77DA: $07
    ld e, $00                                     ; $77DB: $1E $00
    nop                                           ; $77DD: $00
    dec b                                         ; $77DE: $05
    add b                                         ; $77DF: $80
    nop                                           ; $77E0: $00
    nop                                           ; $77E1: $00
    ld [bc], a                                    ; $77E2: $02
    nop                                           ; $77E3: $00

jr_039_77E4:
    nop                                           ; $77E4: $00
    ld bc, $77DC                                  ; $77E5: $01 $DC $77
    ld e, l                                       ; $77E8: $5D
    nop                                           ; $77E9: $00
    ld b, d                                       ; $77EA: $42
    ld [hl], h                                    ; $77EB: $74
    nop                                           ; $77EC: $00
    halt                                          ; $77ED: $76
    daa                                           ; $77EE: $27
    nop                                           ; $77EF: $00
    set 1, e                                      ; $77F0: $CB $CB
    nop                                           ; $77F2: $00

jr_039_77F3:
    ld bc, $0000                                  ; $77F3: $01 $00 $00
    nop                                           ; $77F6: $00
    nop                                           ; $77F7: $00
    nop                                           ; $77F8: $00
    inc bc                                        ; $77F9: $03
    ld a, h                                       ; $77FA: $7C
    nop                                           ; $77FB: $00
    cp l                                          ; $77FC: $BD
    ld c, [hl]                                    ; $77FD: $4E
    ld bc, $264A                                  ; $77FE: $01 $4A $26
    db $10                                        ; $7801: $10
    ld l, [hl]                                    ; $7802: $6E
    ld l, $22                                     ; $7803: $2E $22
    adc l                                         ; $7805: $8D
    scf                                           ; $7806: $37
    ld bc, $E0BB                                  ; $7807: $01 $BB $E0
    nop                                           ; $780A: $00
    ld bc, $00A0                                  ; $780B: $01 $A0 $00
    ld a, c                                       ; $780E: $79
    xor d                                         ; $780F: $AA
    nop                                           ; $7810: $00
    halt                                          ; $7811: $76
    xor c                                         ; $7812: $A9
    nop                                           ; $7813: $00
    ld a, a                                       ; $7814: $7F
    add a                                         ; $7815: $87
    nop                                           ; $7816: $00
    halt                                          ; $7817: $76
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00
    ld bc, $8900                                  ; $781B: $01 $00 $89
    sub c                                         ; $781E: $91
    nop                                           ; $781F: $00
    halt                                          ; $7820: $76
    ld a, b                                       ; $7821: $78
    nop                                           ; $7822: $00
    jp nz, Jump_000_00AA                          ; $7823: $C2 $AA $00

    halt                                          ; $7826: $76
    ld b, h                                       ; $7827: $44
    nop                                           ; $7828: $00
    rlc b                                         ; $7829: $CB $00
    nop                                           ; $782B: $00
    nop                                           ; $782C: $00
    nop                                           ; $782D: $00
    nop                                           ; $782E: $00
    inc bc                                        ; $782F: $03
    ld a, [hl+]                                   ; $7830: $2A
    nop                                           ; $7831: $00
    ld e, l                                       ; $7832: $5D
    add hl, hl                                    ; $7833: $29
    nop                                           ; $7834: $00
    jr nc, @+$03                                  ; $7835: $30 $01

    ld bc, $264A                                  ; $7837: $01 $4A $26
    db $10                                        ; $783A: $10
    ld b, h                                       ; $783B: $44
    ld b, e                                       ; $783C: $43
    ld bc, $28DF                                  ; $783D: $01 $DF $28
    nop                                           ; $7840: $00
    ld c, l                                       ; $7841: $4D
    ld c, c                                       ; $7842: $49
    nop                                           ; $7843: $00
    ld l, b                                       ; $7844: $68
    ld d, e                                       ; $7845: $53
    nop                                           ; $7846: $00
    ld bc, $007C                                  ; $7847: $01 $7C $00
    cp l                                          ; $784A: $BD
    ld l, [hl]                                    ; $784B: $6E
    ld bc, $36B2                                  ; $784C: $01 $B2 $36
    nop                                           ; $784F: $00
    ld b, d                                       ; $7850: $42
    ld e, [hl]                                    ; $7851: $5E
    nop                                           ; $7852: $00
    jr c, jr_039_78C1                             ; $7853: $38 $6C

    nop                                           ; $7855: $00
    set 1, e                                      ; $7856: $CB $CB
    nop                                           ; $7858: $00
    ld bc, $0000                                  ; $7859: $01 $00 $00
    nop                                           ; $785C: $00
    nop                                           ; $785D: $00
    nop                                           ; $785E: $00
    inc bc                                        ; $785F: $03
    dec [hl]                                      ; $7860: $35
    nop                                           ; $7861: $00
    ld h, $C8                                     ; $7862: $26 $C8
    ld bc, $463E                                  ; $7864: $01 $3E $46
    db $10                                        ; $7867: $10
    ld b, h                                       ; $7868: $44
    rlc b                                         ; $7869: $CB $00
    rlc b                                         ; $786B: $CB $00
    nop                                           ; $786D: $00
    nop                                           ; $786E: $00
    nop                                           ; $786F: $00
    nop                                           ; $7870: $00
    rlca                                          ; $7871: $07
    ld e, $00                                     ; $7872: $1E $00
    nop                                           ; $7874: $00
    dec b                                         ; $7875: $05
    add b                                         ; $7876: $80
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    ld [bc], a                                    ; $7879: $02
    nop                                           ; $787A: $00
    nop                                           ; $787B: $00
    ld bc, $7873                                  ; $787C: $01 $73 $78
    ld l, l                                       ; $787F: $6D
    nop                                           ; $7880: $00
    ccf                                           ; $7881: $3F
    ld [hl], $00                                  ; $7882: $36 $00
    ld bc, $0078                                  ; $7884: $01 $78 $00
    cp h                                          ; $7887: $BC
    sub h                                         ; $7888: $94
    nop                                           ; $7889: $00
    or b                                          ; $788A: $B0
    adc c                                         ; $788B: $89
    nop                                           ; $788C: $00
    rlc b                                         ; $788D: $CB $00
    nop                                           ; $788F: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    inc bc                                        ; $7893: $03
    ld e, [hl]                                    ; $7894: $5E
    nop                                           ; $7895: $00
    ld l, a                                       ; $7896: $6F
    ld c, c                                       ; $7897: $49
    nop                                           ; $7898: $00
    ld b, a                                       ; $7899: $47
    ld bc, $4900                                  ; $789A: $01 $00 $49
    ld c, d                                       ; $789D: $4A
    nop                                           ; $789E: $00
    dec hl                                        ; $789F: $2B
    ld [hl], $00                                  ; $78A0: $36 $00
    ld b, d                                       ; $78A2: $42
    ld l, d                                       ; $78A3: $6A
    nop                                           ; $78A4: $00
    ld bc, $005E                                  ; $78A5: $01 $5E $00
    ccf                                           ; $78A8: $3F
    daa                                           ; $78A9: $27
    nop                                           ; $78AA: $00
    ld b, h                                       ; $78AB: $44
    dec hl                                        ; $78AC: $2B
    nop                                           ; $78AD: $00
    ld l, b                                       ; $78AE: $68
    ld bc, $6400                                  ; $78AF: $01 $00 $64
    jr z, jr_039_78B4                             ; $78B2: $28 $00

jr_039_78B4:
    scf                                           ; $78B4: $37
    ld l, [hl]                                    ; $78B5: $6E
    nop                                           ; $78B6: $00
    ld bc, $005E                                  ; $78B7: $01 $5E $00
    ld c, d                                       ; $78BA: $4A
    inc l                                         ; $78BB: $2C
    nop                                           ; $78BC: $00
    ccf                                           ; $78BD: $3F
    ld c, l                                       ; $78BE: $4D
    nop                                           ; $78BF: $00
    ld h, h                                       ; $78C0: $64

jr_039_78C1:
    ret                                           ; $78C1: $C9


    nop                                           ; $78C2: $00
    ld bc, $0000                                  ; $78C3: $01 $00 $00
    nop                                           ; $78C6: $00
    nop                                           ; $78C7: $00
    nop                                           ; $78C8: $00
    inc bc                                        ; $78C9: $03
    ld a, [hl+]                                   ; $78CA: $2A
    nop                                           ; $78CB: $00
    ld h, c                                       ; $78CC: $61
    ld [hl], $00                                  ; $78CD: $36 $00
    ld l, h                                       ; $78CF: $6C
    add hl, sp                                    ; $78D0: $39
    nop                                           ; $78D1: $00
    jr z, jr_039_791D                             ; $78D2: $28 $49

    nop                                           ; $78D4: $00
    cpl                                           ; $78D5: $2F
    ld b, e                                       ; $78D6: $43
    nop                                           ; $78D7: $00
    ld bc, $0036                                  ; $78D8: $01 $36 $00
    ld b, d                                       ; $78DB: $42
    ld l, d                                       ; $78DC: $6A
    nop                                           ; $78DD: $00
    ld e, [hl]                                    ; $78DE: $5E
    ccf                                           ; $78DF: $3F
    nop                                           ; $78E0: $00
    daa                                           ; $78E1: $27
    ld b, h                                       ; $78E2: $44
    nop                                           ; $78E3: $00
    dec hl                                        ; $78E4: $2B
    ld l, b                                       ; $78E5: $68
    nop                                           ; $78E6: $00
    ldh [rP1], a                                  ; $78E7: $E0 $00
    nop                                           ; $78E9: $00
    nop                                           ; $78EA: $00
    nop                                           ; $78EB: $00
    nop                                           ; $78EC: $00
    inc bc                                        ; $78ED: $03
    ld l, l                                       ; $78EE: $6D
    nop                                           ; $78EF: $00
    ccf                                           ; $78F0: $3F
    ld [hl], $00                                  ; $78F1: $36 $00
    ld h, c                                       ; $78F3: $61
    ld bc, $5D00                                  ; $78F4: $01 $00 $5D
    dec a                                         ; $78F7: $3D
    nop                                           ; $78F8: $00
    ld b, d                                       ; $78F9: $42
    ld c, h                                       ; $78FA: $4C
    nop                                           ; $78FB: $00
    ld [hl], b                                    ; $78FC: $70
    jp nc, Boot                                   ; $78FD: $D2 $00 $01

    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    rlca                                          ; $7902: $07
    ld e, $00                                     ; $7903: $1E $00
    nop                                           ; $7905: $00
    dec b                                         ; $7906: $05
    add b                                         ; $7907: $80
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    ld [bc], a                                    ; $790A: $02
    nop                                           ; $790B: $00
    nop                                           ; $790C: $00
    ld bc, $7904                                  ; $790D: $01 $04 $79
    ld c, [hl]                                    ; $7910: $4E
    db $10                                        ; $7911: $10
    ld bc, $0078                                  ; $7912: $01 $78 $00
    cp h                                          ; $7915: $BC
    sub h                                         ; $7916: $94
    nop                                           ; $7917: $00
    or b                                          ; $7918: $B0
    adc c                                         ; $7919: $89
    nop                                           ; $791A: $00
    rlc b                                         ; $791B: $CB $00

jr_039_791D:
    nop                                           ; $791D: $00
    nop                                           ; $791E: $00
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    inc bc                                        ; $7921: $03
    ld e, [hl]                                    ; $7922: $5E
    nop                                           ; $7923: $00
    ld l, a                                       ; $7924: $6F
    ld c, c                                       ; $7925: $49
    nop                                           ; $7926: $00
    ld b, a                                       ; $7927: $47
    ld bc, $4900                                  ; $7928: $01 $00 $49
    ld c, d                                       ; $792B: $4A
    nop                                           ; $792C: $00
    dec hl                                        ; $792D: $2B
    ld [hl], $00                                  ; $792E: $36 $00
    ld b, d                                       ; $7930: $42
    ld l, d                                       ; $7931: $6A
    nop                                           ; $7932: $00
    ld e, [hl]                                    ; $7933: $5E
    ccf                                           ; $7934: $3F
    nop                                           ; $7935: $00
    daa                                           ; $7936: $27
    ld b, h                                       ; $7937: $44
    nop                                           ; $7938: $00
    dec hl                                        ; $7939: $2B
    ld l, b                                       ; $793A: $68
    nop                                           ; $793B: $00
    ld bc, $122D                                  ; $793C: $01 $2D $12
    sub b                                         ; $793F: $90
    ld l, [hl]                                    ; $7940: $6E
    ld bc, $4A98                                  ; $7941: $01 $98 $4A
    nop                                           ; $7944: $00
    inc l                                         ; $7945: $2C
    ccf                                           ; $7946: $3F
    nop                                           ; $7947: $00
    ld c, l                                       ; $7948: $4D
    ld h, h                                       ; $7949: $64
    nop                                           ; $794A: $00
    ret                                           ; $794B: $C9


    nop                                           ; $794C: $00
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00
    nop                                           ; $794F: $00
    nop                                           ; $7950: $00
    inc bc                                        ; $7951: $03
    ld a, [hl+]                                   ; $7952: $2A
    nop                                           ; $7953: $00
    ld h, c                                       ; $7954: $61
    ld [hl], $00                                  ; $7955: $36 $00
    ld l, h                                       ; $7957: $6C
    add hl, sp                                    ; $7958: $39
    nop                                           ; $7959: $00
    jr z, jr_039_79A5                             ; $795A: $28 $49

    nop                                           ; $795C: $00
    cpl                                           ; $795D: $2F
    ld b, e                                       ; $795E: $43
    nop                                           ; $795F: $00
    ld bc, $0036                                  ; $7960: $01 $36 $00
    ld b, d                                       ; $7963: $42
    ld l, d                                       ; $7964: $6A
    nop                                           ; $7965: $00
    ld e, [hl]                                    ; $7966: $5E
    ccf                                           ; $7967: $3F
    nop                                           ; $7968: $00
    daa                                           ; $7969: $27
    ld b, h                                       ; $796A: $44
    nop                                           ; $796B: $00
    dec hl                                        ; $796C: $2B
    ld l, b                                       ; $796D: $68
    nop                                           ; $796E: $00
    ldh [rP1], a                                  ; $796F: $E0 $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    inc bc                                        ; $7975: $03
    ld c, [hl]                                    ; $7976: $4E
    db $10                                        ; $7977: $10
    ld h, c                                       ; $7978: $61
    ld bc, $5D00                                  ; $7979: $01 $00 $5D
    dec a                                         ; $797C: $3D
    nop                                           ; $797D: $00
    ld b, d                                       ; $797E: $42
    ld c, h                                       ; $797F: $4C
    nop                                           ; $7980: $00
    ld [hl], b                                    ; $7981: $70
    jp nc, Boot                                   ; $7982: $D2 $00 $01

    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    rlca                                          ; $798A: $07
    ld e, $00                                     ; $798B: $1E $00
    nop                                           ; $798D: $00
    dec b                                         ; $798E: $05
    add b                                         ; $798F: $80
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    ld [bc], a                                    ; $7992: $02
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    ld bc, $798C                                  ; $7995: $01 $8C $79
    ld c, b                                       ; $7998: $48
    nop                                           ; $7999: $00
    jr z, jr_039_79FE                             ; $799A: $28 $62

    nop                                           ; $799C: $00
    ld l, b                                       ; $799D: $68
    ld bc, $6D00                                  ; $799E: $01 $00 $6D
    ccf                                           ; $79A1: $3F
    nop                                           ; $79A2: $00
    ld [hl], $30                                  ; $79A3: $36 $30

jr_039_79A5:
    nop                                           ; $79A5: $00
    ld bc, $0003                                  ; $79A6: $01 $03 $00
    ld d, e                                       ; $79A9: $53
    ld l, a                                       ; $79AA: $6F
    nop                                           ; $79AB: $00
    ld bc, $004E                                  ; $79AC: $01 $4E $00
    ld h, d                                       ; $79AF: $62
    dec hl                                        ; $79B0: $2B
    nop                                           ; $79B1: $00
    ld [hl], b                                    ; $79B2: $70
    ccf                                           ; $79B3: $3F
    nop                                           ; $79B4: $00
    ld h, h                                       ; $79B5: $64
    jr z, jr_039_79B8                             ; $79B6: $28 $00

jr_039_79B8:
    ld b, h                                       ; $79B8: $44
    ld c, c                                       ; $79B9: $49
    nop                                           ; $79BA: $00
    ret                                           ; $79BB: $C9


    nop                                           ; $79BC: $00
    nop                                           ; $79BD: $00
    nop                                           ; $79BE: $00
    nop                                           ; $79BF: $00
    nop                                           ; $79C0: $00
    rlca                                          ; $79C1: $07
    ldh a, [rP1]                                  ; $79C2: $F0 $00
    nop                                           ; $79C4: $00
    rlca                                          ; $79C5: $07
    ldh a, [rP1]                                  ; $79C6: $F0 $00
    nop                                           ; $79C8: $00
    dec b                                         ; $79C9: $05
    add b                                         ; $79CA: $80
    nop                                           ; $79CB: $00
    nop                                           ; $79CC: $00
    ld [bc], a                                    ; $79CD: $02
    nop                                           ; $79CE: $00
    nop                                           ; $79CF: $00
    ld bc, $79C7                                  ; $79D0: $01 $C7 $79
    ld c, b                                       ; $79D3: $48
    nop                                           ; $79D4: $00
    jr z, jr_039_7A39                             ; $79D5: $28 $62

    nop                                           ; $79D7: $00
    ld l, b                                       ; $79D8: $68
    ld bc, $4E01                                  ; $79D9: $01 $01 $4E
    jr nc, jr_039_79DE                            ; $79DC: $30 $00

jr_039_79DE:
    inc bc                                        ; $79DE: $03
    ld a, l                                       ; $79DF: $7D
    db $10                                        ; $79E0: $10
    ld bc, $1054                                  ; $79E1: $01 $54 $10
    dec hl                                        ; $79E4: $2B
    ld [hl], b                                    ; $79E5: $70
    nop                                           ; $79E6: $00
    ccf                                           ; $79E7: $3F
    ld h, h                                       ; $79E8: $64
    nop                                           ; $79E9: $00
    jr z, jr_039_7A30                             ; $79EA: $28 $44

    nop                                           ; $79EC: $00
    ld c, c                                       ; $79ED: $49
    ret                                           ; $79EE: $C9


    nop                                           ; $79EF: $00
    ld bc, $0000                                  ; $79F0: $01 $00 $00
    nop                                           ; $79F3: $00
    nop                                           ; $79F4: $00
    nop                                           ; $79F5: $00
    rlca                                          ; $79F6: $07
    ldh a, [rP1]                                  ; $79F7: $F0 $00
    nop                                           ; $79F9: $00
    rlca                                          ; $79FA: $07
    ldh a, [rP1]                                  ; $79FB: $F0 $00
    nop                                           ; $79FD: $00

jr_039_79FE:
    dec b                                         ; $79FE: $05
    add b                                         ; $79FF: $80
    nop                                           ; $7A00: $00
    nop                                           ; $7A01: $00
    ld [bc], a                                    ; $7A02: $02
    nop                                           ; $7A03: $00
    nop                                           ; $7A04: $00
    ld bc, $79FC                                  ; $7A05: $01 $FC $79
    cpl                                           ; $7A08: $2F
    nop                                           ; $7A09: $00
    ld c, l                                       ; $7A0A: $4D
    cp a                                          ; $7A0B: $BF
    nop                                           ; $7A0C: $00
    adc b                                         ; $7A0D: $88
    ld c, d                                       ; $7A0E: $4A
    nop                                           ; $7A0F: $00
    ld bc, $002B                                  ; $7A10: $01 $2B $00
    ld c, c                                       ; $7A13: $49
    jr z, jr_039_7A16                             ; $7A14: $28 $00

jr_039_7A16:
    ld h, c                                       ; $7A16: $61
    ld c, l                                       ; $7A17: $4D
    nop                                           ; $7A18: $00
    ld c, c                                       ; $7A19: $49
    ld c, b                                       ; $7A1A: $48
    nop                                           ; $7A1B: $00
    ld bc, $0027                                  ; $7A1C: $01 $27 $00
    ld c, c                                       ; $7A1F: $49
    dec hl                                        ; $7A20: $2B
    nop                                           ; $7A21: $00
    ld [hl], b                                    ; $7A22: $70
    ccf                                           ; $7A23: $3F
    nop                                           ; $7A24: $00
    ld h, h                                       ; $7A25: $64
    jr z, jr_039_7A28                             ; $7A26: $28 $00

jr_039_7A28:
    ld b, h                                       ; $7A28: $44
    ld c, c                                       ; $7A29: $49
    nop                                           ; $7A2A: $00
    rlc b                                         ; $7A2B: $CB $00
    nop                                           ; $7A2D: $00
    nop                                           ; $7A2E: $00
    nop                                           ; $7A2F: $00

jr_039_7A30:
    nop                                           ; $7A30: $00
    rlca                                          ; $7A31: $07
    ldh a, [rP1]                                  ; $7A32: $F0 $00
    nop                                           ; $7A34: $00
    rlca                                          ; $7A35: $07
    ldh a, [rP1]                                  ; $7A36: $F0 $00
    nop                                           ; $7A38: $00

jr_039_7A39:
    dec b                                         ; $7A39: $05
    add b                                         ; $7A3A: $80
    nop                                           ; $7A3B: $00
    nop                                           ; $7A3C: $00
    ld [bc], a                                    ; $7A3D: $02
    nop                                           ; $7A3E: $00
    nop                                           ; $7A3F: $00
    ld bc, $7A37                                  ; $7A40: $01 $37 $7A
    cpl                                           ; $7A43: $2F
    nop                                           ; $7A44: $00
    ld c, l                                       ; $7A45: $4D
    cp a                                          ; $7A46: $BF
    nop                                           ; $7A47: $00
    adc b                                         ; $7A48: $88
    ld c, d                                       ; $7A49: $4A
    nop                                           ; $7A4A: $00
    ld bc, $002B                                  ; $7A4B: $01 $2B $00
    ld c, c                                       ; $7A4E: $49
    jr z, jr_039_7A53                             ; $7A4F: $28 $02

    sub c                                         ; $7A51: $91
    ld c, c                                       ; $7A52: $49

jr_039_7A53:
    nop                                           ; $7A53: $00
    ld c, b                                       ; $7A54: $48
    ld bc, $2700                                  ; $7A55: $01 $00 $27
    ld c, c                                       ; $7A58: $49
    nop                                           ; $7A59: $00
    dec hl                                        ; $7A5A: $2B
    ld [hl], b                                    ; $7A5B: $70
    nop                                           ; $7A5C: $00
    ccf                                           ; $7A5D: $3F
    ld h, h                                       ; $7A5E: $64
    nop                                           ; $7A5F: $00
    jr z, jr_039_7AA6                             ; $7A60: $28 $44

    nop                                           ; $7A62: $00
    ld c, c                                       ; $7A63: $49
    rlc b                                         ; $7A64: $CB $00
    ld bc, $0000                                  ; $7A66: $01 $00 $00
    nop                                           ; $7A69: $00
    nop                                           ; $7A6A: $00
    nop                                           ; $7A6B: $00
    rlca                                          ; $7A6C: $07
    ldh a, [rP1]                                  ; $7A6D: $F0 $00
    nop                                           ; $7A6F: $00
    rlca                                          ; $7A70: $07
    ldh a, [rP1]                                  ; $7A71: $F0 $00
    nop                                           ; $7A73: $00
    dec b                                         ; $7A74: $05
    add b                                         ; $7A75: $80
    nop                                           ; $7A76: $00
    nop                                           ; $7A77: $00
    ld [bc], a                                    ; $7A78: $02
    nop                                           ; $7A79: $00
    nop                                           ; $7A7A: $00
    ld bc, $7A72                                  ; $7A7B: $01 $72 $7A
    jr z, jr_039_7A80                             ; $7A7E: $28 $00

jr_039_7A80:
    ld e, a                                       ; $7A80: $5F
    ret z                                         ; $7A81: $C8

    nop                                           ; $7A82: $00
    ld l, l                                       ; $7A83: $6D
    ccf                                           ; $7A84: $3F
    nop                                           ; $7A85: $00
    ld [hl], $30                                  ; $7A86: $36 $30
    nop                                           ; $7A88: $00
    ld bc, $0003                                  ; $7A89: $01 $03 $00
    ld d, e                                       ; $7A8C: $53
    ld l, a                                       ; $7A8D: $6F
    nop                                           ; $7A8E: $00
    ld bc, $004E                                  ; $7A8F: $01 $4E $00
    ld h, d                                       ; $7A92: $62
    daa                                           ; $7A93: $27
    nop                                           ; $7A94: $00
    ld h, h                                       ; $7A95: $64
    jr z, jr_039_7A98                             ; $7A96: $28 $00

jr_039_7A98:
    ld b, h                                       ; $7A98: $44
    ld c, c                                       ; $7A99: $49
    nop                                           ; $7A9A: $00
    ret                                           ; $7A9B: $C9


    nop                                           ; $7A9C: $00
    nop                                           ; $7A9D: $00
    nop                                           ; $7A9E: $00
    nop                                           ; $7A9F: $00
    nop                                           ; $7AA0: $00
    rlca                                          ; $7AA1: $07
    ldh a, [rP1]                                  ; $7AA2: $F0 $00
    nop                                           ; $7AA4: $00
    rlca                                          ; $7AA5: $07

jr_039_7AA6:
    ldh a, [rP1]                                  ; $7AA6: $F0 $00
    nop                                           ; $7AA8: $00
    dec b                                         ; $7AA9: $05
    add b                                         ; $7AAA: $80
    nop                                           ; $7AAB: $00
    nop                                           ; $7AAC: $00
    ld [bc], a                                    ; $7AAD: $02
    nop                                           ; $7AAE: $00
    nop                                           ; $7AAF: $00
    ld bc, $7AA7                                  ; $7AB0: $01 $A7 $7A
    jr z, jr_039_7AB5                             ; $7AB3: $28 $00

jr_039_7AB5:
    ld e, a                                       ; $7AB5: $5F
    ret z                                         ; $7AB6: $C8

    ld bc, $304E                                  ; $7AB7: $01 $4E $30
    ld bc, $7D7A                                  ; $7ABA: $01 $7A $7D
    ld de, $2754                                  ; $7ABD: $11 $54 $27
    nop                                           ; $7AC0: $00
    ld h, h                                       ; $7AC1: $64
    jr z, jr_039_7AC4                             ; $7AC2: $28 $00

jr_039_7AC4:
    ld b, h                                       ; $7AC4: $44
    ld c, c                                       ; $7AC5: $49
    nop                                           ; $7AC6: $00
    ret                                           ; $7AC7: $C9


    nop                                           ; $7AC8: $00
    nop                                           ; $7AC9: $00
    nop                                           ; $7ACA: $00
    nop                                           ; $7ACB: $00
    nop                                           ; $7ACC: $00
    rlca                                          ; $7ACD: $07
    ldh a, [rP1]                                  ; $7ACE: $F0 $00
    nop                                           ; $7AD0: $00
    rlca                                          ; $7AD1: $07
    ldh a, [rP1]                                  ; $7AD2: $F0 $00
    nop                                           ; $7AD4: $00
    dec b                                         ; $7AD5: $05
    add b                                         ; $7AD6: $80
    nop                                           ; $7AD7: $00
    nop                                           ; $7AD8: $00
    ld [bc], a                                    ; $7AD9: $02
    nop                                           ; $7ADA: $00
    nop                                           ; $7ADB: $00
    ld bc, $7AD3                                  ; $7ADC: $01 $D3 $7A
    ld h, d                                       ; $7ADF: $62
    nop                                           ; $7AE0: $00
    ld [hl], b                                    ; $7AE1: $70
    ld e, b                                       ; $7AE2: $58
    nop                                           ; $7AE3: $00
    ld l, c                                       ; $7AE4: $69
    ld bc, $7C00                                  ; $7AE5: $01 $00 $7C
    cp l                                          ; $7AE8: $BD
    nop                                           ; $7AE9: $00
    dec [hl]                                      ; $7AEA: $35
    ld e, l                                       ; $7AEB: $5D
    nop                                           ; $7AEC: $00
    jr nc, jr_039_7AEF                            ; $7AED: $30 $00

jr_039_7AEF:
    nop                                           ; $7AEF: $00
    nop                                           ; $7AF0: $00
    inc bc                                        ; $7AF1: $03
    nop                                           ; $7AF2: $00
    ld d, e                                       ; $7AF3: $53
    ld l, a                                       ; $7AF4: $6F
    nop                                           ; $7AF5: $00
    ld bc, $0049                                  ; $7AF6: $01 $49 $00
    ld l, a                                       ; $7AF9: $6F
    ld b, h                                       ; $7AFA: $44
    nop                                           ; $7AFB: $00
    ld a, $CB                                     ; $7AFC: $3E $CB
    nop                                           ; $7AFE: $00
    ld bc, $0000                                  ; $7AFF: $01 $00 $00
    nop                                           ; $7B02: $00
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    rlca                                          ; $7B05: $07
    ldh a, [rP1]                                  ; $7B06: $F0 $00
    nop                                           ; $7B08: $00
    rlca                                          ; $7B09: $07
    ldh a, [rP1]                                  ; $7B0A: $F0 $00
    nop                                           ; $7B0C: $00
    dec b                                         ; $7B0D: $05
    add b                                         ; $7B0E: $80
    nop                                           ; $7B0F: $00
    nop                                           ; $7B10: $00
    ld [bc], a                                    ; $7B11: $02
    nop                                           ; $7B12: $00
    nop                                           ; $7B13: $00
    ld bc, $7B0B                                  ; $7B14: $01 $0B $7B
    ld h, d                                       ; $7B17: $62
    nop                                           ; $7B18: $00
    ld [hl], b                                    ; $7B19: $70
    ld e, b                                       ; $7B1A: $58
    nop                                           ; $7B1B: $00
    ld l, c                                       ; $7B1C: $69
    ld bc, $7C00                                  ; $7B1D: $01 $00 $7C
    cp l                                          ; $7B20: $BD
    nop                                           ; $7B21: $00
    dec [hl]                                      ; $7B22: $35
    ld e, l                                       ; $7B23: $5D
    nop                                           ; $7B24: $00
    jr nc, jr_039_7B27                            ; $7B25: $30 $00

jr_039_7B27:
    nop                                           ; $7B27: $00
    nop                                           ; $7B28: $00
    inc bc                                        ; $7B29: $03
    ld bc, $497D                                  ; $7B2A: $01 $7D $49
    nop                                           ; $7B2D: $00
    ld l, a                                       ; $7B2E: $6F
    ld b, h                                       ; $7B2F: $44
    nop                                           ; $7B30: $00
    ld a, $CB                                     ; $7B31: $3E $CB
    nop                                           ; $7B33: $00
    ld bc, $0000                                  ; $7B34: $01 $00 $00
    nop                                           ; $7B37: $00
    nop                                           ; $7B38: $00
    nop                                           ; $7B39: $00
    rlca                                          ; $7B3A: $07
    ldh a, [rP1]                                  ; $7B3B: $F0 $00
    nop                                           ; $7B3D: $00
    rlca                                          ; $7B3E: $07
    ldh a, [rP1]                                  ; $7B3F: $F0 $00
    nop                                           ; $7B41: $00
    dec b                                         ; $7B42: $05
    add b                                         ; $7B43: $80
    nop                                           ; $7B44: $00
    nop                                           ; $7B45: $00
    ld [bc], a                                    ; $7B46: $02
    nop                                           ; $7B47: $00
    nop                                           ; $7B48: $00
    ld bc, $7B40                                  ; $7B49: $01 $40 $7B
    ld a, h                                       ; $7B4C: $7C
    nop                                           ; $7B4D: $00
    cp l                                          ; $7B4E: $BD
    jr nc, jr_039_7B51                            ; $7B4F: $30 $00

jr_039_7B51:
    ld bc, $0027                                  ; $7B51: $01 $27 $00
    ld b, b                                       ; $7B54: $40
    ld d, e                                       ; $7B55: $53
    nop                                           ; $7B56: $00
    ld l, a                                       ; $7B57: $6F
    ld bc, $4E00                                  ; $7B58: $01 $00 $4E
    ld h, d                                       ; $7B5B: $62
    nop                                           ; $7B5C: $00
    daa                                           ; $7B5D: $27
    ld c, l                                       ; $7B5E: $4D
    nop                                           ; $7B5F: $00
    dec [hl]                                      ; $7B60: $35
    ld [hl], b                                    ; $7B61: $70
    nop                                           ; $7B62: $00
    rlc b                                         ; $7B63: $CB $00
    nop                                           ; $7B65: $00
    nop                                           ; $7B66: $00
    nop                                           ; $7B67: $00
    nop                                           ; $7B68: $00
    rlca                                          ; $7B69: $07
    ldh a, [rP1]                                  ; $7B6A: $F0 $00
    nop                                           ; $7B6C: $00
    rlca                                          ; $7B6D: $07
    ldh a, [rP1]                                  ; $7B6E: $F0 $00
    nop                                           ; $7B70: $00
    dec b                                         ; $7B71: $05
    add b                                         ; $7B72: $80
    nop                                           ; $7B73: $00
    nop                                           ; $7B74: $00
    ld [bc], a                                    ; $7B75: $02
    nop                                           ; $7B76: $00
    nop                                           ; $7B77: $00
    ld bc, $7B6F                                  ; $7B78: $01 $6F $7B
    ld a, h                                       ; $7B7B: $7C
    nop                                           ; $7B7C: $00
    cp l                                          ; $7B7D: $BD
    jr nc, jr_039_7B80                            ; $7B7E: $30 $00

jr_039_7B80:
    ld bc, $0103                                  ; $7B80: $01 $03 $01
    ld a, l                                       ; $7B83: $7D
    ld d, h                                       ; $7B84: $54
    db $10                                        ; $7B85: $10
    daa                                           ; $7B86: $27
    ld c, l                                       ; $7B87: $4D
    nop                                           ; $7B88: $00
    dec [hl]                                      ; $7B89: $35
    ld [hl], b                                    ; $7B8A: $70
    nop                                           ; $7B8B: $00
    rlc b                                         ; $7B8C: $CB $00
    nop                                           ; $7B8E: $00
    nop                                           ; $7B8F: $00
    nop                                           ; $7B90: $00
    nop                                           ; $7B91: $00
    rlca                                          ; $7B92: $07
    ldh a, [rP1]                                  ; $7B93: $F0 $00
    nop                                           ; $7B95: $00
    rlca                                          ; $7B96: $07
    ldh a, [rP1]                                  ; $7B97: $F0 $00
    nop                                           ; $7B99: $00
    dec b                                         ; $7B9A: $05
    add b                                         ; $7B9B: $80
    nop                                           ; $7B9C: $00
    nop                                           ; $7B9D: $00
    ld [bc], a                                    ; $7B9E: $02
    nop                                           ; $7B9F: $00
    nop                                           ; $7BA0: $00
    ld bc, $7B98                                  ; $7BA1: $01 $98 $7B
    ld d, b                                       ; $7BA4: $50
    nop                                           ; $7BA5: $00
    ld l, a                                       ; $7BA6: $6F
    rlc b                                         ; $7BA7: $CB $00
    ld bc, $007C                                  ; $7BA9: $01 $7C $00
    cp l                                          ; $7BAC: $BD
    ld l, [hl]                                    ; $7BAD: $6E
    nop                                           ; $7BAE: $00
    ld bc, $003F                                  ; $7BAF: $01 $3F $00
    ld c, l                                       ; $7BB2: $4D
    ld [hl], $00                                  ; $7BB3: $36 $00
    ld e, l                                       ; $7BB5: $5D
    jr c, jr_039_7BB8                             ; $7BB6: $38 $00

jr_039_7BB8:
    ld b, d                                       ; $7BB8: $42
    dec l                                         ; $7BB9: $2D
    nop                                           ; $7BBA: $00
    ld l, e                                       ; $7BBB: $6B
    ld l, d                                       ; $7BBC: $6A
    nop                                           ; $7BBD: $00
    ld bc, $0026                                  ; $7BBE: $01 $26 $00
    daa                                           ; $7BC1: $27
    ld b, d                                       ; $7BC2: $42
    nop                                           ; $7BC3: $00
    ld c, [hl]                                    ; $7BC4: $4E
    nop                                           ; $7BC5: $00
    nop                                           ; $7BC6: $00
    nop                                           ; $7BC7: $00
    daa                                           ; $7BC8: $27
    nop                                           ; $7BC9: $00
    ld c, c                                       ; $7BCA: $49
    daa                                           ; $7BCB: $27
    nop                                           ; $7BCC: $00
    ld c, l                                       ; $7BCD: $4D
    dec hl                                        ; $7BCE: $2B
    nop                                           ; $7BCF: $00
    rlc b                                         ; $7BD0: $CB $00
    nop                                           ; $7BD2: $00
    nop                                           ; $7BD3: $00
    nop                                           ; $7BD4: $00
    nop                                           ; $7BD5: $00
    rlca                                          ; $7BD6: $07
    ldh a, [rP1]                                  ; $7BD7: $F0 $00
    nop                                           ; $7BD9: $00
    rlca                                          ; $7BDA: $07
    ldh a, [rP1]                                  ; $7BDB: $F0 $00
    nop                                           ; $7BDD: $00
    dec b                                         ; $7BDE: $05
    add b                                         ; $7BDF: $80
    nop                                           ; $7BE0: $00
    nop                                           ; $7BE1: $00
    ld [bc], a                                    ; $7BE2: $02
    nop                                           ; $7BE3: $00
    nop                                           ; $7BE4: $00
    ld bc, $7BDC                                  ; $7BE5: $01 $DC $7B
    ld d, b                                       ; $7BE8: $50
    nop                                           ; $7BE9: $00
    ld l, a                                       ; $7BEA: $6F
    rlc b                                         ; $7BEB: $CB $00
    ld bc, $007C                                  ; $7BED: $01 $7C $00
    cp l                                          ; $7BF0: $BD
    ld l, [hl]                                    ; $7BF1: $6E
    nop                                           ; $7BF2: $00
    ld bc, $2069                                  ; $7BF3: $01 $69 $20
    ld [hl], $5D                                  ; $7BF6: $36 $5D
    nop                                           ; $7BF8: $00
    jr c, jr_039_7C3D                             ; $7BF9: $38 $42

    nop                                           ; $7BFB: $00
    dec l                                         ; $7BFC: $2D
    ld l, e                                       ; $7BFD: $6B
    nop                                           ; $7BFE: $00
    ld l, d                                       ; $7BFF: $6A
    ld bc, $8E01                                  ; $7C00: $01 $01 $8E
    rlca                                          ; $7C03: $07
    db $10                                        ; $7C04: $10
    ld c, [hl]                                    ; $7C05: $4E
    ld bc, $2700                                  ; $7C06: $01 $00 $27
    ld c, c                                       ; $7C09: $49
    nop                                           ; $7C0A: $00
    daa                                           ; $7C0B: $27
    ld c, l                                       ; $7C0C: $4D
    nop                                           ; $7C0D: $00
    dec hl                                        ; $7C0E: $2B
    rlc b                                         ; $7C0F: $CB $00
    ld bc, $0000                                  ; $7C11: $01 $00 $00
    nop                                           ; $7C14: $00
    nop                                           ; $7C15: $00
    nop                                           ; $7C16: $00
    rlca                                          ; $7C17: $07
    ldh a, [rP1]                                  ; $7C18: $F0 $00
    nop                                           ; $7C1A: $00
    rlca                                          ; $7C1B: $07
    ldh a, [rP1]                                  ; $7C1C: $F0 $00
    nop                                           ; $7C1E: $00
    dec b                                         ; $7C1F: $05
    add b                                         ; $7C20: $80
    nop                                           ; $7C21: $00
    nop                                           ; $7C22: $00
    ld [bc], a                                    ; $7C23: $02
    nop                                           ; $7C24: $00
    nop                                           ; $7C25: $00
    ld bc, $7C1D                                  ; $7C26: $01 $1D $7C
    jr c, jr_039_7C2B                             ; $7C29: $38 $00

jr_039_7C2B:
    daa                                           ; $7C2B: $27
    ld sp, $4E00                                  ; $7C2C: $31 $00 $4E
    ld bc, $2B00                                  ; $7C2F: $01 $00 $2B
    ld b, c                                       ; $7C32: $41
    nop                                           ; $7C33: $00
    rlc b                                         ; $7C34: $CB $00
    nop                                           ; $7C36: $00
    nop                                           ; $7C37: $00
    nop                                           ; $7C38: $00
    nop                                           ; $7C39: $00
    rlca                                          ; $7C3A: $07
    ldh a, [rP1]                                  ; $7C3B: $F0 $00

jr_039_7C3D:
    nop                                           ; $7C3D: $00
    rlca                                          ; $7C3E: $07
    ldh a, [rP1]                                  ; $7C3F: $F0 $00
    nop                                           ; $7C41: $00
    dec b                                         ; $7C42: $05
    add b                                         ; $7C43: $80
    nop                                           ; $7C44: $00
    nop                                           ; $7C45: $00
    ld [bc], a                                    ; $7C46: $02
    nop                                           ; $7C47: $00
    nop                                           ; $7C48: $00
    ld bc, $7C40                                  ; $7C49: $01 $40 $7C
    add d                                         ; $7C4C: $82
    ld [de], a                                    ; $7C4D: $12
    sub d                                         ; $7C4E: $92
    ld c, [hl]                                    ; $7C4F: $4E
    ld bc, $413E                                  ; $7C50: $01 $3E $41
    nop                                           ; $7C53: $00
    rlc b                                         ; $7C54: $CB $00
    nop                                           ; $7C56: $00
    nop                                           ; $7C57: $00
    nop                                           ; $7C58: $00
    nop                                           ; $7C59: $00
    rlca                                          ; $7C5A: $07
    ldh a, [rP1]                                  ; $7C5B: $F0 $00
    nop                                           ; $7C5D: $00
    rlca                                          ; $7C5E: $07
    ldh a, [rP1]                                  ; $7C5F: $F0 $00
    nop                                           ; $7C61: $00
    dec b                                         ; $7C62: $05
    add b                                         ; $7C63: $80
    nop                                           ; $7C64: $00
    nop                                           ; $7C65: $00
    ld [bc], a                                    ; $7C66: $02
    nop                                           ; $7C67: $00
    nop                                           ; $7C68: $00
    ld bc, $7C60                                  ; $7C69: $01 $60 $7C
    cpl                                           ; $7C6C: $2F
    nop                                           ; $7C6D: $00
    ld c, l                                       ; $7C6E: $4D
    or d                                          ; $7C6F: $B2
    nop                                           ; $7C70: $00
    add d                                         ; $7C71: $82
    sub l                                         ; $7C72: $95
    nop                                           ; $7C73: $00
    cp [hl]                                       ; $7C74: $BE
    pop bc                                        ; $7C75: $C1
    nop                                           ; $7C76: $00
    dec [hl]                                      ; $7C77: $35
    ld e, l                                       ; $7C78: $5D
    nop                                           ; $7C79: $00
    ld c, d                                       ; $7C7A: $4A
    ld c, [hl]                                    ; $7C7B: $4E
    nop                                           ; $7C7C: $00
    ld bc, $0044                                  ; $7C7D: $01 $44 $00
    ld l, e                                       ; $7C80: $6B
    ld h, c                                       ; $7C81: $61
    nop                                           ; $7C82: $00
    ld bc, $002B                                  ; $7C83: $01 $2B $00
    ld b, d                                       ; $7C86: $42
    ld c, c                                       ; $7C87: $49
    nop                                           ; $7C88: $00
    daa                                           ; $7C89: $27
    ld c, l                                       ; $7C8A: $4D
    nop                                           ; $7C8B: $00
    ld b, h                                       ; $7C8C: $44
    rlc b                                         ; $7C8D: $CB $00
    ld bc, $0000                                  ; $7C8F: $01 $00 $00
    nop                                           ; $7C92: $00
    nop                                           ; $7C93: $00
    nop                                           ; $7C94: $00
    rlca                                          ; $7C95: $07
    ldh a, [rP1]                                  ; $7C96: $F0 $00
    nop                                           ; $7C98: $00
    rlca                                          ; $7C99: $07
    ldh a, [rP1]                                  ; $7C9A: $F0 $00
    nop                                           ; $7C9C: $00
    dec b                                         ; $7C9D: $05
    add b                                         ; $7C9E: $80
    nop                                           ; $7C9F: $00
    nop                                           ; $7CA0: $00
    ld [bc], a                                    ; $7CA1: $02
    nop                                           ; $7CA2: $00
    nop                                           ; $7CA3: $00
    ld bc, $7C9B                                  ; $7CA4: $01 $9B $7C
    cpl                                           ; $7CA7: $2F
    nop                                           ; $7CA8: $00
    ld c, l                                       ; $7CA9: $4D
    or d                                          ; $7CAA: $B2
    nop                                           ; $7CAB: $00
    add d                                         ; $7CAC: $82
    sub l                                         ; $7CAD: $95
    nop                                           ; $7CAE: $00
    cp [hl]                                       ; $7CAF: $BE
    pop bc                                        ; $7CB0: $C1
    nop                                           ; $7CB1: $00
    dec [hl]                                      ; $7CB2: $35
    ld e, l                                       ; $7CB3: $5D
    nop                                           ; $7CB4: $00
    ld c, d                                       ; $7CB5: $4A
    ld c, [hl]                                    ; $7CB6: $4E
    nop                                           ; $7CB7: $00
    ld bc, $0044                                  ; $7CB8: $01 $44 $00
    ld l, e                                       ; $7CBB: $6B
    ld h, c                                       ; $7CBC: $61
    nop                                           ; $7CBD: $00
    ld bc, $103E                                  ; $7CBE: $01 $3E $10
    ld b, d                                       ; $7CC1: $42
    ld c, c                                       ; $7CC2: $49
    nop                                           ; $7CC3: $00
    daa                                           ; $7CC4: $27
    ld c, l                                       ; $7CC5: $4D
    nop                                           ; $7CC6: $00
    ld b, h                                       ; $7CC7: $44
    rlc b                                         ; $7CC8: $CB $00
    ld bc, $0000                                  ; $7CCA: $01 $00 $00
    nop                                           ; $7CCD: $00
    nop                                           ; $7CCE: $00
    nop                                           ; $7CCF: $00
    rlca                                          ; $7CD0: $07
    ldh a, [rP1]                                  ; $7CD1: $F0 $00
    nop                                           ; $7CD3: $00
    rlca                                          ; $7CD4: $07
    ldh a, [rP1]                                  ; $7CD5: $F0 $00
    nop                                           ; $7CD7: $00
    dec b                                         ; $7CD8: $05
    add b                                         ; $7CD9: $80
    nop                                           ; $7CDA: $00
    nop                                           ; $7CDB: $00
    ld [bc], a                                    ; $7CDC: $02
    nop                                           ; $7CDD: $00
    nop                                           ; $7CDE: $00
    ld bc, $7CD6                                  ; $7CDF: $01 $D6 $7C
    ld a, h                                       ; $7CE2: $7C
    nop                                           ; $7CE3: $00
    cp l                                          ; $7CE4: $BD
    jr nc, jr_039_7CE7                            ; $7CE5: $30 $00

jr_039_7CE7:
    ld bc, $0036                                  ; $7CE7: $01 $36 $00
    ld l, a                                       ; $7CEA: $6F
    ld c, l                                       ; $7CEB: $4D
    nop                                           ; $7CEC: $00
    ld bc, $0092                                  ; $7CED: $01 $92 $00
    or a                                          ; $7CF0: $B7
    pop bc                                        ; $7CF1: $C1
    nop                                           ; $7CF2: $00
    xor e                                         ; $7CF3: $AB
    ld a, h                                       ; $7CF4: $7C
    nop                                           ; $7CF5: $00
    pop bc                                        ; $7CF6: $C1
    ld c, c                                       ; $7CF7: $49
    nop                                           ; $7CF8: $00
    ld c, l                                       ; $7CF9: $4D
    ld b, h                                       ; $7CFA: $44
    nop                                           ; $7CFB: $00
    rlc b                                         ; $7CFC: $CB $00
    nop                                           ; $7CFE: $00
    nop                                           ; $7CFF: $00
    nop                                           ; $7D00: $00
    nop                                           ; $7D01: $00
    rlca                                          ; $7D02: $07
    ldh a, [rP1]                                  ; $7D03: $F0 $00
    nop                                           ; $7D05: $00
    rlca                                          ; $7D06: $07
    ldh a, [rP1]                                  ; $7D07: $F0 $00
    nop                                           ; $7D09: $00
    dec b                                         ; $7D0A: $05
    add b                                         ; $7D0B: $80
    nop                                           ; $7D0C: $00
    nop                                           ; $7D0D: $00
    ld [bc], a                                    ; $7D0E: $02
    nop                                           ; $7D0F: $00
    nop                                           ; $7D10: $00
    ld bc, $7D08                                  ; $7D11: $01 $08 $7D
    ld a, h                                       ; $7D14: $7C
    nop                                           ; $7D15: $00
    cp l                                          ; $7D16: $BD
    jr nc, jr_039_7D19                            ; $7D17: $30 $00

jr_039_7D19:
    ld bc, $104C                                  ; $7D19: $01 $4C $10
    ld c, l                                       ; $7D1C: $4D
    sub d                                         ; $7D1D: $92
    nop                                           ; $7D1E: $00
    or a                                          ; $7D1F: $B7
    pop bc                                        ; $7D20: $C1
    nop                                           ; $7D21: $00
    xor e                                         ; $7D22: $AB
    ld a, h                                       ; $7D23: $7C
    nop                                           ; $7D24: $00
    pop bc                                        ; $7D25: $C1
    ld c, c                                       ; $7D26: $49
    nop                                           ; $7D27: $00
    ld c, l                                       ; $7D28: $4D
    ld b, h                                       ; $7D29: $44
    nop                                           ; $7D2A: $00
    rlc b                                         ; $7D2B: $CB $00
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    nop                                           ; $7D30: $00
    rlca                                          ; $7D31: $07
    ldh a, [rP1]                                  ; $7D32: $F0 $00
    nop                                           ; $7D34: $00
    rlca                                          ; $7D35: $07
    ldh a, [rP1]                                  ; $7D36: $F0 $00
    nop                                           ; $7D38: $00
    dec b                                         ; $7D39: $05
    add b                                         ; $7D3A: $80
    nop                                           ; $7D3B: $00
    nop                                           ; $7D3C: $00
    ld [bc], a                                    ; $7D3D: $02
    nop                                           ; $7D3E: $00
    nop                                           ; $7D3F: $00
    ld bc, $7D37                                  ; $7D40: $01 $37 $7D
    ld l, l                                       ; $7D43: $6D
    nop                                           ; $7D44: $00
    ld [hl], a                                    ; $7D45: $77
    daa                                           ; $7D46: $27
    nop                                           ; $7D47: $00
    rlc b                                         ; $7D48: $CB $00
    nop                                           ; $7D4A: $00
    nop                                           ; $7D4B: $00
    dec hl                                        ; $7D4C: $2B
    nop                                           ; $7D4D: $00
    ld [hl], b                                    ; $7D4E: $70
    ld b, b                                       ; $7D4F: $40
    nop                                           ; $7D50: $00
    ld h, l                                       ; $7D51: $65
    ld [hl], b                                    ; $7D52: $70
    nop                                           ; $7D53: $00
    ccf                                           ; $7D54: $3F
    ld [hl], c                                    ; $7D55: $71
    nop                                           ; $7D56: $00
    ld [hl], a                                    ; $7D57: $77
    rlc b                                         ; $7D58: $CB $00
    ld bc, $0000                                  ; $7D5A: $01 $00 $00
    nop                                           ; $7D5D: $00
    inc bc                                        ; $7D5E: $03
    nop                                           ; $7D5F: $00
    ld d, e                                       ; $7D60: $53
    ld l, a                                       ; $7D61: $6F
    nop                                           ; $7D62: $00
    ld bc, $0049                                  ; $7D63: $01 $49 $00
    ld l, a                                       ; $7D66: $6F
    ld b, h                                       ; $7D67: $44
    nop                                           ; $7D68: $00
    ld h, h                                       ; $7D69: $64
    ld [hl], l                                    ; $7D6A: $75
    nop                                           ; $7D6B: $00
    ld [hl], a                                    ; $7D6C: $77
    rlc b                                         ; $7D6D: $CB $00
    rlc b                                         ; $7D6F: $CB $00
    nop                                           ; $7D71: $00
    nop                                           ; $7D72: $00
    nop                                           ; $7D73: $00
    nop                                           ; $7D74: $00
    rlca                                          ; $7D75: $07
    ldh a, [rP1]                                  ; $7D76: $F0 $00
    nop                                           ; $7D78: $00
    rlca                                          ; $7D79: $07
    ldh a, [rP1]                                  ; $7D7A: $F0 $00
    nop                                           ; $7D7C: $00
    dec b                                         ; $7D7D: $05
    add b                                         ; $7D7E: $80
    nop                                           ; $7D7F: $00
    nop                                           ; $7D80: $00
    ld [bc], a                                    ; $7D81: $02
    nop                                           ; $7D82: $00
    nop                                           ; $7D83: $00
    ld bc, $7D7B                                  ; $7D84: $01 $7B $7D
    ld l, l                                       ; $7D87: $6D
    nop                                           ; $7D88: $00
    ld [hl], a                                    ; $7D89: $77
    daa                                           ; $7D8A: $27
    nop                                           ; $7D8B: $00
    rlc b                                         ; $7D8C: $CB $00
    nop                                           ; $7D8E: $00
    nop                                           ; $7D8F: $00
    ld a, $10                                     ; $7D90: $3E $10
    ld [hl], b                                    ; $7D92: $70
    ld b, b                                       ; $7D93: $40
    nop                                           ; $7D94: $00
    ld h, l                                       ; $7D95: $65
    ld [hl], b                                    ; $7D96: $70
    nop                                           ; $7D97: $00
    ccf                                           ; $7D98: $3F
    ld [hl], c                                    ; $7D99: $71
    nop                                           ; $7D9A: $00
    ld [hl], a                                    ; $7D9B: $77
    rlc b                                         ; $7D9C: $CB $00
    ld bc, $0000                                  ; $7D9E: $01 $00 $00
    nop                                           ; $7DA1: $00
    inc bc                                        ; $7DA2: $03
    ld bc, $497D                                  ; $7DA3: $01 $7D $49
    nop                                           ; $7DA6: $00
    ld l, a                                       ; $7DA7: $6F
    ld b, h                                       ; $7DA8: $44
    nop                                           ; $7DA9: $00
    ld h, h                                       ; $7DAA: $64
    ld [hl], l                                    ; $7DAB: $75
    nop                                           ; $7DAC: $00
    ld [hl], a                                    ; $7DAD: $77
    rlc b                                         ; $7DAE: $CB $00
    rlc b                                         ; $7DB0: $CB $00
    nop                                           ; $7DB2: $00
    nop                                           ; $7DB3: $00
    nop                                           ; $7DB4: $00
    nop                                           ; $7DB5: $00
    rlca                                          ; $7DB6: $07
    ldh a, [rP1]                                  ; $7DB7: $F0 $00
    nop                                           ; $7DB9: $00
    rlca                                          ; $7DBA: $07
    ldh a, [rP1]                                  ; $7DBB: $F0 $00
    nop                                           ; $7DBD: $00
    dec b                                         ; $7DBE: $05
    add b                                         ; $7DBF: $80
    nop                                           ; $7DC0: $00
    nop                                           ; $7DC1: $00
    ld [bc], a                                    ; $7DC2: $02
    nop                                           ; $7DC3: $00
    nop                                           ; $7DC4: $00
    ld bc, $7DBC                                  ; $7DC5: $01 $BC $7D
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
