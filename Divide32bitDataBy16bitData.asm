;Problem:
;write a assembly program to divide 32 bit data by 16 bit data


;Algorithm:
;1.Load the address of data in SI register 
;2.Get lower word of divident in AX 
;3.Get higher word of divident in DX register
;4.Get the divisor in BX register
;5.perform division for quotient in AX and reminder in Dx
;5.Save the quotient (AX) and reminder( DX) in memory
;6.Stop


;Example:
;                    7 1 C 2 5 8 0 1
;                          / F 6 F 2
;                  ...................
;                  Quotient: 7 5 E E  
;                 Remainder: 2 9 0 E  // 2 9 0 5


;Auther: Shamima Rayhana Rumi   
;Date:15-05-2022
;Content: Division of 32 bit data by 16 bit data  


MOV SI,1100H
MOV AX,[SI]
MOV DX,[SI+2]
MOV BX,[SI+4] 
DIV BX         ;AX,DX value is devided by BX and quotient in AX and reminder in DX        

MOV [SI+6],AX
MOV [SI+8],DX
HLT



