; FIND THE SMALLER OF TWO 8-BIT NUMBERS

MVI A, 45H      ; Load 45H into A
MVI B, 35H      ; Load 25H into B

CMP B           ; Compare A and B (A - B internally)
JC B_SMALLER    ; Jump if CARRY (A < B)

                ; A IS SMALLER OR EQUAL TO B
HLT

B_SMALLER: MOV A, B        ; If B < A, move B into A first
HLT             ; Stop execution