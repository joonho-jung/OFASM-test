MVC        CSECT
           ENTRY     MVC01
           DS        F
           DS        F
           DS        F
           DS        F
MVC01      DS        0F
           BALR      12,0
           USING     *,12
           L         2,0(0,1)
           L         3,4(0,1)
           L         3,0(0,3)
           L         4,8(0,1)
           LA        4,0(0,4)
           MVC       WTO#L+4(6),0(2)
           MVC       WTO#L+10(6),0(3)
           MVC       WTO#L+16(2),0(4)
           LA        1,WTO#L
           SVC       35
           MVC       0(1,4),=C'X'
           BR        14
WTO#L      DC        AL2(19)
           DC        B'0000000000000000'
           DC        CL15''
           END
