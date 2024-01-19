include 'emu8086.inc'

org 100h

call pthis
db 'Enter your number',0
call scan_num

mov ax,cx
mov bx,10
mov dx,0

NrCifre:
div bx
inc dx

cmp ax,0
je start

jmp NrCifre

start:

mov AX,CX
DIV BX

cmp AL,1
je convertion

cmp AL,0
je ending


convertion
MOV BX

ending:
call print_num


ret 

DEFINE_GET_STRING
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS
DEFINE_PRINT_STRING

end