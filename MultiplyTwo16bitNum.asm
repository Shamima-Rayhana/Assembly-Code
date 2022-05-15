;Problem:
;write a assembly program to multiply two 16 bit data 


;Algorithm:
;1.Load the address of data in SI register 
;2.Load the first data in AX 
;3.Load the second data in BX register
;4.Multiply the content of AX and BX. The product will be in AX and DX  
;5.Save the result (AX and DX) in memory
;6.Stop


;Example:
;                    E F 1 A
;                  * C D 5 0
;                  ............
;                    0 0 0 0
;                4 A B 8 2 
;              C 2 4 5 2
;            B 3 5 3 8
;        .......................
;            B F C 2 8 A 2 0      


;Auther: Shamima Rayhana Rumi   
;Date:15-05-2022
;Content: Multiplication of two 16 bit data  


MOV SI,1100H
MOV AX,[SI]
MOV BX,[SI+2] 
MUL BX          ;AX*BX and store lower byte in AX and higher byte in DX register

MOV [SI+4],AX
MOV [SI+6],DX
HLT



