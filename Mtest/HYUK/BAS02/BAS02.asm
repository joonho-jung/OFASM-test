*************************************************
* FILENAME : BAS02.asm
* AUTHOR : HYUK KIM
* SYSTEM : OFASM v4 revision 113
*************************************************
BAS02      CSECT
           LR          12,15
           USING       BAS02,12

           L           5,=X'BBBBBBBB'
*           OFADBGREG   5
           LA          6,PRNT_FALSE
*           OFADBGREG   6
           BAS         5,0(0,6)

PRNT_TRUE  OFADBGMEM   TRUE,1
PRNT_FALSE OFADBGMEM   FALSE,1
*           OFADBGREG   5
*           OFADBGREG   6
           BR          14
           END
TRUE       DC          C'TRUE'
FALSE      DC          C'FALSE'
