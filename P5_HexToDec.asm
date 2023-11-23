;Write a program to convert 16 bit Hex number into its equivalent decimal number.

data SEGMENT
    
num DW 0FFFFH
ans DB 5 DUP<0>             
         
         
data ENDS

code SEGMENT

ASSUME CS:code,DS:data

START:

MOV AX,data
MOV DS,AX

MOV AX,num
MOV CX,0AH

LEA SI,ans

UP:

MOV DX,00H
DIV CX
MOV [SI],DL
INC SI
CMP AX,CX

JAE UP

MOV [SI],AL
MOV AX,4C00H

INT 21H
code ENDS
END START
