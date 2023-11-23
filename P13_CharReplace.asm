;Replace given character from a string by a new character
;Display the updated string 

data SEGMENT
    
STR1 DB 10,13,'TESTING CODE$'
STR2 DB 10,13,'Enter char to be replaced $'
STR3 DB 10,13,'Enter new char $'

LEN DB $-STR1

data ENDS

code SEGMENT
    
ASSUME CS:code,DS:data

START:

MOV AX,data
MOV DS,AX
MOV ES,AX

LEA DX,STR1

MOV AH,09H

INT 21H     ;source string

MOV DI,<STR1+LEN-1>
MOV CL,LEN
MOV CH,00H  ;length counter

LEA DX,STR2
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H
MOV BL,AL   ;replaced char

LEA DX,STR3
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H
MOV BH,AL   ;new char

MOV AL,BL   ;take char back into AL

YY:

CMP [DI],AL
JZ XCHEG
JMP CONTINUE

XCHEG:

MOV BYTE PTR[DI],BH

CONTINUE:

DEC DI
LOOP YY

LEA DX,STR1
MOV AH,09H
INT 21H

MOV AH,4CH
INT 21H

code ENDS
END START

