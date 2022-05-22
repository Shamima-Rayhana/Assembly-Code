;Auther: Shamima Rayhana Rumi
;Date: 21-05-2022
;Content: ASCII addition

;A-Z -> 41H-5AH
;a-z ->
;0-9 -> 30H-39H


MOV AL,'5' ;MOV AL,35H
MOV BL,'9' ;MOV BL,39H 
ADD AL, BL 
AAA
ADD AX, 3030H
HLT
