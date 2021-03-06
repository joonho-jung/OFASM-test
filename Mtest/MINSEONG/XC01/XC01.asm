****************************************************************
*        FILENAME: XC01.asm                                    *
*        AUTHOR  : MINSEONG LEE                                *
*        SYSTEM  : OFASM v3.0                                  *
*        REMARKS                                               *
*        Resulting Condition Code:                             *
*        0 Result zero                                         *
*        1 Result not zero                                     *
****************************************************************
XC01        CSECT
            LR          12,15
            USING       XC01,12
* ------------------------------------
* TEST 1 : Result zero
* ------------------------------------
            LA          2,=XL4'10101010'
            LA          3,=XL4'10101010'
            OFADBGMEM   0(4,2),0
            OFADBGMEM   0(4,3),0
            XC          0(2,2),0(3)
            L           4,0(2)
            OFADBGREG   4
* ------------------------------------
* TEST 2 : Result not zero
* ------------------------------------
            LA          2,DATA1
            LA          3,DATA2
            OFADBGMEM   DATA1,0
            OFADBGMEM   DATA2,0
            XC          0(4,2),0(3)
            L           4,0(2)
            OFADBGREG   4
            BR          14
DATA1       DC          XL4'55555555'
DATA2       DC          XL4'AAAAAAAA'
            END            
