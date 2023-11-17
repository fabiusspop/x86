include 'emu8086.inc'

ORG    100h


mov AX,256
CALL   print_num_uns     

RET                   

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  

END                 