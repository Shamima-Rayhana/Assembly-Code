;Problem:
;write a assembly program to add two BCD number 


;Algorithm:
;1.Load the address of data in SI register
;2.Clear the CL register to account for carry 
;3.Load the first data in AX and second data in BX register
;4.Perform the binary addition of low byte data to get the sum in AL register
;5.adjust the sum of low byte in BCD
;6.save the sum of low bytes in DL register 
;7.Get the hige byte of first data in AL register
;8.Add the hight byte of second data and previous carry to AL register. Now thw sum bytes will be in AL register.
;9.Adjust the sum of hige byte to BCD
;10.Save the sum of hige byte in DH register
;11.Check for carry.If carry flag is set then go to the next step,otherwise go to step 13.
;12.Increament CL register
;13.Save the sum (DX register) in memory 
;14.save the carry (CL register) in memory
;15.Stop 


;Example:
;          4 5 7 8
;        + 8 5 9 8
;        ............
;          C B 1 0
;        + 6 6 6 6
;        ...........
;        1 3 1 7 6       


;Auther: Shamima Rayhana Rumi   
;Date:15-05-2022
;Content: BCD addition  


MOV SI,1100H
MOV CL,00H
MOV AX,[SI]
MOV BX,[SI+2] 

ADD AL,BL
DAA
MOV DL,AL

MOV AL,AH
ADC AL,BH 
DAA               ;decimal adjust accumulator
MOV DH,AL 
JNC JUMP
INC CL

JUMP:
MOV [SI+4],DX
MOV [SI+6],CL
HLT



