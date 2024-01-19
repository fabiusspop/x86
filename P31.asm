include 'emu8086.inc'

org 100h

LEA SI,x

MOV AX,0

start:

CMP [SI],0
je printResult

ADD AX,[SI]
ADD SI,2
jmp start


printResult:
call print_num

ret

x dw 262,4,-263,1,-3,0

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end