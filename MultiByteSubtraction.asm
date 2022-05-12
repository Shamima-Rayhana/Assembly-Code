;Auther: Shamima Rayhana Rumi
;Date: 12-05-2022
;Content: MultiByte addition


MOV SI,1000H             ;SI->05
MOV DI,1011H             ;DI->00
MOV BP,1021H
MOV CL,[SI]              ;[SI]->05 so, CL->05
INC SI                   ;SI->1001H
MOV BX,0000H
MOV DL,0000H
CLC                      ;clear carry flag, CF->0

REPEAT:
MOV AL,[SI+BX]           ;   D2 56 4A 67 56  [First number]
SBB AL,[DI+BX]           ; - F2 C5 79 F2 E7  [secomd number]
MOV [BP],AL              ; 1 DF 90 D0 74 6F  [result ofter Subtraction]
INC BX
INC BP
LOOP REPEAT
JNC JUMP
INC DL
JUMP:
MOV [BP],DL
HLT
