include 'emu8086.inc'

org 100h

LEA SI,s

MOV BX,1
MOV AX,0

start:

cmp [SI],'$'
je endProgram

cmp [SI],90
jle toLower

cmp [SI],97
jge toUpper


toUpper:

MOV AX,[SI]
SUB AX,32
call print_string

INC BX
ADD [SI],2
loop start


toLower:

MOV AX,[SI]
ADD AX,32
call print_string

INC BX
ADD [SI],2
loop start

endProgram:
call pthis
DB 'no of characters: ',0
MOV AX,BX
call print_string

ret

s dw "aLLelUia",'$'

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_GET_STRING
DEFINE_PRINT_STRING
DEFINE_PTHIS

end