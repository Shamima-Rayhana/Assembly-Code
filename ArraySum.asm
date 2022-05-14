;Problem:
;Write an assembly language program to determine the sum of elemets in an array.


;Algorithm:

; 1.Load the count value in CL register
; 2.Initaialize AX to zero
; 3.Initialize BX to zero
; 4.Load the address of the array in SI register
; 5.Load the Byte of the array to Bl register
; 6.Add AX and AX register value
; 7.Increament the SI memory location
; 8.Decreament CL register value by one
; 9.If CL value become zero then go to the next step, otherwise go to the step 5
; 10.Load the address of the result in DI register
; 11.Final result is move into the DI location AX to DI



;Auther: Shamima Rayhana Rumi
;Date: 14-05-2022
;content: sum of array elements 

;Example:
;Array: 12,47,C2,F5,47,56 
;SUM: AD 02


MOV CX,06H
MOV AX,0000H
MOV BX,0000H
MOV SI,1000H

REPEAT:
MOV BL,[SI]
ADD AX,BX
INC SI
DEC CX
JNZ REPEAT

MOV DI,1011H
MOV [DI],AX
HLT