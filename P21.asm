include 'emu8086.inc'

org 100h

LEA SI,x
MOV AX,0
MOV CX,n
MOV BX,a

MOV DX,0

l1:

cmp [SI],BX
je print

ADD SI,2
loop l1


print:
MOV AX,[SI]
call print_num
call pthis

DB ' ',0
ADD SI,2
loop l1

ret

a dw -300
x dw -200,-300,-200,230,-300,0,-300
n dw 7

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end