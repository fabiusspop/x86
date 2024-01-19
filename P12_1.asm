include 'emu8086.inc'

org 100h

lea SI,n
mov al,0

start:

cmp [SI],0
je l1

inc al
add SI,2

jmp start

l1:
mov bl,2
DIV bl

mov CX,AX
LEA SI,n

l2:
mov bx,m
cmp [SI],bx
jg skip

mov bx,0
mov [si],bx

skip:
add SI,2
loop l2

ret

n dw 1,2,-4,6,2,1,7,4,0
m dw 4
o dw 10

end