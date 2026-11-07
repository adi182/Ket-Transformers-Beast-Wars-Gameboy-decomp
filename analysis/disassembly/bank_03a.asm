; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

    ld a, [$C340]                                 ; $4000: $FA $40 $C3
    or a                                          ; $4003: $B7
    jr z, jr_03A_4017                             ; $4004: $28 $11

    dec a                                         ; $4006: $3D
    ld [$C340], a                                 ; $4007: $EA $40 $C3
    ldh a, [$FF99]                                ; $400A: $F0 $99
    ld e, a                                       ; $400C: $5F
    ldh a, [$FFAC]                                ; $400D: $F0 $AC
    or e                                          ; $400F: $B3
    bit 4, a                                      ; $4010: $CB $67
    ret z                                         ; $4012: $C8

    xor a                                         ; $4013: $AF
    ld [$C340], a                                 ; $4014: $EA $40 $C3

jr_03A_4017:
    ld a, [$C33B]                                 ; $4017: $FA $3B $C3
    or a                                          ; $401A: $B7
    jr z, jr_03A_404A                             ; $401B: $28 $2D

    dec a                                         ; $401D: $3D
    ld [$C33B], a                                 ; $401E: $EA $3B $C3
    ld a, [$C33A]                                 ; $4021: $FA $3A $C3
    add $02                                       ; $4024: $C6 $02
    ld [$C33A], a                                 ; $4026: $EA $3A $C3
    ldh [$FFE2], a                                ; $4029: $E0 $E2
    ldh a, [$FF98]                                ; $402B: $F0 $98
    ld e, a                                       ; $402D: $5F
    ldh a, [$FFAB]                                ; $402E: $F0 $AB
    or e                                          ; $4030: $B3
    bit 4, a                                      ; $4031: $CB $67
    jr z, jr_03A_4049                             ; $4033: $28 $14

    ld a, [$C33B]                                 ; $4035: $FA $3B $C3
    or a                                          ; $4038: $B7
    jr z, jr_03A_404A                             ; $4039: $28 $0F

    dec a                                         ; $403B: $3D
    ld [$C33B], a                                 ; $403C: $EA $3B $C3
    ld a, [$C33A]                                 ; $403F: $FA $3A $C3
    add $02                                       ; $4042: $C6 $02
    ld [$C33A], a                                 ; $4044: $EA $3A $C3
    ldh [$FFE2], a                                ; $4047: $E0 $E2

jr_03A_4049:
    ret                                           ; $4049: $C9


jr_03A_404A:
    ldh a, [$FF98]                                ; $404A: $F0 $98
    ld e, a                                       ; $404C: $5F
    ldh a, [$FFAB]                                ; $404D: $F0 $AB
    or e                                          ; $404F: $B3
    bit 4, a                                      ; $4050: $CB $67
    jr nz, jr_03A_405F                            ; $4052: $20 $0B

    ld a, [$C346]                                 ; $4054: $FA $46 $C3
    or a                                          ; $4057: $B7
    jr z, jr_03A_405F                             ; $4058: $28 $05

    dec a                                         ; $405A: $3D
    ld [$C346], a                                 ; $405B: $EA $46 $C3
    ret                                           ; $405E: $C9


jr_03A_405F:
    ld a, $06                                     ; $405F: $3E $06
    ld [$C346], a                                 ; $4061: $EA $46 $C3
    ld a, [$C345]                                 ; $4064: $FA $45 $C3
    bit 0, a                                      ; $4067: $CB $47
    jp nz, Jump_03A_41AD                          ; $4069: $C2 $AD $41

    ld a, [$C32F]                                 ; $406C: $FA $2F $C3
    ld e, a                                       ; $406F: $5F
    ld a, [$C330]                                 ; $4070: $FA $30 $C3
    ld d, a                                       ; $4073: $57
    ld a, [$C331]                                 ; $4074: $FA $31 $C3
    ld [de], a                                    ; $4077: $12
    inc de                                        ; $4078: $13
    ld a, [$C332]                                 ; $4079: $FA $32 $C3
    ld [de], a                                    ; $407C: $12
    inc de                                        ; $407D: $13
    ld a, $03                                     ; $407E: $3E $03
    ld [de], a                                    ; $4080: $12
    inc de                                        ; $4081: $13
    ld a, [$C32B]                                 ; $4082: $FA $2B $C3
    ld l, a                                       ; $4085: $6F
    ld a, [$C32C]                                 ; $4086: $FA $2C $C3
    ld h, a                                       ; $4089: $67

Jump_03A_408A:
    ld c, [hl]                                    ; $408A: $4E
    inc hl                                        ; $408B: $23
    ld a, [hl]                                    ; $408C: $7E
    or c                                          ; $408D: $B1
    jp z, Jump_03A_4293                           ; $408E: $CA $93 $42

    ld a, c                                       ; $4091: $79
    ld [de], a                                    ; $4092: $12
    inc de                                        ; $4093: $13
    ld a, [hl+]                                   ; $4094: $2A
    ld [de], a                                    ; $4095: $12
    inc de                                        ; $4096: $13
    ld a, [hl+]                                   ; $4097: $2A
    ld [de], a                                    ; $4098: $12
    inc de                                        ; $4099: $13
    ld a, l                                       ; $409A: $7D
    ld [$C32B], a                                 ; $409B: $EA $2B $C3
    ld a, h                                       ; $409E: $7C
    ld [$C32C], a                                 ; $409F: $EA $2C $C3
    ld hl, $C312                                  ; $40A2: $21 $12 $C3
    ld a, [$C32F]                                 ; $40A5: $FA $2F $C3
    ld [hl+], a                                   ; $40A8: $22
    ld a, [$C330]                                 ; $40A9: $FA $30 $C3
    ld [hl+], a                                   ; $40AC: $22
    ld b, $36                                     ; $40AD: $06 $36
    ld hl, $4000                                  ; $40AF: $21 $00 $40
    rst RST_08                                    ; $40B2: $CF
    ld a, [$C331]                                 ; $40B3: $FA $31 $C3
    ld e, a                                       ; $40B6: $5F
    ld a, [$C332]                                 ; $40B7: $FA $32 $C3
    ld d, a                                       ; $40BA: $57
    ld a, [$C33E]                                 ; $40BB: $FA $3E $C3
    ld [$C333], a                                 ; $40BE: $EA $33 $C3
    ld l, a                                       ; $40C1: $6F
    ld a, [$C33F]                                 ; $40C2: $FA $3F $C3
    ld [$C334], a                                 ; $40C5: $EA $34 $C3
    ld h, a                                       ; $40C8: $67
    xor a                                         ; $40C9: $AF
    ld [hl+], a                                   ; $40CA: $22
    ld [hl+], a                                   ; $40CB: $22
    ld [hl+], a                                   ; $40CC: $22
    ld [hl+], a                                   ; $40CD: $22
    ld a, [de]                                    ; $40CE: $1A
    inc de                                        ; $40CF: $13
    ld [hl+], a                                   ; $40D0: $22
    ld [hl+], a                                   ; $40D1: $22
    ld a, [de]                                    ; $40D2: $1A
    inc de                                        ; $40D3: $13
    ld [hl+], a                                   ; $40D4: $22
    ld [hl+], a                                   ; $40D5: $22
    ld a, [de]                                    ; $40D6: $1A
    inc de                                        ; $40D7: $13
    ld [hl+], a                                   ; $40D8: $22
    ld [hl+], a                                   ; $40D9: $22
    ld a, [de]                                    ; $40DA: $1A
    inc de                                        ; $40DB: $13
    ld [hl+], a                                   ; $40DC: $22
    ld [hl+], a                                   ; $40DD: $22
    ld a, [de]                                    ; $40DE: $1A
    inc de                                        ; $40DF: $13
    ld [hl+], a                                   ; $40E0: $22
    ld [hl+], a                                   ; $40E1: $22
    ld a, [de]                                    ; $40E2: $1A
    inc de                                        ; $40E3: $13
    ld [hl+], a                                   ; $40E4: $22
    ld [hl+], a                                   ; $40E5: $22
    ld a, [de]                                    ; $40E6: $1A
    inc de                                        ; $40E7: $13
    ld [hl+], a                                   ; $40E8: $22
    ld [hl+], a                                   ; $40E9: $22
    ld a, [de]                                    ; $40EA: $1A
    inc de                                        ; $40EB: $13
    ld [hl+], a                                   ; $40EC: $22
    ld [hl+], a                                   ; $40ED: $22
    ld a, [de]                                    ; $40EE: $1A
    inc de                                        ; $40EF: $13
    ld [hl+], a                                   ; $40F0: $22
    ld [hl+], a                                   ; $40F1: $22
    ld a, [de]                                    ; $40F2: $1A
    inc de                                        ; $40F3: $13
    ld [hl+], a                                   ; $40F4: $22
    ld [hl+], a                                   ; $40F5: $22
    ld a, [de]                                    ; $40F6: $1A
    inc de                                        ; $40F7: $13
    ld [hl+], a                                   ; $40F8: $22
    ld [hl+], a                                   ; $40F9: $22
    ld a, [de]                                    ; $40FA: $1A
    inc de                                        ; $40FB: $13
    ld [hl+], a                                   ; $40FC: $22
    ld [hl+], a                                   ; $40FD: $22
    xor a                                         ; $40FE: $AF
    ld [hl+], a                                   ; $40FF: $22

Jump_03A_4100:
    ld [hl+], a                                   ; $4100: $22
    ld [hl+], a                                   ; $4101: $22
    ld [hl+], a                                   ; $4102: $22
    ld c, $F0                                     ; $4103: $0E $F0
    xor a                                         ; $4105: $AF
    ld [hl+], a                                   ; $4106: $22
    ld [hl+], a                                   ; $4107: $22
    ld [hl+], a                                   ; $4108: $22
    ld [hl+], a                                   ; $4109: $22
    ld a, [de]                                    ; $410A: $1A
    inc de                                        ; $410B: $13
    and c                                         ; $410C: $A1
    ld [hl+], a                                   ; $410D: $22
    ld [hl+], a                                   ; $410E: $22
    ld a, [de]                                    ; $410F: $1A
    inc de                                        ; $4110: $13
    and c                                         ; $4111: $A1
    ld [hl+], a                                   ; $4112: $22
    ld [hl+], a                                   ; $4113: $22
    ld a, [de]                                    ; $4114: $1A
    inc de                                        ; $4115: $13
    and c                                         ; $4116: $A1
    ld [hl+], a                                   ; $4117: $22
    ld [hl+], a                                   ; $4118: $22
    ld a, [de]                                    ; $4119: $1A
    inc de                                        ; $411A: $13
    and c                                         ; $411B: $A1
    ld [hl+], a                                   ; $411C: $22
    ld [hl+], a                                   ; $411D: $22
    ld a, [de]                                    ; $411E: $1A
    inc de                                        ; $411F: $13
    and c                                         ; $4120: $A1
    ld [hl+], a                                   ; $4121: $22
    ld [hl+], a                                   ; $4122: $22
    ld a, [de]                                    ; $4123: $1A
    inc de                                        ; $4124: $13
    and c                                         ; $4125: $A1
    ld [hl+], a                                   ; $4126: $22
    ld [hl+], a                                   ; $4127: $22
    ld a, [de]                                    ; $4128: $1A
    inc de                                        ; $4129: $13
    and c                                         ; $412A: $A1
    ld [hl+], a                                   ; $412B: $22
    ld [hl+], a                                   ; $412C: $22
    ld a, [de]                                    ; $412D: $1A
    inc de                                        ; $412E: $13
    and c                                         ; $412F: $A1
    ld [hl+], a                                   ; $4130: $22
    ld [hl+], a                                   ; $4131: $22
    ld a, [de]                                    ; $4132: $1A
    inc de                                        ; $4133: $13
    and c                                         ; $4134: $A1
    ld [hl+], a                                   ; $4135: $22
    ld [hl+], a                                   ; $4136: $22
    ld a, [de]                                    ; $4137: $1A
    inc de                                        ; $4138: $13
    and c                                         ; $4139: $A1
    ld [hl+], a                                   ; $413A: $22
    ld [hl+], a                                   ; $413B: $22
    ld a, [de]                                    ; $413C: $1A
    inc de                                        ; $413D: $13
    and c                                         ; $413E: $A1
    ld [hl+], a                                   ; $413F: $22
    ld [hl+], a                                   ; $4140: $22
    ld a, [de]                                    ; $4141: $1A
    inc de                                        ; $4142: $13
    and c                                         ; $4143: $A1
    ld [hl+], a                                   ; $4144: $22
    ld [hl+], a                                   ; $4145: $22
    xor a                                         ; $4146: $AF
    ld [hl+], a                                   ; $4147: $22
    ld [hl+], a                                   ; $4148: $22
    ld [hl+], a                                   ; $4149: $22
    ld [hl+], a                                   ; $414A: $22
    ld a, [$C333]                                 ; $414B: $FA $33 $C3
    ld l, a                                       ; $414E: $6F
    ld a, [$C334]                                 ; $414F: $FA $34 $C3
    ld h, a                                       ; $4152: $67
    push hl                                       ; $4153: $E5
    ld de, $0020                                  ; $4154: $11 $20 $00
    add hl, de                                    ; $4157: $19
    ld a, l                                       ; $4158: $7D
    ld [$C333], a                                 ; $4159: $EA $33 $C3
    ld a, h                                       ; $415C: $7C
    ld [$C334], a                                 ; $415D: $EA $34 $C3
    ld a, [$C337]                                 ; $4160: $FA $37 $C3
    ld e, a                                       ; $4163: $5F
    ld a, [$C338]                                 ; $4164: $FA $38 $C3
    ld d, a                                       ; $4167: $57
    ld hl, $0020                                  ; $4168: $21 $20 $00
    add hl, de                                    ; $416B: $19
    ld a, l                                       ; $416C: $7D
    ld [$C337], a                                 ; $416D: $EA $37 $C3
    ld a, h                                       ; $4170: $7C
    ld [$C338], a                                 ; $4171: $EA $38 $C3
    pop hl                                        ; $4174: $E1
    ld b, $04                                     ; $4175: $06 $04
    call Call_000_11C2                            ; $4177: $CD $C2 $11
    ld a, [$C335]                                 ; $417A: $FA $35 $C3
    ld c, a                                       ; $417D: $4F
    ld a, [$C336]                                 ; $417E: $FA $36 $C3
    ld b, a                                       ; $4181: $47
    ld hl, $0001                                  ; $4182: $21 $01 $00
    add hl, bc                                    ; $4185: $09
    ld a, l                                       ; $4186: $7D
    ld [$C335], a                                 ; $4187: $EA $35 $C3
    ld a, h                                       ; $418A: $7C
    and $03                                       ; $418B: $E6 $03
    ld [$C336], a                                 ; $418D: $EA $36 $C3
    ld hl, $9800                                  ; $4190: $21 $00 $98
    add hl, bc                                    ; $4193: $09
    ld a, [$C343]                                 ; $4194: $FA $43 $C3
    ld d, a                                       ; $4197: $57
    add $02                                       ; $4198: $C6 $02
    ld [$C343], a                                 ; $419A: $EA $43 $C3
    ld a, [$C344]                                 ; $419D: $FA $44 $C3
    ld e, a                                       ; $41A0: $5F
    ld b, $02                                     ; $41A1: $06 $02
    ld c, $02                                     ; $41A3: $0E $02
    call Call_000_1139                            ; $41A5: $CD $39 $11
    ld hl, $C345                                  ; $41A8: $21 $45 $C3
    inc [hl]                                      ; $41AB: $34
    ret                                           ; $41AC: $C9


Jump_03A_41AD:
    ld a, [$C331]                                 ; $41AD: $FA $31 $C3
    ld e, a                                       ; $41B0: $5F
    ld a, [$C332]                                 ; $41B1: $FA $32 $C3
    ld d, a                                       ; $41B4: $57
    ld hl, $000C                                  ; $41B5: $21 $0C $00
    add hl, de                                    ; $41B8: $19
    ld e, l                                       ; $41B9: $5D
    ld d, h                                       ; $41BA: $54
    ld a, [$C33E]                                 ; $41BB: $FA $3E $C3
    ld [$C333], a                                 ; $41BE: $EA $33 $C3
    ld l, a                                       ; $41C1: $6F
    ld a, [$C33F]                                 ; $41C2: $FA $3F $C3
    ld [$C334], a                                 ; $41C5: $EA $34 $C3
    ld h, a                                       ; $41C8: $67
    ld c, $02                                     ; $41C9: $0E $02

jr_03A_41CB:
    xor a                                         ; $41CB: $AF
    ld [hl+], a                                   ; $41CC: $22
    ld [hl+], a                                   ; $41CD: $22
    ld [hl+], a                                   ; $41CE: $22
    ld [hl+], a                                   ; $41CF: $22
    ld a, [de]                                    ; $41D0: $1A
    inc de                                        ; $41D1: $13
    ld [hl+], a                                   ; $41D2: $22
    ld [hl+], a                                   ; $41D3: $22
    ld a, [de]                                    ; $41D4: $1A
    inc de                                        ; $41D5: $13
    ld [hl+], a                                   ; $41D6: $22
    ld [hl+], a                                   ; $41D7: $22
    ld a, [de]                                    ; $41D8: $1A
    inc de                                        ; $41D9: $13
    ld [hl+], a                                   ; $41DA: $22
    ld [hl+], a                                   ; $41DB: $22
    ld a, [de]                                    ; $41DC: $1A
    inc de                                        ; $41DD: $13
    ld [hl+], a                                   ; $41DE: $22
    ld [hl+], a                                   ; $41DF: $22
    ld a, [de]                                    ; $41E0: $1A
    inc de                                        ; $41E1: $13
    ld [hl+], a                                   ; $41E2: $22
    ld [hl+], a                                   ; $41E3: $22
    ld a, [de]                                    ; $41E4: $1A
    inc de                                        ; $41E5: $13
    ld [hl+], a                                   ; $41E6: $22
    ld [hl+], a                                   ; $41E7: $22
    ld a, [de]                                    ; $41E8: $1A
    inc de                                        ; $41E9: $13
    ld [hl+], a                                   ; $41EA: $22
    ld [hl+], a                                   ; $41EB: $22
    ld a, [de]                                    ; $41EC: $1A
    inc de                                        ; $41ED: $13
    ld [hl+], a                                   ; $41EE: $22
    ld [hl+], a                                   ; $41EF: $22
    ld a, [de]                                    ; $41F0: $1A
    inc de                                        ; $41F1: $13
    ld [hl+], a                                   ; $41F2: $22
    ld [hl+], a                                   ; $41F3: $22
    ld a, [de]                                    ; $41F4: $1A
    inc de                                        ; $41F5: $13
    ld [hl+], a                                   ; $41F6: $22
    ld [hl+], a                                   ; $41F7: $22
    ld a, [de]                                    ; $41F8: $1A
    inc de                                        ; $41F9: $13
    ld [hl+], a                                   ; $41FA: $22
    ld [hl+], a                                   ; $41FB: $22
    ld a, [de]                                    ; $41FC: $1A
    inc de                                        ; $41FD: $13
    ld [hl+], a                                   ; $41FE: $22
    ld [hl+], a                                   ; $41FF: $22
    xor a                                         ; $4200: $AF
    ld [hl+], a                                   ; $4201: $22
    ld [hl+], a                                   ; $4202: $22
    ld [hl+], a                                   ; $4203: $22
    ld [hl+], a                                   ; $4204: $22
    dec c                                         ; $4205: $0D
    jr nz, jr_03A_41CB                            ; $4206: $20 $C3

    ld a, [$C333]                                 ; $4208: $FA $33 $C3
    ld l, a                                       ; $420B: $6F
    ld a, [$C334]                                 ; $420C: $FA $34 $C3
    ld h, a                                       ; $420F: $67
    push hl                                       ; $4210: $E5
    ld de, $0040                                  ; $4211: $11 $40 $00
    add hl, de                                    ; $4214: $19
    ld a, l                                       ; $4215: $7D
    ld [$C333], a                                 ; $4216: $EA $33 $C3
    ld a, h                                       ; $4219: $7C
    ld [$C334], a                                 ; $421A: $EA $34 $C3
    ld a, [$C337]                                 ; $421D: $FA $37 $C3
    ld e, a                                       ; $4220: $5F
    ld a, [$C338]                                 ; $4221: $FA $38 $C3
    ld d, a                                       ; $4224: $57
    ld hl, $0040                                  ; $4225: $21 $40 $00
    add hl, de                                    ; $4228: $19
    ld a, l                                       ; $4229: $7D
    ld [$C337], a                                 ; $422A: $EA $37 $C3
    ld a, h                                       ; $422D: $7C
    ld [$C338], a                                 ; $422E: $EA $38 $C3
    pop hl                                        ; $4231: $E1
    ld b, $04                                     ; $4232: $06 $04
    call Call_000_11C2                            ; $4234: $CD $C2 $11
    ld a, [$C335]                                 ; $4237: $FA $35 $C3
    ld c, a                                       ; $423A: $4F
    ld a, [$C336]                                 ; $423B: $FA $36 $C3
    ld b, a                                       ; $423E: $47
    ld hl, $0002                                  ; $423F: $21 $02 $00
    add hl, bc                                    ; $4242: $09
    ld a, l                                       ; $4243: $7D
    ld [$C335], a                                 ; $4244: $EA $35 $C3
    ld a, h                                       ; $4247: $7C
    and $03                                       ; $4248: $E6 $03
    ld [$C336], a                                 ; $424A: $EA $36 $C3
    ld hl, $9800                                  ; $424D: $21 $00 $98
    add hl, bc                                    ; $4250: $09
    ld a, [$C343]                                 ; $4251: $FA $43 $C3
    ld d, a                                       ; $4254: $57
    add $04                                       ; $4255: $C6 $04
    ld [$C343], a                                 ; $4257: $EA $43 $C3
    ld a, [$C344]                                 ; $425A: $FA $44 $C3
    ld e, a                                       ; $425D: $5F
    ld b, $02                                     ; $425E: $06 $02
    ld c, $02                                     ; $4260: $0E $02
    call Call_000_1139                            ; $4262: $CD $39 $11
    ld hl, $C345                                  ; $4265: $21 $45 $C3
    inc [hl]                                      ; $4268: $34
    ld a, [hl]                                    ; $4269: $7E
    cp $0C                                        ; $426A: $FE $0C
    jr c, jr_03A_4292                             ; $426C: $38 $24

    ld a, [$C341]                                 ; $426E: $FA $41 $C3
    ld e, a                                       ; $4271: $5F
    ld a, [$C342]                                 ; $4272: $FA $42 $C3
    ld d, a                                       ; $4275: $57
    ld hl, $0040                                  ; $4276: $21 $40 $00
    add hl, de                                    ; $4279: $19
    ld a, l                                       ; $427A: $7D
    ld [$C341], a                                 ; $427B: $EA $41 $C3
    ld [$C335], a                                 ; $427E: $EA $35 $C3
    ld a, h                                       ; $4281: $7C
    and $03                                       ; $4282: $E6 $03
    ld [$C342], a                                 ; $4284: $EA $42 $C3
    ld [$C336], a                                 ; $4287: $EA $36 $C3
    xor a                                         ; $428A: $AF
    ld [$C345], a                                 ; $428B: $EA $45 $C3
    ld hl, $C33C                                  ; $428E: $21 $3C $C3
    inc [hl]                                      ; $4291: $34

jr_03A_4292:
    ret                                           ; $4292: $C9


Jump_03A_4293:
    inc hl                                        ; $4293: $23
    ld a, [hl+]                                   ; $4294: $2A
    push hl                                       ; $4295: $E5
    ld hl, $42A6                                  ; $4296: $21 $A6 $42
    and $07                                       ; $4299: $E6 $07
    add a                                         ; $429B: $87
    add l                                         ; $429C: $85
    jr nc, jr_03A_42A0                            ; $429D: $30 $01

    inc h                                         ; $429F: $24

jr_03A_42A0:
    ld l, a                                       ; $42A0: $6F
    ld a, [hl+]                                   ; $42A1: $2A
    ld c, [hl]                                    ; $42A2: $4E
    ld l, a                                       ; $42A3: $6F
    ld h, c                                       ; $42A4: $61
    jp hl                                         ; $42A5: $E9


    or [hl]                                       ; $42A6: $B6
    ld b, d                                       ; $42A7: $42
    ldh [rSCY], a                                 ; $42A8: $E0 $42
    add sp, $42                                   ; $42AA: $E8 $42
    ldh a, [c]                                    ; $42AC: $F2
    ld b, d                                       ; $42AD: $42
    xor c                                         ; $42AE: $A9
    ld b, e                                       ; $42AF: $43
    or c                                          ; $42B0: $B1
    ld b, e                                       ; $42B1: $43
    cp [hl]                                       ; $42B2: $BE
    ld b, e                                       ; $42B3: $43
    bit 0, e                                      ; $42B4: $CB $43
    push de                                       ; $42B6: $D5
    ld a, [$C341]                                 ; $42B7: $FA $41 $C3
    ld e, a                                       ; $42BA: $5F
    ld a, [$C342]                                 ; $42BB: $FA $42 $C3
    ld d, a                                       ; $42BE: $57
    ld hl, $0040                                  ; $42BF: $21 $40 $00
    add hl, de                                    ; $42C2: $19
    ld a, l                                       ; $42C3: $7D
    ld [$C341], a                                 ; $42C4: $EA $41 $C3
    ld [$C335], a                                 ; $42C7: $EA $35 $C3
    ld a, h                                       ; $42CA: $7C
    and $03                                       ; $42CB: $E6 $03
    ld [$C342], a                                 ; $42CD: $EA $42 $C3
    ld [$C336], a                                 ; $42D0: $EA $36 $C3
    xor a                                         ; $42D3: $AF
    ld [$C345], a                                 ; $42D4: $EA $45 $C3
    ld hl, $C33C                                  ; $42D7: $21 $3C $C3
    inc [hl]                                      ; $42DA: $34
    pop de                                        ; $42DB: $D1
    pop hl                                        ; $42DC: $E1
    jp Jump_03A_408A                              ; $42DD: $C3 $8A $40


    pop hl                                        ; $42E0: $E1
    ld a, [hl+]                                   ; $42E1: $2A
    ld c, [hl]                                    ; $42E2: $4E
    ld l, a                                       ; $42E3: $6F
    ld h, c                                       ; $42E4: $61
    jp Jump_03A_408A                              ; $42E5: $C3 $8A $40


Jump_03A_42E8:
    pop hl                                        ; $42E8: $E1

Jump_03A_42E9:
    ld a, l                                       ; $42E9: $7D
    ld [$C32B], a                                 ; $42EA: $EA $2B $C3
    ld a, h                                       ; $42ED: $7C
    ld [$C32C], a                                 ; $42EE: $EA $2C $C3
    ret                                           ; $42F1: $C9


    ld a, [$C341]                                 ; $42F2: $FA $41 $C3
    ld l, a                                       ; $42F5: $6F
    ld a, [$C342]                                 ; $42F6: $FA $42 $C3
    ld h, a                                       ; $42F9: $67
    ld de, $9800                                  ; $42FA: $11 $00 $98
    add hl, de                                    ; $42FD: $19
    ld e, $00                                     ; $42FE: $1E $00

Jump_03A_4300:
    ld d, $10                                     ; $4300: $16 $10
    ld b, $12                                     ; $4302: $06 $12
    ld c, $02                                     ; $4304: $0E $02
    call Call_000_10EA                            ; $4306: $CD $EA $10
    ld a, [$C341]                                 ; $4309: $FA $41 $C3
    ld e, a                                       ; $430C: $5F
    ld a, [$C342]                                 ; $430D: $FA $42 $C3
    ld d, a                                       ; $4310: $57
    ld hl, $0040                                  ; $4311: $21 $40 $00
    add hl, de                                    ; $4314: $19
    ld a, h                                       ; $4315: $7C
    and $03                                       ; $4316: $E6 $03
    ld h, a                                       ; $4318: $67
    ld de, $9800                                  ; $4319: $11 $00 $98
    add hl, de                                    ; $431C: $19
    ld e, $00                                     ; $431D: $1E $00
    ld d, $10                                     ; $431F: $16 $10
    ld b, $12                                     ; $4321: $06 $12
    ld c, $02                                     ; $4323: $0E $02
    call Call_000_10EA                            ; $4325: $CD $EA $10
    ld a, [$C341]                                 ; $4328: $FA $41 $C3
    ld e, a                                       ; $432B: $5F
    ld a, [$C342]                                 ; $432C: $FA $42 $C3
    ld d, a                                       ; $432F: $57
    ld hl, $0080                                  ; $4330: $21 $80 $00
    add hl, de                                    ; $4333: $19
    ld a, h                                       ; $4334: $7C
    and $03                                       ; $4335: $E6 $03
    ld h, a                                       ; $4337: $67
    ld de, $9800                                  ; $4338: $11 $00 $98
    add hl, de                                    ; $433B: $19
    ld e, $00                                     ; $433C: $1E $00
    ld d, $10                                     ; $433E: $16 $10
    ld b, $12                                     ; $4340: $06 $12
    ld c, $02                                     ; $4342: $0E $02
    call Call_000_10EA                            ; $4344: $CD $EA $10
    ld a, [$C341]                                 ; $4347: $FA $41 $C3
    ld e, a                                       ; $434A: $5F
    ld a, [$C342]                                 ; $434B: $FA $42 $C3
    ld d, a                                       ; $434E: $57
    ld hl, $00C0                                  ; $434F: $21 $C0 $00
    add hl, de                                    ; $4352: $19
    ld a, h                                       ; $4353: $7C
    and $03                                       ; $4354: $E6 $03
    ld h, a                                       ; $4356: $67
    ld de, $9800                                  ; $4357: $11 $00 $98
    add hl, de                                    ; $435A: $19
    ld e, $00                                     ; $435B: $1E $00
    ld d, $10                                     ; $435D: $16 $10
    ld b, $12                                     ; $435F: $06 $12
    ld c, $02                                     ; $4361: $0E $02
    call Call_000_10EA                            ; $4363: $CD $EA $10
    ld a, [$C33C]                                 ; $4366: $FA $3C $C3
    inc a                                         ; $4369: $3C
    add a                                         ; $436A: $87
    add a                                         ; $436B: $87
    add a                                         ; $436C: $87
    ld [$C33B], a                                 ; $436D: $EA $3B $C3
    ld a, $F0                                     ; $4370: $3E $F0
    ld [$C340], a                                 ; $4372: $EA $40 $C3
    ld a, $80                                     ; $4375: $3E $80
    ld [$C343], a                                 ; $4377: $EA $43 $C3
    ld de, $8800                                  ; $437A: $11 $00 $88
    ld hl, $C337                                  ; $437D: $21 $37 $C3
    ld [hl], e                                    ; $4380: $73
    inc hl                                        ; $4381: $23
    ld [hl], d                                    ; $4382: $72
    ld a, [$C341]                                 ; $4383: $FA $41 $C3
    ld e, a                                       ; $4386: $5F
    ld a, [$C342]                                 ; $4387: $FA $42 $C3
    ld d, a                                       ; $438A: $57
    ld hl, $0040                                  ; $438B: $21 $40 $00
    add hl, de                                    ; $438E: $19
    ld a, l                                       ; $438F: $7D
    ld [$C341], a                                 ; $4390: $EA $41 $C3
    ld [$C335], a                                 ; $4393: $EA $35 $C3
    ld a, h                                       ; $4396: $7C
    and $03                                       ; $4397: $E6 $03
    ld [$C342], a                                 ; $4399: $EA $42 $C3
    ld [$C336], a                                 ; $439C: $EA $36 $C3
    xor a                                         ; $439F: $AF
    ld [$C345], a                                 ; $43A0: $EA $45 $C3
    ld [$C33C], a                                 ; $43A3: $EA $3C $C3
    jp Jump_03A_42E8                              ; $43A6: $C3 $E8 $42


    pop hl                                        ; $43A9: $E1
    ld a, [hl+]                                   ; $43AA: $2A
    ld [$C32D], a                                 ; $43AB: $EA $2D $C3
    jp Jump_03A_408A                              ; $43AE: $C3 $8A $40


    pop hl                                        ; $43B1: $E1
    ld a, [hl+]                                   ; $43B2: $2A
    ld c, a                                       ; $43B3: $4F
    ld a, [$C32E]                                 ; $43B4: $FA $2E $C3
    or c                                          ; $43B7: $B1
    ld [$C32E], a                                 ; $43B8: $EA $2E $C3
    jp Jump_03A_408A                              ; $43BB: $C3 $8A $40


    pop hl                                        ; $43BE: $E1
    ld a, [hl+]                                   ; $43BF: $2A
    ld c, a                                       ; $43C0: $4F
    ld a, [$C32E]                                 ; $43C1: $FA $2E $C3
    and c                                         ; $43C4: $A1
    ld [$C32E], a                                 ; $43C5: $EA $2E $C3
    jp Jump_03A_408A                              ; $43C8: $C3 $8A $40


    pop hl                                        ; $43CB: $E1
    ld a, [hl+]                                   ; $43CC: $2A
    ld [$C340], a                                 ; $43CD: $EA $40 $C3
    jp Jump_03A_42E9                              ; $43D0: $C3 $E9 $42


    ld bc, $4E00                                  ; $43D3: $01 $00 $4E
    ld [hl], c                                    ; $43D6: $71
    nop                                           ; $43D7: $00
    ld [hl], a                                    ; $43D8: $77
    daa                                           ; $43D9: $27
    nop                                           ; $43DA: $00
    ret                                           ; $43DB: $C9


    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    ld bc, $6D00                                  ; $43DF: $01 $00 $6D
    ccf                                           ; $43E2: $3F
    nop                                           ; $43E3: $00
    dec l                                         ; $43E4: $2D
    ld [hl], $00                                  ; $43E5: $36 $00
    ld bc, $0089                                  ; $43E7: $01 $89 $00
    sub c                                         ; $43EA: $91
    halt                                          ; $43EB: $76
    nop                                           ; $43EC: $00
    adc c                                         ; $43ED: $89
    nop                                           ; $43EE: $00
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00
    ld bc, $7F00                                  ; $43F1: $01 $00 $7F
    cp e                                          ; $43F4: $BB
    nop                                           ; $43F5: $00
    halt                                          ; $43F6: $76
    or c                                          ; $43F7: $B1
    nop                                           ; $43F8: $00
    ld h, h                                       ; $43F9: $64
    ld [hl], l                                    ; $43FA: $75
    nop                                           ; $43FB: $00
    ret                                           ; $43FC: $C9


    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    inc bc                                        ; $4402: $03
    ld bc, $2F00                                  ; $4403: $01 $00 $2F
    ld l, e                                       ; $4406: $6B
    nop                                           ; $4407: $00
    dec hl                                        ; $4408: $2B
    ld l, b                                       ; $4409: $68
    nop                                           ; $440A: $00
    ld bc, $0085                                  ; $440B: $01 $85 $00
    halt                                          ; $440E: $76
    or c                                          ; $440F: $B1
    nop                                           ; $4410: $00
    ld c, l                                       ; $4411: $4D
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    ld bc, $3800                                  ; $4415: $01 $00 $38
    ld b, c                                       ; $4418: $41
    nop                                           ; $4419: $00
    ld h, b                                       ; $441A: $60
    daa                                           ; $441B: $27
    nop                                           ; $441C: $00
    ld l, [hl]                                    ; $441D: $6E
    ld bc, $3600                                  ; $441E: $01 $00 $36
    ld b, b                                       ; $4421: $40
    nop                                           ; $4422: $00
    ld h, l                                       ; $4423: $65
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    ld bc, $2800                                  ; $4427: $01 $00 $28
    ld c, l                                       ; $442A: $4D
    nop                                           ; $442B: $00
    ld h, h                                       ; $442C: $64
    ret                                           ; $442D: $C9


    nop                                           ; $442E: $00
    ld bc, $0000                                  ; $442F: $01 $00 $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    inc bc                                        ; $4435: $03
    ld bc, $7900                                  ; $4436: $01 $00 $79
    or h                                          ; $4439: $B4
    nop                                           ; $443A: $00
    ld c, c                                       ; $443B: $49
    ld l, b                                       ; $443C: $68
    nop                                           ; $443D: $00
    db $E3                                        ; $443E: $E3
    ld l, [hl]                                    ; $443F: $6E
    nop                                           ; $4440: $00
    ld a, [hl+]                                   ; $4441: $2A
    ld [hl], $00                                  ; $4442: $36 $00
    ld b, d                                       ; $4444: $42
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    ld bc, $4300                                  ; $4448: $01 $00 $43
    ld d, e                                       ; $444B: $53
    nop                                           ; $444C: $00
    ld [hl], $40                                  ; $444D: $36 $40
    nop                                           ; $444F: $00
    ld h, l                                       ; $4450: $65
    ld [hl], b                                    ; $4451: $70
    nop                                           ; $4452: $00
    ld b, d                                       ; $4453: $42
    ld c, h                                       ; $4454: $4C
    nop                                           ; $4455: $00
    ret                                           ; $4456: $C9


    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    inc bc                                        ; $445C: $03
    ld bc, $4000                                  ; $445D: $01 $00 $40
    ld c, c                                       ; $4460: $49
    nop                                           ; $4461: $00
    ld e, [hl]                                    ; $4462: $5E
    ld c, d                                       ; $4463: $4A
    nop                                           ; $4464: $00
    ld bc, $006D                                  ; $4465: $01 $6D $00
    ccf                                           ; $4468: $3F
    dec l                                         ; $4469: $2D
    nop                                           ; $446A: $00
    ld [hl], $00                                  ; $446B: $36 $00
    nop                                           ; $446D: $00
    nop                                           ; $446E: $00
    ld bc, $4E00                                  ; $446F: $01 $00 $4E
    add l                                         ; $4472: $85
    nop                                           ; $4473: $00
    halt                                          ; $4474: $76
    or c                                          ; $4475: $B1
    nop                                           ; $4476: $00
    ld c, d                                       ; $4477: $4A
    ld bc, $4400                                  ; $4478: $01 $00 $44
    ld [hl], $00                                  ; $447B: $36 $00
    ld b, d                                       ; $447D: $42
    nop                                           ; $447E: $00
    nop                                           ; $447F: $00
    nop                                           ; $4480: $00
    ld bc, $6100                                  ; $4481: $01 $00 $61
    ld l, b                                       ; $4484: $68
    nop                                           ; $4485: $00
    add hl, hl                                    ; $4486: $29
    ld c, c                                       ; $4487: $49
    nop                                           ; $4488: $00
    daa                                           ; $4489: $27
    ld c, l                                       ; $448A: $4D
    nop                                           ; $448B: $00
    ld h, h                                       ; $448C: $64
    ret                                           ; $448D: $C9


    nop                                           ; $448E: $00
    ld bc, $0000                                  ; $448F: $01 $00 $00
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    inc bc                                        ; $4495: $03
    ld bc, $7E00                                  ; $4496: $01 $00 $7E
    halt                                          ; $4499: $76
    nop                                           ; $449A: $00
    jp nz, Jump_000_00CB                          ; $449B: $C2 $CB $00

    ld bc, $0000                                  ; $449E: $01 $00 $00
    nop                                           ; $44A1: $00
    ld bc, $2D00                                  ; $44A2: $01 $00 $2D
    ld h, d                                       ; $44A5: $62
    nop                                           ; $44A6: $00
    ld [hl], $76                                  ; $44A7: $36 $76
    nop                                           ; $44A9: $00
    ld [hl], b                                    ; $44AA: $70
    rlc b                                         ; $44AB: $CB $00
    rlc b                                         ; $44AD: $CB $00
    nop                                           ; $44AF: $00
    nop                                           ; $44B0: $00
    nop                                           ; $44B1: $00
    nop                                           ; $44B2: $00
    inc bc                                        ; $44B3: $03
    ld bc, $4700                                  ; $44B4: $01 $00 $47
    ld h, c                                       ; $44B7: $61
    nop                                           ; $44B8: $00
    ld bc, $0027                                  ; $44B9: $01 $27 $00
    ld b, c                                       ; $44BC: $41
    dec hl                                        ; $44BD: $2B
    nop                                           ; $44BE: $00
    add l                                         ; $44BF: $85
    halt                                          ; $44C0: $76
    nop                                           ; $44C1: $00
    or c                                          ; $44C2: $B1
    nop                                           ; $44C3: $00
    nop                                           ; $44C4: $00
    nop                                           ; $44C5: $00
    ld bc, $4A00                                  ; $44C6: $01 $00 $4A
    ld b, a                                       ; $44C9: $47
    nop                                           ; $44CA: $00
    ld b, d                                       ; $44CB: $42
    ld e, [hl]                                    ; $44CC: $5E
    nop                                           ; $44CD: $00
    jr c, jr_03A_453A                             ; $44CE: $38 $6A

    nop                                           ; $44D0: $00
    ld l, l                                       ; $44D1: $6D
    ld [hl], b                                    ; $44D2: $70
    nop                                           ; $44D3: $00
    rlc b                                         ; $44D4: $CB $00
    nop                                           ; $44D6: $00
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    inc bc                                        ; $44DA: $03
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    ld bc, $2C00                                  ; $44DE: $01 $00 $2C
    ld l, [hl]                                    ; $44E1: $6E
    nop                                           ; $44E2: $00
    ld b, e                                       ; $44E3: $43
    ld l, c                                       ; $44E4: $69
    nop                                           ; $44E5: $00
    ld c, c                                       ; $44E6: $49
    ld a, [hl+]                                   ; $44E7: $2A
    nop                                           ; $44E8: $00
    ld [hl], $42                                  ; $44E9: $36 $42
    nop                                           ; $44EB: $00
    ldh [rP1], a                                  ; $44EC: $E0 $00
    nop                                           ; $44EE: $00
    nop                                           ; $44EF: $00
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    inc bc                                        ; $44F2: $03
    ld bc, $2F00                                  ; $44F3: $01 $00 $2F
    ld l, e                                       ; $44F6: $6B
    nop                                           ; $44F7: $00
    ld c, [hl]                                    ; $44F8: $4E
    ld bc, $2B00                                  ; $44F9: $01 $00 $2B
    dec l                                         ; $44FC: $2D
    nop                                           ; $44FD: $00
    ld b, e                                       ; $44FE: $43
    jr z, jr_03A_4501                             ; $44FF: $28 $00

jr_03A_4501:
    add l                                         ; $4501: $85
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    ld bc, $7600                                  ; $4505: $01 $00 $76
    or c                                          ; $4508: $B1
    nop                                           ; $4509: $00
    ld c, c                                       ; $450A: $49
    ld c, l                                       ; $450B: $4D
    nop                                           ; $450C: $00
    ld h, h                                       ; $450D: $64
    ret                                           ; $450E: $C9


    nop                                           ; $450F: $00
    ld bc, $0000                                  ; $4510: $01 $00 $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    inc bc                                        ; $4516: $03
    ld bc, $3F00                                  ; $4517: $01 $00 $3F
    ccf                                           ; $451A: $3F
    nop                                           ; $451B: $00
    dec hl                                        ; $451C: $2B
    ld [hl], b                                    ; $451D: $70
    nop                                           ; $451E: $00
    ld b, d                                       ; $451F: $42
    ld bc, $3F00                                  ; $4520: $01 $00 $3F
    daa                                           ; $4523: $27
    nop                                           ; $4524: $00
    ld l, c                                       ; $4525: $69
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    ld bc, $6700                                  ; $4529: $01 $00 $67
    dec l                                         ; $452C: $2D
    nop                                           ; $452D: $00
    jr nc, jr_03A_4531                            ; $452E: $30 $01

    nop                                           ; $4530: $00

jr_03A_4531:
    ld c, c                                       ; $4531: $49
    dec l                                         ; $4532: $2D
    nop                                           ; $4533: $00
    ld c, c                                       ; $4534: $49
    ld [hl], b                                    ; $4535: $70
    nop                                           ; $4536: $00
    ccf                                           ; $4537: $3F
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00

jr_03A_453A:
    nop                                           ; $453A: $00
    ld bc, $6800                                  ; $453B: $01 $00 $68
    ld bc, $5D00                                  ; $453E: $01 $00 $5D
    ld l, $00                                     ; $4541: $2E $00
    ld c, c                                       ; $4543: $49
    ld c, l                                       ; $4544: $4D
    nop                                           ; $4545: $00
    ld h, h                                       ; $4546: $64
    ret                                           ; $4547: $C9


    nop                                           ; $4548: $00
    ld bc, $0000                                  ; $4549: $01 $00 $00
    nop                                           ; $454C: $00
    nop                                           ; $454D: $00
    nop                                           ; $454E: $00
    inc bc                                        ; $454F: $03
    ld bc, $3000                                  ; $4550: $01 $00 $30
    ld h, b                                       ; $4553: $60
    nop                                           ; $4554: $00
    ld l, a                                       ; $4555: $6F
    ld c, l                                       ; $4556: $4D
    nop                                           ; $4557: $00
    jr z, jr_03A_4583                             ; $4558: $28 $29

    nop                                           ; $455A: $00
    ld c, l                                       ; $455B: $4D
    add l                                         ; $455C: $85
    nop                                           ; $455D: $00
    halt                                          ; $455E: $76
    nop                                           ; $455F: $00
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    ld bc, $8D00                                  ; $4562: $01 $00 $8D
    jr nc, jr_03A_4567                            ; $4565: $30 $00

jr_03A_4567:
    ld bc, $003F                                  ; $4567: $01 $3F $00
    daa                                           ; $456A: $27
    ld l, c                                       ; $456B: $69
    nop                                           ; $456C: $00
    ld h, a                                       ; $456D: $67
    dec l                                         ; $456E: $2D
    nop                                           ; $456F: $00
    ld c, c                                       ; $4570: $49
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    ld bc, $4D00                                  ; $4574: $01 $00 $4D
    ld h, h                                       ; $4577: $64
    nop                                           ; $4578: $00
    ret                                           ; $4579: $C9


    nop                                           ; $457A: $00
    nop                                           ; $457B: $00
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    inc bc                                        ; $457F: $03
    ld bc, $0500                                  ; $4580: $01 $00 $05

jr_03A_4583:
    dec hl                                        ; $4583: $2B
    nop                                           ; $4584: $00
    daa                                           ; $4585: $27
    ld [hl], $00                                  ; $4586: $36 $00
    ld h, a                                       ; $4588: $67
    jr z, jr_03A_458B                             ; $4589: $28 $00

jr_03A_458B:
    ld d, l                                       ; $458B: $55
    ld b, a                                       ; $458C: $47
    nop                                           ; $458D: $00
    ld bc, $0000                                  ; $458E: $01 $00 $00
    nop                                           ; $4591: $00
    ld bc, $0400                                  ; $4592: $01 $00 $04
    dec hl                                        ; $4595: $2B
    nop                                           ; $4596: $00
    daa                                           ; $4597: $27
    dec hl                                        ; $4598: $2B
    nop                                           ; $4599: $00
    ld [hl], b                                    ; $459A: $70
    ccf                                           ; $459B: $3F
    nop                                           ; $459C: $00
    ld l, b                                       ; $459D: $68
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    nop                                           ; $45A0: $00
    ld bc, $4100                                  ; $45A1: $01 $00 $41
    ld sp, $5100                                  ; $45A4: $31 $00 $51
    scf                                           ; $45A7: $37
    nop                                           ; $45A8: $00
    scf                                           ; $45A9: $37
    ld h, b                                       ; $45AA: $60
    nop                                           ; $45AB: $00
    ld l, d                                       ; $45AC: $6A
    ld l, l                                       ; $45AD: $6D
    nop                                           ; $45AE: $00
    ret                                           ; $45AF: $C9


    nop                                           ; $45B0: $00
    nop                                           ; $45B1: $00
    nop                                           ; $45B2: $00
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    inc bc                                        ; $45B5: $03
    ld bc, $3B00                                  ; $45B6: $01 $00 $3B
    dec hl                                        ; $45B9: $2B
    nop                                           ; $45BA: $00
    ld l, a                                       ; $45BB: $6F
    ld sp, $6B00                                  ; $45BC: $31 $00 $6B
    ld b, h                                       ; $45BF: $44
    nop                                           ; $45C0: $00
    ld [hl], b                                    ; $45C1: $70
    ccf                                           ; $45C2: $3F
    nop                                           ; $45C3: $00
    ld l, b                                       ; $45C4: $68
    nop                                           ; $45C5: $00
    nop                                           ; $45C6: $00
    nop                                           ; $45C7: $00
    ld bc, $3F00                                  ; $45C8: $01 $00 $3F
    daa                                           ; $45CB: $27
    nop                                           ; $45CC: $00
    ld l, c                                       ; $45CD: $69
    ld h, a                                       ; $45CE: $67
    nop                                           ; $45CF: $00
    dec l                                         ; $45D0: $2D
    jr nc, jr_03A_45D3                            ; $45D1: $30 $00

jr_03A_45D3:
    ld bc, $002A                                  ; $45D3: $01 $2A $00
    ld a, [hl+]                                   ; $45D6: $2A
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    nop                                           ; $45D9: $00
    ld bc, $2700                                  ; $45DA: $01 $00 $27
    ld d, d                                       ; $45DD: $52
    nop                                           ; $45DE: $00
    jr z, jr_03A_4611                             ; $45DF: $28 $30

    nop                                           ; $45E1: $00
    ld bc, $002B                                  ; $45E2: $01 $2B $00
    ld b, b                                       ; $45E5: $40
    ld h, h                                       ; $45E6: $64
    nop                                           ; $45E7: $00
    ret                                           ; $45E8: $C9


    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    inc bc                                        ; $45EE: $03
    ld bc, $2F00                                  ; $45EF: $01 $00 $2F
    ld l, a                                       ; $45F2: $6F
    nop                                           ; $45F3: $00
    dec hl                                        ; $45F4: $2B
    daa                                           ; $45F5: $27
    nop                                           ; $45F6: $00
    ld c, [hl]                                    ; $45F7: $4E
    ld bc, $2F00                                  ; $45F8: $01 $00 $2F
    cpl                                           ; $45FB: $2F
    nop                                           ; $45FC: $00
    ld e, l                                       ; $45FD: $5D
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    nop                                           ; $4600: $00
    ld bc, $4700                                  ; $4601: $01 $00 $47
    ld h, h                                       ; $4604: $64
    nop                                           ; $4605: $00
    ret                                           ; $4606: $C9


    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    ld bc, $5300                                  ; $460A: $01 $00 $53
    daa                                           ; $460D: $27
    nop                                           ; $460E: $00
    ld d, e                                       ; $460F: $53
    ld [hl], c                                    ; $4610: $71

jr_03A_4611:
    nop                                           ; $4611: $00
    ld [hl], a                                    ; $4612: $77
    ld [hl], a                                    ; $4613: $77
    nop                                           ; $4614: $00
    ld [hl], a                                    ; $4615: $77
    daa                                           ; $4616: $27
    nop                                           ; $4617: $00
    ret                                           ; $4618: $C9


    nop                                           ; $4619: $00
    nop                                           ; $461A: $00
    nop                                           ; $461B: $00
    nop                                           ; $461C: $00
    nop                                           ; $461D: $00
    inc bc                                        ; $461E: $03
    nop                                           ; $461F: $00
    nop                                           ; $4620: $00
    rlca                                          ; $4621: $07
    ld a, b                                       ; $4622: $78
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    dec b                                         ; $4625: $05
    add b                                         ; $4626: $80
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    ld [bc], a                                    ; $4629: $02
    nop                                           ; $462A: $00
    nop                                           ; $462B: $00
    ld bc, $4623                                  ; $462C: $01 $23 $46
    ld bc, $4E00                                  ; $462F: $01 $00 $4E
    ld [hl], c                                    ; $4632: $71
    nop                                           ; $4633: $00
    ld [hl], a                                    ; $4634: $77
    daa                                           ; $4635: $27
    nop                                           ; $4636: $00
    ret                                           ; $4637: $C9


    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463A: $00
    ld bc, $6D00                                  ; $463B: $01 $00 $6D
    ccf                                           ; $463E: $3F
    nop                                           ; $463F: $00
    dec l                                         ; $4640: $2D
    ld [hl], $00                                  ; $4641: $36 $00
    ld bc, $0089                                  ; $4643: $01 $89 $00
    sub c                                         ; $4646: $91
    halt                                          ; $4647: $76
    nop                                           ; $4648: $00
    adc c                                         ; $4649: $89
    nop                                           ; $464A: $00
    nop                                           ; $464B: $00
    nop                                           ; $464C: $00
    ld bc, $7F00                                  ; $464D: $01 $00 $7F
    cp e                                          ; $4650: $BB
    nop                                           ; $4651: $00
    halt                                          ; $4652: $76
    or c                                          ; $4653: $B1
    nop                                           ; $4654: $00
    ld h, h                                       ; $4655: $64
    ld [hl], l                                    ; $4656: $75
    nop                                           ; $4657: $00
    ret                                           ; $4658: $C9


    nop                                           ; $4659: $00
    nop                                           ; $465A: $00
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    inc bc                                        ; $465E: $03
    ld bc, $2F00                                  ; $465F: $01 $00 $2F
    ld l, e                                       ; $4662: $6B
    nop                                           ; $4663: $00
    dec hl                                        ; $4664: $2B
    ld l, b                                       ; $4665: $68
    nop                                           ; $4666: $00
    add l                                         ; $4667: $85
    halt                                          ; $4668: $76
    nop                                           ; $4669: $00
    or c                                          ; $466A: $B1
    ld c, l                                       ; $466B: $4D
    ld bc, $0075                                  ; $466C: $01 $75 $00
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    ld bc, $7601                                  ; $4671: $01 $01 $76
    ld l, [hl]                                    ; $4674: $6E
    nop                                           ; $4675: $00
    ld [hl], $40                                  ; $4676: $36 $40
    nop                                           ; $4678: $00
    ld h, l                                       ; $4679: $65
    jr z, jr_03A_467C                             ; $467A: $28 $00

jr_03A_467C:
    ld c, l                                       ; $467C: $4D
    ld h, h                                       ; $467D: $64
    nop                                           ; $467E: $00
    ret                                           ; $467F: $C9


    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    inc bc                                        ; $4685: $03
    ld bc, $7900                                  ; $4686: $01 $00 $79
    or h                                          ; $4689: $B4
    nop                                           ; $468A: $00
    ld c, c                                       ; $468B: $49
    ld l, b                                       ; $468C: $68
    nop                                           ; $468D: $00
    db $E3                                        ; $468E: $E3
    ld l, [hl]                                    ; $468F: $6E
    ld bc, $3687                                  ; $4690: $01 $87 $36
    nop                                           ; $4693: $00
    ld b, d                                       ; $4694: $42
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    ld bc, $4300                                  ; $4698: $01 $00 $43
    ld d, e                                       ; $469B: $53
    nop                                           ; $469C: $00
    ld [hl], $40                                  ; $469D: $36 $40
    nop                                           ; $469F: $00
    ld h, l                                       ; $46A0: $65
    ld [hl], b                                    ; $46A1: $70
    nop                                           ; $46A2: $00
    ld b, d                                       ; $46A3: $42
    ld c, h                                       ; $46A4: $4C
    nop                                           ; $46A5: $00
    ret                                           ; $46A6: $C9


    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    nop                                           ; $46A9: $00
    nop                                           ; $46AA: $00
    nop                                           ; $46AB: $00
    inc bc                                        ; $46AC: $03
    ld bc, $4000                                  ; $46AD: $01 $00 $40
    ld c, c                                       ; $46B0: $49
    nop                                           ; $46B1: $00
    ld e, [hl]                                    ; $46B2: $5E
    ld c, d                                       ; $46B3: $4A
    nop                                           ; $46B4: $00
    ld bc, $006D                                  ; $46B5: $01 $6D $00
    ccf                                           ; $46B8: $3F
    dec l                                         ; $46B9: $2D
    nop                                           ; $46BA: $00
    ld [hl], $00                                  ; $46BB: $36 $00
    nop                                           ; $46BD: $00
    nop                                           ; $46BE: $00
    ld bc, $4E00                                  ; $46BF: $01 $00 $4E
    add l                                         ; $46C2: $85
    nop                                           ; $46C3: $00
    halt                                          ; $46C4: $76
    or c                                          ; $46C5: $B1
    nop                                           ; $46C6: $00
    ld c, d                                       ; $46C7: $4A
    jr jr_03A_46DA                                ; $46C8: $18 $10

    ld [hl], $42                                  ; $46CA: $36 $42
    nop                                           ; $46CC: $00
    ld bc, $0000                                  ; $46CD: $01 $00 $00
    nop                                           ; $46D0: $00
    ld bc, $6100                                  ; $46D1: $01 $00 $61
    ld l, b                                       ; $46D4: $68
    nop                                           ; $46D5: $00
    add hl, hl                                    ; $46D6: $29
    ld c, c                                       ; $46D7: $49
    nop                                           ; $46D8: $00
    daa                                           ; $46D9: $27

jr_03A_46DA:
    ld c, l                                       ; $46DA: $4D
    nop                                           ; $46DB: $00
    ld h, h                                       ; $46DC: $64
    ret                                           ; $46DD: $C9


    nop                                           ; $46DE: $00
    ld bc, $0000                                  ; $46DF: $01 $00 $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    inc bc                                        ; $46E5: $03
    ld bc, $7E00                                  ; $46E6: $01 $00 $7E
    halt                                          ; $46E9: $76
    nop                                           ; $46EA: $00
    jp nz, Jump_000_00CB                          ; $46EB: $C2 $CB $00

    ld bc, $0000                                  ; $46EE: $01 $00 $00
    nop                                           ; $46F1: $00
    ld bc, $2D00                                  ; $46F2: $01 $00 $2D
    ld h, d                                       ; $46F5: $62
    nop                                           ; $46F6: $00
    ld [hl], $76                                  ; $46F7: $36 $76
    nop                                           ; $46F9: $00
    ld [hl], b                                    ; $46FA: $70
    rlc b                                         ; $46FB: $CB $00
    rlc b                                         ; $46FD: $CB $00
    nop                                           ; $46FF: $00
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    inc bc                                        ; $4703: $03
    ld bc, $4700                                  ; $4704: $01 $00 $47
    ld h, c                                       ; $4707: $61
    nop                                           ; $4708: $00
    ld bc, $0027                                  ; $4709: $01 $27 $00
    ld b, c                                       ; $470C: $41
    dec hl                                        ; $470D: $2B
    nop                                           ; $470E: $00
    add l                                         ; $470F: $85
    halt                                          ; $4710: $76
    nop                                           ; $4711: $00
    or c                                          ; $4712: $B1
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    ld bc, $4A00                                  ; $4716: $01 $00 $4A
    jr jr_03A_472B                                ; $4719: $18 $10

    ld b, d                                       ; $471B: $42
    ld e, [hl]                                    ; $471C: $5E
    nop                                           ; $471D: $00
    jr c, jr_03A_478A                             ; $471E: $38 $6A

    nop                                           ; $4720: $00
    ld l, l                                       ; $4721: $6D
    ld [hl], b                                    ; $4722: $70
    nop                                           ; $4723: $00
    rlc b                                         ; $4724: $CB $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    inc bc                                        ; $472A: $03

jr_03A_472B:
    nop                                           ; $472B: $00
    nop                                           ; $472C: $00
    nop                                           ; $472D: $00
    ld bc, $1502                                  ; $472E: $01 $02 $15
    ld l, [hl]                                    ; $4731: $6E
    nop                                           ; $4732: $00
    ld b, e                                       ; $4733: $43
    ld l, c                                       ; $4734: $69
    nop                                           ; $4735: $00
    ld c, c                                       ; $4736: $49
    ld a, [hl+]                                   ; $4737: $2A
    nop                                           ; $4738: $00
    ld [hl], $42                                  ; $4739: $36 $42
    nop                                           ; $473B: $00
    ldh [rP1], a                                  ; $473C: $E0 $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    inc bc                                        ; $4742: $03
    ld bc, $2F00                                  ; $4743: $01 $00 $2F
    ld l, e                                       ; $4746: $6B
    nop                                           ; $4747: $00
    ld c, [hl]                                    ; $4748: $4E
    add e                                         ; $4749: $83
    ld de, $853F                                  ; $474A: $11 $3F $85
    nop                                           ; $474D: $00
    halt                                          ; $474E: $76
    or c                                          ; $474F: $B1
    nop                                           ; $4750: $00
    ld c, c                                       ; $4751: $49
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    ld bc, $4D00                                  ; $4755: $01 $00 $4D
    ld h, h                                       ; $4758: $64
    nop                                           ; $4759: $00
    ret                                           ; $475A: $C9


    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    inc bc                                        ; $4760: $03
    ld bc, $3F01                                  ; $4761: $01 $01 $3F
    ld [hl], b                                    ; $4764: $70
    nop                                           ; $4765: $00
    ld b, d                                       ; $4766: $42
    ld bc, $1602                                  ; $4767: $01 $02 $16
    inc b                                         ; $476A: $04
    db $10                                        ; $476B: $10
    jr nc, @+$26                                  ; $476C: $30 $24

    db $10                                        ; $476E: $10
    dec l                                         ; $476F: $2D
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    ld bc, $4900                                  ; $4773: $01 $00 $49
    ld [hl], b                                    ; $4776: $70
    nop                                           ; $4777: $00
    ccf                                           ; $4778: $3F
    ld l, b                                       ; $4779: $68
    nop                                           ; $477A: $00
    ld bc, $1046                                  ; $477B: $01 $46 $10
    ld l, $49                                     ; $477E: $2E $49
    nop                                           ; $4780: $00
    ld c, l                                       ; $4781: $4D
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    ld bc, $6400                                  ; $4785: $01 $00 $64
    ret                                           ; $4788: $C9


    nop                                           ; $4789: $00

jr_03A_478A:
    ld bc, $0000                                  ; $478A: $01 $00 $00
    nop                                           ; $478D: $00
    nop                                           ; $478E: $00
    nop                                           ; $478F: $00
    inc bc                                        ; $4790: $03
    ld bc, $9901                                  ; $4791: $01 $01 $99
    sbc d                                         ; $4794: $9A
    db $10                                        ; $4795: $10
    ld c, l                                       ; $4796: $4D
    adc d                                         ; $4797: $8A
    db $10                                        ; $4798: $10
    ld c, l                                       ; $4799: $4D
    add l                                         ; $479A: $85
    nop                                           ; $479B: $00
    halt                                          ; $479C: $76
    adc l                                         ; $479D: $8D
    nop                                           ; $479E: $00
    jr nc, jr_03A_47A1                            ; $479F: $30 $00

jr_03A_47A1:
    nop                                           ; $47A1: $00
    nop                                           ; $47A2: $00
    ld bc, $1602                                  ; $47A3: $01 $02 $16
    inc b                                         ; $47A6: $04
    db $10                                        ; $47A7: $10
    ld c, c                                       ; $47A8: $49
    ld c, l                                       ; $47A9: $4D
    nop                                           ; $47AA: $00
    ld h, h                                       ; $47AB: $64
    ret                                           ; $47AC: $C9


    nop                                           ; $47AD: $00
    ld bc, $0000                                  ; $47AE: $01 $00 $00
    nop                                           ; $47B1: $00
    nop                                           ; $47B2: $00
    nop                                           ; $47B3: $00
    inc bc                                        ; $47B4: $03
    ld bc, $0500                                  ; $47B5: $01 $00 $05
    inc [hl]                                      ; $47B8: $34
    ld de, $463E                                  ; $47B9: $11 $3E $46
    db $10                                        ; $47BC: $10
    ld b, a                                       ; $47BD: $47
    inc b                                         ; $47BE: $04
    ld bc, $3E34                                  ; $47BF: $01 $34 $3E
    db $10                                        ; $47C2: $10
    ld [hl], b                                    ; $47C3: $70
    nop                                           ; $47C4: $00
    nop                                           ; $47C5: $00
    nop                                           ; $47C6: $00
    ld bc, $3F00                                  ; $47C7: $01 $00 $3F
    ld l, b                                       ; $47CA: $68
    nop                                           ; $47CB: $00
    ld bc, $1091                                  ; $47CC: $01 $91 $10
    ld d, c                                       ; $47CF: $51
    rla                                           ; $47D0: $17
    jr nz, jr_03A_4833                            ; $47D1: $20 $60

    ld l, d                                       ; $47D3: $6A
    nop                                           ; $47D4: $00
    ld c, l                                       ; $47D5: $4D
    nop                                           ; $47D6: $00
    nop                                           ; $47D7: $00
    nop                                           ; $47D8: $00
    ld bc, $6400                                  ; $47D9: $01 $00 $64
    ret                                           ; $47DC: $C9


    nop                                           ; $47DD: $00
    ld bc, $0000                                  ; $47DE: $01 $00 $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    inc bc                                        ; $47E4: $03
    ld bc, $7E01                                  ; $47E5: $01 $01 $7E
    ld a, a                                       ; $47E8: $7F
    ld de, $6B94                                  ; $47E9: $11 $94 $6B
    nop                                           ; $47EC: $00
    ld b, h                                       ; $47ED: $44
    ld [hl], b                                    ; $47EE: $70
    nop                                           ; $47EF: $00
    ccf                                           ; $47F0: $3F
    ld l, b                                       ; $47F1: $68
    nop                                           ; $47F2: $00
    ld bc, $0000                                  ; $47F3: $01 $00 $00
    nop                                           ; $47F6: $00
    ld bc, $1602                                  ; $47F7: $01 $02 $16
    inc b                                         ; $47FA: $04
    db $10                                        ; $47FB: $10
    jr nc, @+$1A                                  ; $47FC: $30 $18

    jr nz, jr_03A_4827                            ; $47FE: $20 $27

    ld d, d                                       ; $4800: $52
    nop                                           ; $4801: $00
    jr z, jr_03A_4834                             ; $4802: $28 $30

    nop                                           ; $4804: $00
    ld bc, $0000                                  ; $4805: $01 $00 $00
    nop                                           ; $4808: $00
    ld bc, $3E01                                  ; $4809: $01 $01 $3E
    ld b, b                                       ; $480C: $40
    nop                                           ; $480D: $00
    ld c, c                                       ; $480E: $49
    ld c, l                                       ; $480F: $4D
    nop                                           ; $4810: $00
    ld h, h                                       ; $4811: $64
    ret                                           ; $4812: $C9


    nop                                           ; $4813: $00
    ld bc, $0000                                  ; $4814: $01 $00 $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    inc bc                                        ; $481A: $03
    ld bc, $7001                                  ; $481B: $01 $01 $70
    inc [hl]                                      ; $481E: $34
    db $10                                        ; $481F: $10
    ld c, [hl]                                    ; $4820: $4E
    ld bc, $2F00                                  ; $4821: $01 $00 $2F
    cpl                                           ; $4824: $2F
    nop                                           ; $4825: $00
    ld e, l                                       ; $4826: $5D

jr_03A_4827:
    ld b, a                                       ; $4827: $47
    nop                                           ; $4828: $00
    ld c, c                                       ; $4829: $49
    nop                                           ; $482A: $00
    nop                                           ; $482B: $00
    nop                                           ; $482C: $00
    ld bc, $4D00                                  ; $482D: $01 $00 $4D
    ld h, h                                       ; $4830: $64
    nop                                           ; $4831: $00
    ret                                           ; $4832: $C9


jr_03A_4833:
    nop                                           ; $4833: $00

jr_03A_4834:
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    ld bc, $5300                                  ; $4836: $01 $00 $53
    daa                                           ; $4839: $27
    nop                                           ; $483A: $00
    ld d, e                                       ; $483B: $53
    ld [hl], c                                    ; $483C: $71
    nop                                           ; $483D: $00
    ld [hl], a                                    ; $483E: $77
    ld [hl], a                                    ; $483F: $77
    nop                                           ; $4840: $00
    ld [hl], a                                    ; $4841: $77
    daa                                           ; $4842: $27
    nop                                           ; $4843: $00
    ret                                           ; $4844: $C9


    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    inc bc                                        ; $484A: $03
    nop                                           ; $484B: $00
    nop                                           ; $484C: $00
    rlca                                          ; $484D: $07
    ld a, b                                       ; $484E: $78
    nop                                           ; $484F: $00
    nop                                           ; $4850: $00
    dec b                                         ; $4851: $05
    add b                                         ; $4852: $80
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    ld [bc], a                                    ; $4855: $02
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    ld bc, $484F                                  ; $4858: $01 $4F $48
    ld bc, $2F00                                  ; $485B: $01 $00 $2F
    ld l, a                                       ; $485E: $6F
    nop                                           ; $485F: $00
    dec hl                                        ; $4860: $2B
    daa                                           ; $4861: $27
    nop                                           ; $4862: $00
    ld c, [hl]                                    ; $4863: $4E
    ret z                                         ; $4864: $C8

    nop                                           ; $4865: $00
    add hl, sp                                    ; $4866: $39
    jr z, jr_03A_4869                             ; $4867: $28 $00

jr_03A_4869:
    dec [hl]                                      ; $4869: $35
    nop                                           ; $486A: $00
    nop                                           ; $486B: $00
    nop                                           ; $486C: $00
    ld bc, $5200                                  ; $486D: $01 $00 $52
    jr z, jr_03A_4872                             ; $4870: $28 $00

jr_03A_4872:
    ld d, d                                       ; $4872: $52
    jr z, jr_03A_4875                             ; $4873: $28 $00

jr_03A_4875:
    ld c, l                                       ; $4875: $4D
    jr c, jr_03A_4878                             ; $4876: $38 $00

jr_03A_4878:
    ld b, c                                       ; $4878: $41
    ld h, b                                       ; $4879: $60
    nop                                           ; $487A: $00
    daa                                           ; $487B: $27
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    ld bc, $6E00                                  ; $487F: $01 $00 $6E
    scf                                           ; $4882: $37
    nop                                           ; $4883: $00
    ld l, d                                       ; $4884: $6A
    ld c, l                                       ; $4885: $4D
    nop                                           ; $4886: $00
    ld h, h                                       ; $4887: $64
    ret                                           ; $4888: $C9


    nop                                           ; $4889: $00
    ld bc, $0000                                  ; $488A: $01 $00 $00
    nop                                           ; $488D: $00
    nop                                           ; $488E: $00
    nop                                           ; $488F: $00
    inc bc                                        ; $4890: $03
    ld bc, $5D00                                  ; $4891: $01 $00 $5D
    inc a                                         ; $4894: $3C
    nop                                           ; $4895: $00
    ret z                                         ; $4896: $C8

    inc l                                         ; $4897: $2C
    nop                                           ; $4898: $00
    ld d, d                                       ; $4899: $52
    ld l, a                                       ; $489A: $6F
    nop                                           ; $489B: $00
    ld b, d                                       ; $489C: $42
    inc l                                         ; $489D: $2C
    nop                                           ; $489E: $00
    ld c, c                                       ; $489F: $49
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    ld bc, $2800                                  ; $48A3: $01 $00 $28
    inc [hl]                                      ; $48A6: $34
    nop                                           ; $48A7: $00
    dec hl                                        ; $48A8: $2B
    ld [hl], $00                                  ; $48A9: $36 $00
    dec hl                                        ; $48AB: $2B
    ccf                                           ; $48AC: $3F
    nop                                           ; $48AD: $00
    ld h, h                                       ; $48AE: $64
    ret                                           ; $48AF: $C9


    nop                                           ; $48B0: $00
    ld bc, $0000                                  ; $48B1: $01 $00 $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    inc bc                                        ; $48B7: $03
    ld bc, $E100                                  ; $48B8: $01 $00 $E1
    ld c, l                                       ; $48BB: $4D
    nop                                           ; $48BC: $00
    jp c, $006E                                   ; $48BD: $DA $6E $00

    ld a, [hl+]                                   ; $48C0: $2A
    scf                                           ; $48C1: $37
    nop                                           ; $48C2: $00
    ld b, e                                       ; $48C3: $43
    nop                                           ; $48C4: $00
    nop                                           ; $48C5: $00
    nop                                           ; $48C6: $00
    ld bc, $5D00                                  ; $48C7: $01 $00 $5D
    add hl, hl                                    ; $48CA: $29
    nop                                           ; $48CB: $00
    ld c, d                                       ; $48CC: $4A
    ld h, $00                                     ; $48CD: $26 $00
    ld l, d                                       ; $48CF: $6A
    dec l                                         ; $48D0: $2D
    nop                                           ; $48D1: $00
    ld c, l                                       ; $48D2: $4D
    ld h, h                                       ; $48D3: $64
    nop                                           ; $48D4: $00
    ret                                           ; $48D5: $C9


    nop                                           ; $48D6: $00
    nop                                           ; $48D7: $00
    nop                                           ; $48D8: $00
    nop                                           ; $48D9: $00
    nop                                           ; $48DA: $00
    inc b                                         ; $48DB: $04
    add hl, bc                                    ; $48DC: $09
    nop                                           ; $48DD: $00
    nop                                           ; $48DE: $00
    inc bc                                        ; $48DF: $03
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    rlca                                          ; $48E2: $07
    inc a                                         ; $48E3: $3C
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    inc b                                         ; $48E6: $04
    ld [de], a                                    ; $48E7: $12
    ld bc, $E100                                  ; $48E8: $01 $00 $E1
    ld c, l                                       ; $48EB: $4D
    nop                                           ; $48EC: $00
    sbc $6E                                       ; $48ED: $DE $6E
    nop                                           ; $48EF: $00
    ld a, [hl+]                                   ; $48F0: $2A
    scf                                           ; $48F1: $37
    nop                                           ; $48F2: $00
    ld b, e                                       ; $48F3: $43
    nop                                           ; $48F4: $00
    nop                                           ; $48F5: $00
    nop                                           ; $48F6: $00
    ld bc, $2800                                  ; $48F7: $01 $00 $28
    ld [hl], $00                                  ; $48FA: $36 $00
    ld l, h                                       ; $48FC: $6C
    ld c, d                                       ; $48FD: $4A
    nop                                           ; $48FE: $00
    ld h, $6A                                     ; $48FF: $26 $6A
    nop                                           ; $4901: $00
    dec l                                         ; $4902: $2D
    ld l, l                                       ; $4903: $6D
    nop                                           ; $4904: $00
    ret                                           ; $4905: $C9


    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490A: $00
    inc b                                         ; $490B: $04
    ld a, [bc]                                    ; $490C: $0A
    nop                                           ; $490D: $00
    nop                                           ; $490E: $00
    inc bc                                        ; $490F: $03
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    rlca                                          ; $4912: $07
    inc a                                         ; $4913: $3C
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    inc b                                         ; $4916: $04
    ld [de], a                                    ; $4917: $12
    ld bc, $E100                                  ; $4918: $01 $00 $E1
    ld c, l                                       ; $491B: $4D
    nop                                           ; $491C: $00
    call c, $006E                                 ; $491D: $DC $6E $00
    ld a, [hl+]                                   ; $4920: $2A
    scf                                           ; $4921: $37
    nop                                           ; $4922: $00
    ld b, e                                       ; $4923: $43
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    ld bc, $3600                                  ; $4927: $01 $00 $36
    ld h, l                                       ; $492A: $65
    nop                                           ; $492B: $00
    jr nc, jr_03A_498D                            ; $492C: $30 $5F

    nop                                           ; $492E: $00
    ld c, l                                       ; $492F: $4D
    ld h, h                                       ; $4930: $64
    nop                                           ; $4931: $00
    ret                                           ; $4932: $C9


    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    inc b                                         ; $4938: $04
    dec bc                                        ; $4939: $0B
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    inc bc                                        ; $493C: $03
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    rlca                                          ; $493F: $07
    inc a                                         ; $4940: $3C
    ld bc, $E100                                  ; $4941: $01 $00 $E1
    ld c, l                                       ; $4944: $4D
    nop                                           ; $4945: $00
    ret c                                         ; $4946: $D8

    ld l, [hl]                                    ; $4947: $6E
    nop                                           ; $4948: $00
    ld a, [hl+]                                   ; $4949: $2A
    scf                                           ; $494A: $37
    nop                                           ; $494B: $00
    ld b, e                                       ; $494C: $43
    nop                                           ; $494D: $00
    nop                                           ; $494E: $00
    nop                                           ; $494F: $00
    ld bc, $8D00                                  ; $4950: $01 $00 $8D
    or a                                          ; $4953: $B7
    nop                                           ; $4954: $00
    pop bc                                        ; $4955: $C1
    xor h                                         ; $4956: $AC
    nop                                           ; $4957: $00
    ld h, h                                       ; $4958: $64
    ret                                           ; $4959: $C9


    nop                                           ; $495A: $00
    ld bc, $0000                                  ; $495B: $01 $00 $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    nop                                           ; $4960: $00
    inc b                                         ; $4961: $04
    ld de, $0000                                  ; $4962: $11 $00 $00
    inc bc                                        ; $4965: $03
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    rlca                                          ; $4968: $07
    inc a                                         ; $4969: $3C
    nop                                           ; $496A: $00
    nop                                           ; $496B: $00
    inc b                                         ; $496C: $04
    ld [de], a                                    ; $496D: $12
    ld bc, $E300                                  ; $496E: $01 $00 $E3
    ld l, [hl]                                    ; $4971: $6E
    nop                                           ; $4972: $00
    ld a, [hl+]                                   ; $4973: $2A
    scf                                           ; $4974: $37
    nop                                           ; $4975: $00
    ld b, e                                       ; $4976: $43
    ret z                                         ; $4977: $C8

    nop                                           ; $4978: $00
    xor d                                         ; $4979: $AA
    pop bc                                        ; $497A: $C1
    nop                                           ; $497B: $00
    sub d                                         ; $497C: $92
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    ld bc, $4700                                  ; $4980: $01 $00 $47
    cpl                                           ; $4983: $2F
    nop                                           ; $4984: $00
    jr z, jr_03A_49BA                             ; $4985: $28 $33

    nop                                           ; $4987: $00
    inc l                                         ; $4988: $2C
    ld h, h                                       ; $4989: $64
    nop                                           ; $498A: $00
    ret                                           ; $498B: $C9


    nop                                           ; $498C: $00

jr_03A_498D:
    nop                                           ; $498D: $00
    nop                                           ; $498E: $00
    nop                                           ; $498F: $00
    nop                                           ; $4990: $00
    inc b                                         ; $4991: $04
    inc c                                         ; $4992: $0C
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    inc bc                                        ; $4995: $03
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    rlca                                          ; $4998: $07
    inc a                                         ; $4999: $3C
    nop                                           ; $499A: $00
    nop                                           ; $499B: $00
    inc b                                         ; $499C: $04
    ld [de], a                                    ; $499D: $12
    ld bc, $E200                                  ; $499E: $01 $00 $E2
    ld l, [hl]                                    ; $49A1: $6E
    nop                                           ; $49A2: $00
    ld a, [hl+]                                   ; $49A3: $2A
    scf                                           ; $49A4: $37
    nop                                           ; $49A5: $00
    ld b, e                                       ; $49A6: $43
    ret z                                         ; $49A7: $C8

    nop                                           ; $49A8: $00
    ld a, [hl]                                    ; $49A9: $7E
    jp nz, Jump_03A_7F00                          ; $49AA: $C2 $00 $7F

    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
    nop                                           ; $49AF: $00
    ld bc, $4700                                  ; $49B0: $01 $00 $47
    cpl                                           ; $49B3: $2F
    nop                                           ; $49B4: $00
    jr z, jr_03A_49EA                             ; $49B5: $28 $33

    nop                                           ; $49B7: $00
    inc l                                         ; $49B8: $2C
    ld h, h                                       ; $49B9: $64

jr_03A_49BA:
    nop                                           ; $49BA: $00
    ret                                           ; $49BB: $C9


    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    nop                                           ; $49C0: $00
    inc b                                         ; $49C1: $04
    dec c                                         ; $49C2: $0D
    nop                                           ; $49C3: $00
    nop                                           ; $49C4: $00
    inc bc                                        ; $49C5: $03
    nop                                           ; $49C6: $00
    nop                                           ; $49C7: $00
    rlca                                          ; $49C8: $07
    inc a                                         ; $49C9: $3C
    nop                                           ; $49CA: $00
    nop                                           ; $49CB: $00
    inc b                                         ; $49CC: $04
    ld [de], a                                    ; $49CD: $12
    ld bc, $8D00                                  ; $49CE: $01 $00 $8D
    or a                                          ; $49D1: $B7
    nop                                           ; $49D2: $00
    pop bc                                        ; $49D3: $C1
    xor h                                         ; $49D4: $AC
    nop                                           ; $49D5: $00
    ld h, d                                       ; $49D6: $62
    ld bc, $3600                                  ; $49D7: $01 $00 $36
    ld h, l                                       ; $49DA: $65
    nop                                           ; $49DB: $00
    jr nc, jr_03A_49DE                            ; $49DC: $30 $00

jr_03A_49DE:
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    ld bc, $5E00                                  ; $49E0: $01 $00 $5E
    ld h, c                                       ; $49E3: $61
    nop                                           ; $49E4: $00
    ld bc, $002A                                  ; $49E5: $01 $2A $00
    ld c, c                                       ; $49E8: $49
    dec sp                                        ; $49E9: $3B

jr_03A_49EA:
    nop                                           ; $49EA: $00
    ld h, h                                       ; $49EB: $64
    ret                                           ; $49EC: $C9


    nop                                           ; $49ED: $00
    ld bc, $0000                                  ; $49EE: $01 $00 $00
    nop                                           ; $49F1: $00
    nop                                           ; $49F2: $00
    nop                                           ; $49F3: $00
    inc b                                         ; $49F4: $04
    rrca                                          ; $49F5: $0F
    nop                                           ; $49F6: $00
    nop                                           ; $49F7: $00
    inc bc                                        ; $49F8: $03
    nop                                           ; $49F9: $00
    nop                                           ; $49FA: $00
    rlca                                          ; $49FB: $07
    ld a, b                                       ; $49FC: $78
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    inc b                                         ; $49FF: $04
    stop                                          ; $4A00: $10 $00
    nop                                           ; $4A02: $00
    rlca                                          ; $4A03: $07
    ld a, b                                       ; $4A04: $78
    nop                                           ; $4A05: $00
    nop                                           ; $4A06: $00
    inc b                                         ; $4A07: $04
    ld [de], a                                    ; $4A08: $12
    nop                                           ; $4A09: $00
    nop                                           ; $4A0A: $00
    nop                                           ; $4A0B: $00
    ld bc, $3500                                  ; $4A0C: $01 $00 $35
    ld l, b                                       ; $4A0F: $68
    nop                                           ; $4A10: $00
    ld c, d                                       ; $4A11: $4A
    ldh [rP1], a                                  ; $4A12: $E0 $00
    ld bc, $0000                                  ; $4A14: $01 $00 $00
    nop                                           ; $4A17: $00
    nop                                           ; $4A18: $00
    nop                                           ; $4A19: $00
    inc bc                                        ; $4A1A: $03
    ld bc, $E200                                  ; $4A1B: $01 $00 $E2
    dec hl                                        ; $4A1E: $2B
    nop                                           ; $4A1F: $00
    db $E3                                        ; $4A20: $E3
    ld l, [hl]                                    ; $4A21: $6E
    nop                                           ; $4A22: $00
    ld bc, $0049                                  ; $4A23: $01 $49 $00
    jr nc, jr_03A_4A55                            ; $4A26: $30 $2D

    nop                                           ; $4A28: $00
    ld a, [hl+]                                   ; $4A29: $2A
    nop                                           ; $4A2A: $00
    nop                                           ; $4A2B: $00
    nop                                           ; $4A2C: $00
    ld bc, $3700                                  ; $4A2D: $01 $00 $37
    ld b, e                                       ; $4A30: $43
    nop                                           ; $4A31: $00
    ld bc, $0041                                  ; $4A32: $01 $41 $00
    ld h, h                                       ; $4A35: $64
    daa                                           ; $4A36: $27
    nop                                           ; $4A37: $00
    cpl                                           ; $4A38: $2F
    jr z, jr_03A_4A3B                             ; $4A39: $28 $00

jr_03A_4A3B:
    inc sp                                        ; $4A3B: $33
    nop                                           ; $4A3C: $00
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    ld bc, $2C00                                  ; $4A3F: $01 $00 $2C
    ld c, c                                       ; $4A42: $49
    nop                                           ; $4A43: $00
    ld c, l                                       ; $4A44: $4D
    ld h, h                                       ; $4A45: $64
    nop                                           ; $4A46: $00
    ret                                           ; $4A47: $C9


    nop                                           ; $4A48: $00
    nop                                           ; $4A49: $00
    nop                                           ; $4A4A: $00
    nop                                           ; $4A4B: $00
    nop                                           ; $4A4C: $00
    inc b                                         ; $4A4D: $04
    ld c, $00                                     ; $4A4E: $0E $00
    nop                                           ; $4A50: $00
    inc bc                                        ; $4A51: $03
    nop                                           ; $4A52: $00
    nop                                           ; $4A53: $00
    rlca                                          ; $4A54: $07

jr_03A_4A55:
    inc a                                         ; $4A55: $3C
    ld bc, $2600                                  ; $4A56: $01 $00 $26
    daa                                           ; $4A59: $27
    nop                                           ; $4A5A: $00
    ld b, d                                       ; $4A5B: $42
    ld c, l                                       ; $4A5C: $4D
    nop                                           ; $4A5D: $00
    ld b, b                                       ; $4A5E: $40
    dec hl                                        ; $4A5F: $2B
    nop                                           ; $4A60: $00
    dec l                                         ; $4A61: $2D
    ld b, a                                       ; $4A62: $47
    nop                                           ; $4A63: $00
    ld bc, $0000                                  ; $4A64: $01 $00 $00
    nop                                           ; $4A67: $00
    ld bc, $E100                                  ; $4A68: $01 $00 $E1
    jp c, Jump_03A_4300                           ; $4A6B: $DA $00 $43

    db $E3                                        ; $4A6E: $E3
    nop                                           ; $4A6F: $00
    ld l, [hl]                                    ; $4A70: $6E
    ld c, c                                       ; $4A71: $49
    nop                                           ; $4A72: $00
    jr nc, @+$2F                                  ; $4A73: $30 $2D

    nop                                           ; $4A75: $00
    ld a, [hl+]                                   ; $4A76: $2A
    nop                                           ; $4A77: $00
    nop                                           ; $4A78: $00
    nop                                           ; $4A79: $00
    ld bc, $3700                                  ; $4A7A: $01 $00 $37
    ld b, e                                       ; $4A7D: $43
    nop                                           ; $4A7E: $00
    ld bc, $0049                                  ; $4A7F: $01 $49 $00
    inc sp                                        ; $4A82: $33
    ld l, l                                       ; $4A83: $6D
    nop                                           ; $4A84: $00
    ld a, [hl-]                                   ; $4A85: $3A
    ld h, h                                       ; $4A86: $64
    nop                                           ; $4A87: $00
    ret                                           ; $4A88: $C9


    nop                                           ; $4A89: $00
    nop                                           ; $4A8A: $00
    nop                                           ; $4A8B: $00
    nop                                           ; $4A8C: $00
    nop                                           ; $4A8D: $00
    inc b                                         ; $4A8E: $04
    ld c, $00                                     ; $4A8F: $0E $00
    nop                                           ; $4A91: $00
    inc bc                                        ; $4A92: $03
    nop                                           ; $4A93: $00
    nop                                           ; $4A94: $00
    rlca                                          ; $4A95: $07
    inc a                                         ; $4A96: $3C
    nop                                           ; $4A97: $00
    nop                                           ; $4A98: $00
    inc b                                         ; $4A99: $04
    ld [de], a                                    ; $4A9A: $12
    nop                                           ; $4A9B: $00
    nop                                           ; $4A9C: $00
    nop                                           ; $4A9D: $00
    ld bc, $3900                                  ; $4A9E: $01 $00 $39
    ld [hl], $00                                  ; $4AA1: $36 $00
    ld b, d                                       ; $4AA3: $42
    ldh [rP1], a                                  ; $4AA4: $E0 $00
    ld bc, $0000                                  ; $4AA6: $01 $00 $00
    nop                                           ; $4AA9: $00
    nop                                           ; $4AAA: $00
    nop                                           ; $4AAB: $00
    inc bc                                        ; $4AAC: $03
    ld bc, $D300                                  ; $4AAD: $01 $00 $D3
    call nc, $D500                                ; $4AB0: $D4 $00 $D5
    ld l, [hl]                                    ; $4AB3: $6E
    nop                                           ; $4AB4: $00
    ld a, [hl+]                                   ; $4AB5: $2A
    scf                                           ; $4AB6: $37
    nop                                           ; $4AB7: $00
    ld b, e                                       ; $4AB8: $43
    nop                                           ; $4AB9: $00
    nop                                           ; $4ABA: $00
    nop                                           ; $4ABB: $00
    ld bc, $5100                                  ; $4ABC: $01 $00 $51
    ld l, a                                       ; $4ABF: $6F
    nop                                           ; $4AC0: $00
    ld [hl], $6F                                  ; $4AC1: $36 $6F
    nop                                           ; $4AC3: $00
    scf                                           ; $4AC4: $37
    ld l, d                                       ; $4AC5: $6A
    nop                                           ; $4AC6: $00
    ld c, l                                       ; $4AC7: $4D
    ld h, h                                       ; $4AC8: $64
    nop                                           ; $4AC9: $00
    rlc b                                         ; $4ACA: $CB $00
    nop                                           ; $4ACC: $00
    nop                                           ; $4ACD: $00
    nop                                           ; $4ACE: $00
    nop                                           ; $4ACF: $00
    inc b                                         ; $4AD0: $04
    inc de                                        ; $4AD1: $13
    nop                                           ; $4AD2: $00
    nop                                           ; $4AD3: $00
    dec b                                         ; $4AD4: $05
    ld [bc], a                                    ; $4AD5: $02
    nop                                           ; $4AD6: $00
    nop                                           ; $4AD7: $00
    rlca                                          ; $4AD8: $07
    ld e, $00                                     ; $4AD9: $1E $00
    nop                                           ; $4ADB: $00
    inc b                                         ; $4ADC: $04
    inc d                                         ; $4ADD: $14
    nop                                           ; $4ADE: $00
    nop                                           ; $4ADF: $00
    ld b, $FD                                     ; $4AE0: $06 $FD
    nop                                           ; $4AE2: $00
    nop                                           ; $4AE3: $00
    inc bc                                        ; $4AE4: $03
    nop                                           ; $4AE5: $00
    nop                                           ; $4AE6: $00
    nop                                           ; $4AE7: $00
    ld bc, $6D00                                  ; $4AE8: $01 $00 $6D
    dec hl                                        ; $4AEB: $2B
    nop                                           ; $4AEC: $00
    ld [hl], b                                    ; $4AED: $70
    ccf                                           ; $4AEE: $3F
    nop                                           ; $4AEF: $00
    dec hl                                        ; $4AF0: $2B
    ld [hl], $00                                  ; $4AF1: $36 $00
    ld l, b                                       ; $4AF3: $68
    call z, Boot                                  ; $4AF4: $CC $00 $01
    nop                                           ; $4AF7: $00
    nop                                           ; $4AF8: $00
    nop                                           ; $4AF9: $00
    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00
    inc bc                                        ; $4AFC: $03
    ld bc, $4100                                  ; $4AFD: $01 $00 $41
    ld sp, $4E00                                  ; $4B00: $31 $00 $4E
    ld bc, $6100                                  ; $4B03: $01 $00 $61
    ld [hl], b                                    ; $4B06: $70
    nop                                           ; $4B07: $00
    ld b, e                                       ; $4B08: $43
    daa                                           ; $4B09: $27
    nop                                           ; $4B0A: $00
    ld l, h                                       ; $4B0B: $6C
    nop                                           ; $4B0C: $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    ld bc, $2700                                  ; $4B0F: $01 $00 $27
    ld l, h                                       ; $4B12: $6C
    nop                                           ; $4B13: $00
    ld bc, $002A                                  ; $4B14: $01 $2A $00
    ld [hl], $29                                  ; $4B17: $36 $29
    nop                                           ; $4B19: $00
    ld b, d                                       ; $4B1A: $42
    ld h, $00                                     ; $4B1B: $26 $00
    inc sp                                        ; $4B1D: $33
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    nop                                           ; $4B20: $00
    ld bc, $6A00                                  ; $4B21: $01 $00 $6A
    ld l, l                                       ; $4B24: $6D
    nop                                           ; $4B25: $00
    ld h, h                                       ; $4B26: $64
    ret                                           ; $4B27: $C9


    nop                                           ; $4B28: $00
    ld bc, $0000                                  ; $4B29: $01 $00 $00
    nop                                           ; $4B2C: $00
    nop                                           ; $4B2D: $00
    nop                                           ; $4B2E: $00
    inc bc                                        ; $4B2F: $03
    ld bc, $5D00                                  ; $4B30: $01 $00 $5D
    ccf                                           ; $4B33: $3F
    nop                                           ; $4B34: $00
    ld c, h                                       ; $4B35: $4C
    ret                                           ; $4B36: $C9


    nop                                           ; $4B37: $00
    ld bc, $0000                                  ; $4B38: $01 $00 $00
    nop                                           ; $4B3B: $00
    ld bc, $3500                                  ; $4B3C: $01 $00 $35
    ld h, h                                       ; $4B3F: $64
    nop                                           ; $4B40: $00
    jr z, jr_03A_4B8C                             ; $4B41: $28 $49

    nop                                           ; $4B43: $00
    ld l, b                                       ; $4B44: $68
    ld [hl], c                                    ; $4B45: $71
    nop                                           ; $4B46: $00
    ld [hl], a                                    ; $4B47: $77
    ld [hl], a                                    ; $4B48: $77
    nop                                           ; $4B49: $00
    ret                                           ; $4B4A: $C9


    nop                                           ; $4B4B: $00
    nop                                           ; $4B4C: $00
    nop                                           ; $4B4D: $00
    nop                                           ; $4B4E: $00
    nop                                           ; $4B4F: $00
    inc bc                                        ; $4B50: $03
    nop                                           ; $4B51: $00
    nop                                           ; $4B52: $00
    rlca                                          ; $4B53: $07
    ld a, b                                       ; $4B54: $78
    nop                                           ; $4B55: $00
    nop                                           ; $4B56: $00
    dec b                                         ; $4B57: $05
    add b                                         ; $4B58: $80
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    ld [bc], a                                    ; $4B5B: $02
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    ld bc, $4B55                                  ; $4B5E: $01 $55 $4B
    ld bc, $7001                                  ; $4B61: $01 $01 $70
    inc [hl]                                      ; $4B64: $34
    db $10                                        ; $4B65: $10
    ld c, [hl]                                    ; $4B66: $4E
    add h                                         ; $4B67: $84
    ld de, $855A                                  ; $4B68: $11 $5A $85
    ld de, $4D86                                  ; $4B6B: $11 $86 $4D
    ld bc, $0075                                  ; $4B6E: $01 $75 $00
    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    ld bc, $7601                                  ; $4B73: $01 $01 $76
    ld l, [hl]                                    ; $4B76: $6E
    nop                                           ; $4B77: $00
    scf                                           ; $4B78: $37
    ld l, d                                       ; $4B79: $6A
    nop                                           ; $4B7A: $00
    ld c, l                                       ; $4B7B: $4D
    ld h, h                                       ; $4B7C: $64
    nop                                           ; $4B7D: $00
    ret                                           ; $4B7E: $C9


    nop                                           ; $4B7F: $00
    nop                                           ; $4B80: $00
    nop                                           ; $4B81: $00
    nop                                           ; $4B82: $00
    nop                                           ; $4B83: $00
    inc bc                                        ; $4B84: $03
    ld bc, $5D00                                  ; $4B85: $01 $00 $5D
    inc a                                         ; $4B88: $3C
    nop                                           ; $4B89: $00
    ret z                                         ; $4B8A: $C8

    add hl, hl                                    ; $4B8B: $29

jr_03A_4B8C:
    ld [de], a                                    ; $4B8C: $12
    add hl, de                                    ; $4B8D: $19
    inc e                                         ; $4B8E: $1C
    jr nz, jr_03A_4BDA                            ; $4B8F: $20 $49

    xor l                                         ; $4B91: $AD
    db $10                                        ; $4B92: $10
    dec hl                                        ; $4B93: $2B
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00
    ld bc, $3600                                  ; $4B97: $01 $00 $36
    add l                                         ; $4B9A: $85
    db $10                                        ; $4B9B: $10
    ld h, h                                       ; $4B9C: $64
    ret                                           ; $4B9D: $C9


    nop                                           ; $4B9E: $00
    ld bc, $0000                                  ; $4B9F: $01 $00 $00
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    nop                                           ; $4BA4: $00
    inc bc                                        ; $4BA5: $03
    ld bc, $E100                                  ; $4BA6: $01 $00 $E1
    ld c, l                                       ; $4BA9: $4D
    nop                                           ; $4BAA: $00
    jp c, Jump_000_016E                           ; $4BAB: $DA $6E $01

    add a                                         ; $4BAE: $87
    scf                                           ; $4BAF: $37
    nop                                           ; $4BB0: $00
    ld b, e                                       ; $4BB1: $43
    nop                                           ; $4BB2: $00
    nop                                           ; $4BB3: $00
    nop                                           ; $4BB4: $00
    ld bc, $8901                                  ; $4BB5: $01 $01 $89
    ld c, d                                       ; $4BB8: $4A
    ld bc, $2D7B                                  ; $4BB9: $01 $7B $2D
    nop                                           ; $4BBC: $00
    ld c, l                                       ; $4BBD: $4D
    ld h, h                                       ; $4BBE: $64
    nop                                           ; $4BBF: $00
    ret                                           ; $4BC0: $C9


    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    nop                                           ; $4BC4: $00
    nop                                           ; $4BC5: $00
    inc b                                         ; $4BC6: $04
    add hl, bc                                    ; $4BC7: $09
    nop                                           ; $4BC8: $00
    nop                                           ; $4BC9: $00
    inc bc                                        ; $4BCA: $03
    nop                                           ; $4BCB: $00
    nop                                           ; $4BCC: $00
    rlca                                          ; $4BCD: $07
    inc a                                         ; $4BCE: $3C
    nop                                           ; $4BCF: $00
    nop                                           ; $4BD0: $00
    inc b                                         ; $4BD1: $04
    ld [de], a                                    ; $4BD2: $12
    ld bc, $E100                                  ; $4BD3: $01 $00 $E1
    ld c, l                                       ; $4BD6: $4D
    nop                                           ; $4BD7: $00
    sbc $6E                                       ; $4BD8: $DE $6E

jr_03A_4BDA:
    ld bc, $3787                                  ; $4BDA: $01 $87 $37
    nop                                           ; $4BDD: $00
    ld b, e                                       ; $4BDE: $43
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    ld bc, $4B01                                  ; $4BE2: $01 $01 $4B
    ld c, d                                       ; $4BE5: $4A
    ld bc, $2D7B                                  ; $4BE6: $01 $7B $2D
    nop                                           ; $4BE9: $00
    ld l, l                                       ; $4BEA: $6D
    ret                                           ; $4BEB: $C9


    nop                                           ; $4BEC: $00
    ld bc, $0000                                  ; $4BED: $01 $00 $00
    nop                                           ; $4BF0: $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    inc b                                         ; $4BF3: $04
    ld a, [bc]                                    ; $4BF4: $0A
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    inc bc                                        ; $4BF7: $03
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    rlca                                          ; $4BFA: $07
    inc a                                         ; $4BFB: $3C
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    inc b                                         ; $4BFE: $04
    ld [de], a                                    ; $4BFF: $12
    ld bc, $E100                                  ; $4C00: $01 $00 $E1
    ld c, l                                       ; $4C03: $4D
    nop                                           ; $4C04: $00
    call c, Call_000_016E                         ; $4C05: $DC $6E $01
    add a                                         ; $4C08: $87
    scf                                           ; $4C09: $37
    nop                                           ; $4C0A: $00
    ld b, e                                       ; $4C0B: $43
    nop                                           ; $4C0C: $00
    nop                                           ; $4C0D: $00
    nop                                           ; $4C0E: $00
    ld bc, $3600                                  ; $4C0F: $01 $00 $36
    ld h, l                                       ; $4C12: $65
    nop                                           ; $4C13: $00
    jr nc, jr_03A_4C75                            ; $4C14: $30 $5F

    nop                                           ; $4C16: $00
    ld c, l                                       ; $4C17: $4D
    ld h, h                                       ; $4C18: $64
    nop                                           ; $4C19: $00
    ret                                           ; $4C1A: $C9


    nop                                           ; $4C1B: $00
    nop                                           ; $4C1C: $00
    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    inc b                                         ; $4C20: $04
    dec bc                                        ; $4C21: $0B
    nop                                           ; $4C22: $00
    nop                                           ; $4C23: $00
    inc bc                                        ; $4C24: $03
    nop                                           ; $4C25: $00
    nop                                           ; $4C26: $00
    rlca                                          ; $4C27: $07
    inc a                                         ; $4C28: $3C
    ld bc, $E100                                  ; $4C29: $01 $00 $E1
    ld c, l                                       ; $4C2C: $4D
    nop                                           ; $4C2D: $00
    ret c                                         ; $4C2E: $D8

    ld l, [hl]                                    ; $4C2F: $6E
    ld bc, $3787                                  ; $4C30: $01 $87 $37
    nop                                           ; $4C33: $00
    ld b, e                                       ; $4C34: $43
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00
    ld bc, $8D00                                  ; $4C38: $01 $00 $8D
    or a                                          ; $4C3B: $B7
    nop                                           ; $4C3C: $00
    pop bc                                        ; $4C3D: $C1
    xor h                                         ; $4C3E: $AC
    nop                                           ; $4C3F: $00
    ld h, h                                       ; $4C40: $64
    ret                                           ; $4C41: $C9


    nop                                           ; $4C42: $00
    ld bc, $0000                                  ; $4C43: $01 $00 $00
    nop                                           ; $4C46: $00
    nop                                           ; $4C47: $00
    nop                                           ; $4C48: $00
    inc b                                         ; $4C49: $04
    ld de, $0000                                  ; $4C4A: $11 $00 $00
    inc bc                                        ; $4C4D: $03
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    rlca                                          ; $4C50: $07
    inc a                                         ; $4C51: $3C
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    inc b                                         ; $4C54: $04
    ld [de], a                                    ; $4C55: $12
    ld bc, $E300                                  ; $4C56: $01 $00 $E3
    ld l, [hl]                                    ; $4C59: $6E
    ld bc, $3787                                  ; $4C5A: $01 $87 $37
    nop                                           ; $4C5D: $00
    ld b, e                                       ; $4C5E: $43
    ret z                                         ; $4C5F: $C8

    nop                                           ; $4C60: $00
    xor d                                         ; $4C61: $AA
    pop bc                                        ; $4C62: $C1
    nop                                           ; $4C63: $00
    sub d                                         ; $4C64: $92
    nop                                           ; $4C65: $00
    nop                                           ; $4C66: $00
    nop                                           ; $4C67: $00
    ld bc, $4700                                  ; $4C68: $01 $00 $47
    adc l                                         ; $4C6B: $8D
    ld de, $648B                                  ; $4C6C: $11 $8B $64
    nop                                           ; $4C6F: $00
    ret                                           ; $4C70: $C9


    nop                                           ; $4C71: $00
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00

jr_03A_4C75:
    nop                                           ; $4C75: $00
    inc b                                         ; $4C76: $04
    inc c                                         ; $4C77: $0C
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    inc bc                                        ; $4C7A: $03
    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    rlca                                          ; $4C7D: $07
    inc a                                         ; $4C7E: $3C
    nop                                           ; $4C7F: $00
    nop                                           ; $4C80: $00
    inc b                                         ; $4C81: $04
    ld [de], a                                    ; $4C82: $12
    ld bc, $E200                                  ; $4C83: $01 $00 $E2
    ld l, [hl]                                    ; $4C86: $6E
    ld bc, $3787                                  ; $4C87: $01 $87 $37
    nop                                           ; $4C8A: $00
    ld b, e                                       ; $4C8B: $43
    ret z                                         ; $4C8C: $C8

    nop                                           ; $4C8D: $00
    ld a, [hl]                                    ; $4C8E: $7E
    jp nz, Jump_03A_7F00                          ; $4C8F: $C2 $00 $7F

    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
    ld bc, $4700                                  ; $4C95: $01 $00 $47
    adc l                                         ; $4C98: $8D
    ld de, $648B                                  ; $4C99: $11 $8B $64
    nop                                           ; $4C9C: $00
    ret                                           ; $4C9D: $C9


    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    nop                                           ; $4CA0: $00
    nop                                           ; $4CA1: $00
    nop                                           ; $4CA2: $00
    inc b                                         ; $4CA3: $04
    dec c                                         ; $4CA4: $0D
    nop                                           ; $4CA5: $00
    nop                                           ; $4CA6: $00
    inc bc                                        ; $4CA7: $03
    nop                                           ; $4CA8: $00
    nop                                           ; $4CA9: $00
    rlca                                          ; $4CAA: $07
    inc a                                         ; $4CAB: $3C
    nop                                           ; $4CAC: $00
    nop                                           ; $4CAD: $00
    inc b                                         ; $4CAE: $04
    ld [de], a                                    ; $4CAF: $12
    ld bc, $8D00                                  ; $4CB0: $01 $00 $8D
    or a                                          ; $4CB3: $B7
    nop                                           ; $4CB4: $00
    pop bc                                        ; $4CB5: $C1
    xor h                                         ; $4CB6: $AC
    nop                                           ; $4CB7: $00
    ld h, d                                       ; $4CB8: $62
    ld bc, $3600                                  ; $4CB9: $01 $00 $36
    ld h, l                                       ; $4CBC: $65
    nop                                           ; $4CBD: $00
    jr nc, jr_03A_4CC0                            ; $4CBE: $30 $00

jr_03A_4CC0:
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    ld bc, $5E00                                  ; $4CC2: $01 $00 $5E
    ld h, c                                       ; $4CC5: $61
    nop                                           ; $4CC6: $00
    ld bc, $1090                                  ; $4CC7: $01 $90 $10
    dec sp                                        ; $4CCA: $3B
    ld h, h                                       ; $4CCB: $64
    nop                                           ; $4CCC: $00
    ret                                           ; $4CCD: $C9


    nop                                           ; $4CCE: $00
    nop                                           ; $4CCF: $00
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    inc b                                         ; $4CD3: $04
    rrca                                          ; $4CD4: $0F
    nop                                           ; $4CD5: $00
    nop                                           ; $4CD6: $00
    inc bc                                        ; $4CD7: $03
    nop                                           ; $4CD8: $00
    nop                                           ; $4CD9: $00
    rlca                                          ; $4CDA: $07
    ld a, b                                       ; $4CDB: $78
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    inc b                                         ; $4CDE: $04
    stop                                          ; $4CDF: $10 $00
    nop                                           ; $4CE1: $00
    rlca                                          ; $4CE2: $07
    ld a, b                                       ; $4CE3: $78
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    inc b                                         ; $4CE6: $04
    ld [de], a                                    ; $4CE7: $12
    nop                                           ; $4CE8: $00
    nop                                           ; $4CE9: $00
    nop                                           ; $4CEA: $00
    ld bc, $3500                                  ; $4CEB: $01 $00 $35
    ld l, b                                       ; $4CEE: $68
    nop                                           ; $4CEF: $00
    ld c, d                                       ; $4CF0: $4A
    ldh [rP1], a                                  ; $4CF1: $E0 $00
    ld bc, $0000                                  ; $4CF3: $01 $00 $00
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    nop                                           ; $4CF8: $00
    inc bc                                        ; $4CF9: $03
    ld bc, $E200                                  ; $4CFA: $01 $00 $E2
    dec hl                                        ; $4CFD: $2B
    nop                                           ; $4CFE: $00
    db $E3                                        ; $4CFF: $E3

Jump_03A_4D00:
    ld l, [hl]                                    ; $4D00: $6E
    ld bc, $2D8F                                  ; $4D01: $01 $8F $2D
    ld bc, $3787                                  ; $4D04: $01 $87 $37
    nop                                           ; $4D07: $00
    ld b, e                                       ; $4D08: $43
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    nop                                           ; $4D0B: $00
    ld bc, $2601                                  ; $4D0C: $01 $01 $26
    daa                                           ; $4D0F: $27
    ld bc, $8B8D                                  ; $4D10: $01 $8D $8B
    db $10                                        ; $4D13: $10
    ld c, c                                       ; $4D14: $49
    ld c, l                                       ; $4D15: $4D
    nop                                           ; $4D16: $00
    ld h, h                                       ; $4D17: $64
    ret                                           ; $4D18: $C9


    nop                                           ; $4D19: $00
    ld bc, $0000                                  ; $4D1A: $01 $00 $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    inc b                                         ; $4D20: $04
    ld c, $00                                     ; $4D21: $0E $00
    nop                                           ; $4D23: $00
    inc bc                                        ; $4D24: $03
    nop                                           ; $4D25: $00
    nop                                           ; $4D26: $00
    rlca                                          ; $4D27: $07
    inc a                                         ; $4D28: $3C
    ld bc, $8E01                                  ; $4D29: $01 $01 $8E
    rlca                                          ; $4D2C: $07
    db $10                                        ; $4D2D: $10
    ld c, l                                       ; $4D2E: $4D
    dec e                                         ; $4D2F: $1D
    jr nz, jr_03A_4D5F                            ; $4D30: $20 $2D

    ld b, a                                       ; $4D32: $47
    nop                                           ; $4D33: $00
    pop hl                                        ; $4D34: $E1
    jp c, Jump_03A_4300                           ; $4D35: $DA $00 $43

    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    nop                                           ; $4D3A: $00
    ld bc, $E300                                  ; $4D3B: $01 $00 $E3
    ld l, [hl]                                    ; $4D3E: $6E
    ld bc, $2D8F                                  ; $4D3F: $01 $8F $2D
    ld bc, $3787                                  ; $4D42: $01 $87 $37
    nop                                           ; $4D45: $00
    ld b, e                                       ; $4D46: $43
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    ld bc, $1B02                                  ; $4D4A: $01 $02 $1B
    inc sp                                        ; $4D4D: $33
    ld bc, $6442                                  ; $4D4E: $01 $42 $64
    nop                                           ; $4D51: $00
    ret                                           ; $4D52: $C9


    nop                                           ; $4D53: $00
    nop                                           ; $4D54: $00
    nop                                           ; $4D55: $00
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    inc b                                         ; $4D58: $04
    ld c, $00                                     ; $4D59: $0E $00
    nop                                           ; $4D5B: $00
    inc bc                                        ; $4D5C: $03
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00

jr_03A_4D5F:
    rlca                                          ; $4D5F: $07
    inc a                                         ; $4D60: $3C
    nop                                           ; $4D61: $00
    nop                                           ; $4D62: $00
    inc b                                         ; $4D63: $04
    ld [de], a                                    ; $4D64: $12
    nop                                           ; $4D65: $00
    nop                                           ; $4D66: $00
    nop                                           ; $4D67: $00
    ld bc, $3900                                  ; $4D68: $01 $00 $39
    ld [hl], $00                                  ; $4D6B: $36 $00
    ld b, d                                       ; $4D6D: $42
    ldh [rP1], a                                  ; $4D6E: $E0 $00
    ld bc, $0000                                  ; $4D70: $01 $00 $00
    nop                                           ; $4D73: $00
    nop                                           ; $4D74: $00
    nop                                           ; $4D75: $00
    inc bc                                        ; $4D76: $03
    ld bc, $D300                                  ; $4D77: $01 $00 $D3
    call nc, $D500                                ; $4D7A: $D4 $00 $D5
    ld l, [hl]                                    ; $4D7D: $6E
    ld bc, $3787                                  ; $4D7E: $01 $87 $37
    nop                                           ; $4D81: $00
    ld b, e                                       ; $4D82: $43
    nop                                           ; $4D83: $00
    nop                                           ; $4D84: $00
    nop                                           ; $4D85: $00
    ld bc, $5201                                  ; $4D86: $01 $01 $52
    ld d, e                                       ; $4D89: $53
    db $10                                        ; $4D8A: $10
    scf                                           ; $4D8B: $37
    ld l, d                                       ; $4D8C: $6A
    nop                                           ; $4D8D: $00
    ld c, l                                       ; $4D8E: $4D
    ld h, h                                       ; $4D8F: $64
    nop                                           ; $4D90: $00
    rlc b                                         ; $4D91: $CB $00
    nop                                           ; $4D93: $00
    nop                                           ; $4D94: $00
    nop                                           ; $4D95: $00
    nop                                           ; $4D96: $00
    inc b                                         ; $4D97: $04
    inc de                                        ; $4D98: $13
    nop                                           ; $4D99: $00
    nop                                           ; $4D9A: $00
    dec b                                         ; $4D9B: $05
    ld [bc], a                                    ; $4D9C: $02
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    rlca                                          ; $4D9F: $07
    ld e, $00                                     ; $4DA0: $1E $00
    nop                                           ; $4DA2: $00
    inc b                                         ; $4DA3: $04
    inc d                                         ; $4DA4: $14
    nop                                           ; $4DA5: $00
    nop                                           ; $4DA6: $00
    ld b, $FD                                     ; $4DA7: $06 $FD
    nop                                           ; $4DA9: $00
    nop                                           ; $4DAA: $00
    inc bc                                        ; $4DAB: $03
    nop                                           ; $4DAC: $00
    nop                                           ; $4DAD: $00
    nop                                           ; $4DAE: $00
    ld bc, $6D00                                  ; $4DAF: $01 $00 $6D
    dec hl                                        ; $4DB2: $2B
    nop                                           ; $4DB3: $00
    ld [hl], b                                    ; $4DB4: $70
    ccf                                           ; $4DB5: $3F
    nop                                           ; $4DB6: $00
    dec hl                                        ; $4DB7: $2B
    ld [hl], $00                                  ; $4DB8: $36 $00
    ld l, b                                       ; $4DBA: $68
    call z, Boot                                  ; $4DBB: $CC $00 $01
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    nop                                           ; $4DC2: $00
    inc bc                                        ; $4DC3: $03
    ld bc, $9101                                  ; $4DC4: $01 $01 $91
    ld c, [hl]                                    ; $4DC7: $4E
    nop                                           ; $4DC8: $00
    ld bc, $0061                                  ; $4DC9: $01 $61 $00
    ld [hl], b                                    ; $4DCC: $70
    ld b, e                                       ; $4DCD: $43
    nop                                           ; $4DCE: $00
    daa                                           ; $4DCF: $27
    ld l, h                                       ; $4DD0: $6C
    nop                                           ; $4DD1: $00
    daa                                           ; $4DD2: $27
    nop                                           ; $4DD3: $00
    nop                                           ; $4DD4: $00
    nop                                           ; $4DD5: $00
    ld bc, $6C00                                  ; $4DD6: $01 $00 $6C
    sub d                                         ; $4DD9: $92
    db $10                                        ; $4DDA: $10
    add hl, hl                                    ; $4DDB: $29
    ld b, d                                       ; $4DDC: $42
    nop                                           ; $4DDD: $00
    ld h, $33                                     ; $4DDE: $26 $33
    nop                                           ; $4DE0: $00
    ld l, d                                       ; $4DE1: $6A
    ld l, l                                       ; $4DE2: $6D
    nop                                           ; $4DE3: $00
    ret                                           ; $4DE4: $C9


    nop                                           ; $4DE5: $00
    nop                                           ; $4DE6: $00
    nop                                           ; $4DE7: $00
    nop                                           ; $4DE8: $00
    nop                                           ; $4DE9: $00
    inc bc                                        ; $4DEA: $03
    ld bc, $5D00                                  ; $4DEB: $01 $00 $5D
    ccf                                           ; $4DEE: $3F
    nop                                           ; $4DEF: $00
    ld c, h                                       ; $4DF0: $4C
    ret                                           ; $4DF1: $C9


    nop                                           ; $4DF2: $00
    ld bc, $0000                                  ; $4DF3: $01 $00 $00
    nop                                           ; $4DF6: $00
    ld bc, $3500                                  ; $4DF7: $01 $00 $35
    ld h, h                                       ; $4DFA: $64
    nop                                           ; $4DFB: $00
    jr z, @+$4B                                   ; $4DFC: $28 $49

    nop                                           ; $4DFE: $00
    ld l, b                                       ; $4DFF: $68
    ld [hl], c                                    ; $4E00: $71
    nop                                           ; $4E01: $00
    ld [hl], a                                    ; $4E02: $77
    ld [hl], a                                    ; $4E03: $77
    nop                                           ; $4E04: $00
    ret                                           ; $4E05: $C9


    nop                                           ; $4E06: $00
    nop                                           ; $4E07: $00
    nop                                           ; $4E08: $00
    nop                                           ; $4E09: $00
    nop                                           ; $4E0A: $00
    inc bc                                        ; $4E0B: $03
    nop                                           ; $4E0C: $00
    nop                                           ; $4E0D: $00
    rlca                                          ; $4E0E: $07
    ld a, b                                       ; $4E0F: $78
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    dec b                                         ; $4E12: $05
    add b                                         ; $4E13: $80
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    ld [bc], a                                    ; $4E16: $02
    nop                                           ; $4E17: $00
    nop                                           ; $4E18: $00
    ld bc, $4E10                                  ; $4E19: $01 $10 $4E
    ld bc, $2F00                                  ; $4E1C: $01 $00 $2F
    ld l, a                                       ; $4E1F: $6F
    nop                                           ; $4E20: $00
    dec hl                                        ; $4E21: $2B
    daa                                           ; $4E22: $27
    nop                                           ; $4E23: $00
    ld c, [hl]                                    ; $4E24: $4E
    ld bc, $4F00                                  ; $4E25: $01 $00 $4F
    ld [hl], b                                    ; $4E28: $70
    nop                                           ; $4E29: $00
    dec [hl]                                      ; $4E2A: $35
    nop                                           ; $4E2B: $00
    nop                                           ; $4E2C: $00
    nop                                           ; $4E2D: $00
    ld bc, $4100                                  ; $4E2E: $01 $00 $41
    ld l, l                                       ; $4E31: $6D
    nop                                           ; $4E32: $00
    ld a, [hl-]                                   ; $4E33: $3A
    ld c, l                                       ; $4E34: $4D
    nop                                           ; $4E35: $00
    ld bc, $0038                                  ; $4E36: $01 $38 $00
    ld b, c                                       ; $4E39: $41
    ld h, b                                       ; $4E3A: $60
    nop                                           ; $4E3B: $00
    daa                                           ; $4E3C: $27
    nop                                           ; $4E3D: $00
    nop                                           ; $4E3E: $00
    nop                                           ; $4E3F: $00
    ld bc, $6400                                  ; $4E40: $01 $00 $64
    ret                                           ; $4E43: $C9


    nop                                           ; $4E44: $00
    ld bc, $0000                                  ; $4E45: $01 $00 $00
    nop                                           ; $4E48: $00
    nop                                           ; $4E49: $00
    nop                                           ; $4E4A: $00
    inc bc                                        ; $4E4B: $03
    ld bc, $4F00                                  ; $4E4C: $01 $00 $4F
    ld [hl], b                                    ; $4E4F: $70
    nop                                           ; $4E50: $00
    dec [hl]                                      ; $4E51: $35
    ld b, c                                       ; $4E52: $41
    nop                                           ; $4E53: $00
    ld l, l                                       ; $4E54: $6D
    ld a, [hl-]                                   ; $4E55: $3A
    nop                                           ; $4E56: $00
    ld c, [hl]                                    ; $4E57: $4E
    ld bc, $8100                                  ; $4E58: $01 $00 $81
    nop                                           ; $4E5B: $00
    nop                                           ; $4E5C: $00
    nop                                           ; $4E5D: $00
    ld bc, $AF00                                  ; $4E5E: $01 $00 $AF
    pop bc                                        ; $4E61: $C1
    nop                                           ; $4E62: $00
    sbc d                                         ; $4E63: $9A
    ld b, a                                       ; $4E64: $47
    nop                                           ; $4E65: $00
    ld b, a                                       ; $4E66: $47
    ld l, d                                       ; $4E67: $6A
    nop                                           ; $4E68: $00
    ld bc, $0041                                  ; $4E69: $01 $41 $00
    ld h, h                                       ; $4E6C: $64
    nop                                           ; $4E6D: $00
    nop                                           ; $4E6E: $00
    nop                                           ; $4E6F: $00
    ld bc, $2700                                  ; $4E70: $01 $00 $27
    ld l, l                                       ; $4E73: $6D
    nop                                           ; $4E74: $00
    ld a, [hl-]                                   ; $4E75: $3A
    ld h, h                                       ; $4E76: $64
    nop                                           ; $4E77: $00
    ret                                           ; $4E78: $C9


    nop                                           ; $4E79: $00
    nop                                           ; $4E7A: $00
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    inc bc                                        ; $4E7E: $03
    ld bc, $3F00                                  ; $4E7F: $01 $00 $3F
    ld b, e                                       ; $4E82: $43
    nop                                           ; $4E83: $00
    add hl, hl                                    ; $4E84: $29
    ld d, e                                       ; $4E85: $53
    nop                                           ; $4E86: $00
    ld bc, $00BA                                  ; $4E87: $01 $BA $00
    ld a, c                                       ; $4E8A: $79
    ld a, h                                       ; $4E8B: $7C
    nop                                           ; $4E8C: $00
    add c                                         ; $4E8D: $81
    nop                                           ; $4E8E: $00
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    ld bc, $C100                                  ; $4E91: $01 $00 $C1
    xor c                                         ; $4E94: $A9
    nop                                           ; $4E95: $00
    ld a, c                                       ; $4E96: $79
    ld c, l                                       ; $4E97: $4D
    nop                                           ; $4E98: $00
    ld d, e                                       ; $4E99: $53
    ld h, $00                                     ; $4E9A: $26 $00
    daa                                           ; $4E9C: $27
    ldh [rP1], a                                  ; $4E9D: $E0 $00
    ld bc, $0000                                  ; $4E9F: $01 $00 $00
    nop                                           ; $4EA2: $00
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    inc bc                                        ; $4EA5: $03
    ld bc, $E100                                  ; $4EA6: $01 $00 $E1
    ld l, [hl]                                    ; $4EA9: $6E
    nop                                           ; $4EAA: $00
    call c, Call_000_00DE                         ; $4EAB: $DC $DE $00
    ld b, e                                       ; $4EAE: $43
    ld bc, $2A00                                  ; $4EAF: $01 $00 $2A
    ld [hl], $00                                  ; $4EB2: $36 $00
    ld b, d                                       ; $4EB4: $42
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    ld bc, $E300                                  ; $4EB8: $01 $00 $E3
    ld l, [hl]                                    ; $4EBB: $6E
    nop                                           ; $4EBC: $00
    ld a, [hl+]                                   ; $4EBD: $2A
    scf                                           ; $4EBE: $37
    nop                                           ; $4EBF: $00
    ld c, l                                       ; $4EC0: $4D
    ld h, h                                       ; $4EC1: $64
    nop                                           ; $4EC2: $00
    ret                                           ; $4EC3: $C9


    nop                                           ; $4EC4: $00
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    nop                                           ; $4EC7: $00
    nop                                           ; $4EC8: $00
    inc b                                         ; $4EC9: $04
    ld a, [de]                                    ; $4ECA: $1A
    nop                                           ; $4ECB: $00
    nop                                           ; $4ECC: $00
    inc bc                                        ; $4ECD: $03
    ld bc, $5200                                  ; $4ECE: $01 $00 $52
    ld l, b                                       ; $4ED1: $68
    nop                                           ; $4ED2: $00
    ld bc, $00D0                                  ; $4ED3: $01 $D0 $00
    cp d                                          ; $4ED6: $BA
    ld a, c                                       ; $4ED7: $79
    nop                                           ; $4ED8: $00
    ld a, h                                       ; $4ED9: $7C
    sub l                                         ; $4EDA: $95
    nop                                           ; $4EDB: $00
    push bc                                       ; $4EDC: $C5
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    ld bc, $7600                                  ; $4EE0: $01 $00 $76
    adc c                                         ; $4EE3: $89
    nop                                           ; $4EE4: $00
    pop de                                        ; $4EE5: $D1
    ld bc, $3000                                  ; $4EE6: $01 $00 $30
    ld b, a                                       ; $4EE9: $47
    nop                                           ; $4EEA: $00
    ccf                                           ; $4EEB: $3F
    ld l, l                                       ; $4EEC: $6D
    nop                                           ; $4EED: $00
    rlc b                                         ; $4EEE: $CB $00
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    nop                                           ; $4EF3: $00
    inc bc                                        ; $4EF4: $03
    ld bc, $2800                                  ; $4EF5: $01 $00 $28
    ld e, l                                       ; $4EF8: $5D
    nop                                           ; $4EF9: $00
    dec l                                         ; $4EFA: $2D
    ld b, h                                       ; $4EFB: $44
    nop                                           ; $4EFC: $00
    scf                                           ; $4EFD: $37
    add c                                         ; $4EFE: $81
    nop                                           ; $4EFF: $00
    sub e                                         ; $4F00: $93
    ld c, [hl]                                    ; $4F01: $4E
    nop                                           ; $4F02: $00
    ld bc, $0000                                  ; $4F03: $01 $00 $00
    nop                                           ; $4F06: $00
    ld bc, $3500                                  ; $4F07: $01 $00 $35
    daa                                           ; $4F0A: $27
    nop                                           ; $4F0B: $00
    inc [hl]                                      ; $4F0C: $34
    ld e, l                                       ; $4F0D: $5D
    nop                                           ; $4F0E: $00
    ld b, a                                       ; $4F0F: $47
    ld bc, $E100                                  ; $4F10: $01 $00 $E1
    ld l, [hl]                                    ; $4F13: $6E
    nop                                           ; $4F14: $00
    ld bc, $0000                                  ; $4F15: $01 $00 $00
    nop                                           ; $4F18: $00
    ld bc, $2A00                                  ; $4F19: $01 $00 $2A
    ld [hl], $00                                  ; $4F1C: $36 $00
    ccf                                           ; $4F1E: $3F
    ld e, l                                       ; $4F1F: $5D
    nop                                           ; $4F20: $00
    ld e, l                                       ; $4F21: $5D
    ld b, a                                       ; $4F22: $47
    nop                                           ; $4F23: $00
    ldh [rP1], a                                  ; $4F24: $E0 $00
    nop                                           ; $4F26: $00
    nop                                           ; $4F27: $00
    nop                                           ; $4F28: $00
    nop                                           ; $4F29: $00
    inc bc                                        ; $4F2A: $03
    ld bc, $0100                                  ; $4F2B: $01 $00 $01
    db $E3                                        ; $4F2E: $E3
    nop                                           ; $4F2F: $00
    ld l, [hl]                                    ; $4F30: $6E
    ld bc, $2A00                                  ; $4F31: $01 $00 $2A
    scf                                           ; $4F34: $37
    nop                                           ; $4F35: $00
    ld c, l                                       ; $4F36: $4D
    ld h, h                                       ; $4F37: $64
    nop                                           ; $4F38: $00
    ret                                           ; $4F39: $C9


    nop                                           ; $4F3A: $00
    nop                                           ; $4F3B: $00
    nop                                           ; $4F3C: $00
    ld bc, $E100                                  ; $4F3D: $01 $00 $E1
    dec hl                                        ; $4F40: $2B
    nop                                           ; $4F41: $00
    ld l, b                                       ; $4F42: $68
    ld bc, $6300                                  ; $4F43: $01 $00 $63
    ld d, h                                       ; $4F46: $54
    nop                                           ; $4F47: $00
    ld l, [hl]                                    ; $4F48: $6E
    nop                                           ; $4F49: $00
    nop                                           ; $4F4A: $00
    nop                                           ; $4F4B: $00
    ld bc, $4E00                                  ; $4F4C: $01 $00 $4E
    ld c, c                                       ; $4F4F: $49
    nop                                           ; $4F50: $00
    ld [hl], $40                                  ; $4F51: $36 $40
    nop                                           ; $4F53: $00
    ld h, l                                       ; $4F54: $65
    sub [hl]                                      ; $4F55: $96
    nop                                           ; $4F56: $00
    or d                                          ; $4F57: $B2
    ld h, h                                       ; $4F58: $64
    nop                                           ; $4F59: $00
    ret                                           ; $4F5A: $C9


    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    inc bc                                        ; $4F60: $03
    nop                                           ; $4F61: $00
    nop                                           ; $4F62: $00
    inc b                                         ; $4F63: $04
    ld [de], a                                    ; $4F64: $12
    ld bc, $4F00                                  ; $4F65: $01 $00 $4F
    ld b, h                                       ; $4F68: $44
    nop                                           ; $4F69: $00
    ld l, c                                       ; $4F6A: $69
    ld e, a                                       ; $4F6B: $5F
    nop                                           ; $4F6C: $00
    inc l                                         ; $4F6D: $2C
    ld c, l                                       ; $4F6E: $4D
    nop                                           ; $4F6F: $00
    ld d, e                                       ; $4F70: $53
    ld h, $00                                     ; $4F71: $26 $00
    daa                                           ; $4F73: $27
    nop                                           ; $4F74: $00
    nop                                           ; $4F75: $00
    nop                                           ; $4F76: $00
    ld bc, $8100                                  ; $4F77: $01 $00 $81
    xor a                                         ; $4F7A: $AF
    nop                                           ; $4F7B: $00
    pop bc                                        ; $4F7C: $C1
    sbc d                                         ; $4F7D: $9A
    nop                                           ; $4F7E: $00
    ld c, [hl]                                    ; $4F7F: $4E
    ld bc, $3500                                  ; $4F80: $01 $00 $35
    ld h, e                                       ; $4F83: $63
    nop                                           ; $4F84: $00
    jr z, jr_03A_4F87                             ; $4F85: $28 $00

jr_03A_4F87:
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    ld bc, $3100                                  ; $4F89: $01 $00 $31
    ld h, l                                       ; $4F8C: $65
    nop                                           ; $4F8D: $00
    dec l                                         ; $4F8E: $2D
    ld c, d                                       ; $4F8F: $4A
    nop                                           ; $4F90: $00
    ld c, c                                       ; $4F91: $49
    ld l, d                                       ; $4F92: $6A
    nop                                           ; $4F93: $00
    ld c, l                                       ; $4F94: $4D
    ld h, h                                       ; $4F95: $64
    nop                                           ; $4F96: $00
    ret                                           ; $4F97: $C9


    nop                                           ; $4F98: $00
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    inc b                                         ; $4F9D: $04
    dec de                                        ; $4F9E: $1B
    nop                                           ; $4F9F: $00
    nop                                           ; $4FA0: $00
    inc bc                                        ; $4FA1: $03
    ld bc, $2F00                                  ; $4FA2: $01 $00 $2F
    ld c, l                                       ; $4FA5: $4D
    nop                                           ; $4FA6: $00
    ld d, e                                       ; $4FA7: $53
    ld h, $00                                     ; $4FA8: $26 $00
    daa                                           ; $4FAA: $27
    ld bc, $E100                                  ; $4FAB: $01 $00 $E1
    ld l, [hl]                                    ; $4FAE: $6E
    nop                                           ; $4FAF: $00
    ld bc, $0000                                  ; $4FB0: $01 $00 $00
    nop                                           ; $4FB3: $00
    ld bc, $DC00                                  ; $4FB4: $01 $00 $DC
    jp c, Jump_03A_4300                           ; $4FB7: $DA $00 $43

    ld bc, $2A00                                  ; $4FBA: $01 $00 $2A
    ld [hl], $00                                  ; $4FBD: $36 $00
    ld b, d                                       ; $4FBF: $42
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    ld bc, $E300                                  ; $4FC3: $01 $00 $E3
    ld l, [hl]                                    ; $4FC6: $6E
    nop                                           ; $4FC7: $00
    ld a, [hl+]                                   ; $4FC8: $2A
    scf                                           ; $4FC9: $37
    nop                                           ; $4FCA: $00
    ld c, l                                       ; $4FCB: $4D
    ld h, h                                       ; $4FCC: $64
    nop                                           ; $4FCD: $00
    ret                                           ; $4FCE: $C9


    nop                                           ; $4FCF: $00
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    nop                                           ; $4FD2: $00
    nop                                           ; $4FD3: $00
    inc b                                         ; $4FD4: $04
    ld a, [de]                                    ; $4FD5: $1A
    nop                                           ; $4FD6: $00
    nop                                           ; $4FD7: $00
    inc bc                                        ; $4FD8: $03
    nop                                           ; $4FD9: $00
    nop                                           ; $4FDA: $00
    inc b                                         ; $4FDB: $04
    ld [de], a                                    ; $4FDC: $12
    ld bc, $2F00                                  ; $4FDD: $01 $00 $2F
    jr z, jr_03A_4FE2                             ; $4FE0: $28 $00

jr_03A_4FE2:
    daa                                           ; $4FE2: $27
    jr z, jr_03A_4FE5                             ; $4FE3: $28 $00

jr_03A_4FE5:
    add c                                         ; $4FE5: $81
    xor a                                         ; $4FE6: $AF
    nop                                           ; $4FE7: $00
    pop bc                                        ; $4FE8: $C1
    sbc d                                         ; $4FE9: $9A
    nop                                           ; $4FEA: $00
    ld b, a                                       ; $4FEB: $47
    nop                                           ; $4FEC: $00
    nop                                           ; $4FED: $00
    nop                                           ; $4FEE: $00
    ld bc, $4F00                                  ; $4FEF: $01 $00 $4F
    ld [hl], b                                    ; $4FF2: $70
    nop                                           ; $4FF3: $00
    dec [hl]                                      ; $4FF4: $35
    ld b, c                                       ; $4FF5: $41
    nop                                           ; $4FF6: $00
    ld l, l                                       ; $4FF7: $6D
    ld a, [hl-]                                   ; $4FF8: $3A
    nop                                           ; $4FF9: $00
    jr nc, jr_03A_4FFD                            ; $4FFA: $30 $01

    nop                                           ; $4FFC: $00

jr_03A_4FFD:
    ld b, a                                       ; $4FFD: $47
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    nop                                           ; $5000: $00
    ld bc, $6A00                                  ; $5001: $01 $00 $6A
    ld c, l                                       ; $5004: $4D
    nop                                           ; $5005: $00
    ld h, h                                       ; $5006: $64
    ret                                           ; $5007: $C9


    nop                                           ; $5008: $00
    ld bc, $0000                                  ; $5009: $01 $00 $00
    nop                                           ; $500C: $00
    nop                                           ; $500D: $00
    nop                                           ; $500E: $00
    inc b                                         ; $500F: $04
    dec de                                        ; $5010: $1B
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    inc bc                                        ; $5013: $03
    ld bc, $8100                                  ; $5014: $01 $00 $81
    xor a                                         ; $5017: $AF
    nop                                           ; $5018: $00
    pop bc                                        ; $5019: $C1
    sbc d                                         ; $501A: $9A
    nop                                           ; $501B: $00
    ld c, [hl]                                    ; $501C: $4E
    ld bc, $3900                                  ; $501D: $01 $00 $39
    ld l, e                                       ; $5020: $6B
    nop                                           ; $5021: $00
    ld a, $00                                     ; $5022: $3E $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    ld bc, $6B00                                  ; $5026: $01 $00 $6B
    ld bc, $4000                                  ; $5029: $01 $00 $40
    jr nc, jr_03A_502E                            ; $502C: $30 $00

jr_03A_502E:
    jr z, jr_03A_5091                             ; $502E: $28 $61

    nop                                           ; $5030: $00
    ld c, l                                       ; $5031: $4D
    ld l, [hl]                                    ; $5032: $6E
    nop                                           ; $5033: $00
    ld bc, $0000                                  ; $5034: $01 $00 $00
    nop                                           ; $5037: $00
    ld bc, $6100                                  ; $5038: $01 $00 $61
    ld [hl], b                                    ; $503B: $70
    nop                                           ; $503C: $00
    ld b, d                                       ; $503D: $42
    daa                                           ; $503E: $27
    nop                                           ; $503F: $00
    ld l, d                                       ; $5040: $6A
    ld c, l                                       ; $5041: $4D
    nop                                           ; $5042: $00
    ld h, h                                       ; $5043: $64
    ret                                           ; $5044: $C9


    nop                                           ; $5045: $00
    ld bc, $0000                                  ; $5046: $01 $00 $00
    nop                                           ; $5049: $00
    nop                                           ; $504A: $00
    nop                                           ; $504B: $00
    inc bc                                        ; $504C: $03
    ld bc, $2D00                                  ; $504D: $01 $00 $2D
    ld l, l                                       ; $5050: $6D
    nop                                           ; $5051: $00
    ld [hl], $2D                                  ; $5052: $36 $2D
    nop                                           ; $5054: $00
    ld c, [hl]                                    ; $5055: $4E
    ld bc, $AC00                                  ; $5056: $01 $00 $AC
    cp [hl]                                       ; $5059: $BE
    nop                                           ; $505A: $00
    and d                                         ; $505B: $A2
    nop                                           ; $505C: $00
    nop                                           ; $505D: $00
    nop                                           ; $505E: $00
    ld bc, $C400                                  ; $505F: $01 $00 $C4
    halt                                          ; $5062: $76
    nop                                           ; $5063: $00
    cp h                                          ; $5064: $BC
    ld l, [hl]                                    ; $5065: $6E
    nop                                           ; $5066: $00
    ld e, [hl]                                    ; $5067: $5E
    ld b, d                                       ; $5068: $42
    nop                                           ; $5069: $00
    ld c, h                                       ; $506A: $4C
    ret                                           ; $506B: $C9


    nop                                           ; $506C: $00
    ld bc, $0000                                  ; $506D: $01 $00 $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    inc bc                                        ; $5073: $03
    ld bc, $4F00                                  ; $5074: $01 $00 $4F
    ld [hl], b                                    ; $5077: $70
    nop                                           ; $5078: $00
    dec [hl]                                      ; $5079: $35
    ld b, c                                       ; $507A: $41
    nop                                           ; $507B: $00
    ld l, l                                       ; $507C: $6D
    ld a, [hl-]                                   ; $507D: $3A
    nop                                           ; $507E: $00
    ld c, l                                       ; $507F: $4D
    ld bc, $3800                                  ; $5080: $01 $00 $38
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    ld bc, $4100                                  ; $5086: $01 $00 $41
    ld h, b                                       ; $5089: $60
    nop                                           ; $508A: $00
    daa                                           ; $508B: $27
    ld c, [hl]                                    ; $508C: $4E
    nop                                           ; $508D: $00
    ld bc, $002F                                  ; $508E: $01 $2F $00

jr_03A_5091:
    ld l, e                                       ; $5091: $6B
    ld b, a                                       ; $5092: $47
    nop                                           ; $5093: $00
    ld bc, $0000                                  ; $5094: $01 $00 $00
    nop                                           ; $5097: $00
    ld bc, $2A00                                  ; $5098: $01 $00 $2A
    ld [hl], $00                                  ; $509B: $36 $00
    ld e, l                                       ; $509D: $5D
    daa                                           ; $509E: $27
    nop                                           ; $509F: $00
    ret                                           ; $50A0: $C9


    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    nop                                           ; $50A3: $00
    nop                                           ; $50A4: $00
    nop                                           ; $50A5: $00
    inc bc                                        ; $50A6: $03
    nop                                           ; $50A7: $00
    nop                                           ; $50A8: $00
    nop                                           ; $50A9: $00
    ld bc, $3500                                  ; $50AA: $01 $00 $35
    ld h, h                                       ; $50AD: $64
    nop                                           ; $50AE: $00
    ld [hl], a                                    ; $50AF: $77
    ld c, c                                       ; $50B0: $49
    nop                                           ; $50B1: $00
    ld l, b                                       ; $50B2: $68
    ld [hl], c                                    ; $50B3: $71
    nop                                           ; $50B4: $00
    ld [hl], a                                    ; $50B5: $77
    ret                                           ; $50B6: $C9


    nop                                           ; $50B7: $00
    ld bc, $0000                                  ; $50B8: $01 $00 $00
    nop                                           ; $50BB: $00
    nop                                           ; $50BC: $00
    nop                                           ; $50BD: $00
    inc bc                                        ; $50BE: $03
    nop                                           ; $50BF: $00
    nop                                           ; $50C0: $00
    rlca                                          ; $50C1: $07
    ld a, b                                       ; $50C2: $78
    nop                                           ; $50C3: $00
    nop                                           ; $50C4: $00
    dec b                                         ; $50C5: $05
    add b                                         ; $50C6: $80
    nop                                           ; $50C7: $00
    nop                                           ; $50C8: $00
    ld [bc], a                                    ; $50C9: $02
    nop                                           ; $50CA: $00
    nop                                           ; $50CB: $00
    ld bc, $50C3                                  ; $50CC: $01 $C3 $50
    ld bc, $7001                                  ; $50CF: $01 $01 $70
    inc [hl]                                      ; $50D2: $34
    db $10                                        ; $50D3: $10
    ld c, [hl]                                    ; $50D4: $4E
    ld b, b                                       ; $50D5: $40
    ld de, $4241                                  ; $50D6: $11 $41 $42
    db $10                                        ; $50D9: $10
    ld c, l                                       ; $50DA: $4D
    ld [hl], l                                    ; $50DB: $75
    ld de, $0076                                  ; $50DC: $11 $76 $00
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    ld bc, $4900                                  ; $50E1: $01 $00 $49
    ld c, l                                       ; $50E4: $4D
    nop                                           ; $50E5: $00
    ld h, h                                       ; $50E6: $64
    ret                                           ; $50E7: $C9


    nop                                           ; $50E8: $00
    ld bc, $0000                                  ; $50E9: $01 $00 $00
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    inc bc                                        ; $50EF: $03
    ld bc, $4001                                  ; $50F0: $01 $01 $40
    ld b, c                                       ; $50F3: $41
    ld de, $4E42                                  ; $50F4: $11 $42 $4E
    nop                                           ; $50F7: $00
    add c                                         ; $50F8: $81
    xor a                                         ; $50F9: $AF
    nop                                           ; $50FA: $00
    pop bc                                        ; $50FB: $C1
    sbc d                                         ; $50FC: $9A
    nop                                           ; $50FD: $00
    ld b, a                                       ; $50FE: $47
    nop                                           ; $50FF: $00
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    ld bc, $1801                                  ; $5102: $01 $01 $18
    ld l, d                                       ; $5105: $6A
    ld bc, $2726                                  ; $5106: $01 $26 $27
    ld bc, $6442                                  ; $5109: $01 $42 $64
    nop                                           ; $510C: $00
    ret                                           ; $510D: $C9


    nop                                           ; $510E: $00
    nop                                           ; $510F: $00

jr_03A_5110:
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    inc bc                                        ; $5113: $03
    ld bc, $1E02                                  ; $5114: $01 $02 $1E
    add hl, hl                                    ; $5117: $29
    nop                                           ; $5118: $00
    ld d, e                                       ; $5119: $53
    ld bc, $BA00                                  ; $511A: $01 $00 $BA
    ld a, c                                       ; $511D: $79
    nop                                           ; $511E: $00
    ld a, h                                       ; $511F: $7C
    add c                                         ; $5120: $81
    nop                                           ; $5121: $00
    pop bc                                        ; $5122: $C1
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    ld bc, $A900                                  ; $5126: $01 $00 $A9
    ld a, c                                       ; $5129: $79
    nop                                           ; $512A: $00
    ld c, l                                       ; $512B: $4D
    rra                                           ; $512C: $1F
    ld [hl+], a                                   ; $512D: $22
    jr nz, jr_03A_5110                            ; $512E: $20 $E0

    nop                                           ; $5130: $00
    ld bc, $0000                                  ; $5131: $01 $00 $00
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    inc bc                                        ; $5137: $03
    ld bc, $E100                                  ; $5138: $01 $00 $E1
    ld l, [hl]                                    ; $513B: $6E
    nop                                           ; $513C: $00
    call c, Call_000_00DE                         ; $513D: $DC $DE $00
    ld b, e                                       ; $5140: $43
    add a                                         ; $5141: $87
    db $10                                        ; $5142: $10
    ld [hl], $42                                  ; $5143: $36 $42
    nop                                           ; $5145: $00
    ld bc, $0000                                  ; $5146: $01 $00 $00
    nop                                           ; $5149: $00
    ld bc, $E300                                  ; $514A: $01 $00 $E3
    ld l, [hl]                                    ; $514D: $6E
    ld bc, $3787                                  ; $514E: $01 $87 $37
    nop                                           ; $5151: $00
    ld c, l                                       ; $5152: $4D
    ld h, h                                       ; $5153: $64
    nop                                           ; $5154: $00
    ret                                           ; $5155: $C9


    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515A: $00
    inc b                                         ; $515B: $04
    ld a, [de]                                    ; $515C: $1A
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    inc bc                                        ; $515F: $03
    ld bc, $5200                                  ; $5160: $01 $00 $52
    ld l, b                                       ; $5163: $68
    nop                                           ; $5164: $00
    ld bc, $00D0                                  ; $5165: $01 $D0 $00
    cp d                                          ; $5168: $BA
    ld a, c                                       ; $5169: $79
    nop                                           ; $516A: $00
    ld a, h                                       ; $516B: $7C
    sub l                                         ; $516C: $95
    nop                                           ; $516D: $00
    push bc                                       ; $516E: $C5
    nop                                           ; $516F: $00
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    ld bc, $7600                                  ; $5172: $01 $00 $76
    adc c                                         ; $5175: $89
    nop                                           ; $5176: $00
    pop de                                        ; $5177: $D1
    ld bc, $3000                                  ; $5178: $01 $00 $30
    jr jr_03A_518D                                ; $517B: $18 $10

    ccf                                           ; $517D: $3F
    ld l, l                                       ; $517E: $6D
    nop                                           ; $517F: $00
    rlc b                                         ; $5180: $CB $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    inc bc                                        ; $5186: $03
    ld bc, $2800                                  ; $5187: $01 $00 $28
    ld e, l                                       ; $518A: $5D
    nop                                           ; $518B: $00
    dec l                                         ; $518C: $2D

jr_03A_518D:
    jr jr_03A_519F                                ; $518D: $18 $10

    scf                                           ; $518F: $37
    add c                                         ; $5190: $81
    nop                                           ; $5191: $00
    sub e                                         ; $5192: $93
    ld c, [hl]                                    ; $5193: $4E
    nop                                           ; $5194: $00
    ld bc, $0000                                  ; $5195: $01 $00 $00
    nop                                           ; $5198: $00
    ld bc, $4A01                                  ; $5199: $01 $01 $4A
    ld c, e                                       ; $519C: $4B
    db $10                                        ; $519D: $10
    ld e, l                                       ; $519E: $5D

jr_03A_519F:
    ld b, a                                       ; $519F: $47
    nop                                           ; $51A0: $00
    ld bc, $00E1                                  ; $51A1: $01 $E1 $00
    ld l, [hl]                                    ; $51A4: $6E
    nop                                           ; $51A5: $00
    nop                                           ; $51A6: $00
    nop                                           ; $51A7: $00
    ld bc, $8701                                  ; $51A8: $01 $01 $87
    ld [hl], $00                                  ; $51AB: $36 $00
    ccf                                           ; $51AD: $3F
    ld e, l                                       ; $51AE: $5D
    nop                                           ; $51AF: $00
    ld e, l                                       ; $51B0: $5D
    ld b, a                                       ; $51B1: $47
    nop                                           ; $51B2: $00
    ldh [rP1], a                                  ; $51B3: $E0 $00
    nop                                           ; $51B5: $00
    nop                                           ; $51B6: $00
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    inc bc                                        ; $51B9: $03
    ld bc, $0100                                  ; $51BA: $01 $00 $01
    db $E3                                        ; $51BD: $E3
    nop                                           ; $51BE: $00
    ld l, [hl]                                    ; $51BF: $6E
    ld bc, $8701                                  ; $51C0: $01 $01 $87
    scf                                           ; $51C3: $37
    nop                                           ; $51C4: $00
    ld c, l                                       ; $51C5: $4D
    ld h, h                                       ; $51C6: $64
    nop                                           ; $51C7: $00
    ret                                           ; $51C8: $C9


    nop                                           ; $51C9: $00
    nop                                           ; $51CA: $00
    nop                                           ; $51CB: $00
    ld bc, $E100                                  ; $51CC: $01 $00 $E1
    dec hl                                        ; $51CF: $2B
    nop                                           ; $51D0: $00
    ld l, b                                       ; $51D1: $68
    ld bc, $8D02                                  ; $51D2: $01 $02 $8D
    ld l, [hl]                                    ; $51D5: $6E
    nop                                           ; $51D6: $00
    ld c, [hl]                                    ; $51D7: $4E
    ld c, c                                       ; $51D8: $49
    nop                                           ; $51D9: $00
    ld [hl], $00                                  ; $51DA: $36 $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    ld bc, $4000                                  ; $51DE: $01 $00 $40
    ld h, l                                       ; $51E1: $65
    nop                                           ; $51E2: $00
    sub [hl]                                      ; $51E3: $96
    or d                                          ; $51E4: $B2
    nop                                           ; $51E5: $00
    ld h, h                                       ; $51E6: $64
    ret                                           ; $51E7: $C9


    nop                                           ; $51E8: $00
    ld bc, $0000                                  ; $51E9: $01 $00 $00
    nop                                           ; $51EC: $00
    nop                                           ; $51ED: $00
    nop                                           ; $51EE: $00
    inc bc                                        ; $51EF: $03
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    inc b                                         ; $51F2: $04
    ld [de], a                                    ; $51F3: $12
    ld bc, $9601                                  ; $51F4: $01 $01 $96
    sub e                                         ; $51F7: $93
    db $10                                        ; $51F8: $10
    inc l                                         ; $51F9: $2C
    ld c, l                                       ; $51FA: $4D
    ld [bc], a                                    ; $51FB: $02
    rra                                           ; $51FC: $1F
    jr nz, jr_03A_521F                            ; $51FD: $20 $20

    ld bc, $0081                                  ; $51FF: $01 $81 $00
    xor a                                         ; $5202: $AF
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    ld bc, $C100                                  ; $5206: $01 $00 $C1
    sbc d                                         ; $5209: $9A
    nop                                           ; $520A: $00
    ld c, [hl]                                    ; $520B: $4E
    ld bc, $9601                                  ; $520C: $01 $01 $96
    sub a                                         ; $520F: $97
    ld [de], a                                    ; $5210: $12
    ld hl, $004A                                  ; $5211: $21 $4A $00
    ld c, c                                       ; $5214: $49
    nop                                           ; $5215: $00
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    ld bc, $6A00                                  ; $5218: $01 $00 $6A
    ld c, l                                       ; $521B: $4D
    nop                                           ; $521C: $00
    ld h, h                                       ; $521D: $64
    ret                                           ; $521E: $C9


jr_03A_521F:
    nop                                           ; $521F: $00
    ld bc, $0000                                  ; $5220: $01 $00 $00
    nop                                           ; $5223: $00
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    inc b                                         ; $5226: $04
    dec de                                        ; $5227: $1B
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    inc bc                                        ; $522A: $03
    ld bc, $2F00                                  ; $522B: $01 $00 $2F
    ld c, l                                       ; $522E: $4D
    ld [bc], a                                    ; $522F: $02
    rra                                           ; $5230: $1F
    jr nz, jr_03A_5253                            ; $5231: $20 $20

    ld bc, $00E1                                  ; $5233: $01 $E1 $00
    ld l, [hl]                                    ; $5236: $6E
    call c, $DA00                                 ; $5237: $DC $00 $DA
    nop                                           ; $523A: $00
    nop                                           ; $523B: $00
    nop                                           ; $523C: $00
    ld bc, $4300                                  ; $523D: $01 $00 $43
    add a                                         ; $5240: $87
    db $10                                        ; $5241: $10
    ld [hl], $42                                  ; $5242: $36 $42
    nop                                           ; $5244: $00
    ld bc, $00E3                                  ; $5245: $01 $E3 $00
    ld l, [hl]                                    ; $5248: $6E
    add a                                         ; $5249: $87
    db $10                                        ; $524A: $10
    scf                                           ; $524B: $37
    nop                                           ; $524C: $00
    nop                                           ; $524D: $00
    nop                                           ; $524E: $00
    ld bc, $4D00                                  ; $524F: $01 $00 $4D
    ld h, h                                       ; $5252: $64

jr_03A_5253:
    nop                                           ; $5253: $00
    ret                                           ; $5254: $C9


    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    inc b                                         ; $525A: $04
    ld a, [de]                                    ; $525B: $1A
    nop                                           ; $525C: $00
    nop                                           ; $525D: $00
    inc bc                                        ; $525E: $03
    nop                                           ; $525F: $00
    nop                                           ; $5260: $00
    inc b                                         ; $5261: $04
    ld [de], a                                    ; $5262: $12
    ld bc, $2F00                                  ; $5263: $01 $00 $2F
    jr z, jr_03A_5268                             ; $5266: $28 $00

jr_03A_5268:
    daa                                           ; $5268: $27
    jr z, jr_03A_526B                             ; $5269: $28 $00

jr_03A_526B:
    add c                                         ; $526B: $81
    xor a                                         ; $526C: $AF
    nop                                           ; $526D: $00
    pop bc                                        ; $526E: $C1
    sbc d                                         ; $526F: $9A
    nop                                           ; $5270: $00
    ld b, a                                       ; $5271: $47
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    ld bc, $4001                                  ; $5275: $01 $01 $40
    ld b, c                                       ; $5278: $41
    ld de, $3042                                  ; $5279: $11 $42 $30
    ld bc, $6A18                                  ; $527C: $01 $18 $6A
    nop                                           ; $527F: $00
    ld c, l                                       ; $5280: $4D
    ld h, h                                       ; $5281: $64
    nop                                           ; $5282: $00
    ret                                           ; $5283: $C9


    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    inc b                                         ; $5289: $04
    dec de                                        ; $528A: $1B
    nop                                           ; $528B: $00
    nop                                           ; $528C: $00
    inc bc                                        ; $528D: $03
    ld bc, $8100                                  ; $528E: $01 $00 $81
    xor a                                         ; $5291: $AF
    nop                                           ; $5292: $00
    pop bc                                        ; $5293: $C1
    sbc d                                         ; $5294: $9A
    nop                                           ; $5295: $00
    ld c, [hl]                                    ; $5296: $4E
    ld bc, $3900                                  ; $5297: $01 $00 $39
    ld l, e                                       ; $529A: $6B
    nop                                           ; $529B: $00
    ld a, $00                                     ; $529C: $3E $00
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    ld bc, $6B00                                  ; $52A0: $01 $00 $6B
    ld bc, $2202                                  ; $52A3: $01 $02 $22
    jr z, jr_03A_52A8                             ; $52A6: $28 $00

jr_03A_52A8:
    ld h, c                                       ; $52A8: $61
    ld c, l                                       ; $52A9: $4D
    nop                                           ; $52AA: $00
    ld l, [hl]                                    ; $52AB: $6E
    ld l, h                                       ; $52AC: $6C
    db $10                                        ; $52AD: $10
    ld [hl], b                                    ; $52AE: $70
    nop                                           ; $52AF: $00
    nop                                           ; $52B0: $00
    nop                                           ; $52B1: $00
    ld bc, $4200                                  ; $52B2: $01 $00 $42
    daa                                           ; $52B5: $27
    nop                                           ; $52B6: $00
    ld l, d                                       ; $52B7: $6A
    ld c, l                                       ; $52B8: $4D
    nop                                           ; $52B9: $00
    ld h, h                                       ; $52BA: $64
    ret                                           ; $52BB: $C9


    nop                                           ; $52BC: $00
    ld bc, $0000                                  ; $52BD: $01 $00 $00
    nop                                           ; $52C0: $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    inc bc                                        ; $52C3: $03
    ld bc, $2302                                  ; $52C4: $01 $02 $23
    ld [hl], $00                                  ; $52C7: $36 $00
    dec l                                         ; $52C9: $2D
    ld c, [hl]                                    ; $52CA: $4E
    nop                                           ; $52CB: $00
    ld bc, $00AC                                  ; $52CC: $01 $AC $00
    cp [hl]                                       ; $52CF: $BE
    and d                                         ; $52D0: $A2
    nop                                           ; $52D1: $00
    call nz, RST_00                               ; $52D2: $C4 $00 $00
    nop                                           ; $52D5: $00
    ld bc, $7600                                  ; $52D6: $01 $00 $76
    cp h                                          ; $52D9: $BC
    nop                                           ; $52DA: $00
    ld l, [hl]                                    ; $52DB: $6E
    sbc b                                         ; $52DC: $98
    db $10                                        ; $52DD: $10
    ld b, d                                       ; $52DE: $42
    ld c, h                                       ; $52DF: $4C
    nop                                           ; $52E0: $00
    ret                                           ; $52E1: $C9


    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    nop                                           ; $52E6: $00
    inc bc                                        ; $52E7: $03
    ld bc, $4001                                  ; $52E8: $01 $01 $40
    ld b, c                                       ; $52EB: $41
    ld de, $4D42                                  ; $52EC: $11 $42 $4D
    ld bc, $7675                                  ; $52EF: $01 $75 $76
    db $10                                        ; $52F2: $10
    ld c, [hl]                                    ; $52F3: $4E
    ld bc, $2F00                                  ; $52F4: $01 $00 $2F
    nop                                           ; $52F7: $00
    nop                                           ; $52F8: $00
    nop                                           ; $52F9: $00
    ld bc, $6B00                                  ; $52FA: $01 $00 $6B
    ld b, a                                       ; $52FD: $47
    nop                                           ; $52FE: $00
    ld bc, $002A                                  ; $52FF: $01 $2A $00
    ld [hl], $5D                                  ; $5302: $36 $5D
    nop                                           ; $5304: $00
    daa                                           ; $5305: $27
    ret                                           ; $5306: $C9


    nop                                           ; $5307: $00
    ld bc, $0000                                  ; $5308: $01 $00 $00
    nop                                           ; $530B: $00
    nop                                           ; $530C: $00
    nop                                           ; $530D: $00
    inc bc                                        ; $530E: $03
    nop                                           ; $530F: $00
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    ld bc, $3500                                  ; $5312: $01 $00 $35
    ld h, h                                       ; $5315: $64
    nop                                           ; $5316: $00
    ld [hl], a                                    ; $5317: $77
    ld c, c                                       ; $5318: $49
    nop                                           ; $5319: $00
    ld l, b                                       ; $531A: $68
    ld [hl], c                                    ; $531B: $71
    nop                                           ; $531C: $00
    ld [hl], a                                    ; $531D: $77
    ret                                           ; $531E: $C9


    nop                                           ; $531F: $00
    ld bc, $0000                                  ; $5320: $01 $00 $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    inc bc                                        ; $5326: $03
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    rlca                                          ; $5329: $07
    ld a, b                                       ; $532A: $78
    nop                                           ; $532B: $00
    nop                                           ; $532C: $00
    dec b                                         ; $532D: $05
    add b                                         ; $532E: $80
    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    ld [bc], a                                    ; $5331: $02
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    ld bc, $532B                                  ; $5334: $01 $2B $53
    ld bc, $2F00                                  ; $5337: $01 $00 $2F
    ld l, a                                       ; $533A: $6F
    nop                                           ; $533B: $00
    dec hl                                        ; $533C: $2B
    daa                                           ; $533D: $27
    nop                                           ; $533E: $00
    ld c, [hl]                                    ; $533F: $4E
    ld bc, $8200                                  ; $5340: $01 $00 $82
    halt                                          ; $5343: $76
    nop                                           ; $5344: $00
    sbc d                                         ; $5345: $9A
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    ld bc, $4A00                                  ; $5349: $01 $00 $4A
    ld b, c                                       ; $534C: $41
    nop                                           ; $534D: $00
    daa                                           ; $534E: $27
    ld b, d                                       ; $534F: $42
    nop                                           ; $5350: $00
    ld c, c                                       ; $5351: $49
    ld c, l                                       ; $5352: $4D
    nop                                           ; $5353: $00
    ret                                           ; $5354: $C9


    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    inc bc                                        ; $535A: $03
    ld bc, $4000                                  ; $535B: $01 $00 $40
    ld h, a                                       ; $535E: $67
    nop                                           ; $535F: $00
    ld [hl], b                                    ; $5360: $70
    ld b, e                                       ; $5361: $43
    nop                                           ; $5362: $00
    ld bc, $0049                                  ; $5363: $01 $49 $00
    jr nc, @+$2F                                  ; $5366: $30 $2D

    nop                                           ; $5368: $00
    ld bc, $0000                                  ; $5369: $01 $00 $00
    nop                                           ; $536C: $00
    ld bc, $4900                                  ; $536D: $01 $00 $49
    ld l, d                                       ; $5370: $6A
    nop                                           ; $5371: $00
    ld l, l                                       ; $5372: $6D
    ld h, h                                       ; $5373: $64
    nop                                           ; $5374: $00
    ret                                           ; $5375: $C9


    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    inc bc                                        ; $537B: $03
    ld bc, $7900                                  ; $537C: $01 $00 $79
    or h                                          ; $537F: $B4
    nop                                           ; $5380: $00
    ld c, c                                       ; $5381: $49
    ld l, b                                       ; $5382: $68
    nop                                           ; $5383: $00
    ld bc, $005D                                  ; $5384: $01 $5D $00
    ld h, h                                       ; $5387: $64
    ld l, l                                       ; $5388: $6D
    nop                                           ; $5389: $00
    inc a                                         ; $538A: $3C
    nop                                           ; $538B: $00
    nop                                           ; $538C: $00
    nop                                           ; $538D: $00
    ld bc, $E300                                  ; $538E: $01 $00 $E3
    ld l, [hl]                                    ; $5391: $6E
    nop                                           ; $5392: $00
    ld a, [hl+]                                   ; $5393: $2A
    ld [hl], $00                                  ; $5394: $36 $00
    ld b, d                                       ; $5396: $42
    ld c, h                                       ; $5397: $4C
    nop                                           ; $5398: $00
    ret                                           ; $5399: $C9


    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    inc bc                                        ; $539F: $03
    ld bc, $5D00                                  ; $53A0: $01 $00 $5D
    inc a                                         ; $53A3: $3C
    nop                                           ; $53A4: $00
    ld c, [hl]                                    ; $53A5: $4E
    nop                                           ; $53A6: $00
    nop                                           ; $53A7: $00
    nop                                           ; $53A8: $00
    ld bc, $2800                                  ; $53A9: $01 $00 $28
    add hl, hl                                    ; $53AC: $29
    nop                                           ; $53AD: $00
    add d                                         ; $53AE: $82
    halt                                          ; $53AF: $76
    nop                                           ; $53B0: $00
    sbc d                                         ; $53B1: $9A
    ret                                           ; $53B2: $C9


    nop                                           ; $53B3: $00
    ld bc, $0000                                  ; $53B4: $01 $00 $00
    nop                                           ; $53B7: $00
    nop                                           ; $53B8: $00
    nop                                           ; $53B9: $00
    inc b                                         ; $53BA: $04
    dec d                                         ; $53BB: $15
    nop                                           ; $53BC: $00
    nop                                           ; $53BD: $00
    inc bc                                        ; $53BE: $03
    ld bc, $2600                                  ; $53BF: $01 $00 $26
    daa                                           ; $53C2: $27
    nop                                           ; $53C3: $00
    ld b, d                                       ; $53C4: $42
    jr nc, jr_03A_53C7                            ; $53C5: $30 $00

jr_03A_53C7:
    ld bc, $002F                                  ; $53C7: $01 $2F $00
    jr z, jr_03A_53FF                             ; $53CA: $28 $33

    nop                                           ; $53CC: $00
    inc l                                         ; $53CD: $2C
    nop                                           ; $53CE: $00
    nop                                           ; $53CF: $00
    nop                                           ; $53D0: $00
    ld bc, $3600                                  ; $53D1: $01 $00 $36
    ccf                                           ; $53D4: $3F
    nop                                           ; $53D5: $00
    ld b, e                                       ; $53D6: $43
    inc l                                         ; $53D7: $2C
    nop                                           ; $53D8: $00
    ld c, d                                       ; $53D9: $4A
    ld bc, $E100                                  ; $53DA: $01 $00 $E1
    ld c, l                                       ; $53DD: $4D
    nop                                           ; $53DE: $00
    ld bc, $0000                                  ; $53DF: $01 $00 $00
    nop                                           ; $53E2: $00
    ld bc, $DE00                                  ; $53E3: $01 $00 $DE
    ld l, [hl]                                    ; $53E6: $6E
    nop                                           ; $53E7: $00
    ld a, [hl+]                                   ; $53E8: $2A
    scf                                           ; $53E9: $37
    nop                                           ; $53EA: $00
    ld c, l                                       ; $53EB: $4D
    ld h, h                                       ; $53EC: $64
    nop                                           ; $53ED: $00
    ret                                           ; $53EE: $C9


    nop                                           ; $53EF: $00
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    nop                                           ; $53F3: $00
    inc bc                                        ; $53F4: $03
    ld bc, $4F00                                  ; $53F5: $01 $00 $4F
    ld b, h                                       ; $53F8: $44
    nop                                           ; $53F9: $00
    ld l, c                                       ; $53FA: $69
    ld e, a                                       ; $53FB: $5F
    nop                                           ; $53FC: $00
    inc l                                         ; $53FD: $2C
    ld b, h                                       ; $53FE: $44

jr_03A_53FF:
    nop                                           ; $53FF: $00
    ld b, e                                       ; $5400: $43
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    ld bc, $DA00                                  ; $5404: $01 $00 $DA
    ld c, d                                       ; $5407: $4A
    nop                                           ; $5408: $00
    ld c, c                                       ; $5409: $49
    ld l, d                                       ; $540A: $6A
    nop                                           ; $540B: $00
    ld l, l                                       ; $540C: $6D
    ld h, h                                       ; $540D: $64
    nop                                           ; $540E: $00
    ret                                           ; $540F: $C9


    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    inc b                                         ; $5415: $04
    dec de                                        ; $5416: $1B
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    inc bc                                        ; $5419: $03
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    inc b                                         ; $541C: $04
    dec bc                                        ; $541D: $0B
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    inc b                                         ; $5420: $04
    dec de                                        ; $5421: $1B
    ld bc, $3500                                  ; $5422: $01 $00 $35
    ld l, b                                       ; $5425: $68
    nop                                           ; $5426: $00
    ld c, d                                       ; $5427: $4A
    ldh [rP1], a                                  ; $5428: $E0 $00
    ld bc, $0000                                  ; $542A: $01 $00 $00
    nop                                           ; $542D: $00
    ld bc, $3600                                  ; $542E: $01 $00 $36
    ccf                                           ; $5431: $3F
    nop                                           ; $5432: $00
    add d                                         ; $5433: $82
    halt                                          ; $5434: $76
    nop                                           ; $5435: $00
    sbc d                                         ; $5436: $9A
    ret                                           ; $5437: $C9


    nop                                           ; $5438: $00
    ld bc, $0000                                  ; $5439: $01 $00 $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    inc b                                         ; $543F: $04
    ld d, $00                                     ; $5440: $16 $00
    nop                                           ; $5442: $00
    inc bc                                        ; $5443: $03
    ld bc, $2600                                  ; $5444: $01 $00 $26
    daa                                           ; $5447: $27
    nop                                           ; $5448: $00
    ld b, d                                       ; $5449: $42
    jr nc, jr_03A_544C                            ; $544A: $30 $00

jr_03A_544C:
    ld bc, $002F                                  ; $544C: $01 $2F $00
    jr z, jr_03A_5484                             ; $544F: $28 $33

    nop                                           ; $5451: $00
    inc l                                         ; $5452: $2C
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld bc, $3600                                  ; $5456: $01 $00 $36
    ccf                                           ; $5459: $3F
    nop                                           ; $545A: $00
    ld b, e                                       ; $545B: $43
    inc l                                         ; $545C: $2C
    nop                                           ; $545D: $00
    ld c, d                                       ; $545E: $4A
    ld bc, $E100                                  ; $545F: $01 $00 $E1
    ld c, l                                       ; $5462: $4D
    nop                                           ; $5463: $00
    ld bc, $0000                                  ; $5464: $01 $00 $00
    nop                                           ; $5467: $00
    ld bc, $DD00                                  ; $5468: $01 $00 $DD
    ld l, [hl]                                    ; $546B: $6E
    nop                                           ; $546C: $00
    ld a, [hl+]                                   ; $546D: $2A
    scf                                           ; $546E: $37
    nop                                           ; $546F: $00
    ld c, l                                       ; $5470: $4D
    ld h, h                                       ; $5471: $64
    nop                                           ; $5472: $00
    ret                                           ; $5473: $C9


    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    inc bc                                        ; $5479: $03
    ld bc, $4F00                                  ; $547A: $01 $00 $4F
    ld b, h                                       ; $547D: $44
    nop                                           ; $547E: $00
    ld l, c                                       ; $547F: $69
    ld e, a                                       ; $5480: $5F
    nop                                           ; $5481: $00
    inc l                                         ; $5482: $2C
    ld b, h                                       ; $5483: $44

jr_03A_5484:
    nop                                           ; $5484: $00
    ld b, e                                       ; $5485: $43
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    ld bc, $DB00                                  ; $5489: $01 $00 $DB
    ld c, d                                       ; $548C: $4A
    nop                                           ; $548D: $00
    ld c, c                                       ; $548E: $49
    ld l, d                                       ; $548F: $6A
    nop                                           ; $5490: $00
    ld c, l                                       ; $5491: $4D
    ld h, h                                       ; $5492: $64
    nop                                           ; $5493: $00
    ret                                           ; $5494: $C9


    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    inc b                                         ; $549A: $04
    dec de                                        ; $549B: $1B
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    inc bc                                        ; $549E: $03
    ld bc, $2F00                                  ; $549F: $01 $00 $2F
    cpl                                           ; $54A2: $2F
    nop                                           ; $54A3: $00
    dec hl                                        ; $54A4: $2B
    ld l, b                                       ; $54A5: $68
    nop                                           ; $54A6: $00
    jr nc, jr_03A_54AA                            ; $54A7: $30 $01

    nop                                           ; $54A9: $00

jr_03A_54AA:
    ccf                                           ; $54AA: $3F
    daa                                           ; $54AB: $27
    nop                                           ; $54AC: $00
    jr c, jr_03A_54AF                             ; $54AD: $38 $00

jr_03A_54AF:
    nop                                           ; $54AF: $00
    nop                                           ; $54B0: $00
    ld bc, $4100                                  ; $54B1: $01 $00 $41
    ld c, c                                       ; $54B4: $49
    nop                                           ; $54B5: $00
    ld bc, $002F                                  ; $54B6: $01 $2F $00
    ld b, e                                       ; $54B9: $43
    ld h, h                                       ; $54BA: $64
    nop                                           ; $54BB: $00
    ret                                           ; $54BC: $C9


    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    inc b                                         ; $54C2: $04
    ld [de], a                                    ; $54C3: $12
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    ld [bc], a                                    ; $54C6: $02
    nop                                           ; $54C7: $00
    nop                                           ; $54C8: $00
    inc b                                         ; $54C9: $04
    dec de                                        ; $54CA: $1B
    nop                                           ; $54CB: $00
    nop                                           ; $54CC: $00
    inc bc                                        ; $54CD: $03
    ld bc, $2F00                                  ; $54CE: $01 $00 $2F
    jr z, jr_03A_54D3                             ; $54D1: $28 $00

jr_03A_54D3:
    inc sp                                        ; $54D3: $33
    inc l                                         ; $54D4: $2C
    nop                                           ; $54D5: $00
    ld c, d                                       ; $54D6: $4A
    ld c, [hl]                                    ; $54D7: $4E
    nop                                           ; $54D8: $00
    ld bc, $0000                                  ; $54D9: $01 $00 $00
    nop                                           ; $54DC: $00
    ld bc, $2800                                  ; $54DD: $01 $00 $28
    add hl, hl                                    ; $54E0: $29
    nop                                           ; $54E1: $00
    ret z                                         ; $54E2: $C8

    ld b, b                                       ; $54E3: $40
    nop                                           ; $54E4: $00
    ld h, [hl]                                    ; $54E5: $66
    jr z, jr_03A_54E8                             ; $54E6: $28 $00

jr_03A_54E8:
    ret z                                         ; $54E8: $C8

    ld [hl], $00                                  ; $54E9: $36 $00
    ccf                                           ; $54EB: $3F
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    nop                                           ; $54EE: $00
    ld bc, $3000                                  ; $54EF: $01 $00 $30
    ld h, $00                                     ; $54F2: $26 $00
    ld l, d                                       ; $54F4: $6A
    ld c, l                                       ; $54F5: $4D
    nop                                           ; $54F6: $00
    ld h, h                                       ; $54F7: $64
    ret                                           ; $54F8: $C9


    nop                                           ; $54F9: $00
    ld bc, $0000                                  ; $54FA: $01 $00 $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    inc bc                                        ; $5500: $03
    ld bc, $8D00                                  ; $5501: $01 $00 $8D
    or a                                          ; $5504: $B7
    nop                                           ; $5505: $00
    pop bc                                        ; $5506: $C1
    xor h                                         ; $5507: $AC
    nop                                           ; $5508: $00
    cpl                                           ; $5509: $2F
    jr z, jr_03A_550C                             ; $550A: $28 $00

jr_03A_550C:
    inc sp                                        ; $550C: $33
    inc l                                         ; $550D: $2C
    nop                                           ; $550E: $00
    ld c, [hl]                                    ; $550F: $4E
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    ld bc, $2800                                  ; $5513: $01 $00 $28
    add hl, hl                                    ; $5516: $29
    nop                                           ; $5517: $00
    cpl                                           ; $5518: $2F
    jr z, jr_03A_551B                             ; $5519: $28 $00

jr_03A_551B:
    inc sp                                        ; $551B: $33
    inc l                                         ; $551C: $2C
    nop                                           ; $551D: $00
    ld c, d                                       ; $551E: $4A
    nop                                           ; $551F: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    ld bc, $4900                                  ; $5522: $01 $00 $49
    ld l, d                                       ; $5525: $6A
    nop                                           ; $5526: $00
    ld c, l                                       ; $5527: $4D
    ld h, h                                       ; $5528: $64
    nop                                           ; $5529: $00
    ret                                           ; $552A: $C9


    nop                                           ; $552B: $00
    nop                                           ; $552C: $00
    nop                                           ; $552D: $00
    nop                                           ; $552E: $00
    nop                                           ; $552F: $00
    inc b                                         ; $5530: $04
    rrca                                          ; $5531: $0F
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    ld [bc], a                                    ; $5534: $02
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    inc b                                         ; $5537: $04
    dec de                                        ; $5538: $1B
    nop                                           ; $5539: $00
    nop                                           ; $553A: $00
    inc bc                                        ; $553B: $03
    ld bc, $2800                                  ; $553C: $01 $00 $28
    add hl, hl                                    ; $553F: $29
    nop                                           ; $5540: $00
    cpl                                           ; $5541: $2F
    jr z, jr_03A_5544                             ; $5542: $28 $00

jr_03A_5544:
    inc sp                                        ; $5544: $33
    inc l                                         ; $5545: $2C
    nop                                           ; $5546: $00
    ld c, [hl]                                    ; $5547: $4E
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554A: $00
    ld bc, $2800                                  ; $554B: $01 $00 $28
    add hl, hl                                    ; $554E: $29
    nop                                           ; $554F: $00
    add d                                         ; $5550: $82
    halt                                          ; $5551: $76
    nop                                           ; $5552: $00
    sbc d                                         ; $5553: $9A
    ld b, a                                       ; $5554: $47
    nop                                           ; $5555: $00
    ld [hl], $2B                                  ; $5556: $36 $2B
    nop                                           ; $5558: $00
    ld bc, $0000                                  ; $5559: $01 $00 $00
    nop                                           ; $555C: $00
    ld bc, $8200                                  ; $555D: $01 $00 $82
    halt                                          ; $5560: $76
    nop                                           ; $5561: $00
    sbc d                                         ; $5562: $9A
    ld b, a                                       ; $5563: $47
    nop                                           ; $5564: $00
    inc l                                         ; $5565: $2C
    ld c, c                                       ; $5566: $49
    nop                                           ; $5567: $00
    daa                                           ; $5568: $27
    ld c, l                                       ; $5569: $4D
    nop                                           ; $556A: $00
    ret                                           ; $556B: $C9


    nop                                           ; $556C: $00
    nop                                           ; $556D: $00
    nop                                           ; $556E: $00
    nop                                           ; $556F: $00
    nop                                           ; $5570: $00
    inc b                                         ; $5571: $04
    dec d                                         ; $5572: $15
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    ld [bc], a                                    ; $5575: $02
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    inc b                                         ; $5578: $04
    dec de                                        ; $5579: $1B
    nop                                           ; $557A: $00
    nop                                           ; $557B: $00
    inc bc                                        ; $557C: $03
    ld bc, $3600                                  ; $557D: $01 $00 $36
    ccf                                           ; $5580: $3F
    nop                                           ; $5581: $00
    add d                                         ; $5582: $82
    halt                                          ; $5583: $76
    nop                                           ; $5584: $00
    sbc d                                         ; $5585: $9A
    ld b, h                                       ; $5586: $44
    nop                                           ; $5587: $00
    ld b, e                                       ; $5588: $43
    nop                                           ; $5589: $00
    nop                                           ; $558A: $00
    nop                                           ; $558B: $00
    ld bc, $2600                                  ; $558C: $01 $00 $26
    ccf                                           ; $558F: $3F
    nop                                           ; $5590: $00
    ld [hl], b                                    ; $5591: $70
    ld b, d                                       ; $5592: $42
    nop                                           ; $5593: $00
    ld [hl], $5D                                  ; $5594: $36 $5D
    nop                                           ; $5596: $00
    jr z, jr_03A_5606                             ; $5597: $28 $6D

    nop                                           ; $5599: $00
    ret                                           ; $559A: $C9


    nop                                           ; $559B: $00
    nop                                           ; $559C: $00
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    inc b                                         ; $55A0: $04
    ld d, $00                                     ; $55A1: $16 $00
    nop                                           ; $55A3: $00
    rlca                                          ; $55A4: $07
    inc a                                         ; $55A5: $3C
    nop                                           ; $55A6: $00
    nop                                           ; $55A7: $00
    inc b                                         ; $55A8: $04
    jr jr_03A_55AB                                ; $55A9: $18 $00

jr_03A_55AB:
    nop                                           ; $55AB: $00
    inc bc                                        ; $55AC: $03
    nop                                           ; $55AD: $00
    nop                                           ; $55AE: $00
    inc b                                         ; $55AF: $04
    ld [de], a                                    ; $55B0: $12
    ld bc, $3600                                  ; $55B1: $01 $00 $36
    ld h, l                                       ; $55B4: $65
    nop                                           ; $55B5: $00
    jr nc, jr_03A_5616                            ; $55B6: $30 $5E

    nop                                           ; $55B8: $00
    ld a, [hl]                                    ; $55B9: $7E
    jp nz, Jump_03A_7F00                          ; $55BA: $C2 $00 $7F

    ld c, [hl]                                    ; $55BD: $4E
    nop                                           ; $55BE: $00
    ld bc, $0000                                  ; $55BF: $01 $00 $00
    nop                                           ; $55C2: $00
    ld bc, $3600                                  ; $55C3: $01 $00 $36
    ccf                                           ; $55C6: $3F
    nop                                           ; $55C7: $00
    cpl                                           ; $55C8: $2F
    jr z, jr_03A_55CB                             ; $55C9: $28 $00

jr_03A_55CB:
    inc sp                                        ; $55CB: $33
    inc l                                         ; $55CC: $2C
    nop                                           ; $55CD: $00
    ld c, d                                       ; $55CE: $4A
    nop                                           ; $55CF: $00
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    ld bc, $4900                                  ; $55D2: $01 $00 $49
    ld l, d                                       ; $55D5: $6A
    nop                                           ; $55D6: $00
    ld c, l                                       ; $55D7: $4D
    ld h, h                                       ; $55D8: $64
    nop                                           ; $55D9: $00
    ret                                           ; $55DA: $C9


    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    nop                                           ; $55DE: $00
    nop                                           ; $55DF: $00
    inc b                                         ; $55E0: $04
    stop                                          ; $55E1: $10 $00
    nop                                           ; $55E3: $00
    ld [bc], a                                    ; $55E4: $02
    nop                                           ; $55E5: $00
    nop                                           ; $55E6: $00
    inc b                                         ; $55E7: $04
    dec de                                        ; $55E8: $1B
    nop                                           ; $55E9: $00
    nop                                           ; $55EA: $00
    inc bc                                        ; $55EB: $03
    ld bc, $3600                                  ; $55EC: $01 $00 $36
    ccf                                           ; $55EF: $3F
    nop                                           ; $55F0: $00
    cpl                                           ; $55F1: $2F
    jr z, jr_03A_55F4                             ; $55F2: $28 $00

jr_03A_55F4:
    inc sp                                        ; $55F4: $33
    inc l                                         ; $55F5: $2C
    nop                                           ; $55F6: $00
    ld c, [hl]                                    ; $55F7: $4E
    nop                                           ; $55F8: $00
    nop                                           ; $55F9: $00
    nop                                           ; $55FA: $00
    ld bc, $3600                                  ; $55FB: $01 $00 $36
    ccf                                           ; $55FE: $3F
    nop                                           ; $55FF: $00
    add d                                         ; $5600: $82
    halt                                          ; $5601: $76
    nop                                           ; $5602: $00
    sbc d                                         ; $5603: $9A
    ld b, a                                       ; $5604: $47
    nop                                           ; $5605: $00

jr_03A_5606:
    ld [hl], $2B                                  ; $5606: $36 $2B
    nop                                           ; $5608: $00
    ld bc, $0000                                  ; $5609: $01 $00 $00
    nop                                           ; $560C: $00
    ld bc, $8200                                  ; $560D: $01 $00 $82
    halt                                          ; $5610: $76
    nop                                           ; $5611: $00
    sbc d                                         ; $5612: $9A
    ld b, a                                       ; $5613: $47
    nop                                           ; $5614: $00
    inc l                                         ; $5615: $2C

jr_03A_5616:
    ld c, c                                       ; $5616: $49
    nop                                           ; $5617: $00
    daa                                           ; $5618: $27
    ld c, l                                       ; $5619: $4D
    nop                                           ; $561A: $00
    ret                                           ; $561B: $C9


    nop                                           ; $561C: $00
    nop                                           ; $561D: $00
    nop                                           ; $561E: $00
    nop                                           ; $561F: $00
    nop                                           ; $5620: $00
    inc b                                         ; $5621: $04
    ld d, $00                                     ; $5622: $16 $00
    nop                                           ; $5624: $00
    ld [bc], a                                    ; $5625: $02
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    inc b                                         ; $5628: $04
    dec de                                        ; $5629: $1B
    nop                                           ; $562A: $00
    nop                                           ; $562B: $00
    inc bc                                        ; $562C: $03
    ld bc, $2800                                  ; $562D: $01 $00 $28
    add hl, hl                                    ; $5630: $29
    nop                                           ; $5631: $00
    add d                                         ; $5632: $82
    halt                                          ; $5633: $76
    nop                                           ; $5634: $00
    sbc d                                         ; $5635: $9A
    ld b, h                                       ; $5636: $44
    nop                                           ; $5637: $00
    ld b, e                                       ; $5638: $43
    nop                                           ; $5639: $00
    nop                                           ; $563A: $00
    nop                                           ; $563B: $00
    ld bc, $2600                                  ; $563C: $01 $00 $26
    ccf                                           ; $563F: $3F
    nop                                           ; $5640: $00
    ld [hl], b                                    ; $5641: $70
    ld b, d                                       ; $5642: $42
    nop                                           ; $5643: $00
    ld [hl], $5D                                  ; $5644: $36 $5D
    nop                                           ; $5646: $00
    jr z, jr_03A_56B6                             ; $5647: $28 $6D

    nop                                           ; $5649: $00
    ret                                           ; $564A: $C9


    nop                                           ; $564B: $00
    nop                                           ; $564C: $00
    nop                                           ; $564D: $00
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    inc b                                         ; $5650: $04
    dec d                                         ; $5651: $15
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    rlca                                          ; $5654: $07
    inc a                                         ; $5655: $3C
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    inc b                                         ; $5658: $04
    rla                                           ; $5659: $17
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    inc bc                                        ; $565C: $03
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    inc b                                         ; $565F: $04
    ld [de], a                                    ; $5660: $12
    ld bc, $3900                                  ; $5661: $01 $00 $39
    ld c, l                                       ; $5664: $4D
    nop                                           ; $5665: $00
    ld d, d                                       ; $5666: $52
    dec hl                                        ; $5667: $2B
    nop                                           ; $5668: $00
    ld c, [hl]                                    ; $5669: $4E
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00
    nop                                           ; $566C: $00
    ld bc, $4000                                  ; $566D: $01 $00 $40
    ld h, [hl]                                    ; $5670: $66
    nop                                           ; $5671: $00
    jr z, jr_03A_56A3                             ; $5672: $28 $2F

    nop                                           ; $5674: $00
    jr z, jr_03A_56AA                             ; $5675: $28 $33

    nop                                           ; $5677: $00
    inc l                                         ; $5678: $2C
    ld h, h                                       ; $5679: $64
    nop                                           ; $567A: $00
    ret                                           ; $567B: $C9


    nop                                           ; $567C: $00
    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    nop                                           ; $5680: $00
    inc b                                         ; $5681: $04
    inc c                                         ; $5682: $0C
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    ld [bc], a                                    ; $5685: $02
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    inc b                                         ; $5688: $04
    dec de                                        ; $5689: $1B
    nop                                           ; $568A: $00
    nop                                           ; $568B: $00
    inc bc                                        ; $568C: $03
    nop                                           ; $568D: $00
    nop                                           ; $568E: $00
    rlca                                          ; $568F: $07
    inc a                                         ; $5690: $3C
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    inc b                                         ; $5693: $04
    dec c                                         ; $5694: $0D
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    rlca                                          ; $5697: $07
    inc a                                         ; $5698: $3C
    ld bc, $2800                                  ; $5699: $01 $00 $28
    add hl, hl                                    ; $569C: $29
    nop                                           ; $569D: $00
    add d                                         ; $569E: $82
    halt                                          ; $569F: $76
    nop                                           ; $56A0: $00
    sbc d                                         ; $56A1: $9A
    ld b, a                                       ; $56A2: $47

jr_03A_56A3:
    nop                                           ; $56A3: $00
    ld h, c                                       ; $56A4: $61
    nop                                           ; $56A5: $00
    nop                                           ; $56A6: $00
    nop                                           ; $56A7: $00
    nop                                           ; $56A8: $00
    nop                                           ; $56A9: $00

jr_03A_56AA:
    inc b                                         ; $56AA: $04
    dec d                                         ; $56AB: $15
    nop                                           ; $56AC: $00
    nop                                           ; $56AD: $00
    ld [bc], a                                    ; $56AE: $02
    nop                                           ; $56AF: $00
    nop                                           ; $56B0: $00
    inc b                                         ; $56B1: $04
    dec de                                        ; $56B2: $1B
    ld bc, $3600                                  ; $56B3: $01 $00 $36

jr_03A_56B6:
    ccf                                           ; $56B6: $3F
    nop                                           ; $56B7: $00
    add d                                         ; $56B8: $82
    halt                                          ; $56B9: $76
    nop                                           ; $56BA: $00
    sbc d                                         ; $56BB: $9A
    ld b, a                                       ; $56BC: $47
    nop                                           ; $56BD: $00
    ld h, c                                       ; $56BE: $61
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    ld bc, $8200                                  ; $56C2: $01 $00 $82
    halt                                          ; $56C5: $76
    nop                                           ; $56C6: $00
    sbc d                                         ; $56C7: $9A
    ld b, a                                       ; $56C8: $47
    nop                                           ; $56C9: $00
    inc l                                         ; $56CA: $2C
    ld l, d                                       ; $56CB: $6A
    nop                                           ; $56CC: $00
    ld l, l                                       ; $56CD: $6D
    ret                                           ; $56CE: $C9


    nop                                           ; $56CF: $00
    ld bc, $0000                                  ; $56D0: $01 $00 $00
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00
    inc b                                         ; $56D6: $04
    ld d, $00                                     ; $56D7: $16 $00
    nop                                           ; $56D9: $00
    inc bc                                        ; $56DA: $03
    nop                                           ; $56DB: $00
    nop                                           ; $56DC: $00
    inc b                                         ; $56DD: $04
    ld [de], a                                    ; $56DE: $12
    ld bc, $2800                                  ; $56DF: $01 $00 $28
    ld e, l                                       ; $56E2: $5D
    nop                                           ; $56E3: $00
    dec l                                         ; $56E4: $2D
    add d                                         ; $56E5: $82
    nop                                           ; $56E6: $00
    halt                                          ; $56E7: $76
    sbc d                                         ; $56E8: $9A
    nop                                           ; $56E9: $00
    scf                                           ; $56EA: $37
    ld l, e                                       ; $56EB: $6B
    nop                                           ; $56EC: $00
    ld d, e                                       ; $56ED: $53
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    nop                                           ; $56F0: $00
    ld bc, $3F00                                  ; $56F1: $01 $00 $3F
    daa                                           ; $56F4: $27
    nop                                           ; $56F5: $00
    ld l, c                                       ; $56F6: $69
    ld h, a                                       ; $56F7: $67
    nop                                           ; $56F8: $00
    dec l                                         ; $56F9: $2D
    ld c, [hl]                                    ; $56FA: $4E
    nop                                           ; $56FB: $00
    ld bc, $0000                                  ; $56FC: $01 $00 $00
    nop                                           ; $56FF: $00
    ld bc, $5100                                  ; $5700: $01 $00 $51
    ld l, b                                       ; $5703: $68
    nop                                           ; $5704: $00
    ld c, c                                       ; $5705: $49
    daa                                           ; $5706: $27
    nop                                           ; $5707: $00
    ld l, l                                       ; $5708: $6D
    ld h, h                                       ; $5709: $64
    nop                                           ; $570A: $00
    ret                                           ; $570B: $C9


    nop                                           ; $570C: $00
    nop                                           ; $570D: $00
    nop                                           ; $570E: $00
    nop                                           ; $570F: $00
    nop                                           ; $5710: $00
    inc bc                                        ; $5711: $03
    ld bc, $4700                                  ; $5712: $01 $00 $47
    ld h, c                                       ; $5715: $61
    nop                                           ; $5716: $00
    ld c, h                                       ; $5717: $4C
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    ld bc, $4F00                                  ; $571B: $01 $00 $4F
    ld [hl], b                                    ; $571E: $70
    nop                                           ; $571F: $00
    dec [hl]                                      ; $5720: $35
    ld b, c                                       ; $5721: $41
    nop                                           ; $5722: $00
    ld l, l                                       ; $5723: $6D
    ld a, [hl-]                                   ; $5724: $3A
    nop                                           ; $5725: $00
    ld c, [hl]                                    ; $5726: $4E
    ldh [rP1], a                                  ; $5727: $E0 $00
    ld bc, $0000                                  ; $5729: $01 $00 $00
    nop                                           ; $572C: $00
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    inc b                                         ; $572F: $04
    ld a, [de]                                    ; $5730: $1A
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    ld [bc], a                                    ; $5733: $02
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    inc b                                         ; $5736: $04
    dec de                                        ; $5737: $1B
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    inc bc                                        ; $573A: $03
    ld bc, $8200                                  ; $573B: $01 $00 $82
    halt                                          ; $573E: $76
    nop                                           ; $573F: $00
    sbc d                                         ; $5740: $9A
    ld [hl], $00                                  ; $5741: $36 $00
    ld b, d                                       ; $5743: $42
    ld h, c                                       ; $5744: $61
    nop                                           ; $5745: $00
    ld bc, $0000                                  ; $5746: $01 $00 $00
    nop                                           ; $5749: $00
    ld bc, $4000                                  ; $574A: $01 $00 $40
    ld h, a                                       ; $574D: $67
    nop                                           ; $574E: $00
    ld [hl], b                                    ; $574F: $70
    ld b, e                                       ; $5750: $43
    nop                                           ; $5751: $00
    ld b, h                                       ; $5752: $44
    ld l, $00                                     ; $5753: $2E $00
    ld bc, $0000                                  ; $5755: $01 $00 $00
    nop                                           ; $5758: $00
    ld bc, $9600                                  ; $5759: $01 $00 $96
    or d                                          ; $575C: $B2
    nop                                           ; $575D: $00
    halt                                          ; $575E: $76
    adc l                                         ; $575F: $8D
    nop                                           ; $5760: $00
    ld c, d                                       ; $5761: $4A
    ld c, c                                       ; $5762: $49
    nop                                           ; $5763: $00
    ld l, d                                       ; $5764: $6A
    ld c, l                                       ; $5765: $4D
    nop                                           ; $5766: $00
    ret                                           ; $5767: $C9


    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576A: $00
    nop                                           ; $576B: $00
    nop                                           ; $576C: $00
    inc b                                         ; $576D: $04
    dec d                                         ; $576E: $15
    nop                                           ; $576F: $00
    nop                                           ; $5770: $00
    ld [bc], a                                    ; $5771: $02
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    inc b                                         ; $5774: $04
    dec de                                        ; $5775: $1B
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    inc bc                                        ; $5778: $03
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    nop                                           ; $577B: $00
    ld bc, $2C00                                  ; $577C: $01 $00 $2C
    ld l, [hl]                                    ; $577F: $6E
    nop                                           ; $5780: $00
    ld b, c                                       ; $5781: $41
    ld l, $00                                     ; $5782: $2E $00
    ld b, d                                       ; $5784: $42
    ld c, h                                       ; $5785: $4C
    nop                                           ; $5786: $00
    ret                                           ; $5787: $C9


    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578A: $00
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    inc bc                                        ; $578D: $03
    ld bc, $6100                                  ; $578E: $01 $00 $61
    ld b, b                                       ; $5791: $40
    nop                                           ; $5792: $00
    ld l, h                                       ; $5793: $6C
    ld l, a                                       ; $5794: $6F
    nop                                           ; $5795: $00
    ld bc, $0082                                  ; $5796: $01 $82 $00
    halt                                          ; $5799: $76
    sbc d                                         ; $579A: $9A
    nop                                           ; $579B: $00
    ld [hl], $00                                  ; $579C: $36 $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    ld bc, $4900                                  ; $57A0: $01 $00 $49
    dec hl                                        ; $57A3: $2B
    nop                                           ; $57A4: $00
    ld [hl], b                                    ; $57A5: $70
    ccf                                           ; $57A6: $3F
    nop                                           ; $57A7: $00
    ld l, b                                       ; $57A8: $68
    ld bc, $3700                                  ; $57A9: $01 $00 $37
    inc [hl]                                      ; $57AC: $34
    nop                                           ; $57AD: $00
    daa                                           ; $57AE: $27
    nop                                           ; $57AF: $00
    nop                                           ; $57B0: $00
    nop                                           ; $57B1: $00
    ld bc, $9600                                  ; $57B2: $01 $00 $96
    or d                                          ; $57B5: $B2
    nop                                           ; $57B6: $00
    halt                                          ; $57B7: $76
    adc l                                         ; $57B8: $8D
    nop                                           ; $57B9: $00
    ld c, d                                       ; $57BA: $4A
    ld c, c                                       ; $57BB: $49
    nop                                           ; $57BC: $00
    ld l, d                                       ; $57BD: $6A
    ld l, l                                       ; $57BE: $6D
    nop                                           ; $57BF: $00
    ret                                           ; $57C0: $C9


    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    inc b                                         ; $57C6: $04
    rla                                           ; $57C7: $17
    nop                                           ; $57C8: $00
    nop                                           ; $57C9: $00
    inc bc                                        ; $57CA: $03
    ld bc, $2600                                  ; $57CB: $01 $00 $26
    ld b, e                                       ; $57CE: $43
    nop                                           ; $57CF: $00
    ld bc, $0049                                  ; $57D0: $01 $49 $00
    inc sp                                        ; $57D3: $33
    ld l, l                                       ; $57D4: $6D
    nop                                           ; $57D5: $00
    ld a, [hl-]                                   ; $57D6: $3A
    ld c, [hl]                                    ; $57D7: $4E
    nop                                           ; $57D8: $00
    ld bc, $0000                                  ; $57D9: $01 $00 $00
    nop                                           ; $57DC: $00
    ld bc, $8200                                  ; $57DD: $01 $00 $82
    halt                                          ; $57E0: $76
    nop                                           ; $57E1: $00
    sbc d                                         ; $57E2: $9A
    ld b, a                                       ; $57E3: $47
    nop                                           ; $57E4: $00
    inc l                                         ; $57E5: $2C
    ld c, c                                       ; $57E6: $49
    nop                                           ; $57E7: $00
    daa                                           ; $57E8: $27
    dec hl                                        ; $57E9: $2B
    nop                                           ; $57EA: $00
    ld l, b                                       ; $57EB: $68
    nop                                           ; $57EC: $00
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    ld bc, $2C00                                  ; $57EF: $01 $00 $2C
    ld l, [hl]                                    ; $57F2: $6E
    nop                                           ; $57F3: $00
    ld b, c                                       ; $57F4: $41
    ld l, $00                                     ; $57F5: $2E $00
    ld b, d                                       ; $57F7: $42
    ld c, h                                       ; $57F8: $4C
    nop                                           ; $57F9: $00
    ret                                           ; $57FA: $C9


    nop                                           ; $57FB: $00
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    inc bc                                        ; $5800: $03
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    inc b                                         ; $5803: $04
    ld [de], a                                    ; $5804: $12
    ld bc, $2F00                                  ; $5805: $01 $00 $2F
    ld l, a                                       ; $5808: $6F
    nop                                           ; $5809: $00
    dec hl                                        ; $580A: $2B
    daa                                           ; $580B: $27
    nop                                           ; $580C: $00
    ld c, [hl]                                    ; $580D: $4E
    ld bc, $2F00                                  ; $580E: $01 $00 $2F
    ld l, e                                       ; $5811: $6B
    nop                                           ; $5812: $00
    ld b, a                                       ; $5813: $47
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    ld bc, $2A00                                  ; $5817: $01 $00 $2A
    ld [hl], $00                                  ; $581A: $36 $00
    ld e, l                                       ; $581C: $5D
    daa                                           ; $581D: $27
    nop                                           ; $581E: $00
    ret                                           ; $581F: $C9


    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    inc bc                                        ; $5825: $03
    ld bc, $3900                                  ; $5826: $01 $00 $39
    ld l, e                                       ; $5829: $6B
    nop                                           ; $582A: $00
    dec sp                                        ; $582B: $3B
    ld h, l                                       ; $582C: $65
    nop                                           ; $582D: $00
    ld h, $4C                                     ; $582E: $26 $4C
    nop                                           ; $5830: $00
    ret                                           ; $5831: $C9


    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    ld bc, $3500                                  ; $5835: $01 $00 $35
    ld h, h                                       ; $5838: $64
    nop                                           ; $5839: $00
    ld [hl], a                                    ; $583A: $77
    ld c, c                                       ; $583B: $49
    nop                                           ; $583C: $00
    ld l, b                                       ; $583D: $68
    ld [hl], c                                    ; $583E: $71
    nop                                           ; $583F: $00
    ld [hl], a                                    ; $5840: $77
    ret                                           ; $5841: $C9


    nop                                           ; $5842: $00
    ld bc, $0000                                  ; $5843: $01 $00 $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    inc bc                                        ; $5849: $03
    nop                                           ; $584A: $00
    nop                                           ; $584B: $00
    rlca                                          ; $584C: $07
    ld a, b                                       ; $584D: $78
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    dec b                                         ; $5850: $05
    add b                                         ; $5851: $80
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    ld [bc], a                                    ; $5854: $02
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    ld bc, $584E                                  ; $5857: $01 $4E $58
    ld bc, $7001                                  ; $585A: $01 $01 $70
    inc [hl]                                      ; $585D: $34
    db $10                                        ; $585E: $10
    ld c, [hl]                                    ; $585F: $4E
    ld bc, $8200                                  ; $5860: $01 $00 $82
    halt                                          ; $5863: $76
    nop                                           ; $5864: $00
    sbc d                                         ; $5865: $9A
    ld c, d                                       ; $5866: $4A
    nop                                           ; $5867: $00
    ld b, c                                       ; $5868: $41
    nop                                           ; $5869: $00
    nop                                           ; $586A: $00
    nop                                           ; $586B: $00
    ld bc, $2700                                  ; $586C: $01 $00 $27
    ld b, d                                       ; $586F: $42
    nop                                           ; $5870: $00
    ld bc, $0049                                  ; $5871: $01 $49 $00
    ld c, l                                       ; $5874: $4D
    ld h, h                                       ; $5875: $64
    nop                                           ; $5876: $00
    ret                                           ; $5877: $C9


    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    nop                                           ; $587C: $00
    inc bc                                        ; $587D: $03
    ld bc, $4000                                  ; $587E: $01 $00 $40
    ld h, a                                       ; $5881: $67
    nop                                           ; $5882: $00
    ld [hl], b                                    ; $5883: $70
    ld b, e                                       ; $5884: $43
    ld bc, $2D8F                                  ; $5885: $01 $8F $2D
    nop                                           ; $5888: $00
    ld c, c                                       ; $5889: $49
    ld l, d                                       ; $588A: $6A
    nop                                           ; $588B: $00
    ld l, l                                       ; $588C: $6D
    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    ld bc, $6400                                  ; $5890: $01 $00 $64
    ret                                           ; $5893: $C9


    nop                                           ; $5894: $00
    ld bc, $0000                                  ; $5895: $01 $00 $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    inc bc                                        ; $589B: $03
    ld bc, $7900                                  ; $589C: $01 $00 $79
    or h                                          ; $589F: $B4
    nop                                           ; $58A0: $00
    ld c, c                                       ; $58A1: $49
    ld l, b                                       ; $58A2: $68
    ld bc, $6D77                                  ; $58A3: $01 $77 $6D
    nop                                           ; $58A6: $00
    inc a                                         ; $58A7: $3C
    nop                                           ; $58A8: $00
    nop                                           ; $58A9: $00
    nop                                           ; $58AA: $00
    ld bc, $E300                                  ; $58AB: $01 $00 $E3
    ld l, [hl]                                    ; $58AE: $6E
    ld bc, $3687                                  ; $58AF: $01 $87 $36
    nop                                           ; $58B2: $00
    ld b, d                                       ; $58B3: $42
    ld c, h                                       ; $58B4: $4C
    nop                                           ; $58B5: $00
    ret                                           ; $58B6: $C9


    nop                                           ; $58B7: $00
    nop                                           ; $58B8: $00
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    nop                                           ; $58BB: $00
    inc bc                                        ; $58BC: $03
    ld bc, $5D00                                  ; $58BD: $01 $00 $5D
    inc a                                         ; $58C0: $3C
    nop                                           ; $58C1: $00
    ld c, [hl]                                    ; $58C2: $4E
    nop                                           ; $58C3: $00
    nop                                           ; $58C4: $00
    nop                                           ; $58C5: $00
    ld bc, $8A01                                  ; $58C6: $01 $01 $8A
    add d                                         ; $58C9: $82
    nop                                           ; $58CA: $00
    halt                                          ; $58CB: $76
    sbc d                                         ; $58CC: $9A
    nop                                           ; $58CD: $00
    ret                                           ; $58CE: $C9


    nop                                           ; $58CF: $00
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    nop                                           ; $58D3: $00
    inc b                                         ; $58D4: $04
    dec d                                         ; $58D5: $15
    nop                                           ; $58D6: $00
    nop                                           ; $58D7: $00
    inc bc                                        ; $58D8: $03
    ld bc, $8E01                                  ; $58D9: $01 $01 $8E
    rlca                                          ; $58DC: $07
    db $10                                        ; $58DD: $10
    jr nc, @-$71                                  ; $58DE: $30 $8D

    ld de, $368B                                  ; $58E0: $11 $8B $36
    nop                                           ; $58E3: $00
    ccf                                           ; $58E4: $3F
    ld b, e                                       ; $58E5: $43
    nop                                           ; $58E6: $00
    inc l                                         ; $58E7: $2C
    nop                                           ; $58E8: $00

jr_03A_58E9:
    nop                                           ; $58E9: $00
    nop                                           ; $58EA: $00
    ld bc, $4A00                                  ; $58EB: $01 $00 $4A
    ld bc, $E100                                  ; $58EE: $01 $00 $E1
    ld c, l                                       ; $58F1: $4D
    nop                                           ; $58F2: $00
    sbc $6E                                       ; $58F3: $DE $6E
    ld bc, $3787                                  ; $58F5: $01 $87 $37
    nop                                           ; $58F8: $00
    ld c, l                                       ; $58F9: $4D
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    ld bc, $6400                                  ; $58FD: $01 $00 $64
    ret                                           ; $5900: $C9


    nop                                           ; $5901: $00
    ld bc, $0000                                  ; $5902: $01 $00 $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    inc bc                                        ; $5908: $03
    ld bc, $9601                                  ; $5909: $01 $01 $96
    sub e                                         ; $590C: $93
    db $10                                        ; $590D: $10
    inc l                                         ; $590E: $2C
    ld b, h                                       ; $590F: $44
    nop                                           ; $5910: $00
    ld b, e                                       ; $5911: $43
    ld bc, $DA00                                  ; $5912: $01 $00 $DA
    ld c, d                                       ; $5915: $4A
    nop                                           ; $5916: $00
    ld c, c                                       ; $5917: $49
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    ld bc, $6A00                                  ; $591B: $01 $00 $6A
    ld l, l                                       ; $591E: $6D
    nop                                           ; $591F: $00
    ld h, h                                       ; $5920: $64
    ret                                           ; $5921: $C9


    nop                                           ; $5922: $00
    ld bc, $0000                                  ; $5923: $01 $00 $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    inc b                                         ; $5929: $04
    dec de                                        ; $592A: $1B
    nop                                           ; $592B: $00
    nop                                           ; $592C: $00
    inc bc                                        ; $592D: $03
    nop                                           ; $592E: $00
    nop                                           ; $592F: $00
    inc b                                         ; $5930: $04
    dec bc                                        ; $5931: $0B
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    inc b                                         ; $5934: $04
    dec de                                        ; $5935: $1B
    ld bc, $3500                                  ; $5936: $01 $00 $35
    ld l, b                                       ; $5939: $68
    nop                                           ; $593A: $00
    ld c, d                                       ; $593B: $4A
    ldh [rP1], a                                  ; $593C: $E0 $00
    ld bc, $0000                                  ; $593E: $01 $00 $00
    nop                                           ; $5941: $00
    ld bc, $0D01                                  ; $5942: $01 $01 $0D
    add d                                         ; $5945: $82
    nop                                           ; $5946: $00
    halt                                          ; $5947: $76
    sbc d                                         ; $5948: $9A
    nop                                           ; $5949: $00
    ret                                           ; $594A: $C9


    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    inc b                                         ; $5950: $04
    ld d, $00                                     ; $5951: $16 $00
    nop                                           ; $5953: $00
    inc bc                                        ; $5954: $03
    ld bc, $8E01                                  ; $5955: $01 $01 $8E
    rlca                                          ; $5958: $07
    db $10                                        ; $5959: $10
    jr nc, jr_03A_58E9                            ; $595A: $30 $8D

    ld de, $368B                                  ; $595C: $11 $8B $36
    nop                                           ; $595F: $00
    ccf                                           ; $5960: $3F
    ld b, e                                       ; $5961: $43
    nop                                           ; $5962: $00
    inc l                                         ; $5963: $2C
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    ld bc, $4A00                                  ; $5967: $01 $00 $4A
    ld bc, $E100                                  ; $596A: $01 $00 $E1
    ld c, l                                       ; $596D: $4D
    nop                                           ; $596E: $00
    db $DD                                        ; $596F: $DD
    ld l, [hl]                                    ; $5970: $6E
    ld bc, $3787                                  ; $5971: $01 $87 $37
    nop                                           ; $5974: $00
    ld c, l                                       ; $5975: $4D
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    ld bc, $6400                                  ; $5979: $01 $00 $64
    ret                                           ; $597C: $C9


    nop                                           ; $597D: $00
    ld bc, $0000                                  ; $597E: $01 $00 $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    inc bc                                        ; $5984: $03
    ld bc, $9601                                  ; $5985: $01 $01 $96
    sub e                                         ; $5988: $93
    db $10                                        ; $5989: $10
    inc l                                         ; $598A: $2C
    ld b, h                                       ; $598B: $44
    nop                                           ; $598C: $00
    ld b, e                                       ; $598D: $43
    ld bc, $DB00                                  ; $598E: $01 $00 $DB
    ld c, d                                       ; $5991: $4A
    nop                                           ; $5992: $00
    ld c, c                                       ; $5993: $49
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    ld bc, $6A00                                  ; $5997: $01 $00 $6A
    ld c, l                                       ; $599A: $4D
    nop                                           ; $599B: $00
    ld h, h                                       ; $599C: $64
    ret                                           ; $599D: $C9


    nop                                           ; $599E: $00
    ld bc, $0000                                  ; $599F: $01 $00 $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    inc b                                         ; $59A5: $04
    dec de                                        ; $59A6: $1B
    nop                                           ; $59A7: $00
    nop                                           ; $59A8: $00
    inc bc                                        ; $59A9: $03
    ld bc, $2F00                                  ; $59AA: $01 $00 $2F
    cpl                                           ; $59AD: $2F
    nop                                           ; $59AE: $00
    dec hl                                        ; $59AF: $2B
    ld l, b                                       ; $59B0: $68
    nop                                           ; $59B1: $00
    ld bc, $0130                                  ; $59B2: $01 $30 $01
    ld bc, $1094                                  ; $59B5: $01 $94 $10
    ld c, c                                       ; $59B8: $49
    nop                                           ; $59B9: $00
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    ld bc, $0901                                  ; $59BC: $01 $01 $09
    ld h, h                                       ; $59BF: $64
    nop                                           ; $59C0: $00
    ret                                           ; $59C1: $C9


    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
    inc b                                         ; $59C7: $04
    ld [de], a                                    ; $59C8: $12
    nop                                           ; $59C9: $00
    nop                                           ; $59CA: $00
    ld [bc], a                                    ; $59CB: $02
    nop                                           ; $59CC: $00
    nop                                           ; $59CD: $00
    inc b                                         ; $59CE: $04
    dec de                                        ; $59CF: $1B
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    inc bc                                        ; $59D2: $03
    ld bc, $8D01                                  ; $59D3: $01 $01 $8D
    adc e                                         ; $59D6: $8B
    db $10                                        ; $59D7: $10
    ld c, d                                       ; $59D8: $4A
    ld c, [hl]                                    ; $59D9: $4E
    nop                                           ; $59DA: $00
    ld bc, $108A                                  ; $59DB: $01 $8A $10
    ret z                                         ; $59DE: $C8

    ld e, b                                       ; $59DF: $58
    db $10                                        ; $59E0: $10
    ret z                                         ; $59E1: $C8

    nop                                           ; $59E2: $00
    nop                                           ; $59E3: $00
    nop                                           ; $59E4: $00
    ld bc, $0D01                                  ; $59E5: $01 $01 $0D
    jr nc, jr_03A_59EA                            ; $59E8: $30 $00

jr_03A_59EA:
    ld h, $6A                                     ; $59EA: $26 $6A
    nop                                           ; $59EC: $00
    ld c, l                                       ; $59ED: $4D
    ld h, h                                       ; $59EE: $64
    nop                                           ; $59EF: $00
    ret                                           ; $59F0: $C9


    nop                                           ; $59F1: $00
    nop                                           ; $59F2: $00
    nop                                           ; $59F3: $00
    nop                                           ; $59F4: $00
    nop                                           ; $59F5: $00
    inc bc                                        ; $59F6: $03
    ld bc, $8D00                                  ; $59F7: $01 $00 $8D
    or a                                          ; $59FA: $B7
    nop                                           ; $59FB: $00
    pop bc                                        ; $59FC: $C1
    xor h                                         ; $59FD: $AC
    ld bc, $8B8D                                  ; $59FE: $01 $8D $8B
    db $10                                        ; $5A01: $10
    ld c, [hl]                                    ; $5A02: $4E
    nop                                           ; $5A03: $00
    nop                                           ; $5A04: $00
    nop                                           ; $5A05: $00
    ld bc, $8A01                                  ; $5A06: $01 $01 $8A
    adc l                                         ; $5A09: $8D
    ld de, $4A8B                                  ; $5A0A: $11 $8B $4A
    nop                                           ; $5A0D: $00
    ld c, c                                       ; $5A0E: $49
    ld l, d                                       ; $5A0F: $6A
    nop                                           ; $5A10: $00
    ld c, l                                       ; $5A11: $4D
    ld h, h                                       ; $5A12: $64
    nop                                           ; $5A13: $00
    ret                                           ; $5A14: $C9


    nop                                           ; $5A15: $00
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    inc b                                         ; $5A1A: $04
    rrca                                          ; $5A1B: $0F
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    ld [bc], a                                    ; $5A1E: $02
    nop                                           ; $5A1F: $00
    nop                                           ; $5A20: $00
    inc b                                         ; $5A21: $04
    dec de                                        ; $5A22: $1B
    nop                                           ; $5A23: $00
    nop                                           ; $5A24: $00
    inc bc                                        ; $5A25: $03
    ld bc, $8A01                                  ; $5A26: $01 $01 $8A
    adc l                                         ; $5A29: $8D
    ld de, $4E8B                                  ; $5A2A: $11 $8B $4E
    nop                                           ; $5A2D: $00
    ld bc, $108A                                  ; $5A2E: $01 $8A $10
    add d                                         ; $5A31: $82
    halt                                          ; $5A32: $76
    nop                                           ; $5A33: $00
    sbc d                                         ; $5A34: $9A
    nop                                           ; $5A35: $00
    nop                                           ; $5A36: $00
    nop                                           ; $5A37: $00
    ld bc, $4700                                  ; $5A38: $01 $00 $47
    ld [hl], $00                                  ; $5A3B: $36 $00
    dec hl                                        ; $5A3D: $2B
    ld bc, $8200                                  ; $5A3E: $01 $00 $82
    halt                                          ; $5A41: $76
    nop                                           ; $5A42: $00
    sbc d                                         ; $5A43: $9A
    ld b, a                                       ; $5A44: $47
    nop                                           ; $5A45: $00
    inc l                                         ; $5A46: $2C
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    ld bc, $4900                                  ; $5A4A: $01 $00 $49
    daa                                           ; $5A4D: $27
    nop                                           ; $5A4E: $00
    ld c, l                                       ; $5A4F: $4D
    ret                                           ; $5A50: $C9


    nop                                           ; $5A51: $00
    ld bc, $0000                                  ; $5A52: $01 $00 $00
    nop                                           ; $5A55: $00
    nop                                           ; $5A56: $00
    nop                                           ; $5A57: $00
    inc b                                         ; $5A58: $04
    dec d                                         ; $5A59: $15
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    ld [bc], a                                    ; $5A5C: $02
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    inc b                                         ; $5A5F: $04
    dec de                                        ; $5A60: $1B
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    inc bc                                        ; $5A63: $03
    ld bc, $0D01                                  ; $5A64: $01 $01 $0D
    add d                                         ; $5A67: $82
    nop                                           ; $5A68: $00
    halt                                          ; $5A69: $76
    sbc d                                         ; $5A6A: $9A
    nop                                           ; $5A6B: $00
    ld b, h                                       ; $5A6C: $44
    ld b, e                                       ; $5A6D: $43
    nop                                           ; $5A6E: $00
    ld bc, $109C                                  ; $5A6F: $01 $9C $10
    ccf                                           ; $5A72: $3F
    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    ld bc, $7000                                  ; $5A76: $01 $00 $70
    ld b, d                                       ; $5A79: $42
    nop                                           ; $5A7A: $00
    ld [hl], $5D                                  ; $5A7B: $36 $5D
    nop                                           ; $5A7D: $00
    jr z, jr_03A_5AED                             ; $5A7E: $28 $6D

    nop                                           ; $5A80: $00
    ret                                           ; $5A81: $C9


    nop                                           ; $5A82: $00
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    nop                                           ; $5A85: $00
    nop                                           ; $5A86: $00
    inc b                                         ; $5A87: $04
    ld d, $00                                     ; $5A88: $16 $00
    nop                                           ; $5A8A: $00
    rlca                                          ; $5A8B: $07
    inc a                                         ; $5A8C: $3C
    nop                                           ; $5A8D: $00
    nop                                           ; $5A8E: $00
    inc b                                         ; $5A8F: $04
    jr jr_03A_5A92                                ; $5A90: $18 $00

jr_03A_5A92:
    nop                                           ; $5A92: $00
    inc bc                                        ; $5A93: $03
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    inc b                                         ; $5A96: $04
    ld [de], a                                    ; $5A97: $12
    ld bc, $3600                                  ; $5A98: $01 $00 $36
    ld h, l                                       ; $5A9B: $65
    nop                                           ; $5A9C: $00
    jr nc, jr_03A_5AFD                            ; $5A9D: $30 $5E

    nop                                           ; $5A9F: $00
    ld a, [hl]                                    ; $5AA0: $7E
    jp nz, Jump_03A_7F00                          ; $5AA1: $C2 $00 $7F

    ld c, [hl]                                    ; $5AA4: $4E
    nop                                           ; $5AA5: $00
    ld bc, $0000                                  ; $5AA6: $01 $00 $00
    nop                                           ; $5AA9: $00
    ld bc, $0D01                                  ; $5AAA: $01 $01 $0D
    adc l                                         ; $5AAD: $8D
    ld de, $4A8B                                  ; $5AAE: $11 $8B $4A
    nop                                           ; $5AB1: $00
    ld c, c                                       ; $5AB2: $49
    ld l, d                                       ; $5AB3: $6A
    nop                                           ; $5AB4: $00
    ld c, l                                       ; $5AB5: $4D
    ld h, h                                       ; $5AB6: $64
    nop                                           ; $5AB7: $00
    ret                                           ; $5AB8: $C9


    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    inc b                                         ; $5ABE: $04
    stop                                          ; $5ABF: $10 $00
    nop                                           ; $5AC1: $00
    ld [bc], a                                    ; $5AC2: $02
    nop                                           ; $5AC3: $00
    nop                                           ; $5AC4: $00
    inc b                                         ; $5AC5: $04
    dec de                                        ; $5AC6: $1B
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    inc bc                                        ; $5AC9: $03
    ld bc, $0D01                                  ; $5ACA: $01 $01 $0D
    adc l                                         ; $5ACD: $8D
    ld de, $4E8B                                  ; $5ACE: $11 $8B $4E
    nop                                           ; $5AD1: $00
    ld bc, $100D                                  ; $5AD2: $01 $0D $10
    add d                                         ; $5AD5: $82
    halt                                          ; $5AD6: $76
    nop                                           ; $5AD7: $00
    sbc d                                         ; $5AD8: $9A
    nop                                           ; $5AD9: $00
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    ld bc, $4700                                  ; $5ADC: $01 $00 $47
    ld [hl], $00                                  ; $5ADF: $36 $00
    dec hl                                        ; $5AE1: $2B
    ld bc, $8200                                  ; $5AE2: $01 $00 $82
    halt                                          ; $5AE5: $76
    nop                                           ; $5AE6: $00
    sbc d                                         ; $5AE7: $9A
    ld b, a                                       ; $5AE8: $47
    nop                                           ; $5AE9: $00
    inc l                                         ; $5AEA: $2C
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00

jr_03A_5AED:
    nop                                           ; $5AED: $00
    ld bc, $4900                                  ; $5AEE: $01 $00 $49
    daa                                           ; $5AF1: $27
    nop                                           ; $5AF2: $00
    ld c, l                                       ; $5AF3: $4D
    ret                                           ; $5AF4: $C9


    nop                                           ; $5AF5: $00
    ld bc, $0000                                  ; $5AF6: $01 $00 $00
    nop                                           ; $5AF9: $00
    nop                                           ; $5AFA: $00
    nop                                           ; $5AFB: $00
    inc b                                         ; $5AFC: $04

jr_03A_5AFD:
    ld d, $00                                     ; $5AFD: $16 $00
    nop                                           ; $5AFF: $00
    ld [bc], a                                    ; $5B00: $02
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    inc b                                         ; $5B03: $04
    dec de                                        ; $5B04: $1B
    nop                                           ; $5B05: $00
    nop                                           ; $5B06: $00
    inc bc                                        ; $5B07: $03
    ld bc, $8A01                                  ; $5B08: $01 $01 $8A
    add d                                         ; $5B0B: $82
    nop                                           ; $5B0C: $00
    halt                                          ; $5B0D: $76
    sbc d                                         ; $5B0E: $9A
    nop                                           ; $5B0F: $00
    ld b, h                                       ; $5B10: $44
    ld b, e                                       ; $5B11: $43
    nop                                           ; $5B12: $00
    ld bc, $109C                                  ; $5B13: $01 $9C $10
    ccf                                           ; $5B16: $3F
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    ld bc, $7000                                  ; $5B1A: $01 $00 $70
    ld b, d                                       ; $5B1D: $42
    nop                                           ; $5B1E: $00
    ld [hl], $5D                                  ; $5B1F: $36 $5D
    nop                                           ; $5B21: $00
    jr z, jr_03A_5B91                             ; $5B22: $28 $6D

    nop                                           ; $5B24: $00
    ret                                           ; $5B25: $C9


    nop                                           ; $5B26: $00
    nop                                           ; $5B27: $00
    nop                                           ; $5B28: $00
    nop                                           ; $5B29: $00
    nop                                           ; $5B2A: $00
    inc b                                         ; $5B2B: $04
    dec d                                         ; $5B2C: $15
    nop                                           ; $5B2D: $00
    nop                                           ; $5B2E: $00
    rlca                                          ; $5B2F: $07
    inc a                                         ; $5B30: $3C
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    inc b                                         ; $5B33: $04
    rla                                           ; $5B34: $17
    nop                                           ; $5B35: $00
    nop                                           ; $5B36: $00
    inc bc                                        ; $5B37: $03
    nop                                           ; $5B38: $00
    nop                                           ; $5B39: $00
    inc b                                         ; $5B3A: $04
    ld [de], a                                    ; $5B3B: $12
    ld bc, $3900                                  ; $5B3C: $01 $00 $39
    ld c, l                                       ; $5B3F: $4D
    ld bc, $4E95                                  ; $5B40: $01 $95 $4E
    nop                                           ; $5B43: $00
    ld bc, $1158                                  ; $5B44: $01 $58 $11
    adc l                                         ; $5B47: $8D
    adc e                                         ; $5B48: $8B
    db $10                                        ; $5B49: $10
    ld c, c                                       ; $5B4A: $49
    nop                                           ; $5B4B: $00
    nop                                           ; $5B4C: $00
    nop                                           ; $5B4D: $00
    ld bc, $4D00                                  ; $5B4E: $01 $00 $4D
    ld h, h                                       ; $5B51: $64
    nop                                           ; $5B52: $00
    ret                                           ; $5B53: $C9


    nop                                           ; $5B54: $00
    nop                                           ; $5B55: $00
    nop                                           ; $5B56: $00
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    inc b                                         ; $5B59: $04
    inc c                                         ; $5B5A: $0C
    nop                                           ; $5B5B: $00
    nop                                           ; $5B5C: $00
    ld [bc], a                                    ; $5B5D: $02
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    inc b                                         ; $5B60: $04
    dec de                                        ; $5B61: $1B
    nop                                           ; $5B62: $00
    nop                                           ; $5B63: $00
    inc bc                                        ; $5B64: $03
    nop                                           ; $5B65: $00
    nop                                           ; $5B66: $00
    rlca                                          ; $5B67: $07
    inc a                                         ; $5B68: $3C
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
    inc b                                         ; $5B6B: $04
    dec c                                         ; $5B6C: $0D
    nop                                           ; $5B6D: $00
    nop                                           ; $5B6E: $00
    rlca                                          ; $5B6F: $07
    inc a                                         ; $5B70: $3C
    ld bc, $8A01                                  ; $5B71: $01 $01 $8A
    add d                                         ; $5B74: $82
    nop                                           ; $5B75: $00
    halt                                          ; $5B76: $76
    sbc d                                         ; $5B77: $9A
    nop                                           ; $5B78: $00
    ld b, a                                       ; $5B79: $47
    ld h, c                                       ; $5B7A: $61
    nop                                           ; $5B7B: $00
    ld bc, $0000                                  ; $5B7C: $01 $00 $00
    nop                                           ; $5B7F: $00
    nop                                           ; $5B80: $00
    nop                                           ; $5B81: $00
    inc b                                         ; $5B82: $04
    dec d                                         ; $5B83: $15
    nop                                           ; $5B84: $00
    nop                                           ; $5B85: $00
    ld [bc], a                                    ; $5B86: $02
    nop                                           ; $5B87: $00
    nop                                           ; $5B88: $00
    inc b                                         ; $5B89: $04
    dec de                                        ; $5B8A: $1B
    ld bc, $0D01                                  ; $5B8B: $01 $01 $0D
    add d                                         ; $5B8E: $82
    nop                                           ; $5B8F: $00
    halt                                          ; $5B90: $76

jr_03A_5B91:
    sbc d                                         ; $5B91: $9A
    nop                                           ; $5B92: $00
    ld b, a                                       ; $5B93: $47
    ld h, c                                       ; $5B94: $61
    nop                                           ; $5B95: $00
    ld bc, $0000                                  ; $5B96: $01 $00 $00
    nop                                           ; $5B99: $00
    ld bc, $8200                                  ; $5B9A: $01 $00 $82
    halt                                          ; $5B9D: $76
    nop                                           ; $5B9E: $00
    sbc d                                         ; $5B9F: $9A
    ld b, a                                       ; $5BA0: $47
    nop                                           ; $5BA1: $00
    inc l                                         ; $5BA2: $2C
    ld l, d                                       ; $5BA3: $6A
    nop                                           ; $5BA4: $00
    ld l, l                                       ; $5BA5: $6D
    ret                                           ; $5BA6: $C9


    nop                                           ; $5BA7: $00
    ld bc, $0000                                  ; $5BA8: $01 $00 $00
    nop                                           ; $5BAB: $00
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    inc b                                         ; $5BAE: $04
    ld d, $00                                     ; $5BAF: $16 $00
    nop                                           ; $5BB1: $00
    inc bc                                        ; $5BB2: $03
    nop                                           ; $5BB3: $00
    nop                                           ; $5BB4: $00
    inc b                                         ; $5BB5: $04
    ld [de], a                                    ; $5BB6: $12
    ld bc, $2800                                  ; $5BB7: $01 $00 $28
    ld e, l                                       ; $5BBA: $5D
    nop                                           ; $5BBB: $00
    dec l                                         ; $5BBC: $2D
    add d                                         ; $5BBD: $82
    nop                                           ; $5BBE: $00
    halt                                          ; $5BBF: $76
    sbc d                                         ; $5BC0: $9A
    nop                                           ; $5BC1: $00
    scf                                           ; $5BC2: $37
    ld l, e                                       ; $5BC3: $6B
    nop                                           ; $5BC4: $00
    ld d, e                                       ; $5BC5: $53
    nop                                           ; $5BC6: $00
    nop                                           ; $5BC7: $00
    nop                                           ; $5BC8: $00
    ld bc, $1602                                  ; $5BC9: $01 $02 $16
    inc b                                         ; $5BCC: $04
    db $10                                        ; $5BCD: $10
    ld c, [hl]                                    ; $5BCE: $4E
    inc h                                         ; $5BCF: $24
    jr nz, jr_03A_5C3A                            ; $5BD0: $20 $68

    ld c, c                                       ; $5BD2: $49
    nop                                           ; $5BD3: $00
    daa                                           ; $5BD4: $27
    ld l, l                                       ; $5BD5: $6D
    nop                                           ; $5BD6: $00
    ret                                           ; $5BD7: $C9


    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    nop                                           ; $5BDA: $00
    nop                                           ; $5BDB: $00
    nop                                           ; $5BDC: $00
    inc bc                                        ; $5BDD: $03
    ld bc, $4700                                  ; $5BDE: $01 $00 $47
    ld h, c                                       ; $5BE1: $61
    nop                                           ; $5BE2: $00
    ld c, h                                       ; $5BE3: $4C
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    nop                                           ; $5BE6: $00
    ld bc, $4001                                  ; $5BE7: $01 $01 $40
    ld b, c                                       ; $5BEA: $41
    ld de, $4E42                                  ; $5BEB: $11 $42 $4E
    nop                                           ; $5BEE: $00
    ldh [rP1], a                                  ; $5BEF: $E0 $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    inc b                                         ; $5BF5: $04
    ld a, [de]                                    ; $5BF6: $1A
    nop                                           ; $5BF7: $00
    nop                                           ; $5BF8: $00
    ld [bc], a                                    ; $5BF9: $02
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    inc b                                         ; $5BFC: $04
    dec de                                        ; $5BFD: $1B
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    inc bc                                        ; $5C00: $03
    ld bc, $8200                                  ; $5C01: $01 $00 $82
    halt                                          ; $5C04: $76
    nop                                           ; $5C05: $00
    sbc d                                         ; $5C06: $9A
    ld [hl], $00                                  ; $5C07: $36 $00
    ld b, d                                       ; $5C09: $42
    ld h, c                                       ; $5C0A: $61
    nop                                           ; $5C0B: $00
    ld bc, $0000                                  ; $5C0C: $01 $00 $00
    nop                                           ; $5C0F: $00
    ld bc, $4000                                  ; $5C10: $01 $00 $40
    ld h, a                                       ; $5C13: $67
    nop                                           ; $5C14: $00
    ld [hl], b                                    ; $5C15: $70
    ld b, e                                       ; $5C16: $43
    nop                                           ; $5C17: $00
    ld b, h                                       ; $5C18: $44
    ld l, $00                                     ; $5C19: $2E $00
    ld bc, $0000                                  ; $5C1B: $01 $00 $00
    nop                                           ; $5C1E: $00
    ld bc, $9600                                  ; $5C1F: $01 $00 $96
    or d                                          ; $5C22: $B2
    nop                                           ; $5C23: $00
    halt                                          ; $5C24: $76
    adc l                                         ; $5C25: $8D
    nop                                           ; $5C26: $00
    ld c, d                                       ; $5C27: $4A
    ld c, c                                       ; $5C28: $49
    nop                                           ; $5C29: $00
    ld l, d                                       ; $5C2A: $6A
    ld c, l                                       ; $5C2B: $4D
    nop                                           ; $5C2C: $00
    ret                                           ; $5C2D: $C9


    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    inc b                                         ; $5C33: $04
    dec d                                         ; $5C34: $15
    nop                                           ; $5C35: $00
    nop                                           ; $5C36: $00
    ld [bc], a                                    ; $5C37: $02
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00

jr_03A_5C3A:
    inc b                                         ; $5C3A: $04
    dec de                                        ; $5C3B: $1B
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    inc bc                                        ; $5C3E: $03
    nop                                           ; $5C3F: $00
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    ld bc, $1502                                  ; $5C42: $01 $02 $15
    ld l, [hl]                                    ; $5C45: $6E
    nop                                           ; $5C46: $00
    ld b, c                                       ; $5C47: $41
    ld l, $00                                     ; $5C48: $2E $00
    ld b, d                                       ; $5C4A: $42
    ld c, h                                       ; $5C4B: $4C
    nop                                           ; $5C4C: $00
    ret                                           ; $5C4D: $C9


    nop                                           ; $5C4E: $00
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    inc bc                                        ; $5C53: $03
    ld bc, $6100                                  ; $5C54: $01 $00 $61
    ld b, b                                       ; $5C57: $40
    nop                                           ; $5C58: $00
    ld l, h                                       ; $5C59: $6C
    ld l, a                                       ; $5C5A: $6F
    nop                                           ; $5C5B: $00
    ld bc, $0082                                  ; $5C5C: $01 $82 $00
    halt                                          ; $5C5F: $76
    sbc d                                         ; $5C60: $9A
    nop                                           ; $5C61: $00
    ld [hl], $00                                  ; $5C62: $36 $00
    nop                                           ; $5C64: $00
    nop                                           ; $5C65: $00
    ld bc, $4900                                  ; $5C66: $01 $00 $49
    dec hl                                        ; $5C69: $2B
    nop                                           ; $5C6A: $00
    ld [hl], b                                    ; $5C6B: $70
    ccf                                           ; $5C6C: $3F
    nop                                           ; $5C6D: $00
    ld l, b                                       ; $5C6E: $68
    ld bc, $3700                                  ; $5C6F: $01 $00 $37
    inc [hl]                                      ; $5C72: $34
    nop                                           ; $5C73: $00
    daa                                           ; $5C74: $27
    nop                                           ; $5C75: $00
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    ld bc, $9600                                  ; $5C78: $01 $00 $96
    or d                                          ; $5C7B: $B2
    nop                                           ; $5C7C: $00
    halt                                          ; $5C7D: $76
    adc l                                         ; $5C7E: $8D
    nop                                           ; $5C7F: $00
    ld c, d                                       ; $5C80: $4A
    ld c, c                                       ; $5C81: $49
    nop                                           ; $5C82: $00
    ld l, d                                       ; $5C83: $6A
    ld l, l                                       ; $5C84: $6D
    nop                                           ; $5C85: $00
    ret                                           ; $5C86: $C9


    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    nop                                           ; $5C8A: $00
    nop                                           ; $5C8B: $00
    inc b                                         ; $5C8C: $04
    rla                                           ; $5C8D: $17
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    inc bc                                        ; $5C90: $03
    ld bc, $2600                                  ; $5C91: $01 $00 $26
    ld b, e                                       ; $5C94: $43
    nop                                           ; $5C95: $00
    ld bc, $201B                                  ; $5C96: $01 $1B $20
    inc sp                                        ; $5C99: $33
    ld b, d                                       ; $5C9A: $42
    db $10                                        ; $5C9B: $10
    ld c, [hl]                                    ; $5C9C: $4E
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    ld bc, $8200                                  ; $5CA0: $01 $00 $82
    halt                                          ; $5CA3: $76
    nop                                           ; $5CA4: $00
    sbc d                                         ; $5CA5: $9A
    ld b, a                                       ; $5CA6: $47
    nop                                           ; $5CA7: $00
    inc l                                         ; $5CA8: $2C
    ld c, c                                       ; $5CA9: $49
    nop                                           ; $5CAA: $00
    daa                                           ; $5CAB: $27
    dec hl                                        ; $5CAC: $2B
    nop                                           ; $5CAD: $00
    ld l, b                                       ; $5CAE: $68
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    ld bc, $1502                                  ; $5CB2: $01 $02 $15
    ld l, [hl]                                    ; $5CB5: $6E
    nop                                           ; $5CB6: $00
    ld b, c                                       ; $5CB7: $41
    ld l, $00                                     ; $5CB8: $2E $00
    ld b, d                                       ; $5CBA: $42
    ld c, h                                       ; $5CBB: $4C
    nop                                           ; $5CBC: $00
    ret                                           ; $5CBD: $C9


    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    inc bc                                        ; $5CC3: $03
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    inc b                                         ; $5CC6: $04
    ld [de], a                                    ; $5CC7: $12
    ld bc, $7001                                  ; $5CC8: $01 $01 $70
    inc [hl]                                      ; $5CCB: $34
    db $10                                        ; $5CCC: $10
    ld c, [hl]                                    ; $5CCD: $4E
    ld bc, $2F00                                  ; $5CCE: $01 $00 $2F
    ld l, e                                       ; $5CD1: $6B
    nop                                           ; $5CD2: $00
    ld b, a                                       ; $5CD3: $47
    nop                                           ; $5CD4: $00
    nop                                           ; $5CD5: $00
    nop                                           ; $5CD6: $00
    ld bc, $2A00                                  ; $5CD7: $01 $00 $2A
    ld [hl], $00                                  ; $5CDA: $36 $00
    ld e, l                                       ; $5CDC: $5D
    daa                                           ; $5CDD: $27
    nop                                           ; $5CDE: $00
    ret                                           ; $5CDF: $C9


    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    nop                                           ; $5CE4: $00
    inc bc                                        ; $5CE5: $03
    ld bc, $3900                                  ; $5CE6: $01 $00 $39
    ld l, e                                       ; $5CE9: $6B
    nop                                           ; $5CEA: $00
    dec sp                                        ; $5CEB: $3B
    ld h, l                                       ; $5CEC: $65
    nop                                           ; $5CED: $00
    ld h, $4C                                     ; $5CEE: $26 $4C
    nop                                           ; $5CF0: $00
    ret                                           ; $5CF1: $C9


    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    ld bc, $3500                                  ; $5CF5: $01 $00 $35
    ld h, h                                       ; $5CF8: $64
    nop                                           ; $5CF9: $00
    ld [hl], a                                    ; $5CFA: $77
    ld c, c                                       ; $5CFB: $49
    nop                                           ; $5CFC: $00
    ld l, b                                       ; $5CFD: $68
    ld [hl], c                                    ; $5CFE: $71
    nop                                           ; $5CFF: $00
    ld [hl], a                                    ; $5D00: $77
    ret                                           ; $5D01: $C9


    nop                                           ; $5D02: $00
    ld bc, $0000                                  ; $5D03: $01 $00 $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00
    inc bc                                        ; $5D09: $03
    nop                                           ; $5D0A: $00
    nop                                           ; $5D0B: $00
    rlca                                          ; $5D0C: $07
    ld a, b                                       ; $5D0D: $78
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    dec b                                         ; $5D10: $05
    add b                                         ; $5D11: $80
    nop                                           ; $5D12: $00
    nop                                           ; $5D13: $00
    ld [bc], a                                    ; $5D14: $02
    nop                                           ; $5D15: $00
    nop                                           ; $5D16: $00
    ld bc, $5D0E                                  ; $5D17: $01 $0E $5D
    ld bc, $2F00                                  ; $5D1A: $01 $00 $2F
    ld l, a                                       ; $5D1D: $6F
    nop                                           ; $5D1E: $00
    dec hl                                        ; $5D1F: $2B
    daa                                           ; $5D20: $27
    nop                                           ; $5D21: $00
    ld c, [hl]                                    ; $5D22: $4E
    ld bc, $0D00                                  ; $5D23: $01 $00 $0D
    dec de                                        ; $5D26: $1B
    nop                                           ; $5D27: $00
    ld c, d                                       ; $5D28: $4A
    nop                                           ; $5D29: $00
    nop                                           ; $5D2A: $00
    nop                                           ; $5D2B: $00
    ld bc, $4100                                  ; $5D2C: $01 $00 $41
    daa                                           ; $5D2F: $27
    nop                                           ; $5D30: $00
    ld b, d                                       ; $5D31: $42
    ld c, l                                       ; $5D32: $4D
    nop                                           ; $5D33: $00
    cpl                                           ; $5D34: $2F
    ld b, e                                       ; $5D35: $43
    nop                                           ; $5D36: $00
    ld c, h                                       ; $5D37: $4C
    ret                                           ; $5D38: $C9


    nop                                           ; $5D39: $00
    ld bc, $0000                                  ; $5D3A: $01 $00 $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    inc bc                                        ; $5D40: $03
    ld bc, $3000                                  ; $5D41: $01 $00 $30
    ld h, b                                       ; $5D44: $60
    nop                                           ; $5D45: $00
    ld l, a                                       ; $5D46: $6F
    ld c, l                                       ; $5D47: $4D
    nop                                           ; $5D48: $00
    ld [hl], $3F                                  ; $5D49: $36 $3F
    nop                                           ; $5D4B: $00
    ld c, d                                       ; $5D4C: $4A
    ld h, $00                                     ; $5D4D: $26 $00
    ld l, d                                       ; $5D4F: $6A
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    ld bc, $0D00                                  ; $5D53: $01 $00 $0D
    dec de                                        ; $5D56: $1B
    nop                                           ; $5D57: $00
    add l                                         ; $5D58: $85
    halt                                          ; $5D59: $76
    nop                                           ; $5D5A: $00
    adc l                                         ; $5D5B: $8D
    ld c, [hl]                                    ; $5D5C: $4E
    nop                                           ; $5D5D: $00
    ldh [rP1], a                                  ; $5D5E: $E0 $00
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    inc bc                                        ; $5D64: $03
    ld bc, $E100                                  ; $5D65: $01 $00 $E1
    ld c, l                                       ; $5D68: $4D
    nop                                           ; $5D69: $00
    call c, Call_000_0043                         ; $5D6A: $DC $43 $00
    ldh [c], a                                    ; $5D6D: $E2
    ld b, e                                       ; $5D6E: $43
    nop                                           ; $5D6F: $00
    db $E3                                        ; $5D70: $E3
    ld l, [hl]                                    ; $5D71: $6E
    nop                                           ; $5D72: $00
    ld bc, $0000                                  ; $5D73: $01 $00 $00
    nop                                           ; $5D76: $00
    ld bc, $2A00                                  ; $5D77: $01 $00 $2A
    scf                                           ; $5D7A: $37
    nop                                           ; $5D7B: $00
    ld b, e                                       ; $5D7C: $43
    ld bc, $5000                                  ; $5D7D: $01 $00 $50
    add hl, hl                                    ; $5D80: $29
    nop                                           ; $5D81: $00
    ld l, d                                       ; $5D82: $6A
    ld c, l                                       ; $5D83: $4D
    nop                                           ; $5D84: $00
    ret                                           ; $5D85: $C9


    nop                                           ; $5D86: $00
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    nop                                           ; $5D8A: $00
    inc b                                         ; $5D8B: $04
    inc e                                         ; $5D8C: $1C
    nop                                           ; $5D8D: $00
    nop                                           ; $5D8E: $00
    inc bc                                        ; $5D8F: $03
    ld bc, $8500                                  ; $5D90: $01 $00 $85
    halt                                          ; $5D93: $76
    nop                                           ; $5D94: $00
    adc l                                         ; $5D95: $8D
    jr nc, jr_03A_5D98                            ; $5D96: $30 $00

jr_03A_5D98:
    daa                                           ; $5D98: $27
    ld [hl], b                                    ; $5D99: $70
    nop                                           ; $5D9A: $00
    ld e, b                                       ; $5D9B: $58
    daa                                           ; $5D9C: $27
    nop                                           ; $5D9D: $00
    ld c, d                                       ; $5D9E: $4A
    nop                                           ; $5D9F: $00
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    ld bc, $4900                                  ; $5DA2: $01 $00 $49
    ld [hl], b                                    ; $5DA5: $70
    nop                                           ; $5DA6: $00
    ccf                                           ; $5DA7: $3F
    ld l, b                                       ; $5DA8: $68
    nop                                           ; $5DA9: $00
    ldh [rP1], a                                  ; $5DAA: $E0 $00
    nop                                           ; $5DAC: $00
    nop                                           ; $5DAD: $00
    nop                                           ; $5DAE: $00
    nop                                           ; $5DAF: $00
    inc bc                                        ; $5DB0: $03
    ld bc, $E100                                  ; $5DB1: $01 $00 $E1
    ld c, l                                       ; $5DB4: $4D
    nop                                           ; $5DB5: $00
    ret c                                         ; $5DB6: $D8

    ld b, e                                       ; $5DB7: $43
    nop                                           ; $5DB8: $00
    ldh [c], a                                    ; $5DB9: $E2
    ld b, e                                       ; $5DBA: $43
    nop                                           ; $5DBB: $00
    db $E3                                        ; $5DBC: $E3
    ld b, a                                       ; $5DBD: $47
    nop                                           ; $5DBE: $00
    ld bc, $0000                                  ; $5DBF: $01 $00 $00
    nop                                           ; $5DC2: $00
    ld bc, $A000                                  ; $5DC3: $01 $00 $A0
    ld a, c                                       ; $5DC6: $79
    nop                                           ; $5DC7: $00
    xor d                                         ; $5DC8: $AA
    halt                                          ; $5DC9: $76
    nop                                           ; $5DCA: $00
    or e                                          ; $5DCB: $B3
    halt                                          ; $5DCC: $76
    nop                                           ; $5DCD: $00
    sbc d                                         ; $5DCE: $9A
    ld h, h                                       ; $5DCF: $64
    nop                                           ; $5DD0: $00
    ret                                           ; $5DD1: $C9


    nop                                           ; $5DD2: $00
    nop                                           ; $5DD3: $00
    nop                                           ; $5DD4: $00
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    inc b                                         ; $5DD7: $04
    dec e                                         ; $5DD8: $1D
    nop                                           ; $5DD9: $00
    nop                                           ; $5DDA: $00
    dec b                                         ; $5DDB: $05
    ld [bc], a                                    ; $5DDC: $02
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    inc bc                                        ; $5DDF: $03
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    inc b                                         ; $5DE2: $04
    ld [de], a                                    ; $5DE3: $12
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    ld b, $FD                                     ; $5DE6: $06 $FD
    ld bc, $3600                                  ; $5DE8: $01 $00 $36
    ld d, e                                       ; $5DEB: $53
    nop                                           ; $5DEC: $00
    ld l, b                                       ; $5DED: $68
    dec l                                         ; $5DEE: $2D
    nop                                           ; $5DEF: $00
    ret z                                         ; $5DF0: $C8

    xor d                                         ; $5DF1: $AA
    nop                                           ; $5DF2: $00
    cp a                                          ; $5DF3: $BF
    halt                                          ; $5DF4: $76
    nop                                           ; $5DF5: $00
    ld a, b                                       ; $5DF6: $78
    nop                                           ; $5DF7: $00
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    ld bc, $C200                                  ; $5DFA: $01 $00 $C2
    xor h                                         ; $5DFD: $AC
    nop                                           ; $5DFE: $00
    scf                                           ; $5DFF: $37

Jump_03A_5E00:
    ld l, d                                       ; $5E00: $6A
    nop                                           ; $5E01: $00
    ld c, l                                       ; $5E02: $4D
    ld h, h                                       ; $5E03: $64
    nop                                           ; $5E04: $00
    ret                                           ; $5E05: $C9


    nop                                           ; $5E06: $00
    nop                                           ; $5E07: $00
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    nop                                           ; $5E0A: $00
    inc bc                                        ; $5E0B: $03
    nop                                           ; $5E0C: $00
    nop                                           ; $5E0D: $00
    nop                                           ; $5E0E: $00
    ld bc, $4100                                  ; $5E0F: $01 $00 $41
    ld h, h                                       ; $5E12: $64
    nop                                           ; $5E13: $00
    dec l                                         ; $5E14: $2D
    ld c, c                                       ; $5E15: $49
    nop                                           ; $5E16: $00
    ld l, d                                       ; $5E17: $6A
    ld l, l                                       ; $5E18: $6D
    nop                                           ; $5E19: $00
    ld h, h                                       ; $5E1A: $64
    ld [hl], a                                    ; $5E1B: $77
    nop                                           ; $5E1C: $00
    ret                                           ; $5E1D: $C9


    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    nop                                           ; $5E22: $00
    inc bc                                        ; $5E23: $03
    nop                                           ; $5E24: $00
    nop                                           ; $5E25: $00
    inc b                                         ; $5E26: $04
    ld e, $01                                     ; $5E27: $1E $01
    nop                                           ; $5E29: $00
    ld c, a                                       ; $5E2A: $4F
    ld [hl], b                                    ; $5E2B: $70
    nop                                           ; $5E2C: $00
    dec [hl]                                      ; $5E2D: $35
    ld b, c                                       ; $5E2E: $41
    nop                                           ; $5E2F: $00
    ld l, l                                       ; $5E30: $6D
    ld a, [hl-]                                   ; $5E31: $3A
    nop                                           ; $5E32: $00
    jr nc, jr_03A_5E35                            ; $5E33: $30 $00

jr_03A_5E35:
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00
    ld bc, $3F00                                  ; $5E37: $01 $00 $3F
    dec l                                         ; $5E3A: $2D
    nop                                           ; $5E3B: $00
    dec [hl]                                      ; $5E3C: $35
    ld l, a                                       ; $5E3D: $6F
    nop                                           ; $5E3E: $00
    ld bc, $0026                                  ; $5E3F: $01 $26 $00
    ccf                                           ; $5E42: $3F
    ld [hl], b                                    ; $5E43: $70
    nop                                           ; $5E44: $00
    ccf                                           ; $5E45: $3F
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    nop                                           ; $5E48: $00
    ld bc, $6900                                  ; $5E49: $01 $00 $69
    scf                                           ; $5E4C: $37
    nop                                           ; $5E4D: $00
    ld l, d                                       ; $5E4E: $6A
    ld c, l                                       ; $5E4F: $4D
    nop                                           ; $5E50: $00
    ld h, h                                       ; $5E51: $64
    ld [hl], l                                    ; $5E52: $75
    nop                                           ; $5E53: $00
    ld [hl], a                                    ; $5E54: $77
    ret                                           ; $5E55: $C9


    nop                                           ; $5E56: $00
    ld bc, $0000                                  ; $5E57: $01 $00 $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    nop                                           ; $5E5C: $00
    inc bc                                        ; $5E5D: $03
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    nop                                           ; $5E60: $00
    ld bc, $3700                                  ; $5E61: $01 $00 $37
    ld d, e                                       ; $5E64: $53
    nop                                           ; $5E65: $00
    ld l, b                                       ; $5E66: $68
    ld [hl], $00                                  ; $5E67: $36 $00
    daa                                           ; $5E69: $27
    ld l, l                                       ; $5E6A: $6D
    nop                                           ; $5E6B: $00
    ld [hl], c                                    ; $5E6C: $71
    ret                                           ; $5E6D: $C9


    nop                                           ; $5E6E: $00
    ld bc, $0000                                  ; $5E6F: $01 $00 $00
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    inc bc                                        ; $5E75: $03
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    inc b                                         ; $5E78: $04
    ld [de], a                                    ; $5E79: $12
    ld bc, $A000                                  ; $5E7A: $01 $00 $A0
    ld a, c                                       ; $5E7D: $79
    nop                                           ; $5E7E: $00
    xor d                                         ; $5E7F: $AA
    halt                                          ; $5E80: $76
    nop                                           ; $5E81: $00
    or e                                          ; $5E82: $B3
    halt                                          ; $5E83: $76
    nop                                           ; $5E84: $00
    sbc d                                         ; $5E85: $9A
    ld c, d                                       ; $5E86: $4A
    nop                                           ; $5E87: $00
    ld bc, $0000                                  ; $5E88: $01 $00 $00
    nop                                           ; $5E8B: $00
    ld bc, $4100                                  ; $5E8C: $01 $00 $41
    daa                                           ; $5E8F: $27
    nop                                           ; $5E90: $00
    ld b, d                                       ; $5E91: $42
    ld c, [hl]                                    ; $5E92: $4E
    nop                                           ; $5E93: $00
    ld bc, $002F                                  ; $5E94: $01 $2F $00
    cpl                                           ; $5E97: $2F
    ld e, l                                       ; $5E98: $5D
    nop                                           ; $5E99: $00
    ld b, a                                       ; $5E9A: $47
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    ld bc, $4900                                  ; $5E9E: $01 $00 $49
    ld c, l                                       ; $5EA1: $4D
    nop                                           ; $5EA2: $00
    ld h, h                                       ; $5EA3: $64
    ret                                           ; $5EA4: $C9


    nop                                           ; $5EA5: $00
    ld bc, $0000                                  ; $5EA6: $01 $00 $00
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    inc bc                                        ; $5EAC: $03
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    ld bc, $3500                                  ; $5EB0: $01 $00 $35
    ld h, h                                       ; $5EB3: $64
    nop                                           ; $5EB4: $00
    ld [hl], a                                    ; $5EB5: $77
    ld c, c                                       ; $5EB6: $49
    nop                                           ; $5EB7: $00
    ld l, b                                       ; $5EB8: $68
    ld [hl], c                                    ; $5EB9: $71
    nop                                           ; $5EBA: $00
    ld [hl], a                                    ; $5EBB: $77
    ret                                           ; $5EBC: $C9


    nop                                           ; $5EBD: $00
    ld bc, $0000                                  ; $5EBE: $01 $00 $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    inc bc                                        ; $5EC4: $03
    nop                                           ; $5EC5: $00
    nop                                           ; $5EC6: $00
    rlca                                          ; $5EC7: $07
    ld a, b                                       ; $5EC8: $78
    nop                                           ; $5EC9: $00
    nop                                           ; $5ECA: $00
    dec b                                         ; $5ECB: $05
    add b                                         ; $5ECC: $80
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
    ld [bc], a                                    ; $5ECF: $02
    nop                                           ; $5ED0: $00
    nop                                           ; $5ED1: $00
    ld bc, $5EC9                                  ; $5ED2: $01 $C9 $5E
    ld bc, $7001                                  ; $5ED5: $01 $01 $70
    inc [hl]                                      ; $5ED8: $34
    db $10                                        ; $5ED9: $10
    ld c, [hl]                                    ; $5EDA: $4E
    ld bc, $0D00                                  ; $5EDB: $01 $00 $0D
    dec de                                        ; $5EDE: $1B
    nop                                           ; $5EDF: $00
    ld c, d                                       ; $5EE0: $4A
    ld b, c                                       ; $5EE1: $41
    nop                                           ; $5EE2: $00
    daa                                           ; $5EE3: $27
    nop                                           ; $5EE4: $00
    nop                                           ; $5EE5: $00
    nop                                           ; $5EE6: $00
    ld bc, $4200                                  ; $5EE7: $01 $00 $42
    ld bc, $4900                                  ; $5EEA: $01 $00 $49
    ld c, l                                       ; $5EED: $4D
    nop                                           ; $5EEE: $00
    ld c, h                                       ; $5EEF: $4C
    ret                                           ; $5EF0: $C9


    nop                                           ; $5EF1: $00
    ld bc, $0000                                  ; $5EF2: $01 $00 $00
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    nop                                           ; $5EF7: $00
    inc bc                                        ; $5EF8: $03
    ld bc, $9901                                  ; $5EF9: $01 $01 $99
    sbc d                                         ; $5EFC: $9A
    db $10                                        ; $5EFD: $10
    ld c, l                                       ; $5EFE: $4D
    dec c                                         ; $5EFF: $0D
    db $10                                        ; $5F00: $10
    ld c, d                                       ; $5F01: $4A
    ld h, $00                                     ; $5F02: $26 $00
    ld l, d                                       ; $5F04: $6A
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    ld bc, $0D00                                  ; $5F08: $01 $00 $0D
    dec de                                        ; $5F0B: $1B
    nop                                           ; $5F0C: $00
    add l                                         ; $5F0D: $85
    halt                                          ; $5F0E: $76
    nop                                           ; $5F0F: $00
    adc l                                         ; $5F10: $8D
    ld c, [hl]                                    ; $5F11: $4E
    nop                                           ; $5F12: $00
    ldh [rP1], a                                  ; $5F13: $E0 $00
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    nop                                           ; $5F18: $00
    inc bc                                        ; $5F19: $03
    ld bc, $E100                                  ; $5F1A: $01 $00 $E1
    ld c, l                                       ; $5F1D: $4D
    nop                                           ; $5F1E: $00
    call c, Call_000_0043                         ; $5F1F: $DC $43 $00
    ldh [c], a                                    ; $5F22: $E2
    ld b, e                                       ; $5F23: $43
    nop                                           ; $5F24: $00
    db $E3                                        ; $5F25: $E3
    ld l, [hl]                                    ; $5F26: $6E
    nop                                           ; $5F27: $00
    ld bc, $0000                                  ; $5F28: $01 $00 $00
    nop                                           ; $5F2B: $00
    ld bc, $8701                                  ; $5F2C: $01 $01 $87
    scf                                           ; $5F2F: $37
    nop                                           ; $5F30: $00
    ld b, e                                       ; $5F31: $43
    sbc e                                         ; $5F32: $9B
    db $10                                        ; $5F33: $10
    add hl, hl                                    ; $5F34: $29
    ld l, d                                       ; $5F35: $6A
    nop                                           ; $5F36: $00
    ld c, l                                       ; $5F37: $4D
    ret                                           ; $5F38: $C9


    nop                                           ; $5F39: $00
    ld bc, $0000                                  ; $5F3A: $01 $00 $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    inc b                                         ; $5F40: $04
    inc e                                         ; $5F41: $1C
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    inc bc                                        ; $5F44: $03
    ld bc, $8500                                  ; $5F45: $01 $00 $85
    halt                                          ; $5F48: $76
    nop                                           ; $5F49: $00
    adc l                                         ; $5F4A: $8D
    jr nc, jr_03A_5F4D                            ; $5F4B: $30 $00

jr_03A_5F4D:
    daa                                           ; $5F4D: $27
    ld [hl], b                                    ; $5F4E: $70
    nop                                           ; $5F4F: $00
    ld e, b                                       ; $5F50: $58
    daa                                           ; $5F51: $27
    nop                                           ; $5F52: $00
    ld c, d                                       ; $5F53: $4A
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    ld bc, $4900                                  ; $5F57: $01 $00 $49
    ld [hl], b                                    ; $5F5A: $70
    nop                                           ; $5F5B: $00
    ccf                                           ; $5F5C: $3F
    ld l, b                                       ; $5F5D: $68
    nop                                           ; $5F5E: $00
    ldh [rP1], a                                  ; $5F5F: $E0 $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    inc bc                                        ; $5F65: $03
    ld bc, $E100                                  ; $5F66: $01 $00 $E1
    ld c, l                                       ; $5F69: $4D
    nop                                           ; $5F6A: $00
    ret c                                         ; $5F6B: $D8

    ld b, e                                       ; $5F6C: $43
    nop                                           ; $5F6D: $00
    ldh [c], a                                    ; $5F6E: $E2
    ld b, e                                       ; $5F6F: $43
    nop                                           ; $5F70: $00
    db $E3                                        ; $5F71: $E3
    ld b, a                                       ; $5F72: $47
    nop                                           ; $5F73: $00
    ld bc, $0000                                  ; $5F74: $01 $00 $00
    nop                                           ; $5F77: $00
    ld bc, $A000                                  ; $5F78: $01 $00 $A0
    ld a, c                                       ; $5F7B: $79
    nop                                           ; $5F7C: $00
    xor d                                         ; $5F7D: $AA
    halt                                          ; $5F7E: $76
    nop                                           ; $5F7F: $00
    or e                                          ; $5F80: $B3
    halt                                          ; $5F81: $76
    nop                                           ; $5F82: $00
    sbc d                                         ; $5F83: $9A
    ld h, h                                       ; $5F84: $64
    nop                                           ; $5F85: $00
    ret                                           ; $5F86: $C9


    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    nop                                           ; $5F8B: $00
    inc b                                         ; $5F8C: $04
    dec e                                         ; $5F8D: $1D
    nop                                           ; $5F8E: $00
    nop                                           ; $5F8F: $00
    dec b                                         ; $5F90: $05
    ld [bc], a                                    ; $5F91: $02
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    inc bc                                        ; $5F94: $03
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    inc b                                         ; $5F97: $04
    ld [de], a                                    ; $5F98: $12
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    ld b, $FD                                     ; $5F9B: $06 $FD
    ld bc, $3600                                  ; $5F9D: $01 $00 $36
    ld d, e                                       ; $5FA0: $53
    nop                                           ; $5FA1: $00
    ld l, b                                       ; $5FA2: $68
    dec l                                         ; $5FA3: $2D
    nop                                           ; $5FA4: $00
    ret z                                         ; $5FA5: $C8

    xor d                                         ; $5FA6: $AA
    nop                                           ; $5FA7: $00
    cp a                                          ; $5FA8: $BF
    halt                                          ; $5FA9: $76
    nop                                           ; $5FAA: $00
    ld a, b                                       ; $5FAB: $78
    nop                                           ; $5FAC: $00
    nop                                           ; $5FAD: $00
    nop                                           ; $5FAE: $00
    ld bc, $C200                                  ; $5FAF: $01 $00 $C2
    xor h                                         ; $5FB2: $AC
    nop                                           ; $5FB3: $00
    scf                                           ; $5FB4: $37
    ld l, d                                       ; $5FB5: $6A
    nop                                           ; $5FB6: $00
    ld c, l                                       ; $5FB7: $4D
    ld h, h                                       ; $5FB8: $64
    nop                                           ; $5FB9: $00
    ret                                           ; $5FBA: $C9


    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    inc bc                                        ; $5FC0: $03
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    ld bc, $2601                                  ; $5FC4: $01 $01 $26
    dec l                                         ; $5FC7: $2D
    nop                                           ; $5FC8: $00
    ld c, c                                       ; $5FC9: $49
    ld l, d                                       ; $5FCA: $6A
    nop                                           ; $5FCB: $00
    ld l, l                                       ; $5FCC: $6D
    ld h, h                                       ; $5FCD: $64
    nop                                           ; $5FCE: $00
    ld [hl], a                                    ; $5FCF: $77
    ret                                           ; $5FD0: $C9


    nop                                           ; $5FD1: $00
    ld bc, $0000                                  ; $5FD2: $01 $00 $00
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    inc bc                                        ; $5FD8: $03
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    inc b                                         ; $5FDB: $04
    ld e, $01                                     ; $5FDC: $1E $01
    ld bc, $4140                                  ; $5FDE: $01 $40 $41
    ld de, $3042                                  ; $5FE1: $11 $42 $30
    nop                                           ; $5FE4: $00
    ld bc, $003F                                  ; $5FE5: $01 $3F $00
    dec l                                         ; $5FE8: $2D
    dec [hl]                                      ; $5FE9: $35
    nop                                           ; $5FEA: $00
    ld l, a                                       ; $5FEB: $6F
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    ld bc, $9C01                                  ; $5FEF: $01 $01 $9C
    ccf                                           ; $5FF2: $3F
    nop                                           ; $5FF3: $00
    ld [hl], b                                    ; $5FF4: $70
    ccf                                           ; $5FF5: $3F
    nop                                           ; $5FF6: $00
    ld l, c                                       ; $5FF7: $69
    scf                                           ; $5FF8: $37
    nop                                           ; $5FF9: $00
    ld l, d                                       ; $5FFA: $6A
    ld c, l                                       ; $5FFB: $4D
    nop                                           ; $5FFC: $00
    ld h, h                                       ; $5FFD: $64
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    ld bc, $7500                                  ; $6001: $01 $00 $75
    ld [hl], a                                    ; $6004: $77
    nop                                           ; $6005: $00
    ret                                           ; $6006: $C9


    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600A: $00
    nop                                           ; $600B: $00
    inc bc                                        ; $600C: $03
    ld bc, $6001                                  ; $600D: $01 $01 $60
    ld e, [hl]                                    ; $6010: $5E
    ld de, $365F                                  ; $6011: $11 $5F $36
    nop                                           ; $6014: $00
    daa                                           ; $6015: $27
    ldh [rP1], a                                  ; $6016: $E0 $00
    daa                                           ; $6018: $27
    add hl, hl                                    ; $6019: $29
    nop                                           ; $601A: $00
    ret z                                         ; $601B: $C8

    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    ld bc, $6001                                  ; $601F: $01 $01 $60
    ld h, c                                       ; $6022: $61
    db $10                                        ; $6023: $10
    ld l, b                                       ; $6024: $68
    ld [hl], $00                                  ; $6025: $36 $00
    daa                                           ; $6027: $27
    ld l, l                                       ; $6028: $6D
    nop                                           ; $6029: $00
    ld [hl], c                                    ; $602A: $71
    ret                                           ; $602B: $C9


    nop                                           ; $602C: $00
    ld bc, $0000                                  ; $602D: $01 $00 $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    inc bc                                        ; $6033: $03
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    inc b                                         ; $6036: $04
    ld [de], a                                    ; $6037: $12
    ld bc, $A000                                  ; $6038: $01 $00 $A0
    ld a, c                                       ; $603B: $79
    nop                                           ; $603C: $00
    xor d                                         ; $603D: $AA
    halt                                          ; $603E: $76
    nop                                           ; $603F: $00
    or e                                          ; $6040: $B3
    halt                                          ; $6041: $76
    nop                                           ; $6042: $00
    sbc d                                         ; $6043: $9A
    ld c, d                                       ; $6044: $4A
    nop                                           ; $6045: $00
    ld bc, $0000                                  ; $6046: $01 $00 $00
    nop                                           ; $6049: $00
    ld bc, $4100                                  ; $604A: $01 $00 $41
    daa                                           ; $604D: $27
    nop                                           ; $604E: $00
    ld b, d                                       ; $604F: $42
    ld c, [hl]                                    ; $6050: $4E
    nop                                           ; $6051: $00
    ld bc, $002F                                  ; $6052: $01 $2F $00
    cpl                                           ; $6055: $2F
    ld e, l                                       ; $6056: $5D
    nop                                           ; $6057: $00
    ld b, a                                       ; $6058: $47
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    ld bc, $4900                                  ; $605C: $01 $00 $49
    ld c, l                                       ; $605F: $4D
    nop                                           ; $6060: $00
    ld h, h                                       ; $6061: $64
    ret                                           ; $6062: $C9


    nop                                           ; $6063: $00
    ld bc, $0000                                  ; $6064: $01 $00 $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    inc bc                                        ; $606A: $03
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    ld bc, $3500                                  ; $606E: $01 $00 $35
    ld h, h                                       ; $6071: $64
    nop                                           ; $6072: $00
    ld [hl], a                                    ; $6073: $77
    ld c, c                                       ; $6074: $49
    nop                                           ; $6075: $00
    ld l, b                                       ; $6076: $68
    ld [hl], c                                    ; $6077: $71
    nop                                           ; $6078: $00
    ld [hl], a                                    ; $6079: $77
    ret                                           ; $607A: $C9


    nop                                           ; $607B: $00
    ld bc, $0000                                  ; $607C: $01 $00 $00
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    inc bc                                        ; $6082: $03
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    rlca                                          ; $6085: $07
    ld a, b                                       ; $6086: $78
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    dec b                                         ; $6089: $05
    add b                                         ; $608A: $80
    nop                                           ; $608B: $00
    nop                                           ; $608C: $00
    ld [bc], a                                    ; $608D: $02
    nop                                           ; $608E: $00
    nop                                           ; $608F: $00
    ld bc, $6087                                  ; $6090: $01 $87 $60
    ld bc, $2F00                                  ; $6093: $01 $00 $2F
    ld l, a                                       ; $6096: $6F
    nop                                           ; $6097: $00
    dec hl                                        ; $6098: $2B
    daa                                           ; $6099: $27
    nop                                           ; $609A: $00
    ld c, [hl]                                    ; $609B: $4E
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    ld bc, $8500                                  ; $609F: $01 $00 $85
    ld a, [hl]                                    ; $60A2: $7E
    nop                                           ; $60A3: $00
    ld c, a                                       ; $60A4: $4F
    ld [hl], b                                    ; $60A5: $70
    nop                                           ; $60A6: $00
    dec [hl]                                      ; $60A7: $35
    ld b, c                                       ; $60A8: $41
    nop                                           ; $60A9: $00
    ld l, l                                       ; $60AA: $6D
    ld a, [hl-]                                   ; $60AB: $3A
    nop                                           ; $60AC: $00
    ld bc, $0000                                  ; $60AD: $01 $00 $00
    nop                                           ; $60B0: $00
    ld bc, $4300                                  ; $60B1: $01 $00 $43
    ldh [rP1], a                                  ; $60B4: $E0 $00
    ld bc, $0000                                  ; $60B6: $01 $00 $00
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    inc bc                                        ; $60BC: $03
    ld bc, $AB00                                  ; $60BD: $01 $00 $AB
    or [hl]                                       ; $60C0: $B6
    nop                                           ; $60C1: $00
    xor e                                         ; $60C2: $AB
    or [hl]                                       ; $60C3: $B6
    nop                                           ; $60C4: $00
    ld b, h                                       ; $60C5: $44
    ld l, a                                       ; $60C6: $6F
    nop                                           ; $60C7: $00
    ld c, l                                       ; $60C8: $4D
    nop                                           ; $60C9: $00
    nop                                           ; $60CA: $00
    nop                                           ; $60CB: $00
    ld bc, $3800                                  ; $60CC: $01 $00 $38
    ld b, c                                       ; $60CF: $41
    nop                                           ; $60D0: $00
    ld h, b                                       ; $60D1: $60
    daa                                           ; $60D2: $27
    nop                                           ; $60D3: $00
    ld c, c                                       ; $60D4: $49
    ld c, l                                       ; $60D5: $4D
    nop                                           ; $60D6: $00
    ld h, h                                       ; $60D7: $64
    ret                                           ; $60D8: $C9


    nop                                           ; $60D9: $00
    ld bc, $0000                                  ; $60DA: $01 $00 $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    inc bc                                        ; $60E0: $03
    ld bc, $8500                                  ; $60E1: $01 $00 $85
    ld a, [hl]                                    ; $60E4: $7E
    nop                                           ; $60E5: $00
    ld c, a                                       ; $60E6: $4F
    ld [hl], b                                    ; $60E7: $70
    nop                                           ; $60E8: $00
    dec [hl]                                      ; $60E9: $35
    ld b, c                                       ; $60EA: $41
    nop                                           ; $60EB: $00
    ld l, l                                       ; $60EC: $6D
    ld a, [hl-]                                   ; $60ED: $3A
    nop                                           ; $60EE: $00
    ld bc, $0000                                  ; $60EF: $01 $00 $00
    nop                                           ; $60F2: $00
    ld bc, $4E00                                  ; $60F3: $01 $00 $4E
    ldh [rP1], a                                  ; $60F6: $E0 $00
    ld bc, $0000                                  ; $60F8: $01 $00 $00
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    inc bc                                        ; $60FE: $03
    ld bc, $3000                                  ; $60FF: $01 $00 $30
    ld h, b                                       ; $6102: $60
    nop                                           ; $6103: $00
    ld l, a                                       ; $6104: $6F
    ld c, l                                       ; $6105: $4D
    nop                                           ; $6106: $00
    ld [hl], $3F                                  ; $6107: $36 $3F
    nop                                           ; $6109: $00
    ld c, d                                       ; $610A: $4A
    ld h, $00                                     ; $610B: $26 $00
    ld l, d                                       ; $610D: $6A
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    ld bc, $0D00                                  ; $6111: $01 $00 $0D
    dec de                                        ; $6114: $1B
    nop                                           ; $6115: $00
    add l                                         ; $6116: $85
    halt                                          ; $6117: $76
    nop                                           ; $6118: $00
    adc l                                         ; $6119: $8D
    jr nc, jr_03A_611C                            ; $611A: $30 $00

jr_03A_611C:
    ld bc, $0000                                  ; $611C: $01 $00 $00
    nop                                           ; $611F: $00
    ld bc, $2700                                  ; $6120: $01 $00 $27
    ld [hl], b                                    ; $6123: $70
    nop                                           ; $6124: $00
    ld e, b                                       ; $6125: $58
    daa                                           ; $6126: $27
    nop                                           ; $6127: $00
    ld c, l                                       ; $6128: $4D
    ld b, e                                       ; $6129: $43
    nop                                           ; $612A: $00
    inc l                                         ; $612B: $2C
    dec hl                                        ; $612C: $2B
    nop                                           ; $612D: $00
    ldh [rP1], a                                  ; $612E: $E0 $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    inc bc                                        ; $6134: $03
    ld bc, $3F00                                  ; $6135: $01 $00 $3F
    daa                                           ; $6138: $27
    nop                                           ; $6139: $00
    ld l, c                                       ; $613A: $69
    ld h, a                                       ; $613B: $67
    nop                                           ; $613C: $00
    dec l                                         ; $613D: $2D
    jr nc, jr_03A_6140                            ; $613E: $30 $00

jr_03A_6140:
    ld bc, $0000                                  ; $6140: $01 $00 $00
    nop                                           ; $6143: $00
    ld bc, $3700                                  ; $6144: $01 $00 $37
    dec l                                         ; $6147: $2D
    nop                                           ; $6148: $00
    ld c, c                                       ; $6149: $49
    daa                                           ; $614A: $27
    nop                                           ; $614B: $00
    ld b, e                                       ; $614C: $43
    inc l                                         ; $614D: $2C
    nop                                           ; $614E: $00
    ld c, d                                       ; $614F: $4A
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    ld bc, $4400                                  ; $6153: $01 $00 $44
    jr c, jr_03A_6158                             ; $6156: $38 $00

jr_03A_6158:
    ld l, d                                       ; $6158: $6A
    ld l, l                                       ; $6159: $6D
    nop                                           ; $615A: $00
    ld a, [hl-]                                   ; $615B: $3A
    ld c, c                                       ; $615C: $49
    nop                                           ; $615D: $00
    ld c, l                                       ; $615E: $4D
    ld h, h                                       ; $615F: $64
    nop                                           ; $6160: $00
    ret                                           ; $6161: $C9


    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    inc bc                                        ; $6167: $03
    ld bc, $3F00                                  ; $6168: $01 $00 $3F
    ld b, h                                       ; $616B: $44
    nop                                           ; $616C: $00
    ld [hl], $01                                  ; $616D: $36 $01
    nop                                           ; $616F: $00
    and b                                         ; $6170: $A0
    ld a, c                                       ; $6171: $79
    nop                                           ; $6172: $00
    xor d                                         ; $6173: $AA
    halt                                          ; $6174: $76
    nop                                           ; $6175: $00
    or e                                          ; $6176: $B3
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    ld bc, $7600                                  ; $617A: $01 $00 $76
    sbc d                                         ; $617D: $9A
    nop                                           ; $617E: $00
    ld b, b                                       ; $617F: $40
    ld h, [hl]                                    ; $6180: $66
    nop                                           ; $6181: $00
    jr z, @+$50                                   ; $6182: $28 $4E

    nop                                           ; $6184: $00
    ld bc, $0096                                  ; $6185: $01 $96 $00
    or d                                          ; $6188: $B2
    nop                                           ; $6189: $00
    nop                                           ; $618A: $00
    nop                                           ; $618B: $00
    ld bc, $4900                                  ; $618C: $01 $00 $49
    ld c, l                                       ; $618F: $4D
    nop                                           ; $6190: $00
    ld h, h                                       ; $6191: $64
    ret                                           ; $6192: $C9


    nop                                           ; $6193: $00
    ld bc, $0000                                  ; $6194: $01 $00 $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    inc bc                                        ; $619A: $03
    ld bc, $3F00                                  ; $619B: $01 $00 $3F
    ld b, e                                       ; $619E: $43
    nop                                           ; $619F: $00
    add hl, hl                                    ; $61A0: $29
    ld d, e                                       ; $61A1: $53
    nop                                           ; $61A2: $00
    ld bc, $0000                                  ; $61A3: $01 $00 $00
    nop                                           ; $61A6: $00
    ld bc, $BA00                                  ; $61A7: $01 $00 $BA
    ld a, c                                       ; $61AA: $79
    nop                                           ; $61AB: $00
    ld a, h                                       ; $61AC: $7C
    add c                                         ; $61AD: $81
    nop                                           ; $61AE: $00
    pop bc                                        ; $61AF: $C1
    xor c                                         ; $61B0: $A9
    nop                                           ; $61B1: $00
    ld a, c                                       ; $61B2: $79
    ld c, l                                       ; $61B3: $4D
    nop                                           ; $61B4: $00
    ld bc, $0000                                  ; $61B5: $01 $00 $00
    nop                                           ; $61B8: $00
    ld bc, $5300                                  ; $61B9: $01 $00 $53
    ld h, $00                                     ; $61BC: $26 $00
    daa                                           ; $61BE: $27
    ldh [rP1], a                                  ; $61BF: $E0 $00
    ld bc, $0000                                  ; $61C1: $01 $00 $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    inc bc                                        ; $61C7: $03
    ld bc, $DC00                                  ; $61C8: $01 $00 $DC
    jp c, $DC00                                   ; $61CB: $DA $00 $DC

    sbc $00                                       ; $61CE: $DE $00
    ld bc, $00E3                                  ; $61D0: $01 $E3 $00
    ld bc, $0047                                  ; $61D3: $01 $47 $00
    ld bc, $0000                                  ; $61D6: $01 $00 $00
    nop                                           ; $61D9: $00
    ld bc, $8B00                                  ; $61DA: $01 $00 $8B
    ld a, d                                       ; $61DD: $7A
    nop                                           ; $61DE: $00
    cp h                                          ; $61DF: $BC
    ld a, c                                       ; $61E0: $79
    nop                                           ; $61E1: $00
    pop bc                                        ; $61E2: $C1
    xor d                                         ; $61E3: $AA
    nop                                           ; $61E4: $00
    ld a, a                                       ; $61E5: $7F
    sub l                                         ; $61E6: $95
    nop                                           ; $61E7: $00
    ld bc, $0000                                  ; $61E8: $01 $00 $00
    nop                                           ; $61EB: $00
    ld bc, $3000                                  ; $61EC: $01 $00 $30
    ld b, a                                       ; $61EF: $47
    nop                                           ; $61F0: $00
    ld l, d                                       ; $61F1: $6A
    ld c, l                                       ; $61F2: $4D
    nop                                           ; $61F3: $00
    ld h, h                                       ; $61F4: $64
    ret                                           ; $61F5: $C9


    nop                                           ; $61F6: $00
    ld bc, $0000                                  ; $61F7: $01 $00 $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    inc b                                         ; $61FD: $04
    rra                                           ; $61FE: $1F
    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00
    inc bc                                        ; $6201: $03
    ld bc, $2600                                  ; $6202: $01 $00 $26
    ccf                                           ; $6205: $3F
    nop                                           ; $6206: $00
    ld l, d                                       ; $6207: $6A
    ld b, e                                       ; $6208: $43
    nop                                           ; $6209: $00
    ld bc, $0037                                  ; $620A: $01 $37 $00
    ld [hl], b                                    ; $620D: $70
    inc [hl]                                      ; $620E: $34
    nop                                           ; $620F: $00
    ld [hl], a                                    ; $6210: $77
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    ld bc, $2700                                  ; $6214: $01 $00 $27
    ld bc, $9600                                  ; $6217: $01 $00 $96
    or d                                          ; $621A: $B2
    nop                                           ; $621B: $00
    halt                                          ; $621C: $76
    adc l                                         ; $621D: $8D
    nop                                           ; $621E: $00
    ld l, [hl]                                    ; $621F: $6E
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    ld bc, $2600                                  ; $6223: $01 $00 $26
    ccf                                           ; $6226: $3F
    nop                                           ; $6227: $00
    add hl, hl                                    ; $6228: $29
    ld l, d                                       ; $6229: $6A
    nop                                           ; $622A: $00
    ld c, l                                       ; $622B: $4D
    ld h, h                                       ; $622C: $64
    nop                                           ; $622D: $00
    rlc b                                         ; $622E: $CB $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    inc bc                                        ; $6234: $03
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    inc b                                         ; $6237: $04
    ld [de], a                                    ; $6238: $12
    nop                                           ; $6239: $00
    nop                                           ; $623A: $00
    nop                                           ; $623B: $00
    ld bc, $3900                                  ; $623C: $01 $00 $39
    ld [hl], $00                                  ; $623F: $36 $00
    ld b, d                                       ; $6241: $42
    ldh [rP1], a                                  ; $6242: $E0 $00
    ld bc, $0000                                  ; $6244: $01 $00 $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    inc bc                                        ; $624A: $03
    ld bc, $AB00                                  ; $624B: $01 $00 $AB
    or [hl]                                       ; $624E: $B6
    nop                                           ; $624F: $00
    xor e                                         ; $6250: $AB
    or [hl]                                       ; $6251: $B6
    nop                                           ; $6252: $00
    ld b, h                                       ; $6253: $44
    ld l, a                                       ; $6254: $6F
    nop                                           ; $6255: $00
    ld c, [hl]                                    ; $6256: $4E
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    ld bc, $8200                                  ; $625A: $01 $00 $82
    halt                                          ; $625D: $76
    nop                                           ; $625E: $00
    sbc d                                         ; $625F: $9A
    ld b, a                                       ; $6260: $47
    nop                                           ; $6261: $00
    inc l                                         ; $6262: $2C
    ld c, c                                       ; $6263: $49
    nop                                           ; $6264: $00
    daa                                           ; $6265: $27
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    ld bc, $4300                                  ; $6269: $01 $00 $43
    ld d, h                                       ; $626C: $54
    nop                                           ; $626D: $00
    ld c, b                                       ; $626E: $48
    jr z, jr_03A_6271                             ; $626F: $28 $00

jr_03A_6271:
    ld [hl-], a                                   ; $6271: $32
    ld c, c                                       ; $6272: $49
    nop                                           ; $6273: $00
    ld c, l                                       ; $6274: $4D
    ld h, h                                       ; $6275: $64
    nop                                           ; $6276: $00
    rlc b                                         ; $6277: $CB $00
    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    inc bc                                        ; $627D: $03
    ld bc, $2F00                                  ; $627E: $01 $00 $2F
    ld c, l                                       ; $6281: $4D
    nop                                           ; $6282: $00
    ccf                                           ; $6283: $3F
    ld e, l                                       ; $6284: $5D
    nop                                           ; $6285: $00
    ld c, d                                       ; $6286: $4A
    ld bc, $2600                                  ; $6287: $01 $00 $26
    ccf                                           ; $628A: $3F
    nop                                           ; $628B: $00
    ld l, d                                       ; $628C: $6A
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    ld bc, $4300                                  ; $6290: $01 $00 $43
    ld bc, $3600                                  ; $6293: $01 $00 $36
    ld d, e                                       ; $6296: $53
    nop                                           ; $6297: $00
    ld l, b                                       ; $6298: $68
    dec l                                         ; $6299: $2D
    nop                                           ; $629A: $00
    ld bc, $0028                                  ; $629B: $01 $28 $00
    inc [hl]                                      ; $629E: $34
    nop                                           ; $629F: $00
    nop                                           ; $62A0: $00
    nop                                           ; $62A1: $00
    ld bc, $2E00                                  ; $62A2: $01 $00 $2E
    ld c, c                                       ; $62A5: $49
    nop                                           ; $62A6: $00
    dec l                                         ; $62A7: $2D
    ld c, c                                       ; $62A8: $49
    nop                                           ; $62A9: $00
    ld l, d                                       ; $62AA: $6A
    ld c, l                                       ; $62AB: $4D
    nop                                           ; $62AC: $00
    ld h, h                                       ; $62AD: $64
    ret                                           ; $62AE: $C9


    nop                                           ; $62AF: $00
    ld bc, $0000                                  ; $62B0: $01 $00 $00
    nop                                           ; $62B3: $00
    nop                                           ; $62B4: $00
    nop                                           ; $62B5: $00
    inc b                                         ; $62B6: $04
    ld [hl+], a                                   ; $62B7: $22
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    inc bc                                        ; $62BA: $03
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    inc b                                         ; $62BD: $04
    ld [de], a                                    ; $62BE: $12
    ld bc, $BE00                                  ; $62BF: $01 $00 $BE
    xor c                                         ; $62C2: $A9
    nop                                           ; $62C3: $00
    or e                                          ; $62C4: $B3
    halt                                          ; $62C5: $76
    nop                                           ; $62C6: $00
    sbc d                                         ; $62C7: $9A
    ld b, a                                       ; $62C8: $47
    nop                                           ; $62C9: $00
    ld bc, $0000                                  ; $62CA: $01 $00 $00
    nop                                           ; $62CD: $00
    ld bc, $DC00                                  ; $62CE: $01 $00 $DC
    call c, Boot                                  ; $62D1: $DC $00 $01
    db $E3                                        ; $62D4: $E3
    nop                                           ; $62D5: $00
    ld bc, $0047                                  ; $62D6: $01 $47 $00
    ld bc, $0000                                  ; $62D9: $01 $00 $00
    nop                                           ; $62DC: $00
    ld bc, $2800                                  ; $62DD: $01 $00 $28
    ld b, d                                       ; $62E0: $42
    nop                                           ; $62E1: $00
    ld l, d                                       ; $62E2: $6A
    ld c, l                                       ; $62E3: $4D
    nop                                           ; $62E4: $00
    ld h, h                                       ; $62E5: $64
    ret                                           ; $62E6: $C9


    nop                                           ; $62E7: $00
    ld bc, $0000                                  ; $62E8: $01 $00 $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    inc b                                         ; $62EE: $04
    ld hl, $0000                                  ; $62EF: $21 $00 $00
    inc bc                                        ; $62F2: $03
    ld bc, $3F00                                  ; $62F3: $01 $00 $3F
    ld b, h                                       ; $62F6: $44
    nop                                           ; $62F7: $00
    ld [hl], $CB                                  ; $62F8: $36 $CB
    nop                                           ; $62FA: $00
    ld bc, $0000                                  ; $62FB: $01 $00 $00
    nop                                           ; $62FE: $00
    ld bc, $0500                                  ; $62FF: $01 $00 $05
    dec hl                                        ; $6302: $2B
    nop                                           ; $6303: $00
    daa                                           ; $6304: $27
    ld [hl], $00                                  ; $6305: $36 $00
    dec hl                                        ; $6307: $2B
    ld bc, $2800                                  ; $6308: $01 $00 $28
    ld b, d                                       ; $630B: $42
    nop                                           ; $630C: $00
    ld c, c                                       ; $630D: $49
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    ld bc, $2700                                  ; $6311: $01 $00 $27
    ld c, l                                       ; $6314: $4D
    nop                                           ; $6315: $00
    ld h, h                                       ; $6316: $64
    ret                                           ; $6317: $C9


    nop                                           ; $6318: $00
    ld bc, $0000                                  ; $6319: $01 $00 $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    inc b                                         ; $631F: $04
    ld [de], a                                    ; $6320: $12
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    inc bc                                        ; $6323: $03
    ld bc, $3F00                                  ; $6324: $01 $00 $3F
    ld e, l                                       ; $6327: $5D
    nop                                           ; $6328: $00
    ld c, l                                       ; $6329: $4D
    dec hl                                        ; $632A: $2B
    nop                                           ; $632B: $00
    inc a                                         ; $632C: $3C
    ld c, [hl]                                    ; $632D: $4E
    nop                                           ; $632E: $00
    ld bc, $003F                                  ; $632F: $01 $3F $00
    daa                                           ; $6332: $27
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    ld bc, $6900                                  ; $6336: $01 $00 $69
    ld h, a                                       ; $6339: $67
    nop                                           ; $633A: $00
    dec l                                         ; $633B: $2D
    add l                                         ; $633C: $85
    nop                                           ; $633D: $00
    halt                                          ; $633E: $76
    adc l                                         ; $633F: $8D
    nop                                           ; $6340: $00
    ld c, l                                       ; $6341: $4D
    ld [hl], $00                                  ; $6342: $36 $00
    ccf                                           ; $6344: $3F
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    ld bc, $6E00                                  ; $6348: $01 $00 $6E
    ld bc, $5E00                                  ; $634B: $01 $00 $5E
    ld b, d                                       ; $634E: $42
    nop                                           ; $634F: $00
    ld c, h                                       ; $6350: $4C
    ret                                           ; $6351: $C9


    nop                                           ; $6352: $00
    ld bc, $0000                                  ; $6353: $01 $00 $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    inc bc                                        ; $6359: $03
    ld bc, $4300                                  ; $635A: $01 $00 $43
    ret z                                         ; $635D: $C8

    nop                                           ; $635E: $00
    daa                                           ; $635F: $27
    jr z, jr_03A_6362                             ; $6360: $28 $00

jr_03A_6362:
    cpl                                           ; $6362: $2F
    ld b, e                                       ; $6363: $43
    nop                                           ; $6364: $00
    ld b, a                                       ; $6365: $47
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    ld bc, $2F00                                  ; $6369: $01 $00 $2F
    cpl                                           ; $636C: $2F
    nop                                           ; $636D: $00
    ld e, l                                       ; $636E: $5D
    ld b, a                                       ; $636F: $47
    nop                                           ; $6370: $00
    ld h, h                                       ; $6371: $64
    ret                                           ; $6372: $C9


    nop                                           ; $6373: $00
    ld bc, $0000                                  ; $6374: $01 $00 $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    inc bc                                        ; $637A: $03
    ld bc, $5D00                                  ; $637B: $01 $00 $5D
    ccf                                           ; $637E: $3F
    nop                                           ; $637F: $00
    ld c, h                                       ; $6380: $4C
    ret                                           ; $6381: $C9


    nop                                           ; $6382: $00
    ld bc, $0000                                  ; $6383: $01 $00 $00
    nop                                           ; $6386: $00
    ld bc, $3500                                  ; $6387: $01 $00 $35
    ld h, h                                       ; $638A: $64
    nop                                           ; $638B: $00
    ld [hl], a                                    ; $638C: $77
    ld c, c                                       ; $638D: $49
    nop                                           ; $638E: $00
    ld l, b                                       ; $638F: $68
    ld [hl], c                                    ; $6390: $71
    nop                                           ; $6391: $00
    ld [hl], a                                    ; $6392: $77
    ret                                           ; $6393: $C9


    nop                                           ; $6394: $00
    ld bc, $0000                                  ; $6395: $01 $00 $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    inc bc                                        ; $639B: $03
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    rlca                                          ; $639E: $07
    ld a, b                                       ; $639F: $78
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    dec b                                         ; $63A2: $05
    add b                                         ; $63A3: $80
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    ld [bc], a                                    ; $63A6: $02
    nop                                           ; $63A7: $00
    nop                                           ; $63A8: $00
    ld bc, $63A0                                  ; $63A9: $01 $A0 $63
    ld bc, $7001                                  ; $63AC: $01 $01 $70
    inc [hl]                                      ; $63AF: $34
    db $10                                        ; $63B0: $10
    ld c, [hl]                                    ; $63B1: $4E
    ld bc, $9F02                                  ; $63B2: $01 $02 $9F
    ld b, b                                       ; $63B5: $40
    ld de, $4241                                  ; $63B6: $11 $41 $42
    db $10                                        ; $63B9: $10
    ld b, e                                       ; $63BA: $43
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    ld bc, $AB00                                  ; $63BE: $01 $00 $AB
    or [hl]                                       ; $63C1: $B6
    nop                                           ; $63C2: $00
    xor e                                         ; $63C3: $AB
    or [hl]                                       ; $63C4: $B6
    ld [bc], a                                    ; $63C5: $02
    ld d, a                                       ; $63C6: $57
    ld c, l                                       ; $63C7: $4D
    ld bc, $7675                                  ; $63C8: $01 $75 $76
    db $10                                        ; $63CB: $10
    ld bc, $0000                                  ; $63CC: $01 $00 $00
    nop                                           ; $63CF: $00
    ld bc, $4900                                  ; $63D0: $01 $00 $49
    ld c, l                                       ; $63D3: $4D
    nop                                           ; $63D4: $00
    ld h, h                                       ; $63D5: $64
    ret                                           ; $63D6: $C9


    nop                                           ; $63D7: $00
    ld bc, $0000                                  ; $63D8: $01 $00 $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    inc bc                                        ; $63DE: $03
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    ld bc, $9F02                                  ; $63E2: $01 $02 $9F
    ld b, b                                       ; $63E5: $40
    ld de, $4241                                  ; $63E6: $11 $41 $42
    db $10                                        ; $63E9: $10
    ld c, [hl]                                    ; $63EA: $4E
    ldh [rP1], a                                  ; $63EB: $E0 $00
    ld bc, $0000                                  ; $63ED: $01 $00 $00
    nop                                           ; $63F0: $00
    nop                                           ; $63F1: $00
    nop                                           ; $63F2: $00
    inc bc                                        ; $63F3: $03
    ld bc, $9901                                  ; $63F4: $01 $01 $99
    sbc d                                         ; $63F7: $9A
    db $10                                        ; $63F8: $10
    ld c, l                                       ; $63F9: $4D
    dec c                                         ; $63FA: $0D
    db $10                                        ; $63FB: $10
    ld c, d                                       ; $63FC: $4A
    ld h, $00                                     ; $63FD: $26 $00
    ld l, d                                       ; $63FF: $6A
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    ld bc, $0D00                                  ; $6403: $01 $00 $0D
    dec de                                        ; $6406: $1B
    nop                                           ; $6407: $00
    add l                                         ; $6408: $85
    halt                                          ; $6409: $76
    nop                                           ; $640A: $00
    adc l                                         ; $640B: $8D
    jr nc, jr_03A_640E                            ; $640C: $30 $00

jr_03A_640E:
    ld bc, $0000                                  ; $640E: $01 $00 $00
    nop                                           ; $6411: $00
    ld bc, $2700                                  ; $6412: $01 $00 $27
    ld [hl], b                                    ; $6415: $70
    nop                                           ; $6416: $00
    ld e, b                                       ; $6417: $58
    daa                                           ; $6418: $27
    nop                                           ; $6419: $00
    ld c, l                                       ; $641A: $4D
    ld b, e                                       ; $641B: $43
    nop                                           ; $641C: $00
    inc l                                         ; $641D: $2C
    dec hl                                        ; $641E: $2B
    nop                                           ; $641F: $00
    ldh [rP1], a                                  ; $6420: $E0 $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    inc bc                                        ; $6426: $03
    ld bc, $1602                                  ; $6427: $01 $02 $16
    inc b                                         ; $642A: $04
    db $10                                        ; $642B: $10
    jr nc, jr_03A_6453                            ; $642C: $30 $25

    jr nz, @+$4B                                  ; $642E: $20 $49

    daa                                           ; $6430: $27
    nop                                           ; $6431: $00
    ld b, e                                       ; $6432: $43
    inc l                                         ; $6433: $2C
    nop                                           ; $6434: $00
    ld c, d                                       ; $6435: $4A
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    ld bc, $1801                                  ; $6439: $01 $01 $18
    jr c, jr_03A_643E                             ; $643C: $38 $00

jr_03A_643E:
    ld l, d                                       ; $643E: $6A
    ld b, d                                       ; $643F: $42
    db $10                                        ; $6440: $10
    ld c, c                                       ; $6441: $49
    ld c, l                                       ; $6442: $4D
    nop                                           ; $6443: $00
    ld h, h                                       ; $6444: $64
    ret                                           ; $6445: $C9


    nop                                           ; $6446: $00
    ld bc, $0000                                  ; $6447: $01 $00 $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    nop                                           ; $644C: $00
    inc bc                                        ; $644D: $03
    ld bc, $3F00                                  ; $644E: $01 $00 $3F
    ld b, h                                       ; $6451: $44
    nop                                           ; $6452: $00

jr_03A_6453:
    ld [hl], $01                                  ; $6453: $36 $01
    nop                                           ; $6455: $00
    and b                                         ; $6456: $A0
    ld a, c                                       ; $6457: $79
    nop                                           ; $6458: $00
    xor d                                         ; $6459: $AA
    halt                                          ; $645A: $76
    nop                                           ; $645B: $00
    or e                                          ; $645C: $B3
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    ld bc, $7600                                  ; $6460: $01 $00 $76
    sbc d                                         ; $6463: $9A
    ld bc, $4E58                                  ; $6464: $01 $58 $4E
    nop                                           ; $6467: $00
    ld bc, $0096                                  ; $6468: $01 $96 $00
    or d                                          ; $646B: $B2
    ld c, c                                       ; $646C: $49
    nop                                           ; $646D: $00
    ld c, l                                       ; $646E: $4D
    nop                                           ; $646F: $00
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    ld bc, $6400                                  ; $6472: $01 $00 $64
    ret                                           ; $6475: $C9


    nop                                           ; $6476: $00
    ld bc, $0000                                  ; $6477: $01 $00 $00

jr_03A_647A:
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    inc bc                                        ; $647D: $03
    ld bc, $1E02                                  ; $647E: $01 $02 $1E
    add hl, hl                                    ; $6481: $29
    nop                                           ; $6482: $00
    ld d, e                                       ; $6483: $53
    ld bc, $BA00                                  ; $6484: $01 $00 $BA
    ld a, c                                       ; $6487: $79
    nop                                           ; $6488: $00
    ld a, h                                       ; $6489: $7C
    add c                                         ; $648A: $81
    nop                                           ; $648B: $00
    pop bc                                        ; $648C: $C1
    nop                                           ; $648D: $00
    nop                                           ; $648E: $00
    nop                                           ; $648F: $00
    ld bc, $A900                                  ; $6490: $01 $00 $A9
    ld a, c                                       ; $6493: $79
    nop                                           ; $6494: $00
    ld c, l                                       ; $6495: $4D
    rra                                           ; $6496: $1F
    ld [hl+], a                                   ; $6497: $22
    jr nz, jr_03A_647A                            ; $6498: $20 $E0

    nop                                           ; $649A: $00
    ld bc, $0000                                  ; $649B: $01 $00 $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    nop                                           ; $64A0: $00
    inc bc                                        ; $64A1: $03
    ld bc, $DC00                                  ; $64A2: $01 $00 $DC
    jp c, $DC00                                   ; $64A5: $DA $00 $DC

    sbc $00                                       ; $64A8: $DE $00
    ld bc, $00E3                                  ; $64AA: $01 $E3 $00
    ld bc, $0047                                  ; $64AD: $01 $47 $00
    ld bc, $0000                                  ; $64B0: $01 $00 $00
    nop                                           ; $64B3: $00
    ld bc, $8B00                                  ; $64B4: $01 $00 $8B
    ld a, d                                       ; $64B7: $7A
    nop                                           ; $64B8: $00
    cp h                                          ; $64B9: $BC
    ld a, c                                       ; $64BA: $79
    nop                                           ; $64BB: $00
    pop bc                                        ; $64BC: $C1
    xor d                                         ; $64BD: $AA
    nop                                           ; $64BE: $00
    ld a, a                                       ; $64BF: $7F
    sub l                                         ; $64C0: $95
    nop                                           ; $64C1: $00
    ld bc, $0000                                  ; $64C2: $01 $00 $00
    nop                                           ; $64C5: $00
    ld bc, $3000                                  ; $64C6: $01 $00 $30
    jr jr_03A_64DB                                ; $64C9: $18 $10

    ld l, d                                       ; $64CB: $6A
    ld c, l                                       ; $64CC: $4D
    nop                                           ; $64CD: $00
    ld h, h                                       ; $64CE: $64
    ret                                           ; $64CF: $C9


    nop                                           ; $64D0: $00
    ld bc, $0000                                  ; $64D1: $01 $00 $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    inc b                                         ; $64D7: $04
    rra                                           ; $64D8: $1F
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00

jr_03A_64DB:
    inc bc                                        ; $64DB: $03
    ld bc, $9C01                                  ; $64DC: $01 $01 $9C
    ccf                                           ; $64DF: $3F
    nop                                           ; $64E0: $00
    ld l, d                                       ; $64E1: $6A
    ld b, e                                       ; $64E2: $43
    nop                                           ; $64E3: $00
    ld bc, $0037                                  ; $64E4: $01 $37 $00
    ld [hl], b                                    ; $64E7: $70
    inc [hl]                                      ; $64E8: $34
    nop                                           ; $64E9: $00
    ld [hl], a                                    ; $64EA: $77
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    ld bc, $2700                                  ; $64EE: $01 $00 $27
    ld bc, $9600                                  ; $64F1: $01 $00 $96
    or d                                          ; $64F4: $B2
    nop                                           ; $64F5: $00
    halt                                          ; $64F6: $76
    adc l                                         ; $64F7: $8D
    nop                                           ; $64F8: $00
    ld l, [hl]                                    ; $64F9: $6E
    ld h, $20                                     ; $64FA: $26 $20
    add hl, hl                                    ; $64FC: $29
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    ld bc, $6A00                                  ; $6500: $01 $00 $6A
    ld c, l                                       ; $6503: $4D
    nop                                           ; $6504: $00
    ld h, h                                       ; $6505: $64
    rlc b                                         ; $6506: $CB $00
    ld bc, $0000                                  ; $6508: $01 $00 $00
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    inc bc                                        ; $650E: $03
    nop                                           ; $650F: $00
    nop                                           ; $6510: $00
    inc b                                         ; $6511: $04
    ld [de], a                                    ; $6512: $12
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    ld bc, $3900                                  ; $6516: $01 $00 $39
    ld [hl], $00                                  ; $6519: $36 $00
    ld b, d                                       ; $651B: $42
    ldh [rP1], a                                  ; $651C: $E0 $00
    ld bc, $0000                                  ; $651E: $01 $00 $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    inc bc                                        ; $6524: $03
    ld bc, $AB00                                  ; $6525: $01 $00 $AB
    or [hl]                                       ; $6528: $B6
    nop                                           ; $6529: $00
    xor e                                         ; $652A: $AB
    or [hl]                                       ; $652B: $B6
    ld [bc], a                                    ; $652C: $02
    ld d, a                                       ; $652D: $57
    ld c, [hl]                                    ; $652E: $4E
    nop                                           ; $652F: $00
    ld bc, $0000                                  ; $6530: $01 $00 $00
    nop                                           ; $6533: $00
    ld bc, $8200                                  ; $6534: $01 $00 $82
    halt                                          ; $6537: $76
    nop                                           ; $6538: $00
    sbc d                                         ; $6539: $9A
    ld b, a                                       ; $653A: $47
    nop                                           ; $653B: $00
    inc l                                         ; $653C: $2C
    ld c, c                                       ; $653D: $49
    nop                                           ; $653E: $00
    daa                                           ; $653F: $27
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    ld bc, $3002                                  ; $6543: $01 $02 $30
    ld d, h                                       ; $6546: $54
    ld bc, $3178                                  ; $6547: $01 $78 $31
    jr nz, @+$4B                                  ; $654A: $20 $49

    ld c, l                                       ; $654C: $4D
    nop                                           ; $654D: $00
    ld h, h                                       ; $654E: $64
    rlc b                                         ; $654F: $CB $00
    ld bc, $0000                                  ; $6551: $01 $00 $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    inc bc                                        ; $6557: $03
    ld bc, $2F00                                  ; $6558: $01 $00 $2F
    ld c, l                                       ; $655B: $4D
    ld [bc], a                                    ; $655C: $02
    ld d, a                                       ; $655D: $57
    ld c, d                                       ; $655E: $4A
    nop                                           ; $655F: $00
    ld bc, $109C                                  ; $6560: $01 $9C $10
    ccf                                           ; $6563: $3F
    ld l, d                                       ; $6564: $6A
    nop                                           ; $6565: $00
    ld b, e                                       ; $6566: $43
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    ld bc, $3600                                  ; $656A: $01 $00 $36
    ld d, e                                       ; $656D: $53
    nop                                           ; $656E: $00
    ld l, b                                       ; $656F: $68
    dec l                                         ; $6570: $2D
    nop                                           ; $6571: $00
    ld bc, $10AD                                  ; $6572: $01 $AD $10
    ld l, $49                                     ; $6575: $2E $49
    nop                                           ; $6577: $00
    dec l                                         ; $6578: $2D
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    ld bc, $4900                                  ; $657C: $01 $00 $49
    ld l, d                                       ; $657F: $6A
    nop                                           ; $6580: $00
    ld c, l                                       ; $6581: $4D
    ld h, h                                       ; $6582: $64
    nop                                           ; $6583: $00
    ret                                           ; $6584: $C9


    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    inc b                                         ; $658A: $04
    ld [hl+], a                                   ; $658B: $22
    nop                                           ; $658C: $00
    nop                                           ; $658D: $00
    inc bc                                        ; $658E: $03
    nop                                           ; $658F: $00
    nop                                           ; $6590: $00
    inc b                                         ; $6591: $04
    ld [de], a                                    ; $6592: $12
    ld bc, $BE00                                  ; $6593: $01 $00 $BE
    xor c                                         ; $6596: $A9
    nop                                           ; $6597: $00
    or e                                          ; $6598: $B3
    halt                                          ; $6599: $76
    nop                                           ; $659A: $00
    sbc d                                         ; $659B: $9A
    ld b, a                                       ; $659C: $47
    nop                                           ; $659D: $00
    ld bc, $0000                                  ; $659E: $01 $00 $00
    nop                                           ; $65A1: $00
    ld bc, $DC00                                  ; $65A2: $01 $00 $DC
    call c, Boot                                  ; $65A5: $DC $00 $01
    db $E3                                        ; $65A8: $E3
    nop                                           ; $65A9: $00
    ld bc, $0047                                  ; $65AA: $01 $47 $00
    ld bc, $0000                                  ; $65AD: $01 $00 $00
    nop                                           ; $65B0: $00
    ld bc, $8B01                                  ; $65B1: $01 $01 $8B
    ld b, d                                       ; $65B4: $42
    nop                                           ; $65B5: $00
    ld l, d                                       ; $65B6: $6A
    ld c, l                                       ; $65B7: $4D
    nop                                           ; $65B8: $00
    ld h, h                                       ; $65B9: $64
    ret                                           ; $65BA: $C9


    nop                                           ; $65BB: $00
    ld bc, $0000                                  ; $65BC: $01 $00 $00
    nop                                           ; $65BF: $00
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    inc b                                         ; $65C2: $04
    ld hl, $0000                                  ; $65C3: $21 $00 $00
    inc bc                                        ; $65C6: $03
    ld bc, $3F00                                  ; $65C7: $01 $00 $3F
    ld b, h                                       ; $65CA: $44
    nop                                           ; $65CB: $00
    ld [hl], $CB                                  ; $65CC: $36 $CB
    nop                                           ; $65CE: $00
    ld bc, $0000                                  ; $65CF: $01 $00 $00
    nop                                           ; $65D2: $00
    ld bc, $0500                                  ; $65D3: $01 $00 $05
    inc [hl]                                      ; $65D6: $34
    db $10                                        ; $65D7: $10
    ld [hl], $2B                                  ; $65D8: $36 $2B
    nop                                           ; $65DA: $00
    ld bc, $108B                                  ; $65DB: $01 $8B $10
    ld b, d                                       ; $65DE: $42
    ld c, c                                       ; $65DF: $49
    nop                                           ; $65E0: $00
    daa                                           ; $65E1: $27
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    ld bc, $4D00                                  ; $65E5: $01 $00 $4D
    ld h, h                                       ; $65E8: $64
    nop                                           ; $65E9: $00
    ret                                           ; $65EA: $C9


    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    inc b                                         ; $65F0: $04
    ld [de], a                                    ; $65F1: $12
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    inc bc                                        ; $65F4: $03
    ld bc, $5702                                  ; $65F5: $01 $02 $57
    ld c, l                                       ; $65F8: $4D
    ld [bc], a                                    ; $65F9: $02
    sbc l                                         ; $65FA: $9D
    ld c, [hl]                                    ; $65FB: $4E
    nop                                           ; $65FC: $00
    ld bc, $2116                                  ; $65FD: $01 $16 $21
    inc b                                         ; $6600: $04
    add l                                         ; $6601: $85
    nop                                           ; $6602: $00
    halt                                          ; $6603: $76
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    ld bc, $8D00                                  ; $6607: $01 $00 $8D
    ld c, l                                       ; $660A: $4D
    ld bc, $6E0D                                  ; $660B: $01 $0D $6E
    nop                                           ; $660E: $00
    ld bc, $1098                                  ; $660F: $01 $98 $10
    ld b, d                                       ; $6612: $42
    ld c, h                                       ; $6613: $4C
    nop                                           ; $6614: $00
    ret                                           ; $6615: $C9


    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    inc bc                                        ; $661B: $03
    ld bc, $4300                                  ; $661C: $01 $00 $43
    ret z                                         ; $661F: $C8

    nop                                           ; $6620: $00
    daa                                           ; $6621: $27
    jr z, jr_03A_6624                             ; $6622: $28 $00

jr_03A_6624:
    cpl                                           ; $6624: $2F
    ld b, e                                       ; $6625: $43
    nop                                           ; $6626: $00
    ld b, a                                       ; $6627: $47
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    ld bc, $2F00                                  ; $662B: $01 $00 $2F
    cpl                                           ; $662E: $2F
    nop                                           ; $662F: $00
    ld e, l                                       ; $6630: $5D
    ld b, a                                       ; $6631: $47
    nop                                           ; $6632: $00
    ld h, h                                       ; $6633: $64
    ret                                           ; $6634: $C9


    nop                                           ; $6635: $00
    ld bc, $0000                                  ; $6636: $01 $00 $00
    nop                                           ; $6639: $00
    nop                                           ; $663A: $00
    nop                                           ; $663B: $00
    inc bc                                        ; $663C: $03
    ld bc, $5D00                                  ; $663D: $01 $00 $5D
    ccf                                           ; $6640: $3F
    nop                                           ; $6641: $00
    ld c, h                                       ; $6642: $4C
    ret                                           ; $6643: $C9


    nop                                           ; $6644: $00
    ld bc, $0000                                  ; $6645: $01 $00 $00
    nop                                           ; $6648: $00
    ld bc, $3500                                  ; $6649: $01 $00 $35
    ld h, h                                       ; $664C: $64
    nop                                           ; $664D: $00
    ld [hl], a                                    ; $664E: $77
    ld c, c                                       ; $664F: $49
    nop                                           ; $6650: $00
    ld l, b                                       ; $6651: $68
    ld [hl], c                                    ; $6652: $71
    nop                                           ; $6653: $00
    ld [hl], a                                    ; $6654: $77
    ret                                           ; $6655: $C9


    nop                                           ; $6656: $00
    ld bc, $0000                                  ; $6657: $01 $00 $00
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    nop                                           ; $665C: $00
    inc bc                                        ; $665D: $03
    nop                                           ; $665E: $00
    nop                                           ; $665F: $00
    rlca                                          ; $6660: $07
    ld a, b                                       ; $6661: $78
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    dec b                                         ; $6664: $05
    add b                                         ; $6665: $80
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    ld [bc], a                                    ; $6668: $02
    nop                                           ; $6669: $00
    nop                                           ; $666A: $00
    ld bc, $6662                                  ; $666B: $01 $62 $66
    ld bc, $4E00                                  ; $666E: $01 $00 $4E
    ld [hl], c                                    ; $6671: $71
    nop                                           ; $6672: $00
    ld [hl], a                                    ; $6673: $77
    daa                                           ; $6674: $27
    nop                                           ; $6675: $00
    ld bc, $0089                                  ; $6676: $01 $89 $00
    sub c                                         ; $6679: $91
    halt                                          ; $667A: $76
    nop                                           ; $667B: $00
    adc c                                         ; $667C: $89
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    nop                                           ; $667F: $00
    ld bc, $7F00                                  ; $6680: $01 $00 $7F
    cp e                                          ; $6683: $BB
    nop                                           ; $6684: $00
    halt                                          ; $6685: $76
    or c                                          ; $6686: $B1
    nop                                           ; $6687: $00
    ld c, c                                       ; $6688: $49
    ld c, l                                       ; $6689: $4D
    nop                                           ; $668A: $00
    ld h, h                                       ; $668B: $64
    ld [hl], l                                    ; $668C: $75
    nop                                           ; $668D: $00
    ret                                           ; $668E: $C9


    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    inc bc                                        ; $6694: $03
    ld bc, $2F00                                  ; $6695: $01 $00 $2F
    ld e, l                                       ; $6698: $5D
    nop                                           ; $6699: $00
    ld [hl], b                                    ; $669A: $70
    ccf                                           ; $669B: $3F
    nop                                           ; $669C: $00
    ld l, l                                       ; $669D: $6D
    ld c, h                                       ; $669E: $4C
    nop                                           ; $669F: $00
    ret                                           ; $66A0: $C9


    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00
    ld bc, $6100                                  ; $66A4: $01 $00 $61
    jr z, jr_03A_66A9                             ; $66A7: $28 $00

jr_03A_66A9:
    ld a, [hl+]                                   ; $66A9: $2A
    ld [hl], $00                                  ; $66AA: $36 $00
    add hl, hl                                    ; $66AC: $29
    ld l, d                                       ; $66AD: $6A
    nop                                           ; $66AE: $00
    cpl                                           ; $66AF: $2F
    ld b, e                                       ; $66B0: $43
    nop                                           ; $66B1: $00
    jr nc, jr_03A_66B4                            ; $66B2: $30 $00

jr_03A_66B4:
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    ld bc, $4900                                  ; $66B6: $01 $00 $49
    daa                                           ; $66B9: $27
    nop                                           ; $66BA: $00
    ld c, l                                       ; $66BB: $4D
    ld h, h                                       ; $66BC: $64
    nop                                           ; $66BD: $00
    ret                                           ; $66BE: $C9


    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    inc bc                                        ; $66C4: $03
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    inc b                                         ; $66C7: $04
    dec de                                        ; $66C8: $1B
    ld bc, $2800                                  ; $66C9: $01 $00 $28
    ld [hl], a                                    ; $66CC: $77
    nop                                           ; $66CD: $00
    ld l, a                                       ; $66CE: $6F
    ret                                           ; $66CF: $C9


    nop                                           ; $66D0: $00
    ld bc, $0000                                  ; $66D1: $01 $00 $00
    nop                                           ; $66D4: $00
    nop                                           ; $66D5: $00
    nop                                           ; $66D6: $00
    inc b                                         ; $66D7: $04
    dec de                                        ; $66D8: $1B
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    inc bc                                        ; $66DB: $03
    nop                                           ; $66DC: $00
    nop                                           ; $66DD: $00
    inc b                                         ; $66DE: $04
    dec de                                        ; $66DF: $1B
    ld bc, $2800                                  ; $66E0: $01 $00 $28
    ld [hl], a                                    ; $66E3: $77
    nop                                           ; $66E4: $00
    ld l, a                                       ; $66E5: $6F
    ret                                           ; $66E6: $C9


    nop                                           ; $66E7: $00
    ld bc, $0000                                  ; $66E8: $01 $00 $00
    nop                                           ; $66EB: $00
    nop                                           ; $66EC: $00
    nop                                           ; $66ED: $00
    inc b                                         ; $66EE: $04
    dec de                                        ; $66EF: $1B
    ld bc, $2800                                  ; $66F0: $01 $00 $28
    ld [hl], a                                    ; $66F3: $77
    nop                                           ; $66F4: $00
    ld [hl], a                                    ; $66F5: $77
    ld l, a                                       ; $66F6: $6F
    nop                                           ; $66F7: $00
    ret                                           ; $66F8: $C9


    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    inc b                                         ; $66FE: $04
    dec de                                        ; $66FF: $1B
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    inc bc                                        ; $6702: $03
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    inc b                                         ; $6705: $04
    dec de                                        ; $6706: $1B
    ld bc, $2800                                  ; $6707: $01 $00 $28
    ld [hl], a                                    ; $670A: $77
    nop                                           ; $670B: $00
    ld l, a                                       ; $670C: $6F
    ret                                           ; $670D: $C9


    nop                                           ; $670E: $00
    ld bc, $0000                                  ; $670F: $01 $00 $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    inc b                                         ; $6715: $04
    dec de                                        ; $6716: $1B
    ld bc, $2800                                  ; $6717: $01 $00 $28
    ld [hl], a                                    ; $671A: $77
    nop                                           ; $671B: $00
    ld [hl], a                                    ; $671C: $77
    ld l, a                                       ; $671D: $6F
    nop                                           ; $671E: $00
    ret                                           ; $671F: $C9


    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    inc b                                         ; $6725: $04
    dec de                                        ; $6726: $1B
    ld bc, $2800                                  ; $6727: $01 $00 $28
    ld [hl], a                                    ; $672A: $77
    nop                                           ; $672B: $00
    ld [hl], a                                    ; $672C: $77
    ld [hl], a                                    ; $672D: $77
    nop                                           ; $672E: $00
    ld l, a                                       ; $672F: $6F
    ret                                           ; $6730: $C9


    nop                                           ; $6731: $00
    ld bc, $0000                                  ; $6732: $01 $00 $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    inc b                                         ; $6738: $04
    dec de                                        ; $6739: $1B
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    inc bc                                        ; $673C: $03
    ld bc, $3900                                  ; $673D: $01 $00 $39
    jr z, jr_03A_6742                             ; $6740: $28 $00

jr_03A_6742:
    ld b, h                                       ; $6742: $44
    ld l, l                                       ; $6743: $6D
    nop                                           ; $6744: $00
    rlc b                                         ; $6745: $CB $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    ld bc, $4300                                  ; $6749: $01 $00 $43
    ld [hl], b                                    ; $674C: $70
    nop                                           ; $674D: $00
    ld b, d                                       ; $674E: $42
    ld a, [hl+]                                   ; $674F: $2A
    nop                                           ; $6750: $00
    inc l                                         ; $6751: $2C
    ld c, l                                       ; $6752: $4D
    nop                                           ; $6753: $00
    xor d                                         ; $6754: $AA
    adc c                                         ; $6755: $89
    nop                                           ; $6756: $00
    cp a                                          ; $6757: $BF
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    ld bc, $7600                                  ; $675B: $01 $00 $76
    sbc d                                         ; $675E: $9A
    nop                                           ; $675F: $00
    jr nc, jr_03A_6788                            ; $6760: $30 $26

    nop                                           ; $6762: $00
    ld l, d                                       ; $6763: $6A
    ld l, l                                       ; $6764: $6D
    nop                                           ; $6765: $00
    ret                                           ; $6766: $C9


    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    nop                                           ; $676B: $00
    inc bc                                        ; $676C: $03
    nop                                           ; $676D: $00
    nop                                           ; $676E: $00
    nop                                           ; $676F: $00
    ld bc, $F400                                  ; $6770: $01 $00 $F4
    ld a, [hl+]                                   ; $6773: $2A
    nop                                           ; $6774: $00
    ld [hl], $69                                  ; $6775: $36 $69
    nop                                           ; $6777: $00
    push af                                       ; $6778: $F5
    ld bc, $6400                                  ; $6779: $01 $00 $64
    ret                                           ; $677C: $C9


    nop                                           ; $677D: $00
    ld bc, $0000                                  ; $677E: $01 $00 $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    inc bc                                        ; $6784: $03
    ld bc, $6100                                  ; $6785: $01 $00 $61

jr_03A_6788:
    jr z, jr_03A_678A                             ; $6788: $28 $00

jr_03A_678A:
    cpl                                           ; $678A: $2F
    ld l, e                                       ; $678B: $6B
    nop                                           ; $678C: $00
    ld b, a                                       ; $678D: $47
    ld bc, $2600                                  ; $678E: $01 $00 $26
    ccf                                           ; $6791: $3F
    nop                                           ; $6792: $00
    ld [hl], $00                                  ; $6793: $36 $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    ld bc, $4D00                                  ; $6797: $01 $00 $4D
    jr c, jr_03A_679C                             ; $679A: $38 $00

jr_03A_679C:
    ld b, c                                       ; $679C: $41
    ld h, b                                       ; $679D: $60
    nop                                           ; $679E: $00
    daa                                           ; $679F: $27
    add c                                         ; $67A0: $81
    nop                                           ; $67A1: $00
    halt                                          ; $67A2: $76
    sbc e                                         ; $67A3: $9B
    nop                                           ; $67A4: $00
    halt                                          ; $67A5: $76
    nop                                           ; $67A6: $00
    nop                                           ; $67A7: $00
    nop                                           ; $67A8: $00
    ld bc, $4E00                                  ; $67A9: $01 $00 $4E
    ld bc, $2A00                                  ; $67AC: $01 $00 $2A
    ld [hl], $00                                  ; $67AF: $36 $00
    ld e, l                                       ; $67B1: $5D
    daa                                           ; $67B2: $27
    nop                                           ; $67B3: $00
    ld h, h                                       ; $67B4: $64
    ret                                           ; $67B5: $C9


    nop                                           ; $67B6: $00
    ld bc, $0000                                  ; $67B7: $01 $00 $00
    nop                                           ; $67BA: $00
    nop                                           ; $67BB: $00
    nop                                           ; $67BC: $00
    inc bc                                        ; $67BD: $03
    ld bc, $2A00                                  ; $67BE: $01 $00 $2A
    ld l, l                                       ; $67C1: $6D
    nop                                           ; $67C2: $00
    dec hl                                        ; $67C3: $2B
    ld l, e                                       ; $67C4: $6B
    nop                                           ; $67C5: $00
    ld c, h                                       ; $67C6: $4C
    ret                                           ; $67C7: $C9


    nop                                           ; $67C8: $00
    ld bc, $0000                                  ; $67C9: $01 $00 $00
    nop                                           ; $67CC: $00
    ld bc, $5300                                  ; $67CD: $01 $00 $53
    daa                                           ; $67D0: $27
    nop                                           ; $67D1: $00
    ld d, e                                       ; $67D2: $53
    ld [hl], c                                    ; $67D3: $71
    nop                                           ; $67D4: $00
    ld [hl], a                                    ; $67D5: $77
    ld [hl], a                                    ; $67D6: $77
    nop                                           ; $67D7: $00
    ld [hl], a                                    ; $67D8: $77
    daa                                           ; $67D9: $27
    nop                                           ; $67DA: $00
    ret                                           ; $67DB: $C9


    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    nop                                           ; $67E0: $00
    inc bc                                        ; $67E1: $03
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    rlca                                          ; $67E4: $07
    ld a, b                                       ; $67E5: $78
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    dec b                                         ; $67E8: $05
    add b                                         ; $67E9: $80
    nop                                           ; $67EA: $00
    nop                                           ; $67EB: $00
    ld [bc], a                                    ; $67EC: $02
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    ld bc, $67E6                                  ; $67EF: $01 $E6 $67
    ld bc, $4E00                                  ; $67F2: $01 $00 $4E
    ld [hl], c                                    ; $67F5: $71
    nop                                           ; $67F6: $00
    ld [hl], a                                    ; $67F7: $77
    daa                                           ; $67F8: $27
    nop                                           ; $67F9: $00
    ld bc, $0089                                  ; $67FA: $01 $89 $00
    sub c                                         ; $67FD: $91
    halt                                          ; $67FE: $76
    nop                                           ; $67FF: $00
    adc c                                         ; $6800: $89
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    ld bc, $7F00                                  ; $6804: $01 $00 $7F
    cp e                                          ; $6807: $BB
    nop                                           ; $6808: $00
    halt                                          ; $6809: $76
    or c                                          ; $680A: $B1
    nop                                           ; $680B: $00
    ld c, c                                       ; $680C: $49
    ld c, l                                       ; $680D: $4D
    nop                                           ; $680E: $00
    ld h, h                                       ; $680F: $64
    ld [hl], l                                    ; $6810: $75
    nop                                           ; $6811: $00
    ret                                           ; $6812: $C9


    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    inc bc                                        ; $6818: $03
    ld bc, $2902                                  ; $6819: $01 $02 $29
    ld [hl], b                                    ; $681C: $70
    nop                                           ; $681D: $00
    ccf                                           ; $681E: $3F
    ld l, l                                       ; $681F: $6D
    nop                                           ; $6820: $00
    ld c, h                                       ; $6821: $4C
    ret                                           ; $6822: $C9


    nop                                           ; $6823: $00
    ld bc, $0000                                  ; $6824: $01 $00 $00
    nop                                           ; $6827: $00
    ld bc, $6100                                  ; $6828: $01 $00 $61
    jr z, jr_03A_682E                             ; $682B: $28 $01

    sub d                                         ; $682D: $92

jr_03A_682E:
    add hl, hl                                    ; $682E: $29
    nop                                           ; $682F: $00
    ld l, d                                       ; $6830: $6A
    cpl                                           ; $6831: $2F
    nop                                           ; $6832: $00
    ld b, e                                       ; $6833: $43
    jr nc, jr_03A_6836                            ; $6834: $30 $00

jr_03A_6836:
    ld bc, $0000                                  ; $6836: $01 $00 $00
    nop                                           ; $6839: $00
    ld bc, $4900                                  ; $683A: $01 $00 $49
    daa                                           ; $683D: $27
    nop                                           ; $683E: $00
    ld c, l                                       ; $683F: $4D
    ld h, h                                       ; $6840: $64
    nop                                           ; $6841: $00
    ret                                           ; $6842: $C9


    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    inc bc                                        ; $6848: $03
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    inc b                                         ; $684B: $04
    dec de                                        ; $684C: $1B
    ld bc, $2800                                  ; $684D: $01 $00 $28
    ld [hl], a                                    ; $6850: $77
    nop                                           ; $6851: $00
    ld l, a                                       ; $6852: $6F
    ret                                           ; $6853: $C9


    nop                                           ; $6854: $00
    ld bc, $0000                                  ; $6855: $01 $00 $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685A: $00
    inc b                                         ; $685B: $04
    dec de                                        ; $685C: $1B
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    inc bc                                        ; $685F: $03
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    inc b                                         ; $6862: $04
    dec de                                        ; $6863: $1B
    ld bc, $2800                                  ; $6864: $01 $00 $28
    ld [hl], a                                    ; $6867: $77
    nop                                           ; $6868: $00
    ld l, a                                       ; $6869: $6F
    ret                                           ; $686A: $C9


    nop                                           ; $686B: $00
    ld bc, $0000                                  ; $686C: $01 $00 $00
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    inc b                                         ; $6872: $04
    dec de                                        ; $6873: $1B
    ld bc, $2800                                  ; $6874: $01 $00 $28
    ld [hl], a                                    ; $6877: $77
    nop                                           ; $6878: $00
    ld [hl], a                                    ; $6879: $77
    ld l, a                                       ; $687A: $6F
    nop                                           ; $687B: $00
    ret                                           ; $687C: $C9


    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    inc b                                         ; $6882: $04
    dec de                                        ; $6883: $1B
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    inc bc                                        ; $6886: $03
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    inc b                                         ; $6889: $04
    dec de                                        ; $688A: $1B
    ld bc, $2800                                  ; $688B: $01 $00 $28
    ld [hl], a                                    ; $688E: $77
    nop                                           ; $688F: $00
    ld l, a                                       ; $6890: $6F
    ret                                           ; $6891: $C9


    nop                                           ; $6892: $00
    ld bc, $0000                                  ; $6893: $01 $00 $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    inc b                                         ; $6899: $04
    dec de                                        ; $689A: $1B
    ld bc, $2800                                  ; $689B: $01 $00 $28
    ld [hl], a                                    ; $689E: $77
    nop                                           ; $689F: $00
    ld [hl], a                                    ; $68A0: $77
    ld l, a                                       ; $68A1: $6F
    nop                                           ; $68A2: $00
    ret                                           ; $68A3: $C9


    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    nop                                           ; $68A6: $00
    nop                                           ; $68A7: $00
    nop                                           ; $68A8: $00
    inc b                                         ; $68A9: $04
    dec de                                        ; $68AA: $1B
    ld bc, $2800                                  ; $68AB: $01 $00 $28
    ld [hl], a                                    ; $68AE: $77
    nop                                           ; $68AF: $00
    ld [hl], a                                    ; $68B0: $77
    ld [hl], a                                    ; $68B1: $77
    nop                                           ; $68B2: $00
    ld l, a                                       ; $68B3: $6F
    ret                                           ; $68B4: $C9


    nop                                           ; $68B5: $00
    ld bc, $0000                                  ; $68B6: $01 $00 $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    inc b                                         ; $68BC: $04
    dec de                                        ; $68BD: $1B
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    inc bc                                        ; $68C0: $03
    ld bc, $3900                                  ; $68C1: $01 $00 $39
    jr z, jr_03A_68C6                             ; $68C4: $28 $00

jr_03A_68C6:
    ld b, h                                       ; $68C6: $44
    ld l, l                                       ; $68C7: $6D
    nop                                           ; $68C8: $00
    rlc b                                         ; $68C9: $CB $00
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    ld bc, $4300                                  ; $68CD: $01 $00 $43
    ld [hl], b                                    ; $68D0: $70
    nop                                           ; $68D1: $00
    ld b, d                                       ; $68D2: $42
    ld a, [hl+]                                   ; $68D3: $2A
    nop                                           ; $68D4: $00
    inc l                                         ; $68D5: $2C
    ld c, l                                       ; $68D6: $4D
    nop                                           ; $68D7: $00
    xor d                                         ; $68D8: $AA
    adc c                                         ; $68D9: $89
    nop                                           ; $68DA: $00
    cp a                                          ; $68DB: $BF
    nop                                           ; $68DC: $00
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00
    ld bc, $7600                                  ; $68DF: $01 $00 $76
    sbc d                                         ; $68E2: $9A
    nop                                           ; $68E3: $00
    jr nc, jr_03A_690C                            ; $68E4: $30 $26

    nop                                           ; $68E6: $00
    ld l, d                                       ; $68E7: $6A
    ld l, l                                       ; $68E8: $6D
    nop                                           ; $68E9: $00
    ret                                           ; $68EA: $C9


    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    inc bc                                        ; $68F0: $03
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    ld bc, $F400                                  ; $68F4: $01 $00 $F4
    ld a, [hl+]                                   ; $68F7: $2A
    nop                                           ; $68F8: $00
    ld [hl], $69                                  ; $68F9: $36 $69
    nop                                           ; $68FB: $00
    push af                                       ; $68FC: $F5
    ld bc, $6400                                  ; $68FD: $01 $00 $64
    ret                                           ; $6900: $C9


    nop                                           ; $6901: $00
    ld bc, $0000                                  ; $6902: $01 $00 $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    inc bc                                        ; $6908: $03
    ld bc, $6100                                  ; $6909: $01 $00 $61

jr_03A_690C:
    jr z, jr_03A_690E                             ; $690C: $28 $00

jr_03A_690E:
    cpl                                           ; $690E: $2F
    ld l, e                                       ; $690F: $6B
    nop                                           ; $6910: $00
    ld b, a                                       ; $6911: $47
    ld bc, $2600                                  ; $6912: $01 $00 $26
    ccf                                           ; $6915: $3F
    nop                                           ; $6916: $00
    ld [hl], $00                                  ; $6917: $36 $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
    ld bc, $4D00                                  ; $691B: $01 $00 $4D
    ld [hl], l                                    ; $691E: $75
    ld de, $8176                                  ; $691F: $11 $76 $81
    nop                                           ; $6922: $00
    halt                                          ; $6923: $76
    sbc e                                         ; $6924: $9B
    nop                                           ; $6925: $00
    halt                                          ; $6926: $76
    ld c, [hl]                                    ; $6927: $4E
    nop                                           ; $6928: $00
    ld bc, $0000                                  ; $6929: $01 $00 $00
    nop                                           ; $692C: $00
    ld bc, $2A00                                  ; $692D: $01 $00 $2A
    ld [hl], $00                                  ; $6930: $36 $00
    ld e, l                                       ; $6932: $5D
    daa                                           ; $6933: $27
    nop                                           ; $6934: $00
    ld h, h                                       ; $6935: $64
    ret                                           ; $6936: $C9


    nop                                           ; $6937: $00
    ld bc, $0000                                  ; $6938: $01 $00 $00
    nop                                           ; $693B: $00
    nop                                           ; $693C: $00
    nop                                           ; $693D: $00
    inc bc                                        ; $693E: $03
    ld bc, $2A00                                  ; $693F: $01 $00 $2A
    ld a, [hl+]                                   ; $6942: $2A
    jr nz, jr_03A_69B0                            ; $6943: $20 $6B

    ld c, h                                       ; $6945: $4C
    nop                                           ; $6946: $00
    ret                                           ; $6947: $C9


    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694A: $00
    ld bc, $5300                                  ; $694B: $01 $00 $53
    daa                                           ; $694E: $27
    nop                                           ; $694F: $00
    ld d, e                                       ; $6950: $53
    ld [hl], c                                    ; $6951: $71
    nop                                           ; $6952: $00
    ld [hl], a                                    ; $6953: $77
    ld [hl], a                                    ; $6954: $77
    nop                                           ; $6955: $00
    ld [hl], a                                    ; $6956: $77
    daa                                           ; $6957: $27
    nop                                           ; $6958: $00
    ret                                           ; $6959: $C9


    nop                                           ; $695A: $00
    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    inc bc                                        ; $695F: $03
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    rlca                                          ; $6962: $07
    ld a, b                                       ; $6963: $78
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    dec b                                         ; $6966: $05
    add b                                         ; $6967: $80
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    ld [bc], a                                    ; $696A: $02
    nop                                           ; $696B: $00
    nop                                           ; $696C: $00
    ld bc, $6964                                  ; $696D: $01 $64 $69
    ld bc, $8900                                  ; $6970: $01 $00 $89
    sub c                                         ; $6973: $91
    nop                                           ; $6974: $00
    halt                                          ; $6975: $76
    adc c                                         ; $6976: $89
    nop                                           ; $6977: $00
    ld a, a                                       ; $6978: $7F
    cp e                                          ; $6979: $BB
    nop                                           ; $697A: $00
    halt                                          ; $697B: $76
    or c                                          ; $697C: $B1
    nop                                           ; $697D: $00
    dec [hl]                                      ; $697E: $35
    nop                                           ; $697F: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    ld bc, $5D00                                  ; $6982: $01 $00 $5D
    jr nc, jr_03A_6987                            ; $6985: $30 $00

jr_03A_6987:
    ld bc, $0027                                  ; $6987: $01 $27 $00
    ld c, c                                       ; $698A: $49
    daa                                           ; $698B: $27
    nop                                           ; $698C: $00
    ld c, l                                       ; $698D: $4D
    ld b, a                                       ; $698E: $47
    nop                                           ; $698F: $00
    ld bc, $0000                                  ; $6990: $01 $00 $00
    nop                                           ; $6993: $00
    ld bc, $6D00                                  ; $6994: $01 $00 $6D
    ccf                                           ; $6997: $3F
    nop                                           ; $6998: $00
    ld [hl], $4D                                  ; $6999: $36 $4D
    nop                                           ; $699B: $00
    ld b, a                                       ; $699C: $47
    ld d, e                                       ; $699D: $53
    nop                                           ; $699E: $00
    ld l, a                                       ; $699F: $6F
    ld h, h                                       ; $69A0: $64
    nop                                           ; $69A1: $00
    ret                                           ; $69A2: $C9


    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    inc bc                                        ; $69A8: $03
    ld bc, $2C00                                  ; $69A9: $01 $00 $2C
    ld h, a                                       ; $69AC: $67
    nop                                           ; $69AD: $00
    jr z, @+$50                                   ; $69AE: $28 $4E

jr_03A_69B0:
    nop                                           ; $69B0: $00
    ld bc, $0000                                  ; $69B1: $01 $00 $00
    nop                                           ; $69B4: $00
    ld bc, $D000                                  ; $69B5: $01 $00 $D0
    ld c, [hl]                                    ; $69B8: $4E
    nop                                           ; $69B9: $00
    ld h, d                                       ; $69BA: $62
    jr z, jr_03A_69BD                             ; $69BB: $28 $00

jr_03A_69BD:
    ld b, b                                       ; $69BD: $40
    pop de                                        ; $69BE: $D1
    nop                                           ; $69BF: $00
    ld c, l                                       ; $69C0: $4D
    ld bc, $3800                                  ; $69C1: $01 $00 $38
    nop                                           ; $69C4: $00
    nop                                           ; $69C5: $00
    nop                                           ; $69C6: $00
    ld bc, $4100                                  ; $69C7: $01 $00 $41
    ld h, b                                       ; $69CA: $60
    nop                                           ; $69CB: $00
    daa                                           ; $69CC: $27
    ld l, [hl]                                    ; $69CD: $6E
    nop                                           ; $69CE: $00
    scf                                           ; $69CF: $37
    ld l, d                                       ; $69D0: $6A
    nop                                           ; $69D1: $00
    ld l, l                                       ; $69D2: $6D
    ld h, h                                       ; $69D3: $64
    nop                                           ; $69D4: $00
    ret                                           ; $69D5: $C9


    nop                                           ; $69D6: $00
    nop                                           ; $69D7: $00
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    nop                                           ; $69DA: $00
    inc bc                                        ; $69DB: $03
    ld bc, $D000                                  ; $69DC: $01 $00 $D0
    ld c, [hl]                                    ; $69DF: $4E
    nop                                           ; $69E0: $00
    ld h, d                                       ; $69E1: $62
    jr z, jr_03A_69E4                             ; $69E2: $28 $00

jr_03A_69E4:
    ld b, b                                       ; $69E4: $40
    pop de                                        ; $69E5: $D1
    nop                                           ; $69E6: $00
    ld c, [hl]                                    ; $69E7: $4E
    nop                                           ; $69E8: $00
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    ld bc, $D000                                  ; $69EB: $01 $00 $D0
    dec e                                         ; $69EE: $1D
    nop                                           ; $69EF: $00
    db $10                                        ; $69F0: $10
    inc c                                         ; $69F1: $0C
    nop                                           ; $69F2: $00
    rrca                                          ; $69F3: $0F
    inc h                                         ; $69F4: $24
    nop                                           ; $69F5: $00
    pop de                                        ; $69F6: $D1
    ld [hl], b                                    ; $69F7: $70
    nop                                           ; $69F8: $00
    ld b, d                                       ; $69F9: $42
    nop                                           ; $69FA: $00
    nop                                           ; $69FB: $00
    nop                                           ; $69FC: $00
    ld bc, $6100                                  ; $69FD: $01 $00 $61
    dec sp                                        ; $6A00: $3B
    nop                                           ; $6A01: $00
    jr nc, jr_03A_6A05                            ; $6A02: $30 $01

    nop                                           ; $6A04: $00

jr_03A_6A05:
    inc l                                         ; $6A05: $2C
    add hl, hl                                    ; $6A06: $29
    nop                                           ; $6A07: $00
    ccf                                           ; $6A08: $3F
    ld l, b                                       ; $6A09: $68
    nop                                           ; $6A0A: $00
    ldh [rP1], a                                  ; $6A0B: $E0 $00
    nop                                           ; $6A0D: $00
    nop                                           ; $6A0E: $00
    nop                                           ; $6A0F: $00
    nop                                           ; $6A10: $00
    inc bc                                        ; $6A11: $03
    ld bc, $3700                                  ; $6A12: $01 $00 $37
    ld [hl-], a                                   ; $6A15: $32
    nop                                           ; $6A16: $00
    ld c, d                                       ; $6A17: $4A
    ld bc, $E300                                  ; $6A18: $01 $00 $E3
    xor c                                         ; $6A1B: $A9
    nop                                           ; $6A1C: $00
    sub c                                         ; $6A1D: $91
    pop bc                                        ; $6A1E: $C1
    nop                                           ; $6A1F: $00
    ld l, [hl]                                    ; $6A20: $6E
    nop                                           ; $6A21: $00
    nop                                           ; $6A22: $00
    nop                                           ; $6A23: $00
    ld bc, $2A00                                  ; $6A24: $01 $00 $2A
    scf                                           ; $6A27: $37
    nop                                           ; $6A28: $00
    ld c, l                                       ; $6A29: $4D
    ld h, h                                       ; $6A2A: $64
    nop                                           ; $6A2B: $00
    ret                                           ; $6A2C: $C9


    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00
    inc b                                         ; $6A32: $04
    jr nz, jr_03A_6A35                            ; $6A33: $20 $00

jr_03A_6A35:
    nop                                           ; $6A35: $00
    inc bc                                        ; $6A36: $03
    ld bc, $2A00                                  ; $6A37: $01 $00 $2A
    add hl, sp                                    ; $6A3A: $39
    nop                                           ; $6A3B: $00
    daa                                           ; $6A3C: $27
    ld b, e                                       ; $6A3D: $43
    nop                                           ; $6A3E: $00
    ld bc, $005D                                  ; $6A3F: $01 $5D $00
    ld l, $40                                     ; $6A42: $2E $40
    nop                                           ; $6A44: $00
    ld h, l                                       ; $6A45: $65
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    ld bc, $2800                                  ; $6A49: $01 $00 $28
    ld c, l                                       ; $6A4C: $4D
    nop                                           ; $6A4D: $00
    ld h, h                                       ; $6A4E: $64
    ret                                           ; $6A4F: $C9


    nop                                           ; $6A50: $00
    ld bc, $0000                                  ; $6A51: $01 $00 $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    inc b                                         ; $6A57: $04
    rla                                           ; $6A58: $17
    nop                                           ; $6A59: $00
    nop                                           ; $6A5A: $00
    inc bc                                        ; $6A5B: $03
    ld bc, $D000                                  ; $6A5C: $01 $00 $D0
    dec e                                         ; $6A5F: $1D
    nop                                           ; $6A60: $00
    db $10                                        ; $6A61: $10
    inc c                                         ; $6A62: $0C
    nop                                           ; $6A63: $00
    rrca                                          ; $6A64: $0F
    inc h                                         ; $6A65: $24
    nop                                           ; $6A66: $00
    pop de                                        ; $6A67: $D1
    jr nc, jr_03A_6A6A                            ; $6A68: $30 $00

jr_03A_6A6A:
    ld bc, $0000                                  ; $6A6A: $01 $00 $00
    nop                                           ; $6A6D: $00
    ld bc, $2C00                                  ; $6A6E: $01 $00 $2C
    add hl, hl                                    ; $6A71: $29
    nop                                           ; $6A72: $00
    ld l, d                                       ; $6A73: $6A
    ld e, l                                       ; $6A74: $5D
    nop                                           ; $6A75: $00
    add hl, hl                                    ; $6A76: $29
    ld c, d                                       ; $6A77: $4A
    nop                                           ; $6A78: $00
    ld bc, $00E3                                  ; $6A79: $01 $E3 $00
    ld l, [hl]                                    ; $6A7C: $6E
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    ld bc, $2A00                                  ; $6A80: $01 $00 $2A
    ld [hl], $00                                  ; $6A83: $36 $00
    ld b, b                                       ; $6A85: $40
    ld h, l                                       ; $6A86: $65
    nop                                           ; $6A87: $00
    jr z, @+$45                                   ; $6A88: $28 $43

    nop                                           ; $6A8A: $00
    ldh [rP1], a                                  ; $6A8B: $E0 $00
    nop                                           ; $6A8D: $00
    nop                                           ; $6A8E: $00
    nop                                           ; $6A8F: $00
    nop                                           ; $6A90: $00
    inc b                                         ; $6A91: $04
    ld [de], a                                    ; $6A92: $12
    nop                                           ; $6A93: $00
    nop                                           ; $6A94: $00
    inc bc                                        ; $6A95: $03
    ld bc, $5300                                  ; $6A96: $01 $00 $53
    dec l                                         ; $6A99: $2D
    nop                                           ; $6A9A: $00
    ld c, [hl]                                    ; $6A9B: $4E
    ld b, c                                       ; $6A9C: $41
    nop                                           ; $6A9D: $00
    ld [hl], $42                                  ; $6A9E: $36 $42
    nop                                           ; $6AA0: $00
    ld bc, $005D                                  ; $6AA1: $01 $5D $00
    ld l, $00                                     ; $6AA4: $2E $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    ld bc, $4000                                  ; $6AA8: $01 $00 $40
    ld h, l                                       ; $6AAB: $65
    nop                                           ; $6AAC: $00
    jr z, jr_03A_6AFC                             ; $6AAD: $28 $4D

    nop                                           ; $6AAF: $00
    ld h, h                                       ; $6AB0: $64
    ret                                           ; $6AB1: $C9


    nop                                           ; $6AB2: $00
    ld bc, $0000                                  ; $6AB3: $01 $00 $00
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    inc b                                         ; $6AB9: $04
    rla                                           ; $6ABA: $17
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    inc bc                                        ; $6ABD: $03
    ld bc, $2600                                  ; $6ABE: $01 $00 $26
    ld b, e                                       ; $6AC1: $43
    nop                                           ; $6AC2: $00
    ret z                                         ; $6AC3: $C8

    ldh [c], a                                    ; $6AC4: $E2
    nop                                           ; $6AC5: $00
    ld l, [hl]                                    ; $6AC6: $6E
    ld a, [hl+]                                   ; $6AC7: $2A
    nop                                           ; $6AC8: $00
    scf                                           ; $6AC9: $37
    ld b, e                                       ; $6ACA: $43
    nop                                           ; $6ACB: $00
    ld bc, $0000                                  ; $6ACC: $01 $00 $00
    nop                                           ; $6ACF: $00
    ld bc, $4000                                  ; $6AD0: $01 $00 $40
    ld h, a                                       ; $6AD3: $67
    nop                                           ; $6AD4: $00
    jr z, jr_03A_6B25                             ; $6AD5: $28 $4E

    nop                                           ; $6AD7: $00
    ld b, c                                       ; $6AD8: $41
    ld bc, $4700                                  ; $6AD9: $01 $00 $47
    inc l                                         ; $6ADC: $2C
    nop                                           ; $6ADD: $00
    ld l, d                                       ; $6ADE: $6A
    nop                                           ; $6ADF: $00
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    ld bc, $4D00                                  ; $6AE2: $01 $00 $4D
    ld h, h                                       ; $6AE5: $64
    nop                                           ; $6AE6: $00
    ret                                           ; $6AE7: $C9


    nop                                           ; $6AE8: $00
    nop                                           ; $6AE9: $00
    nop                                           ; $6AEA: $00
    nop                                           ; $6AEB: $00
    nop                                           ; $6AEC: $00
    inc b                                         ; $6AED: $04
    add hl, de                                    ; $6AEE: $19
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    inc bc                                        ; $6AF1: $03
    ld bc, $3000                                  ; $6AF2: $01 $00 $30
    ld l, a                                       ; $6AF5: $6F
    nop                                           ; $6AF6: $00
    ld d, e                                       ; $6AF7: $53
    ld [hl], b                                    ; $6AF8: $70
    nop                                           ; $6AF9: $00
    ld b, d                                       ; $6AFA: $42
    ld c, h                                       ; $6AFB: $4C

jr_03A_6AFC:
    nop                                           ; $6AFC: $00
    ret                                           ; $6AFD: $C9


    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    nop                                           ; $6B02: $00
    inc bc                                        ; $6B03: $03
    nop                                           ; $6B04: $00
    nop                                           ; $6B05: $00
    inc b                                         ; $6B06: $04
    ld [de], a                                    ; $6B07: $12
    ld bc, $3B00                                  ; $6B08: $01 $00 $3B
    ld h, l                                       ; $6B0B: $65
    nop                                           ; $6B0C: $00
    ld h, $4C                                     ; $6B0D: $26 $4C
    nop                                           ; $6B0F: $00
    ret                                           ; $6B10: $C9


    nop                                           ; $6B11: $00
    nop                                           ; $6B12: $00
    nop                                           ; $6B13: $00
    ld bc, $5300                                  ; $6B14: $01 $00 $53
    daa                                           ; $6B17: $27
    nop                                           ; $6B18: $00
    ld d, e                                       ; $6B19: $53
    ld [hl], a                                    ; $6B1A: $77
    nop                                           ; $6B1B: $00
    daa                                           ; $6B1C: $27
    ret                                           ; $6B1D: $C9


    nop                                           ; $6B1E: $00
    ld bc, $0000                                  ; $6B1F: $01 $00 $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    nop                                           ; $6B24: $00

jr_03A_6B25:
    inc bc                                        ; $6B25: $03
    nop                                           ; $6B26: $00
    nop                                           ; $6B27: $00
    rlca                                          ; $6B28: $07
    ld a, b                                       ; $6B29: $78
    nop                                           ; $6B2A: $00
    nop                                           ; $6B2B: $00
    dec b                                         ; $6B2C: $05
    add b                                         ; $6B2D: $80
    nop                                           ; $6B2E: $00
    nop                                           ; $6B2F: $00
    ld [bc], a                                    ; $6B30: $02
    nop                                           ; $6B31: $00
    nop                                           ; $6B32: $00
    ld bc, $6B2A                                  ; $6B33: $01 $2A $6B
    ld bc, $8900                                  ; $6B36: $01 $00 $89
    sub c                                         ; $6B39: $91
    nop                                           ; $6B3A: $00
    halt                                          ; $6B3B: $76
    adc c                                         ; $6B3C: $89
    nop                                           ; $6B3D: $00
    ld a, a                                       ; $6B3E: $7F
    cp e                                          ; $6B3F: $BB
    nop                                           ; $6B40: $00
    halt                                          ; $6B41: $76
    or c                                          ; $6B42: $B1
    nop                                           ; $6B43: $00
    dec [hl]                                      ; $6B44: $35
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    ld bc, $5D00                                  ; $6B48: $01 $00 $5D
    jr nc, jr_03A_6B4D                            ; $6B4B: $30 $00

jr_03A_6B4D:
    ld bc, $0027                                  ; $6B4D: $01 $27 $00
    ld c, c                                       ; $6B50: $49
    daa                                           ; $6B51: $27
    nop                                           ; $6B52: $00
    ld c, l                                       ; $6B53: $4D
    ld b, a                                       ; $6B54: $47
    nop                                           ; $6B55: $00
    ld bc, $0000                                  ; $6B56: $01 $00 $00
    nop                                           ; $6B59: $00
    ld bc, $4E01                                  ; $6B5A: $01 $01 $4E
    ld c, l                                       ; $6B5D: $4D
    ld bc, $7D18                                  ; $6B5E: $01 $18 $7D
    db $10                                        ; $6B61: $10
    ld h, h                                       ; $6B62: $64
    ret                                           ; $6B63: $C9


    nop                                           ; $6B64: $00
    ld bc, $0000                                  ; $6B65: $01 $00 $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    inc bc                                        ; $6B6B: $03
    ld bc, $7001                                  ; $6B6C: $01 $01 $70
    ld d, $10                                     ; $6B6F: $16 $10
    ld c, [hl]                                    ; $6B71: $4E
    nop                                           ; $6B72: $00
    nop                                           ; $6B73: $00
    nop                                           ; $6B74: $00
    ld bc, $D000                                  ; $6B75: $01 $00 $D0
    ld c, [hl]                                    ; $6B78: $4E
    nop                                           ; $6B79: $00
    ld h, d                                       ; $6B7A: $62
    jr z, jr_03A_6B7D                             ; $6B7B: $28 $00

jr_03A_6B7D:
    ld b, b                                       ; $6B7D: $40
    pop de                                        ; $6B7E: $D1
    nop                                           ; $6B7F: $00
    ld c, l                                       ; $6B80: $4D
    ld [hl], l                                    ; $6B81: $75
    ld de, $0076                                  ; $6B82: $11 $76 $00
    nop                                           ; $6B85: $00
    nop                                           ; $6B86: $00
    ld bc, $6E00                                  ; $6B87: $01 $00 $6E
    scf                                           ; $6B8A: $37
    nop                                           ; $6B8B: $00
    ld l, d                                       ; $6B8C: $6A
    ld l, l                                       ; $6B8D: $6D
    nop                                           ; $6B8E: $00
    ld h, h                                       ; $6B8F: $64
    ret                                           ; $6B90: $C9


    nop                                           ; $6B91: $00
    ld bc, $0000                                  ; $6B92: $01 $00 $00
    nop                                           ; $6B95: $00
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    inc bc                                        ; $6B98: $03
    ld bc, $D000                                  ; $6B99: $01 $00 $D0
    ld c, [hl]                                    ; $6B9C: $4E
    nop                                           ; $6B9D: $00
    ld h, d                                       ; $6B9E: $62
    jr z, jr_03A_6BA1                             ; $6B9F: $28 $00

jr_03A_6BA1:
    ld b, b                                       ; $6BA1: $40
    pop de                                        ; $6BA2: $D1
    nop                                           ; $6BA3: $00
    ld c, [hl]                                    ; $6BA4: $4E
    nop                                           ; $6BA5: $00
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    ld bc, $D000                                  ; $6BA8: $01 $00 $D0
    dec e                                         ; $6BAB: $1D
    nop                                           ; $6BAC: $00
    db $10                                        ; $6BAD: $10
    inc c                                         ; $6BAE: $0C
    nop                                           ; $6BAF: $00
    rrca                                          ; $6BB0: $0F
    inc h                                         ; $6BB1: $24
    nop                                           ; $6BB2: $00
    pop de                                        ; $6BB3: $D1
    ld [hl], b                                    ; $6BB4: $70
    nop                                           ; $6BB5: $00
    ld b, d                                       ; $6BB6: $42
    nop                                           ; $6BB7: $00
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    ld bc, $0A02                                  ; $6BBA: $01 $02 $0A
    ld [hl], l                                    ; $6BBD: $75
    jr nz, jr_03A_6BF0                            ; $6BBE: $20 $30

    ld a, [hl]                                    ; $6BC0: $7E
    jr nz, jr_03A_6BEC                            ; $6BC1: $20 $29

    ccf                                           ; $6BC3: $3F
    nop                                           ; $6BC4: $00
    ld l, b                                       ; $6BC5: $68
    ldh [rP1], a                                  ; $6BC6: $E0 $00
    ld bc, $0000                                  ; $6BC8: $01 $00 $00
    nop                                           ; $6BCB: $00
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    inc bc                                        ; $6BCE: $03
    ld bc, $3700                                  ; $6BCF: $01 $00 $37
    ld [hl-], a                                   ; $6BD2: $32
    nop                                           ; $6BD3: $00
    ld c, d                                       ; $6BD4: $4A
    ld bc, $E300                                  ; $6BD5: $01 $00 $E3
    xor c                                         ; $6BD8: $A9
    nop                                           ; $6BD9: $00
    sub c                                         ; $6BDA: $91
    pop bc                                        ; $6BDB: $C1
    nop                                           ; $6BDC: $00
    ld l, [hl]                                    ; $6BDD: $6E
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    nop                                           ; $6BE0: $00
    ld bc, $8701                                  ; $6BE1: $01 $01 $87
    scf                                           ; $6BE4: $37
    nop                                           ; $6BE5: $00
    ld c, l                                       ; $6BE6: $4D
    ld h, h                                       ; $6BE7: $64
    nop                                           ; $6BE8: $00
    ret                                           ; $6BE9: $C9


    nop                                           ; $6BEA: $00
    nop                                           ; $6BEB: $00

jr_03A_6BEC:
    nop                                           ; $6BEC: $00
    nop                                           ; $6BED: $00
    nop                                           ; $6BEE: $00
    inc b                                         ; $6BEF: $04

jr_03A_6BF0:
    jr nz, jr_03A_6BF2                            ; $6BF0: $20 $00

jr_03A_6BF2:
    nop                                           ; $6BF2: $00
    inc bc                                        ; $6BF3: $03
    ld bc, $6801                                  ; $6BF4: $01 $01 $68
    daa                                           ; $6BF7: $27
    nop                                           ; $6BF8: $00
    ld b, e                                       ; $6BF9: $43
    ld bc, $4601                                  ; $6BFA: $01 $01 $46
    ld l, $00                                     ; $6BFD: $2E $00
    ld b, b                                       ; $6BFF: $40
    ld h, l                                       ; $6C00: $65
    nop                                           ; $6C01: $00
    jr z, jr_03A_6C04                             ; $6C02: $28 $00

jr_03A_6C04:
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    ld bc, $4D00                                  ; $6C06: $01 $00 $4D
    ld h, h                                       ; $6C09: $64
    nop                                           ; $6C0A: $00
    ret                                           ; $6C0B: $C9


    nop                                           ; $6C0C: $00
    nop                                           ; $6C0D: $00
    nop                                           ; $6C0E: $00
    nop                                           ; $6C0F: $00
    nop                                           ; $6C10: $00
    inc b                                         ; $6C11: $04
    rla                                           ; $6C12: $17
    nop                                           ; $6C13: $00
    nop                                           ; $6C14: $00
    inc bc                                        ; $6C15: $03
    ld bc, $D000                                  ; $6C16: $01 $00 $D0
    dec e                                         ; $6C19: $1D
    nop                                           ; $6C1A: $00
    db $10                                        ; $6C1B: $10
    inc c                                         ; $6C1C: $0C
    nop                                           ; $6C1D: $00
    rrca                                          ; $6C1E: $0F
    inc h                                         ; $6C1F: $24
    nop                                           ; $6C20: $00
    pop de                                        ; $6C21: $D1
    jr nc, jr_03A_6C24                            ; $6C22: $30 $00

jr_03A_6C24:
    ld bc, $0000                                  ; $6C24: $01 $00 $00
    nop                                           ; $6C27: $00
    ld bc, $7E02                                  ; $6C28: $01 $02 $7E
    add hl, hl                                    ; $6C2B: $29
    nop                                           ; $6C2C: $00
    ld l, d                                       ; $6C2D: $6A
    ld e, l                                       ; $6C2E: $5D
    nop                                           ; $6C2F: $00
    add hl, hl                                    ; $6C30: $29
    ld c, d                                       ; $6C31: $4A
    nop                                           ; $6C32: $00
    ld bc, $00E3                                  ; $6C33: $01 $E3 $00
    ld l, [hl]                                    ; $6C36: $6E
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    ld bc, $8701                                  ; $6C3A: $01 $01 $87
    ld [hl], $00                                  ; $6C3D: $36 $00
    ld b, b                                       ; $6C3F: $40
    ld h, l                                       ; $6C40: $65
    nop                                           ; $6C41: $00
    jr z, jr_03A_6C87                             ; $6C42: $28 $43

    nop                                           ; $6C44: $00
    ldh [rP1], a                                  ; $6C45: $E0 $00
    nop                                           ; $6C47: $00
    nop                                           ; $6C48: $00
    nop                                           ; $6C49: $00
    nop                                           ; $6C4A: $00
    inc b                                         ; $6C4B: $04
    ld [de], a                                    ; $6C4C: $12
    nop                                           ; $6C4D: $00
    nop                                           ; $6C4E: $00
    inc bc                                        ; $6C4F: $03
    ld bc, $5602                                  ; $6C50: $01 $02 $56
    sbc l                                         ; $6C53: $9D
    db $10                                        ; $6C54: $10
    ld [hl], $42                                  ; $6C55: $36 $42
    nop                                           ; $6C57: $00
    ld bc, $1046                                  ; $6C58: $01 $46 $10
    ld l, $40                                     ; $6C5B: $2E $40
    nop                                           ; $6C5D: $00
    ld h, l                                       ; $6C5E: $65
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    ld bc, $2800                                  ; $6C62: $01 $00 $28
    ld c, l                                       ; $6C65: $4D
    nop                                           ; $6C66: $00
    ld h, h                                       ; $6C67: $64
    ret                                           ; $6C68: $C9


    nop                                           ; $6C69: $00
    ld bc, $0000                                  ; $6C6A: $01 $00 $00
    nop                                           ; $6C6D: $00
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    inc b                                         ; $6C70: $04
    rla                                           ; $6C71: $17
    nop                                           ; $6C72: $00
    nop                                           ; $6C73: $00
    inc bc                                        ; $6C74: $03
    ld bc, $2600                                  ; $6C75: $01 $00 $26
    ld b, e                                       ; $6C78: $43
    nop                                           ; $6C79: $00
    ret z                                         ; $6C7A: $C8

    ldh [c], a                                    ; $6C7B: $E2
    nop                                           ; $6C7C: $00
    ld l, [hl]                                    ; $6C7D: $6E
    add a                                         ; $6C7E: $87
    db $10                                        ; $6C7F: $10
    scf                                           ; $6C80: $37
    ld b, e                                       ; $6C81: $43
    nop                                           ; $6C82: $00
    ld bc, $0000                                  ; $6C83: $01 $00 $00
    nop                                           ; $6C86: $00

jr_03A_6C87:
    ld bc, $D801                                  ; $6C87: $01 $01 $D8
    sbc l                                         ; $6C8A: $9D
    db $10                                        ; $6C8B: $10
    ld b, a                                       ; $6C8C: $47
    inc l                                         ; $6C8D: $2C
    nop                                           ; $6C8E: $00
    ld l, d                                       ; $6C8F: $6A
    ld c, l                                       ; $6C90: $4D
    nop                                           ; $6C91: $00
    ld h, h                                       ; $6C92: $64
    ret                                           ; $6C93: $C9


    nop                                           ; $6C94: $00
    ld bc, $0000                                  ; $6C95: $01 $00 $00
    nop                                           ; $6C98: $00
    nop                                           ; $6C99: $00
    nop                                           ; $6C9A: $00
    inc b                                         ; $6C9B: $04
    add hl, de                                    ; $6C9C: $19
    nop                                           ; $6C9D: $00
    nop                                           ; $6C9E: $00
    inc bc                                        ; $6C9F: $03
    ld bc, $3000                                  ; $6CA0: $01 $00 $30
    ld l, a                                       ; $6CA3: $6F
    nop                                           ; $6CA4: $00
    ld d, e                                       ; $6CA5: $53
    ld [hl], b                                    ; $6CA6: $70
    nop                                           ; $6CA7: $00
    ld b, d                                       ; $6CA8: $42
    ld c, h                                       ; $6CA9: $4C
    nop                                           ; $6CAA: $00
    ret                                           ; $6CAB: $C9


    nop                                           ; $6CAC: $00
    nop                                           ; $6CAD: $00
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    nop                                           ; $6CB0: $00
    inc bc                                        ; $6CB1: $03
    nop                                           ; $6CB2: $00
    nop                                           ; $6CB3: $00
    inc b                                         ; $6CB4: $04
    ld [de], a                                    ; $6CB5: $12
    ld bc, $3B00                                  ; $6CB6: $01 $00 $3B
    ld h, l                                       ; $6CB9: $65
    nop                                           ; $6CBA: $00
    ld h, $4C                                     ; $6CBB: $26 $4C
    nop                                           ; $6CBD: $00
    ret                                           ; $6CBE: $C9


    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    ld bc, $5300                                  ; $6CC2: $01 $00 $53
    daa                                           ; $6CC5: $27
    nop                                           ; $6CC6: $00
    ld d, e                                       ; $6CC7: $53
    ld [hl], a                                    ; $6CC8: $77
    nop                                           ; $6CC9: $00
    daa                                           ; $6CCA: $27
    ret                                           ; $6CCB: $C9


    nop                                           ; $6CCC: $00
    ld bc, $0000                                  ; $6CCD: $01 $00 $00
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00
    inc bc                                        ; $6CD3: $03
    nop                                           ; $6CD4: $00
    nop                                           ; $6CD5: $00
    rlca                                          ; $6CD6: $07
    ld a, b                                       ; $6CD7: $78
    nop                                           ; $6CD8: $00
    nop                                           ; $6CD9: $00
    dec b                                         ; $6CDA: $05
    add b                                         ; $6CDB: $80
    nop                                           ; $6CDC: $00
    nop                                           ; $6CDD: $00
    ld [bc], a                                    ; $6CDE: $02
    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    ld bc, $6CD8                                  ; $6CE1: $01 $D8 $6C
    ld bc, $6200                                  ; $6CE4: $01 $00 $62
    ld [hl], b                                    ; $6CE7: $70
    nop                                           ; $6CE8: $00
    ld d, d                                       ; $6CE9: $52
    halt                                          ; $6CEA: $76
    nop                                           ; $6CEB: $00
    ret                                           ; $6CEC: $C9


    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    ld bc, $7800                                  ; $6CF0: $01 $00 $78
    cp h                                          ; $6CF3: $BC
    nop                                           ; $6CF4: $00
    sub h                                         ; $6CF5: $94
    or b                                          ; $6CF6: $B0
    nop                                           ; $6CF7: $00
    adc c                                         ; $6CF8: $89
    ld b, h                                       ; $6CF9: $44
    nop                                           ; $6CFA: $00
    ld h, h                                       ; $6CFB: $64
    halt                                          ; $6CFC: $76
    nop                                           ; $6CFD: $00
    ret                                           ; $6CFE: $C9


    nop                                           ; $6CFF: $00
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    inc bc                                        ; $6D04: $03
    ld bc, $2A00                                  ; $6D05: $01 $00 $2A
    ld e, l                                       ; $6D08: $5D
    nop                                           ; $6D09: $00
    ld l, $4D                                     ; $6D0A: $2E $4D
    nop                                           ; $6D0C: $00
    add c                                         ; $6D0D: $81
    halt                                          ; $6D0E: $76
    nop                                           ; $6D0F: $00
    sbc e                                         ; $6D10: $9B
    halt                                          ; $6D11: $76
    nop                                           ; $6D12: $00
    ld c, [hl]                                    ; $6D13: $4E
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00
    nop                                           ; $6D16: $00
    ld bc, $4800                                  ; $6D17: $01 $00 $48
    jr z, jr_03A_6D1C                             ; $6D1A: $28 $00

jr_03A_6D1C:
    call z, RST_00                                ; $6D1C: $CC $00 $00
    nop                                           ; $6D1F: $00
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    inc bc                                        ; $6D22: $03
    ld bc, $3D00                                  ; $6D23: $01 $00 $3D
    ld l, a                                       ; $6D26: $6F
    nop                                           ; $6D27: $00
    ld d, l                                       ; $6D28: $55
    ld b, a                                       ; $6D29: $47
    nop                                           ; $6D2A: $00
    ld bc, $0009                                  ; $6D2B: $01 $09 $00
    ld b, c                                       ; $6D2E: $41
    ld c, l                                       ; $6D2F: $4D
    nop                                           ; $6D30: $00
    add c                                         ; $6D31: $81
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    ld bc, $7600                                  ; $6D35: $01 $00 $76
    sbc e                                         ; $6D38: $9B
    nop                                           ; $6D39: $00
    halt                                          ; $6D3A: $76
    jr nc, jr_03A_6D3D                            ; $6D3B: $30 $00

jr_03A_6D3D:
    ld h, $6A                                     ; $6D3D: $26 $6A
    nop                                           ; $6D3F: $00
    ld c, l                                       ; $6D40: $4D
    ld h, h                                       ; $6D41: $64
    nop                                           ; $6D42: $00
    ret                                           ; $6D43: $C9


    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    nop                                           ; $6D48: $00
    inc bc                                        ; $6D49: $03
    ld bc, $2700                                  ; $6D4A: $01 $00 $27
    dec l                                         ; $6D4D: $2D
    nop                                           ; $6D4E: $00
    ld b, c                                       ; $6D4F: $41
    ld bc, $3900                                  ; $6D50: $01 $00 $39
    ld l, h                                       ; $6D53: $6C
    nop                                           ; $6D54: $00
    ld [hl], b                                    ; $6D55: $70
    ccf                                           ; $6D56: $3F
    nop                                           ; $6D57: $00
    dec hl                                        ; $6D58: $2B
    nop                                           ; $6D59: $00
    nop                                           ; $6D5A: $00
    nop                                           ; $6D5B: $00
    ld bc, $4900                                  ; $6D5C: $01 $00 $49
    ld [hl], c                                    ; $6D5F: $71
    nop                                           ; $6D60: $00
    call z, RST_00                                ; $6D61: $CC $00 $00
    nop                                           ; $6D64: $00
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    inc bc                                        ; $6D67: $03
    ld bc, $3000                                  ; $6D68: $01 $00 $30
    ld l, a                                       ; $6D6B: $6F
    nop                                           ; $6D6C: $00
    ld d, e                                       ; $6D6D: $53
    ld [hl], b                                    ; $6D6E: $70
    nop                                           ; $6D6F: $00
    ld b, d                                       ; $6D70: $42
    ld bc, $3D00                                  ; $6D71: $01 $00 $3D
    ld [hl], a                                    ; $6D74: $77
    nop                                           ; $6D75: $00
    ld l, a                                       ; $6D76: $6F
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    nop                                           ; $6D79: $00
    ld bc, $5500                                  ; $6D7A: $01 $00 $55
    ld bc, $3900                                  ; $6D7D: $01 $00 $39
    ld l, h                                       ; $6D80: $6C
    nop                                           ; $6D81: $00
    add hl, hl                                    ; $6D82: $29
    ld b, d                                       ; $6D83: $42
    nop                                           ; $6D84: $00
    ld c, h                                       ; $6D85: $4C
    ret                                           ; $6D86: $C9


    nop                                           ; $6D87: $00
    ld bc, $0000                                  ; $6D88: $01 $00 $00
    nop                                           ; $6D8B: $00
    nop                                           ; $6D8C: $00
    nop                                           ; $6D8D: $00
    inc bc                                        ; $6D8E: $03
    ld bc, $3B00                                  ; $6D8F: $01 $00 $3B
    ld h, l                                       ; $6D92: $65
    nop                                           ; $6D93: $00
    ld h, $4C                                     ; $6D94: $26 $4C
    nop                                           ; $6D96: $00
    ret                                           ; $6D97: $C9


    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    ld bc, $5300                                  ; $6D9B: $01 $00 $53
    daa                                           ; $6D9E: $27
    nop                                           ; $6D9F: $00
    ld d, e                                       ; $6DA0: $53
    ld [hl], a                                    ; $6DA1: $77
    nop                                           ; $6DA2: $00
    daa                                           ; $6DA3: $27
    ret                                           ; $6DA4: $C9


    nop                                           ; $6DA5: $00
    ld bc, $0000                                  ; $6DA6: $01 $00 $00
    nop                                           ; $6DA9: $00
    nop                                           ; $6DAA: $00
    nop                                           ; $6DAB: $00
    inc bc                                        ; $6DAC: $03
    nop                                           ; $6DAD: $00
    nop                                           ; $6DAE: $00
    rlca                                          ; $6DAF: $07
    ld a, b                                       ; $6DB0: $78
    nop                                           ; $6DB1: $00
    nop                                           ; $6DB2: $00
    dec b                                         ; $6DB3: $05
    add b                                         ; $6DB4: $80
    nop                                           ; $6DB5: $00
    nop                                           ; $6DB6: $00
    ld [bc], a                                    ; $6DB7: $02
    nop                                           ; $6DB8: $00
    nop                                           ; $6DB9: $00
    ld bc, $6DB1                                  ; $6DBA: $01 $B1 $6D
    ld bc, $6200                                  ; $6DBD: $01 $00 $62
    ld [hl], b                                    ; $6DC0: $70
    nop                                           ; $6DC1: $00
    ld d, d                                       ; $6DC2: $52
    halt                                          ; $6DC3: $76
    nop                                           ; $6DC4: $00
    ret                                           ; $6DC5: $C9


    nop                                           ; $6DC6: $00
    nop                                           ; $6DC7: $00
    nop                                           ; $6DC8: $00
    ld bc, $7800                                  ; $6DC9: $01 $00 $78
    cp h                                          ; $6DCC: $BC
    nop                                           ; $6DCD: $00
    sub h                                         ; $6DCE: $94
    or b                                          ; $6DCF: $B0
    nop                                           ; $6DD0: $00
    adc c                                         ; $6DD1: $89
    ld b, h                                       ; $6DD2: $44
    nop                                           ; $6DD3: $00
    ld h, h                                       ; $6DD4: $64
    halt                                          ; $6DD5: $76
    nop                                           ; $6DD6: $00
    ret                                           ; $6DD7: $C9


    nop                                           ; $6DD8: $00
    nop                                           ; $6DD9: $00
    nop                                           ; $6DDA: $00
    nop                                           ; $6DDB: $00
    nop                                           ; $6DDC: $00
    inc bc                                        ; $6DDD: $03
    ld bc, $2A00                                  ; $6DDE: $01 $00 $2A
    ld e, l                                       ; $6DE1: $5D
    nop                                           ; $6DE2: $00
    ld l, $4D                                     ; $6DE3: $2E $4D
    nop                                           ; $6DE5: $00
    add c                                         ; $6DE6: $81
    halt                                          ; $6DE7: $76
    nop                                           ; $6DE8: $00
    sbc e                                         ; $6DE9: $9B
    halt                                          ; $6DEA: $76
    nop                                           ; $6DEB: $00
    ld c, [hl]                                    ; $6DEC: $4E
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    nop                                           ; $6DEF: $00
    ld bc, $4800                                  ; $6DF0: $01 $00 $48
    jr z, jr_03A_6DF5                             ; $6DF3: $28 $00

jr_03A_6DF5:
    call z, RST_00                                ; $6DF5: $CC $00 $00
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    nop                                           ; $6DFA: $00
    inc bc                                        ; $6DFB: $03
    ld bc, $2B02                                  ; $6DFC: $01 $02 $2B
    and [hl]                                      ; $6DFF: $A6
    db $10                                        ; $6E00: $10
    ld b, a                                       ; $6E01: $47
    ld bc, $0900                                  ; $6E02: $01 $00 $09
    ld b, c                                       ; $6E05: $41
    nop                                           ; $6E06: $00
    ld c, l                                       ; $6E07: $4D
    add c                                         ; $6E08: $81
    nop                                           ; $6E09: $00
    halt                                          ; $6E0A: $76
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    ld bc, $9B00                                  ; $6E0E: $01 $00 $9B
    halt                                          ; $6E11: $76
    nop                                           ; $6E12: $00
    jr nc, @+$28                                  ; $6E13: $30 $26

    nop                                           ; $6E15: $00
    ld l, d                                       ; $6E16: $6A
    ld c, l                                       ; $6E17: $4D
    nop                                           ; $6E18: $00
    ld h, h                                       ; $6E19: $64
    ret                                           ; $6E1A: $C9


    nop                                           ; $6E1B: $00
    ld bc, $0000                                  ; $6E1C: $01 $00 $00
    nop                                           ; $6E1F: $00
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    inc bc                                        ; $6E22: $03
    ld bc, $2700                                  ; $6E23: $01 $00 $27
    dec l                                         ; $6E26: $2D
    nop                                           ; $6E27: $00
    ld b, c                                       ; $6E28: $41
    ld bc, $3900                                  ; $6E29: $01 $00 $39
    ld l, h                                       ; $6E2C: $6C
    nop                                           ; $6E2D: $00
    ld [hl], b                                    ; $6E2E: $70
    ccf                                           ; $6E2F: $3F
    nop                                           ; $6E30: $00
    dec hl                                        ; $6E31: $2B
    nop                                           ; $6E32: $00
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    ld bc, $4900                                  ; $6E35: $01 $00 $49
    ld [hl], c                                    ; $6E38: $71
    nop                                           ; $6E39: $00
    call z, RST_00                                ; $6E3A: $CC $00 $00
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    inc bc                                        ; $6E40: $03
    ld bc, $3000                                  ; $6E41: $01 $00 $30
    ld l, a                                       ; $6E44: $6F
    nop                                           ; $6E45: $00
    ld d, e                                       ; $6E46: $53
    ld [hl], b                                    ; $6E47: $70
    nop                                           ; $6E48: $00
    ld b, d                                       ; $6E49: $42
    ld bc, $3D00                                  ; $6E4A: $01 $00 $3D
    ld [hl], a                                    ; $6E4D: $77
    nop                                           ; $6E4E: $00
    ld l, a                                       ; $6E4F: $6F
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    nop                                           ; $6E52: $00
    ld bc, $5500                                  ; $6E53: $01 $00 $55
    ld bc, $3900                                  ; $6E56: $01 $00 $39
    ld l, h                                       ; $6E59: $6C
    nop                                           ; $6E5A: $00
    add hl, hl                                    ; $6E5B: $29
    ld b, d                                       ; $6E5C: $42
    nop                                           ; $6E5D: $00
    ld c, h                                       ; $6E5E: $4C
    ret                                           ; $6E5F: $C9


    nop                                           ; $6E60: $00
    ld bc, $0000                                  ; $6E61: $01 $00 $00
    nop                                           ; $6E64: $00
    nop                                           ; $6E65: $00
    nop                                           ; $6E66: $00
    inc bc                                        ; $6E67: $03
    ld bc, $3B00                                  ; $6E68: $01 $00 $3B
    ld h, l                                       ; $6E6B: $65
    nop                                           ; $6E6C: $00
    ld h, $4C                                     ; $6E6D: $26 $4C
    nop                                           ; $6E6F: $00
    ret                                           ; $6E70: $C9


    nop                                           ; $6E71: $00
    nop                                           ; $6E72: $00
    nop                                           ; $6E73: $00
    ld bc, $5300                                  ; $6E74: $01 $00 $53
    daa                                           ; $6E77: $27
    nop                                           ; $6E78: $00
    ld d, e                                       ; $6E79: $53
    ld [hl], a                                    ; $6E7A: $77
    nop                                           ; $6E7B: $00
    daa                                           ; $6E7C: $27
    ret                                           ; $6E7D: $C9


    nop                                           ; $6E7E: $00
    ld bc, $0000                                  ; $6E7F: $01 $00 $00
    nop                                           ; $6E82: $00
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    inc bc                                        ; $6E85: $03
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    rlca                                          ; $6E88: $07
    ld a, b                                       ; $6E89: $78
    nop                                           ; $6E8A: $00
    nop                                           ; $6E8B: $00
    dec b                                         ; $6E8C: $05
    add b                                         ; $6E8D: $80
    nop                                           ; $6E8E: $00
    nop                                           ; $6E8F: $00
    ld [bc], a                                    ; $6E90: $02
    nop                                           ; $6E91: $00
    nop                                           ; $6E92: $00
    ld bc, $6E8A                                  ; $6E93: $01 $8A $6E
    ld bc, $7800                                  ; $6E96: $01 $00 $78
    cp h                                          ; $6E99: $BC
    nop                                           ; $6E9A: $00
    sub h                                         ; $6E9B: $94
    or b                                          ; $6E9C: $B0
    nop                                           ; $6E9D: $00
    adc c                                         ; $6E9E: $89
    ld c, l                                       ; $6E9F: $4D
    nop                                           ; $6EA0: $00
    jr c, jr_03A_6EE4                             ; $6EA1: $38 $41

    nop                                           ; $6EA3: $00
    ld h, b                                       ; $6EA4: $60
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    ld bc, $2700                                  ; $6EA8: $01 $00 $27
    add c                                         ; $6EAB: $81
    nop                                           ; $6EAC: $00
    halt                                          ; $6EAD: $76
    sbc e                                         ; $6EAE: $9B
    nop                                           ; $6EAF: $00
    halt                                          ; $6EB0: $76
    rlc b                                         ; $6EB1: $CB $00
    rlc b                                         ; $6EB3: $CB $00
    nop                                           ; $6EB5: $00
    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    nop                                           ; $6EB8: $00
    inc bc                                        ; $6EB9: $03
    ld bc, $B000                                  ; $6EBA: $01 $00 $B0
    sbc h                                         ; $6EBD: $9C
    nop                                           ; $6EBE: $00
    add l                                         ; $6EBF: $85
    halt                                          ; $6EC0: $76
    nop                                           ; $6EC1: $00
    or c                                          ; $6EC2: $B1
    ret nc                                        ; $6EC3: $D0

    nop                                           ; $6EC4: $00
    ccf                                           ; $6EC5: $3F
    ccf                                           ; $6EC6: $3F
    nop                                           ; $6EC7: $00
    dec hl                                        ; $6EC8: $2B
    nop                                           ; $6EC9: $00
    nop                                           ; $6ECA: $00
    nop                                           ; $6ECB: $00
    ld bc, $2900                                  ; $6ECC: $01 $00 $29
    rlc b                                         ; $6ECF: $CB $00
    and [hl]                                      ; $6ED1: $A6
    halt                                          ; $6ED2: $76
    nop                                           ; $6ED3: $00
    adc c                                         ; $6ED4: $89
    sub l                                         ; $6ED5: $95
    nop                                           ; $6ED6: $00
    pop de                                        ; $6ED7: $D1
    ld c, [hl]                                    ; $6ED8: $4E
    nop                                           ; $6ED9: $00
    ld bc, $0000                                  ; $6EDA: $01 $00 $00
    nop                                           ; $6EDD: $00
    ld bc, $2600                                  ; $6EDE: $01 $00 $26
    add hl, sp                                    ; $6EE1: $39
    nop                                           ; $6EE2: $00
    ld l, a                                       ; $6EE3: $6F

jr_03A_6EE4:
    ld b, h                                       ; $6EE4: $44
    nop                                           ; $6EE5: $00
    call z, RST_00                                ; $6EE6: $CC $00 $00
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    inc bc                                        ; $6EEC: $03
    ld bc, $5200                                  ; $6EED: $01 $00 $52
    dec hl                                        ; $6EF0: $2B
    nop                                           ; $6EF1: $00
    ld c, l                                       ; $6EF2: $4D
    or b                                          ; $6EF3: $B0
    nop                                           ; $6EF4: $00
    sbc h                                         ; $6EF5: $9C
    add l                                         ; $6EF6: $85
    nop                                           ; $6EF7: $00
    halt                                          ; $6EF8: $76
    or c                                          ; $6EF9: $B1
    nop                                           ; $6EFA: $00
    ld c, [hl]                                    ; $6EFB: $4E
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    nop                                           ; $6EFE: $00
    ld bc, $0300                                  ; $6EFF: $01 $00 $03
    ld [bc], a                                    ; $6F02: $02
    nop                                           ; $6F03: $00
    ld c, d                                       ; $6F04: $4A
    ld l, a                                       ; $6F05: $6F
    nop                                           ; $6F06: $00
    ld [hl], $2B                                  ; $6F07: $36 $2B
    nop                                           ; $6F09: $00
    ld bc, $0029                                  ; $6F0A: $01 $29 $00
    ld l, b                                       ; $6F0D: $68
    nop                                           ; $6F0E: $00
    nop                                           ; $6F0F: $00
    nop                                           ; $6F10: $00
    ld bc, $5600                                  ; $6F11: $01 $00 $56
    ld c, c                                       ; $6F14: $49
    nop                                           ; $6F15: $00
    daa                                           ; $6F16: $27
    ld l, $00                                     ; $6F17: $2E $00
    ld c, b                                       ; $6F19: $48
    ldh [rP1], a                                  ; $6F1A: $E0 $00
    ld bc, $0000                                  ; $6F1C: $01 $00 $00
    nop                                           ; $6F1F: $00
    nop                                           ; $6F20: $00
    nop                                           ; $6F21: $00
    inc bc                                        ; $6F22: $03
    ld bc, $D000                                  ; $6F23: $01 $00 $D0
    ccf                                           ; $6F26: $3F
    nop                                           ; $6F27: $00
    ccf                                           ; $6F28: $3F
    dec hl                                        ; $6F29: $2B
    nop                                           ; $6F2A: $00
    add hl, hl                                    ; $6F2B: $29
    rlc b                                         ; $6F2C: $CB $00
    and [hl]                                      ; $6F2E: $A6
    halt                                          ; $6F2F: $76
    nop                                           ; $6F30: $00
    adc c                                         ; $6F31: $89
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    ld bc, $9500                                  ; $6F35: $01 $00 $95
    pop de                                        ; $6F38: $D1
    nop                                           ; $6F39: $00
    ld c, [hl]                                    ; $6F3A: $4E
    ld bc, $0300                                  ; $6F3B: $01 $00 $03
    inc b                                         ; $6F3E: $04
    nop                                           ; $6F3F: $00
    ld c, d                                       ; $6F40: $4A
    ld l, a                                       ; $6F41: $6F
    nop                                           ; $6F42: $00
    ld bc, $0000                                  ; $6F43: $01 $00 $00
    nop                                           ; $6F46: $00
    ld bc, $2900                                  ; $6F47: $01 $00 $29
    ld l, b                                       ; $6F4A: $68
    nop                                           ; $6F4B: $00
    ld d, [hl]                                    ; $6F4C: $56
    ld l, d                                       ; $6F4D: $6A
    nop                                           ; $6F4E: $00
    ld c, l                                       ; $6F4F: $4D
    ld h, h                                       ; $6F50: $64
    nop                                           ; $6F51: $00
    ret                                           ; $6F52: $C9


    nop                                           ; $6F53: $00
    nop                                           ; $6F54: $00
    nop                                           ; $6F55: $00
    nop                                           ; $6F56: $00
    nop                                           ; $6F57: $00
    inc bc                                        ; $6F58: $03
    ld bc, $4700                                  ; $6F59: $01 $00 $47
    ld h, c                                       ; $6F5C: $61
    nop                                           ; $6F5D: $00
    ld bc, $00AA                                  ; $6F5E: $01 $AA $00
    adc c                                         ; $6F61: $89
    cp a                                          ; $6F62: $BF
    nop                                           ; $6F63: $00
    halt                                          ; $6F64: $76
    sbc d                                         ; $6F65: $9A
    nop                                           ; $6F66: $00
    ld l, [hl]                                    ; $6F67: $6E
    nop                                           ; $6F68: $00
    nop                                           ; $6F69: $00
    nop                                           ; $6F6A: $00
    ld bc, $2700                                  ; $6F6B: $01 $00 $27
    ld l, e                                       ; $6F6E: $6B
    nop                                           ; $6F6F: $00
    ld b, d                                       ; $6F70: $42
    dec hl                                        ; $6F71: $2B
    nop                                           ; $6F72: $00
    ld l, b                                       ; $6F73: $68
    dec sp                                        ; $6F74: $3B
    nop                                           ; $6F75: $00
    ld h, l                                       ; $6F76: $65
    ld c, c                                       ; $6F77: $49
    nop                                           ; $6F78: $00
    daa                                           ; $6F79: $27
    nop                                           ; $6F7A: $00
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    ld bc, $4300                                  ; $6F7D: $01 $00 $43
    ld bc, $9600                                  ; $6F80: $01 $00 $96
    or d                                          ; $6F83: $B2
    nop                                           ; $6F84: $00
    ld c, c                                       ; $6F85: $49
    ld c, l                                       ; $6F86: $4D
    nop                                           ; $6F87: $00
    ld h, h                                       ; $6F88: $64
    ret                                           ; $6F89: $C9


    nop                                           ; $6F8A: $00
    ld bc, $0000                                  ; $6F8B: $01 $00 $00
    nop                                           ; $6F8E: $00
    nop                                           ; $6F8F: $00
    nop                                           ; $6F90: $00
    inc bc                                        ; $6F91: $03
    ld bc, $0300                                  ; $6F92: $01 $00 $03
    inc b                                         ; $6F95: $04
    nop                                           ; $6F96: $00
    ld c, d                                       ; $6F97: $4A
    ld l, a                                       ; $6F98: $6F
    nop                                           ; $6F99: $00
    ld bc, $0039                                  ; $6F9A: $01 $39 $00
    ld l, h                                       ; $6F9D: $6C
    add hl, hl                                    ; $6F9E: $29
    nop                                           ; $6F9F: $00
    ld b, d                                       ; $6FA0: $42
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    ld bc, $A000                                  ; $6FA4: $01 $00 $A0
    ld a, c                                       ; $6FA7: $79
    nop                                           ; $6FA8: $00
    adc c                                         ; $6FA9: $89
    add c                                         ; $6FAA: $81
    nop                                           ; $6FAB: $00
    ld a, b                                       ; $6FAC: $78
    ld l, [hl]                                    ; $6FAD: $6E
    nop                                           ; $6FAE: $00
    ld bc, $0060                                  ; $6FAF: $01 $60 $00
    ld a, [hl-]                                   ; $6FB2: $3A
    nop                                           ; $6FB3: $00
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    ld bc, $3600                                  ; $6FB6: $01 $00 $36
    ld b, d                                       ; $6FB9: $42
    nop                                           ; $6FBA: $00
    ld c, h                                       ; $6FBB: $4C
    ret                                           ; $6FBC: $C9


    nop                                           ; $6FBD: $00
    ld bc, $0000                                  ; $6FBE: $01 $00 $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    inc bc                                        ; $6FC4: $03
    ld bc, $3B00                                  ; $6FC5: $01 $00 $3B
    ld h, l                                       ; $6FC8: $65
    nop                                           ; $6FC9: $00
    ld h, $4C                                     ; $6FCA: $26 $4C
    nop                                           ; $6FCC: $00
    ret                                           ; $6FCD: $C9


    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00
    ld bc, $5300                                  ; $6FD1: $01 $00 $53
    daa                                           ; $6FD4: $27
    nop                                           ; $6FD5: $00
    ld d, e                                       ; $6FD6: $53
    ld [hl], a                                    ; $6FD7: $77
    nop                                           ; $6FD8: $00
    daa                                           ; $6FD9: $27
    ret                                           ; $6FDA: $C9


    nop                                           ; $6FDB: $00
    ld bc, $0000                                  ; $6FDC: $01 $00 $00
    nop                                           ; $6FDF: $00
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    inc bc                                        ; $6FE2: $03
    nop                                           ; $6FE3: $00
    nop                                           ; $6FE4: $00
    rlca                                          ; $6FE5: $07
    ld a, b                                       ; $6FE6: $78
    nop                                           ; $6FE7: $00
    nop                                           ; $6FE8: $00
    dec b                                         ; $6FE9: $05
    add b                                         ; $6FEA: $80
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    ld [bc], a                                    ; $6FED: $02
    nop                                           ; $6FEE: $00
    nop                                           ; $6FEF: $00
    ld bc, $6FE7                                  ; $6FF0: $01 $E7 $6F
    ld bc, $7800                                  ; $6FF3: $01 $00 $78
    cp h                                          ; $6FF6: $BC
    nop                                           ; $6FF7: $00
    sub h                                         ; $6FF8: $94
    or b                                          ; $6FF9: $B0
    nop                                           ; $6FFA: $00
    adc c                                         ; $6FFB: $89
    ld c, l                                       ; $6FFC: $4D
    ld bc, $7675                                  ; $6FFD: $01 $75 $76
    db $10                                        ; $7000: $10
    add c                                         ; $7001: $81
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    ld bc, $7600                                  ; $7005: $01 $00 $76
    sbc e                                         ; $7008: $9B
    nop                                           ; $7009: $00
    halt                                          ; $700A: $76
    rlc b                                         ; $700B: $CB $00
    rlc b                                         ; $700D: $CB $00
    nop                                           ; $700F: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    inc bc                                        ; $7013: $03
    ld bc, $B000                                  ; $7014: $01 $00 $B0
    sbc h                                         ; $7017: $9C
    nop                                           ; $7018: $00
    add l                                         ; $7019: $85
    halt                                          ; $701A: $76
    nop                                           ; $701B: $00
    or c                                          ; $701C: $B1
    ret nc                                        ; $701D: $D0

    ld bc, $2962                                  ; $701E: $01 $62 $29
    nop                                           ; $7021: $00
    rlc b                                         ; $7022: $CB $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    ld bc, $A600                                  ; $7026: $01 $00 $A6
    halt                                          ; $7029: $76
    nop                                           ; $702A: $00
    adc c                                         ; $702B: $89
    sub l                                         ; $702C: $95
    nop                                           ; $702D: $00
    pop de                                        ; $702E: $D1
    ld c, [hl]                                    ; $702F: $4E
    nop                                           ; $7030: $00
    ld bc, $202C                                  ; $7031: $01 $2C $20
    ld l, a                                       ; $7034: $6F
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    ld bc, $4400                                  ; $7038: $01 $00 $44
    call z, Boot                                  ; $703B: $CC $00 $01
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    inc bc                                        ; $7043: $03
    ld bc, $9501                                  ; $7044: $01 $01 $95
    ld c, l                                       ; $7047: $4D
    nop                                           ; $7048: $00
    or b                                          ; $7049: $B0
    sbc h                                         ; $704A: $9C
    nop                                           ; $704B: $00
    add l                                         ; $704C: $85
    halt                                          ; $704D: $76
    nop                                           ; $704E: $00
    or c                                          ; $704F: $B1
    ld c, [hl]                                    ; $7050: $4E
    nop                                           ; $7051: $00
    ld bc, $0000                                  ; $7052: $01 $00 $00
    nop                                           ; $7055: $00
    ld bc, $0300                                  ; $7056: $01 $00 $03
    ld [bc], a                                    ; $7059: $02
    ld bc, $3681                                  ; $705A: $01 $81 $36
    nop                                           ; $705D: $00
    dec hl                                        ; $705E: $2B
    ld bc, $B301                                  ; $705F: $01 $01 $B3
    ld d, [hl]                                    ; $7062: $56
    nop                                           ; $7063: $00
    ld c, c                                       ; $7064: $49
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    ld bc, $2700                                  ; $7068: $01 $00 $27
    ld l, $00                                     ; $706B: $2E $00
    ld c, b                                       ; $706D: $48
    ldh [rP1], a                                  ; $706E: $E0 $00
    ld bc, $0000                                  ; $7070: $01 $00 $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    inc bc                                        ; $7076: $03
    ld bc, $D000                                  ; $7077: $01 $00 $D0
    ld h, d                                       ; $707A: $62
    db $10                                        ; $707B: $10
    add hl, hl                                    ; $707C: $29
    rlc b                                         ; $707D: $CB $00
    and [hl]                                      ; $707F: $A6
    halt                                          ; $7080: $76
    nop                                           ; $7081: $00
    adc c                                         ; $7082: $89
    sub l                                         ; $7083: $95
    nop                                           ; $7084: $00
    pop de                                        ; $7085: $D1
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    ld bc, $4E00                                  ; $7089: $01 $00 $4E
    ld bc, $0300                                  ; $708C: $01 $00 $03
    inc b                                         ; $708F: $04
    ld bc, $B381                                  ; $7090: $01 $81 $B3
    db $10                                        ; $7093: $10
    ld d, [hl]                                    ; $7094: $56
    ld l, d                                       ; $7095: $6A
    nop                                           ; $7096: $00
    ld c, l                                       ; $7097: $4D
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    ld bc, $6400                                  ; $709B: $01 $00 $64
    ret                                           ; $709E: $C9


    nop                                           ; $709F: $00
    ld bc, $0000                                  ; $70A0: $01 $00 $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    nop                                           ; $70A5: $00
    inc bc                                        ; $70A6: $03
    ld bc, $4700                                  ; $70A7: $01 $00 $47
    ld h, c                                       ; $70AA: $61
    nop                                           ; $70AB: $00
    ld bc, $00AA                                  ; $70AC: $01 $AA $00
    adc c                                         ; $70AF: $89
    cp a                                          ; $70B0: $BF
    nop                                           ; $70B1: $00
    halt                                          ; $70B2: $76
    sbc d                                         ; $70B3: $9A
    nop                                           ; $70B4: $00
    ld l, [hl]                                    ; $70B5: $6E
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    nop                                           ; $70B8: $00
    ld bc, $1901                                  ; $70B9: $01 $01 $19
    ld l, e                                       ; $70BC: $6B
    nop                                           ; $70BD: $00
    ld b, d                                       ; $70BE: $42
    dec hl                                        ; $70BF: $2B
    nop                                           ; $70C0: $00
    ld l, b                                       ; $70C1: $68
    dec sp                                        ; $70C2: $3B
    nop                                           ; $70C3: $00
    ld h, l                                       ; $70C4: $65
    ld c, c                                       ; $70C5: $49
    nop                                           ; $70C6: $00
    daa                                           ; $70C7: $27
    nop                                           ; $70C8: $00
    nop                                           ; $70C9: $00
    nop                                           ; $70CA: $00
    ld bc, $4300                                  ; $70CB: $01 $00 $43
    ld bc, $9600                                  ; $70CE: $01 $00 $96
    or d                                          ; $70D1: $B2
    nop                                           ; $70D2: $00
    ld c, c                                       ; $70D3: $49
    ld c, l                                       ; $70D4: $4D
    nop                                           ; $70D5: $00
    ld h, h                                       ; $70D6: $64
    ret                                           ; $70D7: $C9


    nop                                           ; $70D8: $00
    ld bc, $0000                                  ; $70D9: $01 $00 $00
    nop                                           ; $70DC: $00
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    inc bc                                        ; $70DF: $03
    ld bc, $0300                                  ; $70E0: $01 $00 $03
    inc b                                         ; $70E3: $04
    ld bc, $0181                                  ; $70E4: $01 $81 $01
    nop                                           ; $70E7: $00
    add hl, sp                                    ; $70E8: $39
    ld l, h                                       ; $70E9: $6C
    nop                                           ; $70EA: $00
    add hl, hl                                    ; $70EB: $29
    ld b, d                                       ; $70EC: $42
    nop                                           ; $70ED: $00
    ld bc, $0000                                  ; $70EE: $01 $00 $00
    nop                                           ; $70F1: $00
    ld bc, $A000                                  ; $70F2: $01 $00 $A0
    ld a, c                                       ; $70F5: $79
    nop                                           ; $70F6: $00
    adc c                                         ; $70F7: $89
    add c                                         ; $70F8: $81
    nop                                           ; $70F9: $00
    ld a, b                                       ; $70FA: $78
    ld l, [hl]                                    ; $70FB: $6E
    nop                                           ; $70FC: $00
    ld bc, $0060                                  ; $70FD: $01 $60 $00
    ld a, [hl-]                                   ; $7100: $3A
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    ld bc, $3600                                  ; $7104: $01 $00 $36
    ld b, d                                       ; $7107: $42
    nop                                           ; $7108: $00
    ld c, h                                       ; $7109: $4C
    ret                                           ; $710A: $C9


    nop                                           ; $710B: $00
    ld bc, $0000                                  ; $710C: $01 $00 $00
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    inc bc                                        ; $7112: $03
    ld bc, $3B00                                  ; $7113: $01 $00 $3B
    ld h, l                                       ; $7116: $65
    nop                                           ; $7117: $00
    ld h, $4C                                     ; $7118: $26 $4C
    nop                                           ; $711A: $00
    ret                                           ; $711B: $C9


    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    ld bc, $5300                                  ; $711F: $01 $00 $53
    daa                                           ; $7122: $27
    nop                                           ; $7123: $00
    ld d, e                                       ; $7124: $53
    ld [hl], a                                    ; $7125: $77
    nop                                           ; $7126: $00
    daa                                           ; $7127: $27
    ret                                           ; $7128: $C9


    nop                                           ; $7129: $00
    ld bc, $0000                                  ; $712A: $01 $00 $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    inc bc                                        ; $7130: $03
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    rlca                                          ; $7133: $07
    ld a, b                                       ; $7134: $78
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    dec b                                         ; $7137: $05
    add b                                         ; $7138: $80
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    ld [bc], a                                    ; $713B: $02
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    ld bc, $7135                                  ; $713E: $01 $35 $71
    ld bc, $4F00                                  ; $7141: $01 $00 $4F
    jp z, Jump_03A_5E00                           ; $7144: $CA $00 $5E

    jp z, Jump_03A_4100                           ; $7147: $CA $00 $41

    jp z, Jump_03A_4D00                           ; $714A: $CA $00 $4D

    nop                                           ; $714D: $00
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    ld bc, $3800                                  ; $7150: $01 $00 $38
    ld b, c                                       ; $7153: $41
    nop                                           ; $7154: $00
    ld h, b                                       ; $7155: $60
    daa                                           ; $7156: $27
    nop                                           ; $7157: $00
    add c                                         ; $7158: $81
    halt                                          ; $7159: $76
    nop                                           ; $715A: $00
    sbc e                                         ; $715B: $9B
    halt                                          ; $715C: $76
    nop                                           ; $715D: $00
    rlc b                                         ; $715E: $CB $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    inc bc                                        ; $7164: $03
    ld bc, $2F00                                  ; $7165: $01 $00 $2F
    ld l, e                                       ; $7168: $6B
    nop                                           ; $7169: $00
    ld l, [hl]                                    ; $716A: $6E
    ld e, [hl]                                    ; $716B: $5E
    nop                                           ; $716C: $00
    ld b, d                                       ; $716D: $42
    daa                                           ; $716E: $27
    nop                                           ; $716F: $00
    ld l, d                                       ; $7170: $6A
    ret z                                         ; $7171: $C8

    nop                                           ; $7172: $00
    ld h, $00                                     ; $7173: $26 $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    ld bc, $4900                                  ; $7177: $01 $00 $49
    ccf                                           ; $717A: $3F
    nop                                           ; $717B: $00
    ld c, [hl]                                    ; $717C: $4E
    ret nc                                        ; $717D: $D0

    nop                                           ; $717E: $00
    ccf                                           ; $717F: $3F
    ld b, c                                       ; $7180: $41
    nop                                           ; $7181: $00
    dec sp                                        ; $7182: $3B
    ld l, a                                       ; $7183: $6F
    nop                                           ; $7184: $00
    pop de                                        ; $7185: $D1
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    ld bc, $6E00                                  ; $7189: $01 $00 $6E
    ld a, a                                       ; $718C: $7F
    nop                                           ; $718D: $00
    cp e                                          ; $718E: $BB
    ld a, b                                       ; $718F: $78
    nop                                           ; $7190: $00
    ld [hl], $3F                                  ; $7191: $36 $3F
    nop                                           ; $7193: $00
    ld c, l                                       ; $7194: $4D
    ld c, h                                       ; $7195: $4C
    nop                                           ; $7196: $00
    ret                                           ; $7197: $C9


    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719A: $00
    nop                                           ; $719B: $00
    nop                                           ; $719C: $00
    inc bc                                        ; $719D: $03
    ld bc, $2600                                  ; $719E: $01 $00 $26
    ld c, c                                       ; $71A1: $49
    nop                                           ; $71A2: $00
    ccf                                           ; $71A3: $3F
    ld c, d                                       ; $71A4: $4A
    nop                                           ; $71A5: $00
    ld c, [hl]                                    ; $71A6: $4E
    ret nc                                        ; $71A7: $D0

    nop                                           ; $71A8: $00
    inc sp                                        ; $71A9: $33
    inc l                                         ; $71AA: $2C
    nop                                           ; $71AB: $00
    ld l, e                                       ; $71AC: $6B
    nop                                           ; $71AD: $00
    nop                                           ; $71AE: $00
    nop                                           ; $71AF: $00
    ld bc, $4100                                  ; $71B0: $01 $00 $41
    ld c, a                                       ; $71B3: $4F
    nop                                           ; $71B4: $00
    ld [hl], b                                    ; $71B5: $70
    dec [hl]                                      ; $71B6: $35
    nop                                           ; $71B7: $00
    ld b, c                                       ; $71B8: $41
    ld l, l                                       ; $71B9: $6D
    nop                                           ; $71BA: $00
    ld a, [hl-]                                   ; $71BB: $3A
    pop de                                        ; $71BC: $D1
    nop                                           ; $71BD: $00
    ld l, [hl]                                    ; $71BE: $6E
    nop                                           ; $71BF: $00
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    ld bc, $2A00                                  ; $71C2: $01 $00 $2A
    ld [hl], $00                                  ; $71C5: $36 $00
    add hl, hl                                    ; $71C7: $29
    ld b, b                                       ; $71C8: $40
    nop                                           ; $71C9: $00
    ld h, l                                       ; $71CA: $65
    jr z, jr_03A_71CD                             ; $71CB: $28 $00

jr_03A_71CD:
    ld l, l                                       ; $71CD: $6D
    rlc b                                         ; $71CE: $CB $00
    ld bc, $0000                                  ; $71D0: $01 $00 $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    inc bc                                        ; $71D6: $03
    ld bc, $3F00                                  ; $71D7: $01 $00 $3F
    daa                                           ; $71DA: $27
    nop                                           ; $71DB: $00
    ld l, c                                       ; $71DC: $69
    ld h, a                                       ; $71DD: $67
    nop                                           ; $71DE: $00
    dec l                                         ; $71DF: $2D
    jr nc, jr_03A_71E2                            ; $71E0: $30 $00

jr_03A_71E2:
    scf                                           ; $71E2: $37
    dec l                                         ; $71E3: $2D
    nop                                           ; $71E4: $00
    ld c, c                                       ; $71E5: $49
    nop                                           ; $71E6: $00
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    ld bc, $2D00                                  ; $71E9: $01 $00 $2D
    ld b, d                                       ; $71EC: $42
    nop                                           ; $71ED: $00
    ld bc, $000D                                  ; $71EE: $01 $0D $00
    dec de                                        ; $71F1: $1B
    jr nc, jr_03A_71F4                            ; $71F2: $30 $00

jr_03A_71F4:
    ld bc, $0027                                  ; $71F4: $01 $27 $00
    ld [hl], b                                    ; $71F7: $70
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    ld bc, $5800                                  ; $71FB: $01 $00 $58
    daa                                           ; $71FE: $27
    nop                                           ; $71FF: $00
    ld c, l                                       ; $7200: $4D
    ld b, e                                       ; $7201: $43
    nop                                           ; $7202: $00
    inc l                                         ; $7203: $2C
    ld c, d                                       ; $7204: $4A
    nop                                           ; $7205: $00
    ldh [rP1], a                                  ; $7206: $E0 $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    nop                                           ; $720B: $00
    inc bc                                        ; $720C: $03
    ld bc, $DC00                                  ; $720D: $01 $00 $DC
    sbc $00                                       ; $7210: $DE $00
    call c, Call_000_00DA                         ; $7212: $DC $DA $00
    ld bc, $00E2                                  ; $7215: $01 $E2 $00
    ld bc, $0047                                  ; $7218: $01 $47 $00
    ld bc, $0000                                  ; $721B: $01 $00 $00
    nop                                           ; $721E: $00
    ld bc, $4400                                  ; $721F: $01 $00 $44
    jr c, jr_03A_7224                             ; $7222: $38 $00

jr_03A_7224:
    ld l, d                                       ; $7224: $6A
    ld bc, $4F00                                  ; $7225: $01 $00 $4F
    ld [hl], b                                    ; $7228: $70
    nop                                           ; $7229: $00
    dec [hl]                                      ; $722A: $35
    ld b, c                                       ; $722B: $41
    nop                                           ; $722C: $00
    ld l, l                                       ; $722D: $6D
    nop                                           ; $722E: $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    ld bc, $3A00                                  ; $7231: $01 $00 $3A
    ld c, c                                       ; $7234: $49
    nop                                           ; $7235: $00
    ld c, l                                       ; $7236: $4D
    ld h, h                                       ; $7237: $64
    nop                                           ; $7238: $00
    ret                                           ; $7239: $C9


    nop                                           ; $723A: $00
    nop                                           ; $723B: $00
    nop                                           ; $723C: $00
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    inc bc                                        ; $723F: $03
    ld bc, $BE00                                  ; $7240: $01 $00 $BE
    xor c                                         ; $7243: $A9
    nop                                           ; $7244: $00
    ld b, a                                       ; $7245: $47
    ld h, c                                       ; $7246: $61
    nop                                           ; $7247: $00
    ld bc, $00A6                                  ; $7248: $01 $A6 $00
    halt                                          ; $724B: $76
    adc c                                         ; $724C: $89
    nop                                           ; $724D: $00
    sub l                                         ; $724E: $95
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    ld bc, $4700                                  ; $7252: $01 $00 $47
    ld h, c                                       ; $7255: $61
    nop                                           ; $7256: $00
    ld bc, $002A                                  ; $7257: $01 $2A $00
    ld c, c                                       ; $725A: $49
    dec sp                                        ; $725B: $3B
    nop                                           ; $725C: $00
    ld l, l                                       ; $725D: $6D
    ld a, [hl-]                                   ; $725E: $3A
    nop                                           ; $725F: $00
    jr nc, jr_03A_7262                            ; $7260: $30 $00

jr_03A_7262:
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    ld bc, $4700                                  ; $7264: $01 $00 $47
    ld l, d                                       ; $7267: $6A
    nop                                           ; $7268: $00
    ld c, l                                       ; $7269: $4D
    ld h, h                                       ; $726A: $64
    nop                                           ; $726B: $00
    ret                                           ; $726C: $C9


    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    nop                                           ; $726F: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    inc bc                                        ; $7272: $03
    ld bc, $3900                                  ; $7273: $01 $00 $39
    ld l, e                                       ; $7276: $6B
    nop                                           ; $7277: $00
    ld a, $6B                                     ; $7278: $3E $6B
    nop                                           ; $727A: $00
    ld c, l                                       ; $727B: $4D
    ld bc, $6D00                                  ; $727C: $01 $00 $6D
    ld a, [hl-]                                   ; $727F: $3A
    nop                                           ; $7280: $00
    ld c, l                                       ; $7281: $4D
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    ld bc, $3800                                  ; $7285: $01 $00 $38
    ld b, c                                       ; $7288: $41
    nop                                           ; $7289: $00
    ld h, b                                       ; $728A: $60
    daa                                           ; $728B: $27
    nop                                           ; $728C: $00
    ld h, h                                       ; $728D: $64
    ret                                           ; $728E: $C9


    nop                                           ; $728F: $00
    ld bc, $0000                                  ; $7290: $01 $00 $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    inc bc                                        ; $7296: $03
    ld bc, $BA00                                  ; $7297: $01 $00 $BA
    ld a, c                                       ; $729A: $79
    nop                                           ; $729B: $00
    ld a, h                                       ; $729C: $7C
    add c                                         ; $729D: $81
    nop                                           ; $729E: $00
    pop bc                                        ; $729F: $C1
    xor c                                         ; $72A0: $A9
    nop                                           ; $72A1: $00
    ld a, c                                       ; $72A2: $79
    rst RST_08                                    ; $72A3: $CF
    nop                                           ; $72A4: $00
    ld bc, $0000                                  ; $72A5: $01 $00 $00
    nop                                           ; $72A8: $00
    ld bc, $B300                                  ; $72A9: $01 $00 $B3
    halt                                          ; $72AC: $76
    nop                                           ; $72AD: $00
    and d                                         ; $72AE: $A2
    call nz, $C100                                ; $72AF: $C4 $00 $C1
    add h                                         ; $72B2: $84
    nop                                           ; $72B3: $00
    cp l                                          ; $72B4: $BD
    ld a, c                                       ; $72B5: $79
    nop                                           ; $72B6: $00
    sbc d                                         ; $72B7: $9A
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    inc bc                                        ; $72BD: $03
    ld bc, $A100                                  ; $72BE: $01 $00 $A1
    jp nz, $9500                                  ; $72C1: $C2 $00 $95

    ld [hl], $00                                  ; $72C4: $36 $00
    ccf                                           ; $72C6: $3F
    ld l, b                                       ; $72C7: $68
    nop                                           ; $72C8: $00
    ld bc, $006B                                  ; $72C9: $01 $6B $00
    ld l, a                                       ; $72CC: $6F
    nop                                           ; $72CD: $00
    nop                                           ; $72CE: $00
    nop                                           ; $72CF: $00
    ld bc, $3E00                                  ; $72D0: $01 $00 $3E
    dec l                                         ; $72D3: $2D
    nop                                           ; $72D4: $00
    cpl                                           ; $72D5: $2F
    jr z, jr_03A_72D8                             ; $72D6: $28 $00

jr_03A_72D8:
    inc sp                                        ; $72D8: $33
    inc l                                         ; $72D9: $2C
    nop                                           ; $72DA: $00
    ld l, [hl]                                    ; $72DB: $6E
    ld bc, $3700                                  ; $72DC: $01 $00 $37
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    ld bc, $6A00                                  ; $72E2: $01 $00 $6A
    ld c, l                                       ; $72E5: $4D
    nop                                           ; $72E6: $00
    ld h, h                                       ; $72E7: $64
    ret                                           ; $72E8: $C9


    nop                                           ; $72E9: $00
    ld bc, $0000                                  ; $72EA: $01 $00 $00
    nop                                           ; $72ED: $00
    nop                                           ; $72EE: $00
    nop                                           ; $72EF: $00
    inc bc                                        ; $72F0: $03
    ld bc, $8200                                  ; $72F1: $01 $00 $82
    cp h                                          ; $72F4: $BC
    nop                                           ; $72F5: $00
    and l                                         ; $72F6: $A5
    sub l                                         ; $72F7: $95
    nop                                           ; $72F8: $00
    cp [hl]                                       ; $72F9: $BE
    pop bc                                        ; $72FA: $C1
    nop                                           ; $72FB: $00
    rst RST_08                                    ; $72FC: $CF
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    ld bc, $7900                                  ; $7300: $01 $00 $79
    pop bc                                        ; $7303: $C1
    nop                                           ; $7304: $00
    and d                                         ; $7305: $A2
    call nz, $9C00                                ; $7306: $C4 $00 $9C
    sub h                                         ; $7309: $94
    nop                                           ; $730A: $00
    call nz, Call_000_00BD                        ; $730B: $C4 $BD $00
    ld a, c                                       ; $730E: $79
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    inc bc                                        ; $7314: $03
    ld bc, $A100                                  ; $7315: $01 $00 $A1
    jp nz, $9500                                  ; $7318: $C2 $00 $95

    ld [hl], $00                                  ; $731B: $36 $00
    ccf                                           ; $731D: $3F
    ld l, b                                       ; $731E: $68
    nop                                           ; $731F: $00
    ld bc, $009A                                  ; $7320: $01 $9A $00
    cp d                                          ; $7323: $BA
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    ld bc, $8600                                  ; $7327: $01 $00 $86
    pop bc                                        ; $732A: $C1
    nop                                           ; $732B: $00
    or e                                          ; $732C: $B3
    halt                                          ; $732D: $76
    nop                                           ; $732E: $00
    sbc d                                         ; $732F: $9A
    ld b, a                                       ; $7330: $47
    nop                                           ; $7331: $00
    ld bc, $002F                                  ; $7332: $01 $2F $00
    jr z, jr_03A_7337                             ; $7335: $28 $00

jr_03A_7337:
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    ld bc, $3300                                  ; $7339: $01 $00 $33
    inc l                                         ; $733C: $2C
    nop                                           ; $733D: $00
    scf                                           ; $733E: $37
    ld l, d                                       ; $733F: $6A
    nop                                           ; $7340: $00
    ld c, l                                       ; $7341: $4D
    ld h, h                                       ; $7342: $64
    nop                                           ; $7343: $00
    ret                                           ; $7344: $C9


    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    inc bc                                        ; $734A: $03
    ld bc, $8900                                  ; $734B: $01 $00 $89
    ld a, a                                       ; $734E: $7F
    nop                                           ; $734F: $00
    halt                                          ; $7350: $76
    and l                                         ; $7351: $A5
    nop                                           ; $7352: $00
    rst RST_08                                    ; $7353: $CF
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    ld bc, $8900                                  ; $7357: $01 $00 $89
    ld a, a                                       ; $735A: $7F
    nop                                           ; $735B: $00
    halt                                          ; $735C: $76
    and l                                         ; $735D: $A5
    nop                                           ; $735E: $00
    sub [hl]                                      ; $735F: $96
    pop bc                                        ; $7360: $C1
    nop                                           ; $7361: $00
    adc c                                         ; $7362: $89
    db $E4                                        ; $7363: $E4
    ld [bc], a                                    ; $7364: $02
    and a                                         ; $7365: $A7
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736A: $00
    inc bc                                        ; $736B: $03
    ld bc, $2600                                  ; $736C: $01 $00 $26
    daa                                           ; $736F: $27
    nop                                           ; $7370: $00
    ld b, d                                       ; $7371: $42
    ld l, [hl]                                    ; $7372: $6E
    nop                                           ; $7373: $00
    ld bc, $002F                                  ; $7374: $01 $2F $00
    ld l, a                                       ; $7377: $6F
    ld l, b                                       ; $7378: $68
    nop                                           ; $7379: $00
    ld l, a                                       ; $737A: $6F
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    ld bc, $3500                                  ; $737E: $01 $00 $35
    jr c, jr_03A_7383                             ; $7381: $38 $00

jr_03A_7383:
    ld b, b                                       ; $7383: $40
    ld h, l                                       ; $7384: $65
    nop                                           ; $7385: $00
    jr z, jr_03A_7389                             ; $7386: $28 $01

    nop                                           ; $7388: $00

jr_03A_7389:
    cpl                                           ; $7389: $2F
    jr z, jr_03A_738C                             ; $738A: $28 $00

jr_03A_738C:
    inc sp                                        ; $738C: $33
    nop                                           ; $738D: $00
    nop                                           ; $738E: $00
    nop                                           ; $738F: $00
    ld bc, $2C00                                  ; $7390: $01 $00 $2C
    ld h, h                                       ; $7393: $64
    nop                                           ; $7394: $00
    ret                                           ; $7395: $C9


    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739A: $00
    inc bc                                        ; $739B: $03
    ld bc, $B200                                  ; $739C: $01 $00 $B2
    add d                                         ; $739F: $82
    nop                                           ; $73A0: $00
    adc c                                         ; $73A1: $89
    sub l                                         ; $73A2: $95
    nop                                           ; $73A3: $00
    halt                                          ; $73A4: $76
    or c                                          ; $73A5: $B1
    nop                                           ; $73A6: $00
    rst RST_08                                    ; $73A7: $CF
    nop                                           ; $73A8: $00
    nop                                           ; $73A9: $00
    nop                                           ; $73AA: $00
    ld bc, $A200                                  ; $73AB: $01 $00 $A2
    jp Jump_03A_7900                              ; $73AE: $C3 $00 $79


    sbc e                                         ; $73B1: $9B
    nop                                           ; $73B2: $00
    cp h                                          ; $73B3: $BC
    ld a, h                                       ; $73B4: $7C
    nop                                           ; $73B5: $00
    xor l                                         ; $73B6: $AD
    cp l                                          ; $73B7: $BD
    nop                                           ; $73B8: $00
    halt                                          ; $73B9: $76
    nop                                           ; $73BA: $00
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    ld bc, $8800                                  ; $73BD: $01 $00 $88
    cp c                                          ; $73C0: $B9
    nop                                           ; $73C1: $00
    pop bc                                        ; $73C2: $C1
    nop                                           ; $73C3: $00
    nop                                           ; $73C4: $00
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00
    nop                                           ; $73C7: $00
    inc bc                                        ; $73C8: $03
    ld bc, $3B00                                  ; $73C9: $01 $00 $3B
    ld d, l                                       ; $73CC: $55
    nop                                           ; $73CD: $00
    ld l, a                                       ; $73CE: $6F
    ld h, c                                       ; $73CF: $61
    nop                                           ; $73D0: $00
    ld bc, $0026                                  ; $73D1: $01 $26 $00
    daa                                           ; $73D4: $27
    ld b, d                                       ; $73D5: $42
    nop                                           ; $73D6: $00
    ld h, c                                       ; $73D7: $61
    nop                                           ; $73D8: $00
    nop                                           ; $73D9: $00
    nop                                           ; $73DA: $00
    ld bc, $3F00                                  ; $73DB: $01 $00 $3F
    daa                                           ; $73DE: $27
    nop                                           ; $73DF: $00
    ld l, c                                       ; $73E0: $69
    ld h, a                                       ; $73E1: $67
    nop                                           ; $73E2: $00
    dec l                                         ; $73E3: $2D
    jr nc, jr_03A_73E6                            ; $73E4: $30 $00

jr_03A_73E6:
    ld bc, $0037                                  ; $73E6: $01 $37 $00
    cpl                                           ; $73E9: $2F
    nop                                           ; $73EA: $00
    nop                                           ; $73EB: $00
    nop                                           ; $73EC: $00
    ld bc, $3600                                  ; $73ED: $01 $00 $36
    ld c, d                                       ; $73F0: $4A
    nop                                           ; $73F1: $00
    ld c, c                                       ; $73F2: $49
    ld [hl], b                                    ; $73F3: $70
    nop                                           ; $73F4: $00
    ld b, b                                       ; $73F5: $40
    ld h, l                                       ; $73F6: $65
    nop                                           ; $73F7: $00
    jr z, jr_03A_745E                             ; $73F8: $28 $64

    nop                                           ; $73FA: $00
    ret                                           ; $73FB: $C9


    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
    nop                                           ; $7400: $00
    inc bc                                        ; $7401: $03
    ld bc, $9200                                  ; $7402: $01 $00 $92
    halt                                          ; $7405: $76
    nop                                           ; $7406: $00
    sub c                                         ; $7407: $91
    adc c                                         ; $7408: $89
    nop                                           ; $7409: $00
    rst RST_08                                    ; $740A: $CF
    nop                                           ; $740B: $00
    nop                                           ; $740C: $00
    nop                                           ; $740D: $00
    ld bc, $2F00                                  ; $740E: $01 $00 $2F
    ld l, e                                       ; $7411: $6B
    nop                                           ; $7412: $00
    ld b, a                                       ; $7413: $47
    ld h, c                                       ; $7414: $61
    nop                                           ; $7415: $00
    dec l                                         ; $7416: $2D
    ld l, b                                       ; $7417: $68
    nop                                           ; $7418: $00
    add hl, hl                                    ; $7419: $29
    rlc b                                         ; $741A: $CB $00
    ld bc, $0000                                  ; $741C: $01 $00 $00
    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    inc bc                                        ; $7422: $03
    ld bc, $5300                                  ; $7423: $01 $00 $53
    dec l                                         ; $7426: $2D
    nop                                           ; $7427: $00
    ld b, h                                       ; $7428: $44
    ld l, a                                       ; $7429: $6F
    nop                                           ; $742A: $00
    ld c, l                                       ; $742B: $4D
    ld h, $00                                     ; $742C: $26 $00
    ld h, b                                       ; $742E: $60
    jr nc, jr_03A_7431                            ; $742F: $30 $00

jr_03A_7431:
    ld bc, $0000                                  ; $7431: $01 $00 $00
    nop                                           ; $7434: $00
    ld bc, $5000                                  ; $7435: $01 $00 $50
    ld l, d                                       ; $7438: $6A
    nop                                           ; $7439: $00
    ld l, l                                       ; $743A: $6D
    ld h, h                                       ; $743B: $64
    nop                                           ; $743C: $00
    ret                                           ; $743D: $C9


    nop                                           ; $743E: $00
    nop                                           ; $743F: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    inc bc                                        ; $7443: $03
    ld bc, $8200                                  ; $7444: $01 $00 $82
    ld a, c                                       ; $7447: $79
    nop                                           ; $7448: $00
    cp h                                          ; $7449: $BC
    sub [hl]                                      ; $744A: $96
    nop                                           ; $744B: $00
    halt                                          ; $744C: $76
    sub l                                         ; $744D: $95
    nop                                           ; $744E: $00
    rst RST_08                                    ; $744F: $CF
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    ld bc, $9200                                  ; $7453: $01 $00 $92
    add $00                                       ; $7456: $C6 $00
    pop bc                                        ; $7458: $C1
    adc l                                         ; $7459: $8D
    nop                                           ; $745A: $00
    pop bc                                        ; $745B: $C1
    add h                                         ; $745C: $84
    nop                                           ; $745D: $00

jr_03A_745E:
    sbc d                                         ; $745E: $9A
    cp l                                          ; $745F: $BD
    nop                                           ; $7460: $00
    ld a, c                                       ; $7461: $79
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    ld bc, $C100                                  ; $7465: $01 $00 $C1
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746A: $00
    nop                                           ; $746B: $00
    nop                                           ; $746C: $00
    inc bc                                        ; $746D: $03
    ld bc, $3B00                                  ; $746E: $01 $00 $3B
    ld d, l                                       ; $7471: $55
    nop                                           ; $7472: $00
    ld l, a                                       ; $7473: $6F
    ld b, e                                       ; $7474: $43
    nop                                           ; $7475: $00
    ld h, $27                                     ; $7476: $26 $27
    nop                                           ; $7478: $00
    ld b, d                                       ; $7479: $42
    ld c, l                                       ; $747A: $4D
    nop                                           ; $747B: $00
    ld bc, $0000                                  ; $747C: $01 $00 $00
    nop                                           ; $747F: $00
    ld bc, $3F00                                  ; $7480: $01 $00 $3F
    daa                                           ; $7483: $27
    nop                                           ; $7484: $00
    ld l, c                                       ; $7485: $69
    ld h, a                                       ; $7486: $67
    nop                                           ; $7487: $00
    dec l                                         ; $7488: $2D
    ld l, [hl]                                    ; $7489: $6E
    nop                                           ; $748A: $00
    ld bc, $0027                                  ; $748B: $01 $27 $00
    ld l, e                                       ; $748E: $6B
    nop                                           ; $748F: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    ld bc, $2B00                                  ; $7492: $01 $00 $2B
    add hl, hl                                    ; $7495: $29
    nop                                           ; $7496: $00
    ld b, b                                       ; $7497: $40
    ld h, l                                       ; $7498: $65
    nop                                           ; $7499: $00
    jr z, jr_03A_74E9                             ; $749A: $28 $4D

    nop                                           ; $749C: $00
    ld h, h                                       ; $749D: $64
    ret                                           ; $749E: $C9


    nop                                           ; $749F: $00
    ld bc, $0000                                  ; $74A0: $01 $00 $00
    nop                                           ; $74A3: $00
    nop                                           ; $74A4: $00
    nop                                           ; $74A5: $00
    inc bc                                        ; $74A6: $03
    ld bc, $8100                                  ; $74A7: $01 $00 $81
    pop bc                                        ; $74AA: $C1
    nop                                           ; $74AB: $00
    xor c                                         ; $74AC: $A9
    ld a, c                                       ; $74AD: $79
    nop                                           ; $74AE: $00
    rst RST_08                                    ; $74AF: $CF
    nop                                           ; $74B0: $00
    nop                                           ; $74B1: $00
    nop                                           ; $74B2: $00
    ld bc, $8600                                  ; $74B3: $01 $00 $86
    jp nz, $9500                                  ; $74B6: $C2 $00 $95

    ld a, b                                       ; $74B9: $78
    nop                                           ; $74BA: $00
    adc d                                         ; $74BB: $8A
    pop bc                                        ; $74BC: $C1
    nop                                           ; $74BD: $00
    adc b                                         ; $74BE: $88
    cp c                                          ; $74BF: $B9
    nop                                           ; $74C0: $00
    pop bc                                        ; $74C1: $C1
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    nop                                           ; $74C6: $00
    inc bc                                        ; $74C7: $03
    ld bc, $8200                                  ; $74C8: $01 $00 $82
    halt                                          ; $74CB: $76
    nop                                           ; $74CC: $00
    sbc d                                         ; $74CD: $9A
    ld b, a                                       ; $74CE: $47
    nop                                           ; $74CF: $00
    inc l                                         ; $74D0: $2C
    ld c, c                                       ; $74D1: $49
    nop                                           ; $74D2: $00
    daa                                           ; $74D3: $27
    ld bc, $4100                                  ; $74D4: $01 $00 $41
    nop                                           ; $74D7: $00
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    ld bc, $6400                                  ; $74DA: $01 $00 $64
    ld [hl], a                                    ; $74DD: $77
    nop                                           ; $74DE: $00
    daa                                           ; $74DF: $27
    ld bc, $2F00                                  ; $74E0: $01 $00 $2F
    jr z, jr_03A_74E5                             ; $74E3: $28 $00

jr_03A_74E5:
    inc sp                                        ; $74E5: $33
    inc l                                         ; $74E6: $2C
    nop                                           ; $74E7: $00
    ld c, c                                       ; $74E8: $49

jr_03A_74E9:
    nop                                           ; $74E9: $00
    nop                                           ; $74EA: $00
    nop                                           ; $74EB: $00
    ld bc, $4D00                                  ; $74EC: $01 $00 $4D
    ld h, h                                       ; $74EF: $64
    nop                                           ; $74F0: $00
    ret                                           ; $74F1: $C9


    nop                                           ; $74F2: $00
    nop                                           ; $74F3: $00
    nop                                           ; $74F4: $00
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    inc bc                                        ; $74F7: $03
    ld bc, $B200                                  ; $74F8: $01 $00 $B2
    add d                                         ; $74FB: $82
    nop                                           ; $74FC: $00
    sub l                                         ; $74FD: $95
    cp [hl]                                       ; $74FE: $BE
    nop                                           ; $74FF: $00
    pop bc                                        ; $7500: $C1
    rst RST_08                                    ; $7501: $CF
    nop                                           ; $7502: $00
    ld bc, $0000                                  ; $7503: $01 $00 $00
    nop                                           ; $7506: $00
    ld bc, $9900                                  ; $7507: $01 $00 $99
    call nz, $8900                                ; $750A: $C4 $00 $89
    sub l                                         ; $750D: $95
    nop                                           ; $750E: $00
    cp d                                          ; $750F: $BA
    ld a, a                                       ; $7510: $7F
    nop                                           ; $7511: $00
    adc b                                         ; $7512: $88
    cp c                                          ; $7513: $B9
    nop                                           ; $7514: $00
    pop bc                                        ; $7515: $C1
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    ld bc, $BD00                                  ; $7519: $01 $00 $BD
    ld a, c                                       ; $751C: $79
    nop                                           ; $751D: $00
    ld bc, $0000                                  ; $751E: $01 $00 $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    inc bc                                        ; $7524: $03
    ld bc, $A100                                  ; $7525: $01 $00 $A1
    jp nz, $9500                                  ; $7528: $C2 $00 $95

    ld [hl], $00                                  ; $752B: $36 $00
    ccf                                           ; $752D: $3F
    ld l, b                                       ; $752E: $68
    nop                                           ; $752F: $00
    ld bc, $00BD                                  ; $7530: $01 $BD $00
    halt                                          ; $7533: $76
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    ld bc, $8C00                                  ; $7537: $01 $00 $8C
    halt                                          ; $753A: $76
    nop                                           ; $753B: $00
    ld b, a                                       ; $753C: $47
    ld bc, $2F00                                  ; $753D: $01 $00 $2F
    jr z, jr_03A_7542                             ; $7540: $28 $00

jr_03A_7542:
    inc sp                                        ; $7542: $33
    inc l                                         ; $7543: $2C
    nop                                           ; $7544: $00
    scf                                           ; $7545: $37
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    ld bc, $6A00                                  ; $7549: $01 $00 $6A
    ld c, l                                       ; $754C: $4D
    nop                                           ; $754D: $00
    ld h, h                                       ; $754E: $64
    ret                                           ; $754F: $C9


    nop                                           ; $7550: $00
    ld bc, $0000                                  ; $7551: $01 $00 $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    inc bc                                        ; $7557: $03
    ld bc, $8900                                  ; $7558: $01 $00 $89
    sub c                                         ; $755B: $91
    nop                                           ; $755C: $00
    halt                                          ; $755D: $76
    ld a, b                                       ; $755E: $78
    nop                                           ; $755F: $00
    jp nz, Jump_000_00AA                          ; $7560: $C2 $AA $00

    halt                                          ; $7563: $76
    rst RST_08                                    ; $7564: $CF
    nop                                           ; $7565: $00
    ld bc, $0000                                  ; $7566: $01 $00 $00
    nop                                           ; $7569: $00
    ld bc, $3300                                  ; $756A: $01 $00 $33
    inc l                                         ; $756D: $2C
    nop                                           ; $756E: $00
    ld l, e                                       ; $756F: $6B
    ld b, c                                       ; $7570: $41
    nop                                           ; $7571: $00
    adc c                                         ; $7572: $89
    sub c                                         ; $7573: $91
    nop                                           ; $7574: $00
    halt                                          ; $7575: $76
    ld a, b                                       ; $7576: $78
    nop                                           ; $7577: $00
    jp nz, RST_00                                 ; $7578: $C2 $00 $00

    nop                                           ; $757B: $00
    ld bc, $AA00                                  ; $757C: $01 $00 $AA
    halt                                          ; $757F: $76
    nop                                           ; $7580: $00
    ld bc, $0000                                  ; $7581: $01 $00 $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    inc bc                                        ; $7587: $03
    ld bc, $4800                                  ; $7588: $01 $00 $48
    ld b, e                                       ; $758B: $43
    nop                                           ; $758C: $00
    jr z, jr_03A_75DC                             ; $758D: $28 $4D

    nop                                           ; $758F: $00
    ld bc, $006B                                  ; $7590: $01 $6B $00
    ld l, a                                       ; $7593: $6F
    ld a, $00                                     ; $7594: $3E $00
    dec l                                         ; $7596: $2D
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    ld bc, $2F00                                  ; $759A: $01 $00 $2F
    jr z, jr_03A_759F                             ; $759D: $28 $00

jr_03A_759F:
    inc sp                                        ; $759F: $33
    inc l                                         ; $75A0: $2C
    nop                                           ; $75A1: $00
    ld h, h                                       ; $75A2: $64
    ret                                           ; $75A3: $C9


    nop                                           ; $75A4: $00
    ld bc, $0000                                  ; $75A5: $01 $00 $00
    nop                                           ; $75A8: $00
    nop                                           ; $75A9: $00
    nop                                           ; $75AA: $00
    inc bc                                        ; $75AB: $03
    ld bc, $7800                                  ; $75AC: $01 $00 $78
    cp h                                          ; $75AF: $BC
    nop                                           ; $75B0: $00
    sub h                                         ; $75B1: $94
    or b                                          ; $75B2: $B0
    nop                                           ; $75B3: $00
    adc c                                         ; $75B4: $89
    rst RST_08                                    ; $75B5: $CF
    nop                                           ; $75B6: $00
    ld bc, $0000                                  ; $75B7: $01 $00 $00
    nop                                           ; $75BA: $00
    ld bc, $B100                                  ; $75BB: $01 $00 $B1
    halt                                          ; $75BE: $76
    nop                                           ; $75BF: $00
    pop bc                                        ; $75C0: $C1
    ld a, [hl]                                    ; $75C1: $7E
    nop                                           ; $75C2: $00
    or a                                          ; $75C3: $B7
    cp e                                          ; $75C4: $BB
    nop                                           ; $75C5: $00
    and l                                         ; $75C6: $A5
    halt                                          ; $75C7: $76
    nop                                           ; $75C8: $00
    ld bc, $0000                                  ; $75C9: $01 $00 $00
    nop                                           ; $75CC: $00
    nop                                           ; $75CD: $00
    nop                                           ; $75CE: $00
    inc bc                                        ; $75CF: $03
    ld bc, $4100                                  ; $75D0: $01 $00 $41
    inc l                                         ; $75D3: $2C
    nop                                           ; $75D4: $00
    jr nc, jr_03A_75D8                            ; $75D5: $30 $01

    nop                                           ; $75D7: $00

jr_03A_75D8:
    ld a, [hl+]                                   ; $75D8: $2A
    ld b, b                                       ; $75D9: $40
    nop                                           ; $75DA: $00
    ld b, d                                       ; $75DB: $42

jr_03A_75DC:
    dec l                                         ; $75DC: $2D
    nop                                           ; $75DD: $00
    ld l, d                                       ; $75DE: $6A
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    ld bc, $4D00                                  ; $75E2: $01 $00 $4D
    ld h, h                                       ; $75E5: $64
    nop                                           ; $75E6: $00
    ret                                           ; $75E7: $C9


    nop                                           ; $75E8: $00
    nop                                           ; $75E9: $00
    nop                                           ; $75EA: $00
    nop                                           ; $75EB: $00
    nop                                           ; $75EC: $00
    inc bc                                        ; $75ED: $03
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    ld bc, $2F00                                  ; $75F1: $01 $00 $2F
    ld l, e                                       ; $75F4: $6B
    nop                                           ; $75F5: $00
    ld b, a                                       ; $75F6: $47
    ld bc, $3D00                                  ; $75F7: $01 $00 $3D
    ld l, a                                       ; $75FA: $6F
    nop                                           ; $75FB: $00
    ld d, l                                       ; $75FC: $55
    ld c, h                                       ; $75FD: $4C
    nop                                           ; $75FE: $00
    ret                                           ; $75FF: $C9


    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    inc bc                                        ; $7605: $03
    ld bc, $3D00                                  ; $7606: $01 $00 $3D
    ld c, a                                       ; $7609: $4F
    nop                                           ; $760A: $00
    ret z                                         ; $760B: $C8

    ccf                                           ; $760C: $3F
    nop                                           ; $760D: $00
    ld h, b                                       ; $760E: $60
    ld [hl], $00                                  ; $760F: $36 $00
    ld b, d                                       ; $7611: $42
    ld e, [hl]                                    ; $7612: $5E
    nop                                           ; $7613: $00
    ld b, d                                       ; $7614: $42
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    ld bc, $4C00                                  ; $7618: $01 $00 $4C
    ret                                           ; $761B: $C9


    nop                                           ; $761C: $00
    ld bc, $0000                                  ; $761D: $01 $00 $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    inc bc                                        ; $7623: $03
    ld bc, $3B00                                  ; $7624: $01 $00 $3B
    ld h, l                                       ; $7627: $65
    nop                                           ; $7628: $00
    ld h, $4C                                     ; $7629: $26 $4C
    nop                                           ; $762B: $00
    ld [hl], a                                    ; $762C: $77
    ret                                           ; $762D: $C9


    nop                                           ; $762E: $00
    ld bc, $0000                                  ; $762F: $01 $00 $00
    nop                                           ; $7632: $00
    ld bc, $5300                                  ; $7633: $01 $00 $53
    daa                                           ; $7636: $27
    nop                                           ; $7637: $00
    ld d, e                                       ; $7638: $53
    ld [hl], a                                    ; $7639: $77
    nop                                           ; $763A: $00
    daa                                           ; $763B: $27
    ret                                           ; $763C: $C9


    nop                                           ; $763D: $00
    ld bc, $0000                                  ; $763E: $01 $00 $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    inc bc                                        ; $7644: $03
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    rlca                                          ; $7647: $07
    ld a, b                                       ; $7648: $78
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    dec b                                         ; $764B: $05
    add b                                         ; $764C: $80
    nop                                           ; $764D: $00
    nop                                           ; $764E: $00
    ld [bc], a                                    ; $764F: $02
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    ld bc, $7649                                  ; $7652: $01 $49 $76
    ld bc, $4F00                                  ; $7655: $01 $00 $4F
    jp z, Jump_03A_5E00                           ; $7658: $CA $00 $5E

    jp z, Jump_03A_4100                           ; $765B: $CA $00 $41

    jp z, Jump_03A_4D00                           ; $765E: $CA $00 $4D

    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    ld bc, $7501                                  ; $7664: $01 $01 $75
    halt                                          ; $7667: $76
    db $10                                        ; $7668: $10
    add c                                         ; $7669: $81
    halt                                          ; $766A: $76
    nop                                           ; $766B: $00
    sbc e                                         ; $766C: $9B
    halt                                          ; $766D: $76
    nop                                           ; $766E: $00
    rlc b                                         ; $766F: $CB $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    inc bc                                        ; $7675: $03
    ld bc, $2F00                                  ; $7676: $01 $00 $2F
    ld l, e                                       ; $7679: $6B
    nop                                           ; $767A: $00
    ld l, [hl]                                    ; $767B: $6E
    sbc b                                         ; $767C: $98
    db $10                                        ; $767D: $10
    ld b, d                                       ; $767E: $42
    daa                                           ; $767F: $27
    nop                                           ; $7680: $00
    ld l, d                                       ; $7681: $6A
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    ld bc, $2600                                  ; $7685: $01 $00 $26
    ld c, c                                       ; $7688: $49
    nop                                           ; $7689: $00
    ccf                                           ; $768A: $3F
    ld c, [hl]                                    ; $768B: $4E
    nop                                           ; $768C: $00
    ret nc                                        ; $768D: $D0

    ld hl, sp+$11                                 ; $768E: $F8 $11
    add c                                         ; $7690: $81
    pop de                                        ; $7691: $D1
    nop                                           ; $7692: $00
    ld l, [hl]                                    ; $7693: $6E
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    ld bc, $7F00                                  ; $7697: $01 $00 $7F
    cp e                                          ; $769A: $BB
    nop                                           ; $769B: $00
    ld a, b                                       ; $769C: $78
    ld [hl], $00                                  ; $769D: $36 $00
    ccf                                           ; $769F: $3F
    ld c, l                                       ; $76A0: $4D
    nop                                           ; $76A1: $00
    ld c, h                                       ; $76A2: $4C
    ret                                           ; $76A3: $C9


    nop                                           ; $76A4: $00
    ld bc, $0000                                  ; $76A5: $01 $00 $00
    nop                                           ; $76A8: $00
    nop                                           ; $76A9: $00
    nop                                           ; $76AA: $00
    inc bc                                        ; $76AB: $03
    ld bc, $2600                                  ; $76AC: $01 $00 $26
    ld c, c                                       ; $76AF: $49
    nop                                           ; $76B0: $00
    ccf                                           ; $76B1: $3F
    ld c, d                                       ; $76B2: $4A
    nop                                           ; $76B3: $00
    ld c, [hl]                                    ; $76B4: $4E
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    nop                                           ; $76B7: $00
    ld bc, $D000                                  ; $76B8: $01 $00 $D0
    sbc a                                         ; $76BB: $9F
    ld [hl+], a                                   ; $76BC: $22
    xor b                                         ; $76BD: $A8
    ld b, b                                       ; $76BE: $40
    ld de, $4241                                  ; $76BF: $11 $41 $42
    db $10                                        ; $76C2: $10
    pop de                                        ; $76C3: $D1
    ld l, [hl]                                    ; $76C4: $6E
    nop                                           ; $76C5: $00
    ld bc, $0000                                  ; $76C6: $01 $00 $00
    nop                                           ; $76C9: $00
    ld bc, $9201                                  ; $76CA: $01 $01 $92
    add hl, hl                                    ; $76CD: $29
    nop                                           ; $76CE: $00
    ld b, b                                       ; $76CF: $40
    ld h, l                                       ; $76D0: $65
    nop                                           ; $76D1: $00
    jr z, jr_03A_7741                             ; $76D2: $28 $6D

    nop                                           ; $76D4: $00
    rlc b                                         ; $76D5: $CB $00
    nop                                           ; $76D7: $00
    nop                                           ; $76D8: $00
    nop                                           ; $76D9: $00
    nop                                           ; $76DA: $00
    inc bc                                        ; $76DB: $03
    ld bc, $1602                                  ; $76DC: $01 $02 $16
    inc b                                         ; $76DF: $04
    db $10                                        ; $76E0: $10
    jr nc, jr_03A_7708                            ; $76E1: $30 $25

    jr nz, jr_03A_772E                            ; $76E3: $20 $49

    dec l                                         ; $76E5: $2D
    nop                                           ; $76E6: $00
    ld b, d                                       ; $76E7: $42
    nop                                           ; $76E8: $00
    nop                                           ; $76E9: $00
    nop                                           ; $76EA: $00
    ld bc, $0D00                                  ; $76EB: $01 $00 $0D
    dec de                                        ; $76EE: $1B
    nop                                           ; $76EF: $00
    jr nc, jr_03A_76F3                            ; $76F0: $30 $01

    nop                                           ; $76F2: $00

jr_03A_76F3:
    daa                                           ; $76F3: $27
    ld [hl], b                                    ; $76F4: $70
    nop                                           ; $76F5: $00
    ld e, b                                       ; $76F6: $58
    daa                                           ; $76F7: $27
    nop                                           ; $76F8: $00
    ld c, l                                       ; $76F9: $4D
    nop                                           ; $76FA: $00
    nop                                           ; $76FB: $00
    nop                                           ; $76FC: $00
    ld bc, $4300                                  ; $76FD: $01 $00 $43
    inc l                                         ; $7700: $2C
    nop                                           ; $7701: $00
    ld c, d                                       ; $7702: $4A
    ldh [rP1], a                                  ; $7703: $E0 $00
    ld bc, $0000                                  ; $7705: $01 $00 $00

jr_03A_7708:
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770A: $00
    inc bc                                        ; $770B: $03
    ld bc, $DC00                                  ; $770C: $01 $00 $DC
    sbc $00                                       ; $770F: $DE $00
    call c, Call_000_00DA                         ; $7711: $DC $DA $00
    ld bc, $00E2                                  ; $7714: $01 $E2 $00
    ld bc, $0047                                  ; $7717: $01 $47 $00
    ld bc, $0000                                  ; $771A: $01 $00 $00
    nop                                           ; $771D: $00
    ld bc, $1801                                  ; $771E: $01 $01 $18
    jr c, jr_03A_7723                             ; $7721: $38 $00

jr_03A_7723:
    ld l, d                                       ; $7723: $6A
    ld bc, $4001                                  ; $7724: $01 $01 $40
    ld b, c                                       ; $7727: $41
    ld de, $4942                                  ; $7728: $11 $42 $49
    nop                                           ; $772B: $00
    ld c, l                                       ; $772C: $4D
    nop                                           ; $772D: $00

jr_03A_772E:
    nop                                           ; $772E: $00
    nop                                           ; $772F: $00
    ld bc, $6400                                  ; $7730: $01 $00 $64
    ret                                           ; $7733: $C9


    nop                                           ; $7734: $00
    ld bc, $0000                                  ; $7735: $01 $00 $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773A: $00
    inc bc                                        ; $773B: $03
    ld bc, $BE00                                  ; $773C: $01 $00 $BE
    xor c                                         ; $773F: $A9
    nop                                           ; $7740: $00

jr_03A_7741:
    ld b, a                                       ; $7741: $47
    ld h, c                                       ; $7742: $61
    nop                                           ; $7743: $00
    ld bc, $00A6                                  ; $7744: $01 $A6 $00
    halt                                          ; $7747: $76
    adc c                                         ; $7748: $89
    nop                                           ; $7749: $00
    sub l                                         ; $774A: $95
    nop                                           ; $774B: $00
    nop                                           ; $774C: $00
    nop                                           ; $774D: $00
    ld bc, $4700                                  ; $774E: $01 $00 $47
    ld h, c                                       ; $7751: $61
    nop                                           ; $7752: $00
    ld bc, $1090                                  ; $7753: $01 $90 $10
    dec sp                                        ; $7756: $3B
    ld b, d                                       ; $7757: $42
    db $10                                        ; $7758: $10
    jr nc, jr_03A_7773                            ; $7759: $30 $18

    db $10                                        ; $775B: $10
    ld l, d                                       ; $775C: $6A
    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    ld bc, $4D00                                  ; $7760: $01 $00 $4D
    ld h, h                                       ; $7763: $64
    nop                                           ; $7764: $00
    ret                                           ; $7765: $C9


    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776A: $00
    inc bc                                        ; $776B: $03
    ld bc, $3900                                  ; $776C: $01 $00 $39
    ld l, e                                       ; $776F: $6B
    nop                                           ; $7770: $00
    ld a, $6B                                     ; $7771: $3E $6B

jr_03A_7773:
    nop                                           ; $7773: $00
    ld c, l                                       ; $7774: $4D
    ld b, d                                       ; $7775: $42
    db $10                                        ; $7776: $10
    ld c, l                                       ; $7777: $4D
    ld [hl], l                                    ; $7778: $75
    ld de, $0076                                  ; $7779: $11 $76 $00
    nop                                           ; $777C: $00
    nop                                           ; $777D: $00
    ld bc, $6400                                  ; $777E: $01 $00 $64
    ret                                           ; $7781: $C9


    nop                                           ; $7782: $00
    ld bc, $0000                                  ; $7783: $01 $00 $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    inc bc                                        ; $7789: $03
    ld bc, $BA00                                  ; $778A: $01 $00 $BA
    ld a, c                                       ; $778D: $79
    nop                                           ; $778E: $00
    ld a, h                                       ; $778F: $7C
    add c                                         ; $7790: $81
    nop                                           ; $7791: $00
    pop bc                                        ; $7792: $C1
    xor c                                         ; $7793: $A9
    nop                                           ; $7794: $00
    ld a, c                                       ; $7795: $79
    rst RST_08                                    ; $7796: $CF
    nop                                           ; $7797: $00
    ld bc, $0000                                  ; $7798: $01 $00 $00
    nop                                           ; $779B: $00
    ld bc, $B300                                  ; $779C: $01 $00 $B3
    halt                                          ; $779F: $76
    nop                                           ; $77A0: $00
    and d                                         ; $77A1: $A2
    call nz, $C100                                ; $77A2: $C4 $00 $C1
    add h                                         ; $77A5: $84
    nop                                           ; $77A6: $00
    cp l                                          ; $77A7: $BD
    ld a, c                                       ; $77A8: $79
    nop                                           ; $77A9: $00
    sbc d                                         ; $77AA: $9A
    nop                                           ; $77AB: $00
    nop                                           ; $77AC: $00
    nop                                           ; $77AD: $00
    nop                                           ; $77AE: $00
    nop                                           ; $77AF: $00
    inc bc                                        ; $77B0: $03
    ld bc, $A100                                  ; $77B1: $01 $00 $A1
    jp nz, $9500                                  ; $77B4: $C2 $00 $95

    ld [hl], $00                                  ; $77B7: $36 $00
    ccf                                           ; $77B9: $3F
    ld l, b                                       ; $77BA: $68
    nop                                           ; $77BB: $00
    ld bc, $2134                                  ; $77BC: $01 $34 $21
    add b                                         ; $77BF: $80
    nop                                           ; $77C0: $00
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    ld bc, $8D01                                  ; $77C3: $01 $01 $8D
    adc e                                         ; $77C6: $8B
    db $10                                        ; $77C7: $10
    ld l, [hl]                                    ; $77C8: $6E
    scf                                           ; $77C9: $37
    nop                                           ; $77CA: $00
    ld l, d                                       ; $77CB: $6A
    ld c, l                                       ; $77CC: $4D
    nop                                           ; $77CD: $00
    ld h, h                                       ; $77CE: $64
    nop                                           ; $77CF: $00
    nop                                           ; $77D0: $00
    nop                                           ; $77D1: $00
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    inc bc                                        ; $77D4: $03
    ld bc, $8200                                  ; $77D5: $01 $00 $82
    cp h                                          ; $77D8: $BC
    nop                                           ; $77D9: $00
    and l                                         ; $77DA: $A5
    sub l                                         ; $77DB: $95
    nop                                           ; $77DC: $00
    cp [hl]                                       ; $77DD: $BE
    pop bc                                        ; $77DE: $C1
    nop                                           ; $77DF: $00
    rst RST_08                                    ; $77E0: $CF
    nop                                           ; $77E1: $00
    nop                                           ; $77E2: $00
    nop                                           ; $77E3: $00
    ld bc, $7900                                  ; $77E4: $01 $00 $79
    pop bc                                        ; $77E7: $C1
    nop                                           ; $77E8: $00
    and d                                         ; $77E9: $A2
    call nz, $9C00                                ; $77EA: $C4 $00 $9C
    sub h                                         ; $77ED: $94
    nop                                           ; $77EE: $00
    call nz, Call_000_00BD                        ; $77EF: $C4 $BD $00
    ld a, c                                       ; $77F2: $79
    nop                                           ; $77F3: $00
    nop                                           ; $77F4: $00
    nop                                           ; $77F5: $00
    nop                                           ; $77F6: $00
    nop                                           ; $77F7: $00
    inc bc                                        ; $77F8: $03
    ld bc, $A100                                  ; $77F9: $01 $00 $A1
    jp nz, $9500                                  ; $77FC: $C2 $00 $95

    ld [hl], $00                                  ; $77FF: $36 $00
    ccf                                           ; $7801: $3F
    ld l, b                                       ; $7802: $68
    nop                                           ; $7803: $00
    ld bc, $009A                                  ; $7804: $01 $9A $00
    cp d                                          ; $7807: $BA
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780A: $00
    ld bc, $8600                                  ; $780B: $01 $00 $86
    pop bc                                        ; $780E: $C1
    nop                                           ; $780F: $00
    or e                                          ; $7810: $B3
    halt                                          ; $7811: $76
    nop                                           ; $7812: $00
    sbc d                                         ; $7813: $9A
    ld b, a                                       ; $7814: $47
    ld bc, $8B8D                                  ; $7815: $01 $8D $8B
    db $10                                        ; $7818: $10
    scf                                           ; $7819: $37
    nop                                           ; $781A: $00
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    ld bc, $6A00                                  ; $781D: $01 $00 $6A
    ld c, l                                       ; $7820: $4D
    nop                                           ; $7821: $00
    ld h, h                                       ; $7822: $64
    ret                                           ; $7823: $C9


    nop                                           ; $7824: $00
    ld bc, $0000                                  ; $7825: $01 $00 $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782A: $00
    inc bc                                        ; $782B: $03
    ld bc, $8900                                  ; $782C: $01 $00 $89
    ld a, a                                       ; $782F: $7F
    nop                                           ; $7830: $00
    halt                                          ; $7831: $76
    and l                                         ; $7832: $A5
    nop                                           ; $7833: $00
    dec [hl]                                      ; $7834: $35
    ld e, l                                       ; $7835: $5D
    nop                                           ; $7836: $00
    rst RST_08                                    ; $7837: $CF
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783A: $00
    ld bc, $8900                                  ; $783B: $01 $00 $89
    ld a, a                                       ; $783E: $7F
    nop                                           ; $783F: $00
    halt                                          ; $7840: $76
    and l                                         ; $7841: $A5
    nop                                           ; $7842: $00
    sub [hl]                                      ; $7843: $96
    pop bc                                        ; $7844: $C1
    nop                                           ; $7845: $00
    adc c                                         ; $7846: $89
    db $E4                                        ; $7847: $E4
    ld [bc], a                                    ; $7848: $02
    and a                                         ; $7849: $A7
    nop                                           ; $784A: $00
    nop                                           ; $784B: $00
    nop                                           ; $784C: $00
    nop                                           ; $784D: $00
    nop                                           ; $784E: $00
    inc bc                                        ; $784F: $03
    ld bc, $8E01                                  ; $7850: $01 $01 $8E
    rlca                                          ; $7853: $07
    db $10                                        ; $7854: $10
    ld l, [hl]                                    ; $7855: $6E
    xor h                                         ; $7856: $AC
    ld hl, $351F                                  ; $7857: $21 $1F $35
    nop                                           ; $785A: $00
    jr c, jr_03A_789D                             ; $785B: $38 $40

    nop                                           ; $785D: $00
    ld h, l                                       ; $785E: $65
    nop                                           ; $785F: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    ld bc, $2800                                  ; $7862: $01 $00 $28
    adc l                                         ; $7865: $8D
    ld de, $648B                                  ; $7866: $11 $8B $64
    nop                                           ; $7869: $00
    ret                                           ; $786A: $C9


    nop                                           ; $786B: $00
    nop                                           ; $786C: $00
    nop                                           ; $786D: $00
    nop                                           ; $786E: $00
    nop                                           ; $786F: $00
    inc bc                                        ; $7870: $03
    ld bc, $B200                                  ; $7871: $01 $00 $B2
    add d                                         ; $7874: $82
    nop                                           ; $7875: $00
    adc c                                         ; $7876: $89
    sub l                                         ; $7877: $95
    nop                                           ; $7878: $00
    halt                                          ; $7879: $76
    or c                                          ; $787A: $B1
    nop                                           ; $787B: $00
    rst RST_08                                    ; $787C: $CF
    nop                                           ; $787D: $00
    nop                                           ; $787E: $00
    nop                                           ; $787F: $00
    ld bc, $A200                                  ; $7880: $01 $00 $A2
    jp Jump_03A_7900                              ; $7883: $C3 $00 $79


    sbc e                                         ; $7886: $9B
    nop                                           ; $7887: $00
    cp h                                          ; $7888: $BC
    ld a, h                                       ; $7889: $7C
    nop                                           ; $788A: $00
    xor l                                         ; $788B: $AD
    cp l                                          ; $788C: $BD
    nop                                           ; $788D: $00
    halt                                          ; $788E: $76
    nop                                           ; $788F: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    ld bc, $8800                                  ; $7892: $01 $00 $88
    cp c                                          ; $7895: $B9
    nop                                           ; $7896: $00
    pop bc                                        ; $7897: $C1
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789A: $00
    nop                                           ; $789B: $00
    nop                                           ; $789C: $00

jr_03A_789D:
    inc bc                                        ; $789D: $03
    ld bc, $3201                                  ; $789E: $01 $01 $32
    and d                                         ; $78A1: $A2
    db $10                                        ; $78A2: $10
    ld h, c                                       ; $78A3: $61
    adc [hl]                                      ; $78A4: $8E
    ld de, $6107                                  ; $78A5: $11 $07 $61
    nop                                           ; $78A8: $00
    ld bc, $2116                                  ; $78A9: $01 $16 $21
    inc b                                         ; $78AC: $04
    nop                                           ; $78AD: $00
    nop                                           ; $78AE: $00
    nop                                           ; $78AF: $00
    ld bc, $3000                                  ; $78B0: $01 $00 $30
    dec h                                         ; $78B3: $25
    jr nz, @+$38                                  ; $78B4: $20 $36

    ld b, h                                       ; $78B6: $44
    nop                                           ; $78B7: $00
    ld l, $4A                                     ; $78B8: $2E $4A
    nop                                           ; $78BA: $00
    ld bc, $0049                                  ; $78BB: $01 $49 $00
    ld [hl], b                                    ; $78BE: $70
    nop                                           ; $78BF: $00
    nop                                           ; $78C0: $00
    nop                                           ; $78C1: $00
    ld bc, $4000                                  ; $78C2: $01 $00 $40
    ld h, l                                       ; $78C5: $65
    nop                                           ; $78C6: $00
    jr z, jr_03A_792D                             ; $78C7: $28 $64

    nop                                           ; $78C9: $00
    ret                                           ; $78CA: $C9


    nop                                           ; $78CB: $00
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    inc bc                                        ; $78D0: $03
    ld bc, $9200                                  ; $78D1: $01 $00 $92
    halt                                          ; $78D4: $76
    nop                                           ; $78D5: $00
    sub c                                         ; $78D6: $91
    adc c                                         ; $78D7: $89
    nop                                           ; $78D8: $00
    rst RST_08                                    ; $78D9: $CF
    nop                                           ; $78DA: $00
    nop                                           ; $78DB: $00
    nop                                           ; $78DC: $00
    ld bc, $2F00                                  ; $78DD: $01 $00 $2F
    ld l, e                                       ; $78E0: $6B
    nop                                           ; $78E1: $00
    ld b, a                                       ; $78E2: $47
    ld h, c                                       ; $78E3: $61
    nop                                           ; $78E4: $00
    dec l                                         ; $78E5: $2D
    ld l, b                                       ; $78E6: $68
    nop                                           ; $78E7: $00
    add hl, hl                                    ; $78E8: $29
    rlc b                                         ; $78E9: $CB $00
    ld bc, $0000                                  ; $78EB: $01 $00 $00
    nop                                           ; $78EE: $00
    nop                                           ; $78EF: $00
    nop                                           ; $78F0: $00
    inc bc                                        ; $78F1: $03
    ld bc, $5602                                  ; $78F2: $01 $02 $56
    ld d, a                                       ; $78F5: $57
    jr nz, jr_03A_7945                            ; $78F6: $20 $4D

    xor l                                         ; $78F8: $AD
    jr nz, jr_03A_792B                            ; $78F9: $20 $30

    ld bc, $5302                                  ; $78FB: $01 $02 $53
    ld l, d                                       ; $78FE: $6A
    nop                                           ; $78FF: $00

Jump_03A_7900:
    ld l, l                                       ; $7900: $6D
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    ld bc, $6400                                  ; $7904: $01 $00 $64
    ret                                           ; $7907: $C9


    nop                                           ; $7908: $00
    ld bc, $0000                                  ; $7909: $01 $00 $00
    nop                                           ; $790C: $00
    nop                                           ; $790D: $00
    nop                                           ; $790E: $00
    inc bc                                        ; $790F: $03
    ld bc, $8200                                  ; $7910: $01 $00 $82
    ld a, c                                       ; $7913: $79
    nop                                           ; $7914: $00
    cp h                                          ; $7915: $BC
    sub [hl]                                      ; $7916: $96
    nop                                           ; $7917: $00
    halt                                          ; $7918: $76
    sub l                                         ; $7919: $95
    nop                                           ; $791A: $00
    rst RST_08                                    ; $791B: $CF
    nop                                           ; $791C: $00
    nop                                           ; $791D: $00
    nop                                           ; $791E: $00
    ld bc, $9200                                  ; $791F: $01 $00 $92
    add $00                                       ; $7922: $C6 $00
    pop bc                                        ; $7924: $C1
    adc l                                         ; $7925: $8D
    nop                                           ; $7926: $00
    pop bc                                        ; $7927: $C1
    add h                                         ; $7928: $84
    nop                                           ; $7929: $00
    sbc d                                         ; $792A: $9A

jr_03A_792B:
    cp l                                          ; $792B: $BD
    nop                                           ; $792C: $00

jr_03A_792D:
    ld a, c                                       ; $792D: $79
    nop                                           ; $792E: $00
    nop                                           ; $792F: $00
    nop                                           ; $7930: $00
    ld bc, $C100                                  ; $7931: $01 $00 $C1
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    inc bc                                        ; $7939: $03
    ld bc, $3201                                  ; $793A: $01 $01 $32
    and d                                         ; $793D: $A2
    db $10                                        ; $793E: $10
    ld b, e                                       ; $793F: $43
    adc [hl]                                      ; $7940: $8E
    ld de, $4D07                                  ; $7941: $11 $07 $4D
    nop                                           ; $7944: $00

jr_03A_7945:
    ld bc, $2116                                  ; $7945: $01 $16 $21
    inc b                                         ; $7948: $04
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    ld bc, $6E00                                  ; $794C: $01 $00 $6E
    add hl, de                                    ; $794F: $19
    db $10                                        ; $7950: $10
    ld l, e                                       ; $7951: $6B
    xor a                                         ; $7952: $AF
    jr nz, jr_03A_797E                            ; $7953: $20 $29

    ld b, b                                       ; $7955: $40
    nop                                           ; $7956: $00
    ld h, l                                       ; $7957: $65
    jr z, jr_03A_795A                             ; $7958: $28 $00

jr_03A_795A:
    ld c, l                                       ; $795A: $4D
    nop                                           ; $795B: $00
    nop                                           ; $795C: $00
    nop                                           ; $795D: $00
    ld bc, $6400                                  ; $795E: $01 $00 $64
    ret                                           ; $7961: $C9


    nop                                           ; $7962: $00
    ld bc, $0000                                  ; $7963: $01 $00 $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    inc bc                                        ; $7969: $03
    ld bc, $8100                                  ; $796A: $01 $00 $81
    pop bc                                        ; $796D: $C1
    nop                                           ; $796E: $00
    xor c                                         ; $796F: $A9
    ld a, c                                       ; $7970: $79
    nop                                           ; $7971: $00
    rst RST_08                                    ; $7972: $CF
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    ld bc, $8600                                  ; $7976: $01 $00 $86
    jp nz, $9500                                  ; $7979: $C2 $00 $95

    ld a, b                                       ; $797C: $78
    nop                                           ; $797D: $00

jr_03A_797E:
    adc d                                         ; $797E: $8A
    pop bc                                        ; $797F: $C1
    nop                                           ; $7980: $00
    adc b                                         ; $7981: $88
    cp c                                          ; $7982: $B9
    nop                                           ; $7983: $00
    pop bc                                        ; $7984: $C1
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    inc bc                                        ; $798A: $03
    ld bc, $8200                                  ; $798B: $01 $00 $82
    halt                                          ; $798E: $76
    nop                                           ; $798F: $00
    sbc d                                         ; $7990: $9A
    ld b, a                                       ; $7991: $47
    nop                                           ; $7992: $00
    inc l                                         ; $7993: $2C
    ld c, c                                       ; $7994: $49
    nop                                           ; $7995: $00
    daa                                           ; $7996: $27
    ld bc, $4100                                  ; $7997: $01 $00 $41
    nop                                           ; $799A: $00
    nop                                           ; $799B: $00
    nop                                           ; $799C: $00
    ld bc, $6400                                  ; $799D: $01 $00 $64
    ld [hl], a                                    ; $79A0: $77
    nop                                           ; $79A1: $00
    daa                                           ; $79A2: $27
    adc l                                         ; $79A3: $8D
    ld de, $498B                                  ; $79A4: $11 $8B $49
    nop                                           ; $79A7: $00
    ld c, l                                       ; $79A8: $4D
    ld h, h                                       ; $79A9: $64
    nop                                           ; $79AA: $00
    ret                                           ; $79AB: $C9


    nop                                           ; $79AC: $00
    nop                                           ; $79AD: $00
    nop                                           ; $79AE: $00
    nop                                           ; $79AF: $00

jr_03A_79B0:
    nop                                           ; $79B0: $00
    inc bc                                        ; $79B1: $03
    ld bc, $B200                                  ; $79B2: $01 $00 $B2
    add d                                         ; $79B5: $82
    nop                                           ; $79B6: $00
    sub l                                         ; $79B7: $95
    cp [hl]                                       ; $79B8: $BE
    nop                                           ; $79B9: $00
    pop bc                                        ; $79BA: $C1
    rst RST_08                                    ; $79BB: $CF
    nop                                           ; $79BC: $00
    ld bc, $0000                                  ; $79BD: $01 $00 $00
    nop                                           ; $79C0: $00
    ld bc, $9900                                  ; $79C1: $01 $00 $99
    call nz, $8900                                ; $79C4: $C4 $00 $89
    sub l                                         ; $79C7: $95
    nop                                           ; $79C8: $00
    cp d                                          ; $79C9: $BA
    ld a, a                                       ; $79CA: $7F
    nop                                           ; $79CB: $00
    adc b                                         ; $79CC: $88
    cp c                                          ; $79CD: $B9
    nop                                           ; $79CE: $00
    pop bc                                        ; $79CF: $C1
    nop                                           ; $79D0: $00
    nop                                           ; $79D1: $00
    nop                                           ; $79D2: $00
    ld bc, $BD00                                  ; $79D3: $01 $00 $BD
    ld a, c                                       ; $79D6: $79
    nop                                           ; $79D7: $00
    ld bc, $0000                                  ; $79D8: $01 $00 $00
    nop                                           ; $79DB: $00
    nop                                           ; $79DC: $00
    nop                                           ; $79DD: $00
    inc bc                                        ; $79DE: $03
    ld bc, $A100                                  ; $79DF: $01 $00 $A1
    jp nz, $9500                                  ; $79E2: $C2 $00 $95

    ld [hl], $00                                  ; $79E5: $36 $00
    ccf                                           ; $79E7: $3F
    ld l, b                                       ; $79E8: $68
    nop                                           ; $79E9: $00
    ld bc, $00BD                                  ; $79EA: $01 $BD $00
    halt                                          ; $79ED: $76
    nop                                           ; $79EE: $00
    nop                                           ; $79EF: $00
    nop                                           ; $79F0: $00
    ld bc, $8C00                                  ; $79F1: $01 $00 $8C
    halt                                          ; $79F4: $76
    nop                                           ; $79F5: $00
    ld b, a                                       ; $79F6: $47
    ld bc, $8D01                                  ; $79F7: $01 $01 $8D
    adc e                                         ; $79FA: $8B
    db $10                                        ; $79FB: $10
    scf                                           ; $79FC: $37
    ld l, d                                       ; $79FD: $6A
    nop                                           ; $79FE: $00
    ld c, l                                       ; $79FF: $4D
    nop                                           ; $7A00: $00
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    ld bc, $6400                                  ; $7A03: $01 $00 $64
    ret                                           ; $7A06: $C9


    nop                                           ; $7A07: $00
    ld bc, $0000                                  ; $7A08: $01 $00 $00
    nop                                           ; $7A0B: $00
    nop                                           ; $7A0C: $00
    nop                                           ; $7A0D: $00
    inc bc                                        ; $7A0E: $03
    ld bc, $8900                                  ; $7A0F: $01 $00 $89
    sub c                                         ; $7A12: $91
    nop                                           ; $7A13: $00
    halt                                          ; $7A14: $76
    ld a, b                                       ; $7A15: $78
    nop                                           ; $7A16: $00
    jp nz, Jump_000_00AA                          ; $7A17: $C2 $AA $00

    halt                                          ; $7A1A: $76
    rst RST_08                                    ; $7A1B: $CF
    nop                                           ; $7A1C: $00
    ld bc, $0000                                  ; $7A1D: $01 $00 $00
    nop                                           ; $7A20: $00
    ld bc, $9F02                                  ; $7A21: $01 $02 $9F
    xor b                                         ; $7A24: $A8
    jr nz, jr_03A_79B0                            ; $7A25: $20 $89

    sub c                                         ; $7A27: $91
    nop                                           ; $7A28: $00
    halt                                          ; $7A29: $76
    ld a, b                                       ; $7A2A: $78
    nop                                           ; $7A2B: $00
    jp nz, Jump_000_00AA                          ; $7A2C: $C2 $AA $00

    halt                                          ; $7A2F: $76
    nop                                           ; $7A30: $00
    nop                                           ; $7A31: $00
    nop                                           ; $7A32: $00
    nop                                           ; $7A33: $00
    nop                                           ; $7A34: $00
    inc bc                                        ; $7A35: $03
    ld bc, $7800                                  ; $7A36: $01 $00 $78
    sub e                                         ; $7A39: $93
    nop                                           ; $7A3A: $00
    daa                                           ; $7A3B: $27
    cp e                                          ; $7A3C: $BB
    db $10                                        ; $7A3D: $10
    ld c, l                                       ; $7A3E: $4D
    inc [hl]                                      ; $7A3F: $34
    ld hl, $8D80                                  ; $7A40: $21 $80 $8D
    ld de, $008B                                  ; $7A43: $11 $8B $00
    nop                                           ; $7A46: $00
    nop                                           ; $7A47: $00
    ld bc, $6400                                  ; $7A48: $01 $00 $64
    ret                                           ; $7A4B: $C9


    nop                                           ; $7A4C: $00
    ld bc, $0000                                  ; $7A4D: $01 $00 $00
    nop                                           ; $7A50: $00
    nop                                           ; $7A51: $00
    nop                                           ; $7A52: $00
    inc bc                                        ; $7A53: $03
    ld bc, $4E01                                  ; $7A54: $01 $01 $4E
    rst RST_08                                    ; $7A57: $CF
    nop                                           ; $7A58: $00
    ld bc, $0000                                  ; $7A59: $01 $00 $00
    nop                                           ; $7A5C: $00
    ld bc, $B100                                  ; $7A5D: $01 $00 $B1
    halt                                          ; $7A60: $76
    nop                                           ; $7A61: $00
    pop bc                                        ; $7A62: $C1
    ld a, [hl]                                    ; $7A63: $7E
    nop                                           ; $7A64: $00
    or a                                          ; $7A65: $B7
    cp e                                          ; $7A66: $BB
    nop                                           ; $7A67: $00
    and l                                         ; $7A68: $A5
    halt                                          ; $7A69: $76
    nop                                           ; $7A6A: $00
    ld bc, $0000                                  ; $7A6B: $01 $00 $00
    nop                                           ; $7A6E: $00
    nop                                           ; $7A6F: $00
    nop                                           ; $7A70: $00
    inc bc                                        ; $7A71: $03
    ld bc, $8C02                                  ; $7A72: $01 $02 $8C
    jr nc, jr_03A_7A77                            ; $7A75: $30 $00

jr_03A_7A77:
    ld bc, $10AB                                  ; $7A77: $01 $AB $10
    ld b, b                                       ; $7A7A: $40
    ld b, d                                       ; $7A7B: $42
    nop                                           ; $7A7C: $00
    dec l                                         ; $7A7D: $2D
    ld l, d                                       ; $7A7E: $6A
    nop                                           ; $7A7F: $00
    ld c, l                                       ; $7A80: $4D
    nop                                           ; $7A81: $00
    nop                                           ; $7A82: $00
    nop                                           ; $7A83: $00
    ld bc, $6400                                  ; $7A84: $01 $00 $64
    rlc b                                         ; $7A87: $CB $00
    ld bc, $00AD                                  ; $7A89: $01 $AD $00
    sub d                                         ; $7A8C: $92
    or a                                          ; $7A8D: $B7
    nop                                           ; $7A8E: $00
    pop bc                                        ; $7A8F: $C1
    add c                                         ; $7A90: $81
    nop                                           ; $7A91: $00
    ld c, d                                       ; $7A92: $4A
    nop                                           ; $7A93: $00
    nop                                           ; $7A94: $00
    nop                                           ; $7A95: $00
    ld bc, $4900                                  ; $7A96: $01 $00 $49
    ld [hl], b                                    ; $7A99: $70
    nop                                           ; $7A9A: $00
    ccf                                           ; $7A9B: $3F
    ld l, b                                       ; $7A9C: $68
    nop                                           ; $7A9D: $00
    sub l                                         ; $7A9E: $95
    sbc d                                         ; $7A9F: $9A
    nop                                           ; $7AA0: $00
    or d                                          ; $7AA1: $B2
    ld h, h                                       ; $7AA2: $64
    nop                                           ; $7AA3: $00
    rlc b                                         ; $7AA4: $CB $00
    nop                                           ; $7AA6: $00
    nop                                           ; $7AA7: $00
    nop                                           ; $7AA8: $00
    nop                                           ; $7AA9: $00
    inc bc                                        ; $7AAA: $03
    nop                                           ; $7AAB: $00
    nop                                           ; $7AAC: $00
    nop                                           ; $7AAD: $00
    ld bc, $2F00                                  ; $7AAE: $01 $00 $2F
    ld l, e                                       ; $7AB1: $6B
    nop                                           ; $7AB2: $00
    ld b, a                                       ; $7AB3: $47
    ld bc, $2B02                                  ; $7AB4: $01 $02 $2B
    and [hl]                                      ; $7AB7: $A6
    db $10                                        ; $7AB8: $10
    ld c, h                                       ; $7AB9: $4C
    ret                                           ; $7ABA: $C9


    nop                                           ; $7ABB: $00
    ld bc, $0000                                  ; $7ABC: $01 $00 $00
    nop                                           ; $7ABF: $00
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    inc bc                                        ; $7AC2: $03
    ld bc, $3D00                                  ; $7AC3: $01 $00 $3D
    ld c, a                                       ; $7AC6: $4F
    nop                                           ; $7AC7: $00
    ret z                                         ; $7AC8: $C8

    ccf                                           ; $7AC9: $3F
    nop                                           ; $7ACA: $00
    ld h, b                                       ; $7ACB: $60
    ld [hl], $00                                  ; $7ACC: $36 $00
    ld b, d                                       ; $7ACE: $42
    ld e, [hl]                                    ; $7ACF: $5E
    nop                                           ; $7AD0: $00
    ld b, d                                       ; $7AD1: $42
    nop                                           ; $7AD2: $00
    nop                                           ; $7AD3: $00
    nop                                           ; $7AD4: $00
    ld bc, $4C00                                  ; $7AD5: $01 $00 $4C
    ret                                           ; $7AD8: $C9


    nop                                           ; $7AD9: $00
    ld bc, $0000                                  ; $7ADA: $01 $00 $00
    nop                                           ; $7ADD: $00
    nop                                           ; $7ADE: $00
    nop                                           ; $7ADF: $00
    inc bc                                        ; $7AE0: $03
    ld bc, $3B00                                  ; $7AE1: $01 $00 $3B
    ld h, l                                       ; $7AE4: $65
    nop                                           ; $7AE5: $00
    ld h, $4C                                     ; $7AE6: $26 $4C
    nop                                           ; $7AE8: $00
    ld [hl], a                                    ; $7AE9: $77
    ret                                           ; $7AEA: $C9


    nop                                           ; $7AEB: $00
    ld bc, $0000                                  ; $7AEC: $01 $00 $00
    nop                                           ; $7AEF: $00
    ld bc, $5300                                  ; $7AF0: $01 $00 $53
    daa                                           ; $7AF3: $27
    nop                                           ; $7AF4: $00
    ld d, e                                       ; $7AF5: $53
    ld [hl], a                                    ; $7AF6: $77
    nop                                           ; $7AF7: $00
    daa                                           ; $7AF8: $27
    ret                                           ; $7AF9: $C9


    nop                                           ; $7AFA: $00
    ld bc, $0000                                  ; $7AFB: $01 $00 $00
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    nop                                           ; $7B00: $00
    inc bc                                        ; $7B01: $03
    nop                                           ; $7B02: $00
    nop                                           ; $7B03: $00
    rlca                                          ; $7B04: $07
    ld a, b                                       ; $7B05: $78
    nop                                           ; $7B06: $00
    nop                                           ; $7B07: $00
    dec b                                         ; $7B08: $05
    add b                                         ; $7B09: $80
    nop                                           ; $7B0A: $00
    nop                                           ; $7B0B: $00
    ld [bc], a                                    ; $7B0C: $02
    nop                                           ; $7B0D: $00
    nop                                           ; $7B0E: $00
    ld bc, $7B06                                  ; $7B0F: $01 $06 $7B
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

Jump_03A_7F00:
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
