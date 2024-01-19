org 100h

mov ah,3ch
mov cx,0
mov dx, offset filename
mov ah,3ch
int 21h

mov handle,ax

mov bx,handle
mov dx,offset data
mov cx,data_size
mov ah,40h
int 21h

mov bx,handle
mov ah,3eh
int 21h
ret

filename db "data.txt",0
handle dw ?
data db "hello world"
data_size=$-offset data
buffer db 4 dup(' ')