;Auther: Shamima Rayhana Rumi
;Date: 21-05-2022
;Content: ASCII subtraction 

;A-Z -> 41H-5AH
;0-9 -> 30H-39H 


MOV AL,'9'  ;MOV AL,39H
MOV BL,'5'  ;MOV BL,35H 
SUB AL, BL 
AAS
ADD AX, 3030H
HLT
