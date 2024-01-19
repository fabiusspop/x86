org 100h

lea SI,x
lea DI,y

inc DI

mov BL,[SI]
mov [DI],CL
mov DX,DI

inc SI
inc DI

mov CL,y
sub CL,2

insert: 
mov BL,[SI]
mov DI,DX

cmp [DI],BL
jl skip

mov [DI],BL

skip:
loop insert

ret

x DB -1,-1,2,3,2,1,-2
y DB 7

end