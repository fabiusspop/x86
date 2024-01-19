include 'emu8086.inc'

org 100

lea SI,x
lea DI,y
inc DI

mov bl,[si]
mov [di],cl
mov dx,di

inc SI
inc DI

mov cl,y
sub cl,2

insert:
mov bl,[si]
mov di,dx
cmp [di],bl

jg skip
mov [di],bl

skip:
loop insert

ret

x db -1,-1,2,3,2,1,-2
y db 7

end