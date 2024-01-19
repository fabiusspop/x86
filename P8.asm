include 'emu8086.inc'

org 100h

lea SI,string

mov CL,size

parseString:

cmp [SI],122
jg skip

cmp [SI],97
jl skip

mov AL,[SI]
sub AL,32
mov [SI],AL

skip: 
inc SI
loop parseString

ret

string db "HelloWorld"
size db 14

end
