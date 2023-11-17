include 'emu8086.inc'

ORG    100h

LEA    SI, msg1       
CALL   print_string   
CALL   scan_num       

MOV    AX, CX         


CALL   pthis
DB  13, 10, 'You have entered: ', 0

CALL   print_num      

RET                   

msg1   DB  'Enter the number: ', 0

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_PTHIS

END                  