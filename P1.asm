include 'emu8086.inc'

org 100h

lea si,x
mov cx,n
mov bx,k

display:
add ax,[si]
div bx

cmp dx,0
jne nprint

mov ax,[si]
call print_num

call pthis
db 13,10,0

nprint:
add si,2
loop display


ret

x DW -4,-12,6,5,4,9,-2
n DW 7
k DW 4 

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end