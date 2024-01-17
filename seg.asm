DATA SEGMENT
 PORTA EQU 00H
 PORTB EQU 02H
 PORTC EQU 04H
 PORT_CON EQU 06H
DATA ENDS
CODE SEGMENT
 MOV AX,DATA
 MOV DS, AX

ORG 0000H
START:

 MOV DX, PORT_CON
 MOV AL, 10000010B; port C (output), port A (output) in mode 0 and PORT B (INPUT) in mode 0
 OUT DX, AL

 MOV AL, 11000000B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
XX:
 MOV DX, PORTB
 IN AL, DX
 CMP AL, 11111110B
 JZ S0
 IN AL, DX
 CMP AL, 11111101B
 JZ S1
 IN AL, DX
 CMP AL, 11111011B
 JZ S2
 IN AL, DX
 CMP AL, 11110111B
 JZ S3
 IN AL, DX
 CMP AL, 11101111B
 JZ S4
 IN AL, DX
 CMP AL, 11011111B
 JZ S5
 IN AL, DX
 CMP AL, 10111111B
 JZ S6
 IN AL, DX
 CMP AL, 01111111B
 JZ S7
 JMP XX


S0:
 MOV AL, 11000000B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
S1:
 MOV AL, 11111001B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
S2:
 MOV AL, 10100100B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
S3:
 MOV AL, 10110000B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
S4:
 MOV AL, 10011001B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
S5:
 MOV AL, 10010010B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
S6:
 MOV AL, 10000010B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
S7:
 MOV AL, 11111000B
 MOV DX, PORTA
 OUT DX,AL
 JMP XX
JMP START
CODE ENDS
END
