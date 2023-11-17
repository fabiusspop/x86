ORG 100h

MOV    AL, VAR1               

LEA    BX, VAR1              

MOV    BYTE PTR [BX], 44h    

MOV    AL, VAR1              

RET

VAR1   DB  22h

END    