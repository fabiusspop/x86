include 'emu8086.inc'

org 100h

call pthis
db 13,10, 'String ', 0

LEA SI,s
call print_string

call pthis
db 'has',0

mov AX,0

start: 
cmp [SI],'$'
je stop

inc AX
inc SI

jmp start

stop:
call print_num

call pthis 
db ' elements',0


ret

s DB "Hello World",'$'

DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end