MOV CX,0
MOV AH,1
INT 21H

LEVEL1:
CMP AL,0DH
JE LEVEL2
PUSH AX
INC CX
INT 21H
JMP LEVEL1

LEVEL2:
MOV AH,2
MOV DL,10
INT 21H
MOV DL,13
INT 21H

JCXZ EXIT

APPEX:
POP DX
INT 21H
LOOP APPEX

EXIT:
MOV AH,4CH
INT 21H
HLT