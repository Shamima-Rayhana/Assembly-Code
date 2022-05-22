MOV SI,1301H      ; Set SI as pointer for first input matrix
MOV DI,1401H      ; Set DI as pointer foe second input matrix
MOV BP,1501H      ; Set BP as pointer for product matrix
MOV CL,03H        ; Set CL as count for elements in a row
MOV CH,03H        ; Set CH as count for elements in column
MOV DH,CH

REPEAT3:
MOV BL,DH         ; Copy the column count in BL register

REPEAT2:
MOV DL,00H        ; Initialize sum as zero
MOV CH,DH         ; Get the column count in DH

REPEAT1:
MOV AL,[SI]       ; Get one element of the row in AL register
MUL [DI]          ; Get the product of row and column element in AL
ADD DL,AL         ; ADD the product to SUM
INC SI            ; Increment the first input matrix pointer
ADD DI,03         ; Let DI pointer to next element of same column of 2nd matrix
DEC CH            ; Decrement the column count
JNZ REPEAT1       ; Repeat multiplication and addition until DH count is zero
MOV [BP],DL       ; Store an element of product matrix in memory
INC BP            ; Increment the product matrix pointer
SUB SI,03H        ; Make SI to point to first element of the row
SUB DI,09H
INC DI
DEC BL            ; Decrement column count
JNZ REPEAT2       ; Repeat multiplication and addition of row in 1st matrix with next column of 2nd matrix
ADD SI,03H        ; Let SI pointer first element of second matrix
MOV DI,1401H      ; Make DI to point to first element of 2nd matrix
DEC CL            ; Decrement of row count
JNZ REPEAT3       ; Repeat multiplication and addition of next row in first matrix with all column of 2nd matrix
HLT               ; Halt and Execution


;EXample: 
;           Matrix 1 = 01 01 01
;                      02 02 02
;                      03 03 03

;           Matrix 2 = 04 04 04
;                      05 05 05
;                      06 06 06


;  Product Matrix   = 0F 0F 0F
;                     1E 1E 1E
;                     2D 2D 2D
