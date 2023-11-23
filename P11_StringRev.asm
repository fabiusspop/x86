;Reverse a given string
;Store it into memory location

data SEGMENT
    
STR1 DB 'HELLO'
LEN EQU $-STR1
STR2 DB 20 DUP<0>

data ENDS

code SEGMENT

ASSUME CS:code,DS:data,ES:data

START:

MOV AX,data
MOV DS,AX
MOV ES,AX

MOV SI,offset STR1          ;points to the starting addr
MOV DI, offset STR2+<LEN-1> ;address of the last
MOV CX,LEN                  ;count value

UP:
CLD
LODSB   ;load AX with the char pointed SI reg
STD     ;set the direction flag to autodecrement DI reg
STOSB   ;contents of AX stored at the address pointed by DI
LOOP UP

MOV AH,4CH
INT 21H

code ENDS
END START
