MOV BX,1300H     ; Load the base address 1st input matrix in BX
MOV BP,1400H     ; Load the base address 2nd input matrix in BP
MOV SI,0001H     ; Initialize pointer for element of matrix
MOV DI,1501H     ; Set DI register as pointer for sum matrix
MOV CL,09H       ; Set CL as count for element in matrix

REPEAT:
MOV AL,[BX+SI]   ; Get the element of 1st matrix in AL
ADD AL,[BP+SI]   ; Add corresponding element of 2nd matrix to AL
MOV [DI],AL      ; Store the sum of element in memory
INC SI           ; Increment the pointer
INC DI
LOOP REPEAT      ; Repeat the addition until count is zero
HLT              ; Halt program execution

;Example : 
;                 Matrix 1 = 01 02 03 
;                            04 05 06
;                            07 08 09

;                 Matrix 2 = 00 E1 D2
;                            C3 B4 A5
;                            96 87 78

;            Result Matrix = 01 E3 D5 
;                            C7 B9 AB
;                            9D 8F 81 