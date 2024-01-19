include 'emu8086.inc'

org 100h

MOV CX,n
MOV AX,CX
MOV BX,CX

dec CX

f:
DEC BX
MUL BX

loop f

call print_num

ret

n dw 5


DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end 