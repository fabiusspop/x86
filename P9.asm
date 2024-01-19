include 'emu8086.inc'

org 100h

lea SI,string

mov CL,size

parseString:

cmp [SI],90
jg skip

cmp [SI],65
jl skip

mov al,[si]
add al,32
mov [si],al

PUTC al

skip:
inc SI
loop parseString

ret

string DB "Hello World"
size DB 14

DEFINE_PTHIS
DEFINE_GET_STRING
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM_UNS

end