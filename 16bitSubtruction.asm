;Auther:Shamima Rayhana Rumi
;Date:16-04-2022
;Language:Assembly
;Content:16 Addition of two 16 bit number



                ;without carry          ;with carry

MOV AX, [1000h] ;AX=3243                ;AX=840C
MOV BX, [1002h] ;BX=2316                ;BX=B2CA
MOV CL, 00h     ;CL=00                  ;CL=00
SUB AX, BX      ;AX=0F2D , CF=0         ;AX=D142 , CF=1
JNC jump
INC CL                                  ;CL=CL+1, CL=01    
NOT AX                                  ;complement of D142 is 2EBD               
ADD AX, 0001h                           ;2's complements of D142 is 2EBE
Jump:
MOV [1004h],AX
MOV [1006h],CL
HLT