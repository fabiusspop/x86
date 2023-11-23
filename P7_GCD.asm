;Write a program to find GCD of two 16 bit numbers

data SEGMENT
    
n1 DW 104d
n2 DW 12
gcd DW ? 

data ENDS

code SEGMENT
    
ASSUME CS:code,DS:data

START:

MOV AX,data
MOV DS,AX
MOV AX,n1
MOV BX,n2

UP: CMP AX,BX
JE EXIT
JB EXCG

UP1:MOV DX,0H

DIV BX

CMP DX,0

JE EXIT

MOV AX,DX

JMP UP

EXCG:XCHG AX,BX

JMP UP1


EXIT:MOV gcd,BX

MOV AH,4CH
INT 21H

code ENDS
END START