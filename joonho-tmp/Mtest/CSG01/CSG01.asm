R1       EQU   1                                                        
R2       EQU   2                                                        
R3       EQU   3                                                        
R4       EQU   4                                                        
R5       EQU   5                                                        
R6       EQU   6                                                        
R7       EQU   7                                                        
R8       EQU   8                                                        
R9       EQU   9                                                        
R10      EQU   10                                                       
R11      EQU   11                                                       
R12      EQU   12                                                       
R13      EQU   13                                                       
R14      EQU   14                                                       
R15      EQU   15   
CSG01       CSECT
           LR        R12,R15
           USING     CSG01,R12
*
           LG        R5,DATA01
           LG        R6,DATA04
*
           CSG       R5,R6,DATA02
           BNE       NG 
           CLG       R6,DATA02
           BNE       NG
*
           LG        R5,DATA01
           LG        R6,DATA04
* 
           CSG       R5,R6,DATA03
           BE        NG 
           CLG       R5,DATA03
           BNE       NG
*
           BR        R14
*
NG         EQU    *
           L         R2,0(R1)
           L         R3,0(R2)
           AH        R3,=H'1'
           ST        R3,0(R2)
*
           BR        R14
*
*
DATA01     DC        XL8'F000000000000001'
DATA02     DC        XL8'F000000000000001'
DATA03     DC        XL8'F000000000000002'
DATA04     DC        XL8'F000000000000005'
LEN01      DC        F'8' 
*
           END
