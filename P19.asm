include 'emu8086.inc'

org 100h

MOV bx,1
mov ax,1
mov cx,7
mov DX,0

dec CX

l1:

call print_num
call pthis
DB ' ',0

mov DX,BX
mov BX,AX
ADD AX,DX

loop l1

ret

n db 7 

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end