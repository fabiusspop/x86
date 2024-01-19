include 'emu8086.inc'

org 100h

mov bx,0
lea SI,x

forLoop:
inc bx
add si,2

mov dx,[si]
mov cx,bx
dec cx

while:
lea DI,x
add DI,CX
add DI,CX
cmp CX,0

jl exit

cmp [DI],DX
jle exit

mov AX,[DI]
MOV [DI+2],AX

dec CX

jmp while

exit: 
mov [DI+2],DX

cmp BX,n

jl forLoop


ret

x db -1,-1,2,3,2,1,-2
n db 7

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING

end