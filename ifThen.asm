
MOV AH,1
INT 21H
MOV BL,AL

MOV AH,1
INT 21H
MOV BH,AL

CMP BL,BH

JG LEVEL1
JMP LEVEL2

LEVEL1:
MOV AH,2
MOV DL,BL
INT 21H

LEVEL2:
;RETURN 0
EXIT:
MOV AH,4CH
INT 21H
HLT
   
    