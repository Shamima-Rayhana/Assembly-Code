MOV SI,1100H       ; Set SI register as pointer for array
MOV CL,[SI]        ; Set CL as count for N-1 repetitions
DEC CL             ; Decrement count

REPEAT:          
MOV SI,1100H       ; Initialize pointer      
MOV CH,[SI]        ; Set CH as count for N-1 Comparison
DEC CH
INC SI             ; Increment the pointer

REPCOM:
MOV AL,[SI]        ; Get an element of array in AL register
INC SI
CMP AL,[SI]        ; Compare with next element of array in memory
JC AHEAD           ; If AL is lower than memory, then go to AHEAD
XCHG AL,[SI]       ; If Al is greater than memory then
XCHG AL,[SI-1]     ; Exchange the content of memory pointed by SI and the previous memory location

AHEAD:
DEC CH             ; Decrement the count of comparison
JNZ REPCOM         ; Repeat comparison until CH count is zero
DEC CL             ; Decrement the count for repeatations
JNZ REPEAT         ; Repeat N-1 comparisons until CL count is zero
HLT                ; Halt program execution

;Example:     Array size = 7
;             Array elements are = [ AA 77 FF 22 11 44 BB ] 
;             After sorting the ascending order is = [ 11 22 44 77 AA BB FF ]
