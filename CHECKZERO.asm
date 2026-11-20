; CHECK WHETHER A NUMBER IS ZERO OR NOT ZERO
; LOGICAL OR 
; A B - OUTPUT
; 0 0 - 0
; 0 1 - 1
; 1 0 - 1
; 1 1 - 1
; LOGICAL OR ACU WITH ACU (0 OR 0 -> 0)

MVI A, 00H      ; Load number into Accumulator

ORA A           ; A OR A -> Sets Zero Flag (Z=1 if A=0), A unchanged
JZ ZERO         ; Jump to ZERO if Z = 1

STA 2000H
                ; NUMBER IS NOT ZERO
HLT

ZERO: STA 2000H
                ; NUMBER IS ZERO
HLT