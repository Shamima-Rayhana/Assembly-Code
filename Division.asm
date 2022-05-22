;Auther: Shamima Rayhana Rumi
;Date: 22-05-2022
;Content: Division

;Division 


;MOV AL,20H
;MOV BL,05H

;DIV BL   ;RESULT: QUOTIENT->AL=06, REMAINDER->AH=02
;HLT

MOV AX,1102H
MOV BX,1100H
DIV BX       ;RESULT: QUOTIENT->AX=0001, REMINDER->DX=0002
HLT  

;MOV [1100h],1115H
;MOV [1102h],1004H 
;MOV AX,[1100h] 
;MOV BX,[1102h]
;DIV BX
;MOV [1200h],AX
;MOV [1202h],DX
;HLT


