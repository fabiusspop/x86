;Factorial of a given number from 0 to 9

code SEGMENT
    
ASSUME CS:code

START:

MOV AH,01h

INT 21H

SUB AL,30H ;convert ASCII to decimal

MOV CL,AL
MOV CH,00H

MOV AX,0001H
MOV DX,0000H
MOV BX,0001H

YY:MUL BX
DEC CX
CMP CX,00 ; cx=0 -> exit loop

JE XX

INC BX

JMP YY

XX:MOV CS:[0050H],AX ;store AX to memory loc
MOV CS:[0052H],DX

MOV AH,4CH
INT 21H

code ENDS
END START