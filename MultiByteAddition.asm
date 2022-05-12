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

REPEAT:                  ;Example:
MOV AL,[SI+BX]           ;   F5 C2 64 72 17  [First number]
ADC AL,[DI+BX]           ; + C2 65 75 07 12  [secomd number]
MOV [BP],AL              ; 1 B8 27 D9 79 29  [result ofter addition]
INC BX
INC BP
LOOP REPEAT
JNC JUMP
INC DL
JUMP:
MOV [BP],DL
HLT
