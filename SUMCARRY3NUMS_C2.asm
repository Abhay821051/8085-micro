; SCENARIO CARRY 2
; 1ST 8BIT NO. IN 2050H
; 2ND 8BIT NO. IN 2051H
; 3RD 8BIT NO. IN 2052H
; SUM IN 2055H 
; CARRY IN 2056H

; MOV 2 NUMS TO BC REGS & LOAD THEM TO MEM
MVI B, 200   ; Load 200 in Hex  into register B
MVI C, 170     ; Load 170 in Hex  into register C

LXI H, 2050H
MOV M, B       ; Store 200 (C8H) at address 2050H
MOV A, M       ; Load 1st number into Accumulator

LXI H, 2051H
MOV M, C       ; Store 170 (AAH) at address 2051H

MVI D, 00H     ; Initialize register D to 00H to track Carry

ADD M          ; A = 200 + 170 = 370 in Decimal (172H)

JNC SKIP       ; If Carry Flag = 0, jump to SKIP
INR D          ; Increment D to 01H because carry occurred

MVI B, 150 
LXI H, 2052H
MOV M, B       ; Store 150 (96H) at address 2052H
ADD M          ; ADD 3rd number into Accumulator A = 370 + 150 = 520 in Decimal (208H)

JNC SKIP       ; If Carry Flag = 0, jump to SKIP
INR D          ; Increment D to 01H because carry occurred

SKIP: STA 2055H ; Store lower 8-bit sum (0EH) at 2055H
MOV A, D       ; Move carry flag (01H) to Accumulator
STA 2056H      ; Store carry (01H) at 2056H

HLT            ; Stop program execution