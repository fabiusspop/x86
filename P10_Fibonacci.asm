;Find Fibonacci series up to n numbers in decimal
;Value of n taken from data segment

data SEGMENT

cnt DB 10
fib DB 10 DUP<0>

data ENDS

code SEGMENT
    
ASSUME CS:code,DS:data

START:

MOV AX,data
MOV DS,AX
MOV AL,00H

LEA SI,fib

MOV [SI],AL
INC SI ;point next memory loc
INC AL ;next element of the seq

MOV [SI],AL 

MOV CL,cnt
MOV CH,00H
SUB CX,02H

L1:

MOV AL,[SI-1]
ADD AL,[SI]

DAA

INC SI
MOV [SI],AL

LOOP L1

MOV AH,4CH
INT 21H

code ENDS
END START


