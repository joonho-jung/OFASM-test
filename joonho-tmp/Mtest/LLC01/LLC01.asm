LLC01      CSECT
           LR        12,15
           USING     LLC01,12
*
           L         2,0(1)
           LLC       3,0(2)
           ST        3,0(2)
*
           L         2,4(1)
           LLC       3,0(2)
           ST        3,0(2)
*
           BR        14
           END
