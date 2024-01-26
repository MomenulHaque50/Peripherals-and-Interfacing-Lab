;Ledbilniking program
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
 MOV AL, 10000000B; port C (output), port A (output) in mode 0 and PORT B (INPUT) in mode 0
 OUT DX, AL


 JMP XX
XX:
 MOV AL, 0000H
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,0DF36H; Delay 
loopy1:loop loopy1
 MOV AL, 00FFH
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,0DF36H; Delay 
loopy2:loop loopy2
JMP XX






CODE ENDS
END