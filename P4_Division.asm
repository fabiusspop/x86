;Write a program to divide 32 bit number with 16 bit number
;and store quotient and reminder into memory locations

data SEGMENT

num1 DD 23454567H
num2 DW 4111H

quo DW 1 DUP<0>
rem DW 1 DUP<0>

data ENDS

code SEGMENT
    
ASSUME CS:code,DS:data

START:MOV AX,data

MOV DS,AX

MOV AX,num1
MOV DX,num1+2

DIV num2

MOV quo,AX
MOV rem,DX

MOV AH,4CH
INT 21H

CODE ENDS

END START