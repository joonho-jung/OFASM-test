SVC19      CSECT
           USING SVC19,12
END#READ   LR    12,15
           FIND  DCBIN,DIR0NAM,D
           FIND  LIB#DCB,(7),C
SYNAD000   BR    14
DCBIN    DCB   DSORG=PO,MACRF=R,DDNAME=INLIB,KEYLEN=0,BUFNO=1,         *00024300
               FREEPL=YES
LIB#DCB  DCB   DDNAME=SYSLIB,DSORG=PO,MACRF=R,EODAD=END#READ,          X00099600
               SYNAD=SYNAD000  
