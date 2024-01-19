include 'emu8086.inc'

org 100h

lea SI,s

LEA DI,w 

mov AX,0

vowels:

mov cx,n

lea di,w

forLoop:
mov bl,[di]
inc di

cmp [si],bl
jne skip

inc ax

skip:
loop forLoop

inc SI

cmp [SI],'$'
jne vowels

call print_num

ret

n dw 7
s db "helloworld",'$'
w db "aeiouyw",0

DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end