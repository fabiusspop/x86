;Write a program to multiply two 16bit numbers 
;and store the 32 bit results into memory

data SEGMENT
    
num DW 1234h,1234h
prod DW 2 DUP<0>

data ENDS

code SEGMENT
    
ASSUME CS:code,DS:data

START:MOV AX,data

MOV DS,AX

LEA SI,num

MOV AX,[SI]

MOV BX,[SI+2]
MUL BX

MOV prod,AX
MOV prod+2,DX

MOV AH,4CH
INT 21H

CODE ENDS
END START
