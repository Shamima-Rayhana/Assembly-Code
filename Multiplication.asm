;Auther: Shamima Rayhana Rumi
;Date: 22-05-2022
;Content: Multiplication

;Multiplication 


MOV AL,05H
MOV BL,04H

MUL BL   ;RESULT=14H
HLT

;MOV AX,1102H
;MOV BX,1100H
;MUL BX       ;RESULT=1212200H
;HLT  

;MOV [1100h],1115H
;MOV [1102h],1004H 
;MOV AX,[1100h] 
;MOV BX,[1102h]
;MUL BX
;MOV [1200h],AX
;MOV [1202h],DX
;HLT


