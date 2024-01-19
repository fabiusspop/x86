include 'emu8086.inc'

org 100h

LEA SI,x

MOV AH,0
MOV AL,0

start:

CMP [SI],0
je printResult 

ADD AL,[SI]
INC SI
jmp start

printResult:
call print_num

ret

x db 2,4,-3,1,-3,0

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end