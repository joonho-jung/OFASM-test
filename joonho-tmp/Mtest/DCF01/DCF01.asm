DCF01   CSECT
        LR    12,15
        USING DCF01,12

        OFADBGMEM FFLD1,0
        OFADBGMEM FFLD2,0
        OFADBGMEM FFLD3,0


        BR 14

FFLD1 DC F'255'
FFLD2 DC F'-100'
FFLD3 DC 3F'0'
FFLD4 DC FL8'31,28,31,30'
        END

