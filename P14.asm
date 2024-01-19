include 'emu8086.inc'

org 100h

LEA SI,x

mov CL,y
dec CL

mov DI,SI

incDI:
inc DI
loop incDI

mov CL,y
dec CX

scan:
mov AL,[SI]
cmp AL,[DI]
jne nu

inc SI
dec DI

loop scan

da:
mov AL,1
jmp gata

nu:
MOV AL,2

gata:
ret

x db "elefaccafele"
y db 5