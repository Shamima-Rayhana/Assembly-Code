
MOV AH,1
INT 21H
MOV BL,AL

MOV AH,1
INT 21H
MOV BH,AL

CMP BL,BH

JGE LEVEL1
JMP LEVEL2

LEVEL1:
MOV AH,2
MOV DL,BL
INT 21H
JMP EXIT

LEVEL2:
MOV AH,2
MOV DL,BH
INT 21H
JMP EXIT

EXIT:
MOV AH,4CH
INT 21H
HLT
