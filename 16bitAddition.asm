;Auther:Shamima Rayhana Rumi
;Date:16-04-2022
;Language:Assembly
;Content:16 Addition of two 16 bit number

                 
                ;without carry          ;with carry

MOV AX, [1000h] ;AX=2316                ;AX=FE1C
MOV BX, [1002h] ;BX=3243                ;BX=A243
MOV CL, 00h     ;CL=00                  ;CL=00
ADD AX, BX      ;AX=5559 , CF=0         ;AX=A05F , CF=1
MOV [1004h] , AX
JNC jump
INC CL                                  ;CL=CL+1, CL=01
jump:
MOV [1006h], CL
HLT