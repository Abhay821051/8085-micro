; write a prog to add 2 nums stored at mem 2050h and 3050h.

; LOAD 2050H
LXI H, 2050H
; ADD TO ACU
MOV A, M

; LOAD 3050H
LXI H, 3050H
; ADD TO ACU
ADD M

HLT

