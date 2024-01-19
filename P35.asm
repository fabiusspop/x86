include 'emu8086.inc'

org 100h

start:

mov ah, 00h
int 16h

cmp al, 'd'
je right

cmp al, 'a'
je left
 
cmp al, 'w'
je up 

cmp al, 's'
je down 

down:  
mov ah, 00h
mov al, 00h
int 10h

mov bh, 0
mov ah, 02h
mov ch, dh
inc ch
mov dh, ch 
int 10h

mov al, 'o'
mov bh, 0
mov cx, 1
mov ah, 0Ah
int 10h

jmp start

up:
mov ah, 00h
mov al, 00h
int 10h

mov bh, 0
mov ah, 02h
mov ch, dh
dec ch
mov dh, ch 
int 10h

mov al, 'o'
mov bh, 0
mov cx, 1
mov ah, 0Ah
int 10h

jmp start

left: 
mov ah, 00h
mov al, 00h
int 10h
mov bh, 0
mov ah, 02h
mov cl, dl
dec cl
mov dl, cl 
int 10h
mov al, 'o'
mov bh, 0
mov cx, 1
mov ah, 0Ah
int 10h

jmp start

right:
mov ah, 00h
mov al, 00h
int 10h

mov bh, 0
mov ah, 02h
mov cl, dl
inc cl
mov dl, cl 
int 10h

mov al, 'o'
mov bh, 0
mov cx, 1
mov ah, 0Ah

int 10h

jmp start



ret

DEFINE_PRINT_STRING

end