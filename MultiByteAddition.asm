

MOV SI,1000H
MOV DI,1011H
MOV BP,1021H
MOV CL,[SI]
INC SI
MOV BX,0000H
MOV DL,0000H
CLC

REPEAT:
MOV AL,[SI+BX]
ADC AL,[DI+BX]
MOV [BP],AL
INC BX
INC BP
LOOP REPEAT
JNC JUMP
INC DL
JUMP:
MOV [BP],DL
HLT