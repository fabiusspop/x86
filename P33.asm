include 'emu8086.inc'

org 100h

LEA SI,s
MOV AX,0

start:

MOV AX,[SI]
ADD [SI],2

cmp [SI],'+'
jmp addition

cmp [SI],'-'
jmp substraction

addition:
ADD [SI],2
ADD AX,[SI]

ADD [SI],2
MOV [SI],'='

ADD [SI],2
MOV [SI],AX

call print_string
jmp ending

substraction:
ADD [SI],2
SUB AX,[SI]

ADD [SI],2
MOV [SI],'='

ADD [SI],2
MOV [SI],AX

call print_string
jmp ending


ending:
ret

s dw "2+2"
n dw 5

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
DEFINE_PTHIS

end