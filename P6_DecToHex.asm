
data SEGMENT
    
num DW 989H
ans DW ?

data ENDS

code SEGMENT
    
ASSUME CS:code,DS:data

START:

MOV AX,data
MOV DS,AX
MOV AX,num
MOV BX,AX

LEA SI,ans

MOV CX,0FH

AND AX,CX

MOV [SI],AL

MOV AX,BX
MOV CX,0F0H
AND AX,CX

MOV CX,04H
SHR AX,CL        ;shift right instruction

MOV CX,0AH

MUL CX

ADD [SI],AL

MOV AX,BX
MOV CX,0F00H

AND AX,CX
MOV CX,08H
SHR AX,CL
MOV CX,64H

MUL CX

CLC

ADD [SI],AL
ADC [SI+1],AH

MOV AX,4C00H

INT 21H
code ENDS
END START
