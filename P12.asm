include 'emu8086.inc'

org 100h

LEA SI,x
MOV AX,0

count:
ADD SI,1
INC AX 
CMP [si],0
je start

CMP [si],0
jne count

start:
LEA SI,x
MOV CX,AX
DIV d 
MOV AX,0

l1:

MOV AX,[SI]
CMP AX,t
jg change

DEC CX
cmp CX,0
je endLoop

ADD SI,1
jmp l1

change:
MOV AX,VALUE
MOV [SI],AX
ADD SI,1
jmp l1


 
endLoop:
ret

x DW 1,2,-4,6,2,1,7,4,0
t DW 4
value DW 10
d DW 2 

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end