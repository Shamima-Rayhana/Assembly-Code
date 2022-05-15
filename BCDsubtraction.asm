;Problem:
;write a assembly program to subtract two BCD number 


;Algorithm:
;1.Load the address of data in SI register
;2.Clear the CL register to account for borrow 
;3.Load the minend data in AX and subtrahend data in BX register
;4.Perform the binary subtration of low byte data to get the sum in AL register
;5.adjust the subtraction of low byte in BCD
;6.save the difference of low bytes in DL register 
;7.Get the high byte of minuend data in AL register
;8.Subtract the hight byte of second data and previous borrow to AL register. Now the subtraction bytes will be in AL register.
;9.Adjust the subtraction of high byte to BCD
;10.Save the subtraction of high byte in DH register
;11.Check for carry.If carry flag is set then go to the next step,otherwise go to step 13.
;12.Increament CL register
;13.Save the subtraction (DX register) in memory 
;14.save the carry (CL register) in memory
;15.Stop 


;Example:
;          9 5 7 2
;        - 4 7 9 3
;        ............
;          C B 1 0
;        - 6 6 6 6
;        ...........
;          4 7 7 9       


;Auther: Shamima Rayhana Rumi   
;Date:15-05-2022
;Content: BCD subtraction  


MOV SI,1100H
MOV CL,00H
MOV AX,[SI]
MOV BX,[SI+2] 

SUB AL,BL
DAS
MOV DL,AL

MOV AL,AH
SBB AL,BH 
DAS               ;decimal adjust after subtraction
MOV DH,AL 
JNC JUMP
INC CL

JUMP:
MOV [SI+4],DX
MOV [SI+6],CL
HLT



