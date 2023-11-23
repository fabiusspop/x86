;Total number of even and odd numbers from an array
;Size of array is user defined

data SEGMENT

num DB 5,9,25,20,76,0

even DB ?
odd DB ?

data ENDS

code SEGMENT
    
ASSUME CS:code,DS:data

START:

MOV AX,data
MOV DS,AX

LEA SI,num

MOV BL,0H
MOV BH,0H

MOV CL,[SI]

INC SI

UP: MOV AL,[SI]

ROR AL,1

JC XX

INC BL

JMP NEXT

XX:INC BH

NEXT: INC SI

DEC CL

JNZ UP

MOV even,BL
MOV odd,BH

MOV AH,4CH
INT 21H

code ENDS
END START