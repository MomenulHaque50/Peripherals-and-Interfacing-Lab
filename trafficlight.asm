ORG 00H
MOV P2,#00H
MOV P3,#00H
MAIN:
     SETB P2.2
     SETB P3.2
     SETB P2.3
     SETB P3.3
     ACALL DELAY1
     SETB P2.4
     SETB P3.4
     CLR P2.3
     CLR P3.3
     ACALL DELAY2
     MOV P2,#00H
     MOV P3,#00H
 
     SETB P2.5
     SETB P3.5
     SETB P2.0
     SETB P3.0
     ACALL DELAY1
     SETB P2.1
     SETB P3.1
     CLR P2.0
     CLR P3.0
     ACALL DELAY2
     MOV P2,#00H
     MOV P3,#00H
     SJMP MAIN
DELAY1: MOV R0,#255D
    H1: MOV R1,#255D
    H2: MOV R2,#71D
    H3: DJNZ R2,H3
        DJNZ R1,H2
        DJNZ R0,H1
    RET
DELAY2: MOV R0,#255D
    H4: MOV R1,#142D
    H5: MOV R2,#51D
    H6: DJNZ R2,H6
        DJNZ R1, H5
        DJNZ R0, H4
    RET
END