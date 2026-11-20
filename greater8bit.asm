; FIND GREATER OF TWO 8-BIT NUMBERS

MVI A, 45H      ; Load 25H into A
MVI B, 35H      ; Load 35H into B

CMP B           ; Compare A and B (A - B internally)
JNC SKIP   ; Jump if no Carry A >= B (Carry = 0), Carry means Negative num (A small)

MOV C, B        ; If B > A, move B into C
HLT

SKIP: MOV C, A        ; Store the larger value into C
HLT             ; Stop execution