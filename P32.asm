include 'emu8086.inc'

org 100h

LEA SI,x
LEA DI,y
MOV CX,n

MOV AX,0

start:

ADD AX,[SI]
ADD AX,[DI]

ADD SI,2
ADD DI,2

loop start

call print_num


ret

n dw 4
x dw 1,2,-3,3
y dw 0,-2,3,2

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end