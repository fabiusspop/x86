include 'emu8086.inc'

org 100h

MOV AX,n
MOV CX,n
MOV BX,n
SUB BX,2

checkPrime:

DIV BX

CMP AL,0
je notPrime

CMP BX,1
jmp isPrime

SUB BX,2
loop checkPrime

isPrime:
MOV AX,1
call print_num
jmp endProgram

notPrime:
MOV AX,0
call print_num
jmp endProgram


endProgram:
ret

n dw 123

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end