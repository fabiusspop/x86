include 'emu8086.inc'

org 100h

MOV CX,n
MOV AX,m
MOV BX,m

dec CX

f:
MUL BX

loop f

call print_num

ret

m dw 2
n dw 10


DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end 