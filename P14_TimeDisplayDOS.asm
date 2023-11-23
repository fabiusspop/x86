;Read current sys time using DOS interrupt func
;Display on screen

data SEGMENT
    
msg DB 'Current time: $'

data ENDS

code SEGMENT
    
START:

MOV AX,data
MOV DS,AX

LEA DX,msg

MOV AH,09H
INT 21H

;HOURS

MOV AH,2CH ;SystemTime
INT 21H

MOV AL,CH

AAM        ;HEX->BCD

MOV BX,AX  ;BH=HB,BL=LB

CALL DISP

MOV DL,':'
MOV AH,02H
INT 21H

;MINUTES

MOV AH,2CH
INT 21H

MOV AL,CL

AAM

MOV BX,AX

CALL DISP

MOV DL,':'
MOV AH,02H
INT 21H

;SECONDS

MOV AH,2CH
INT 21H

MOV AL,DH

AAM

MOV BX,AX

CALL DISP

;TERMINATING THE PROGRAM

MOV AH,4CH
INT 21H

;DISPLAYING

DISP PROC
    
MOV DL,BH  ;values in BX

ADD DL,30H ;ASCII adj
                      
MOV AH,02H
INT 21H

MOV DL,BL

ADD DL,30H

MOV AH,02H
INT 21H

RET

DISP ENDP

code ENDS
END START






















