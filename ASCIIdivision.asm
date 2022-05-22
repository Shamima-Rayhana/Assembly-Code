;Auther: Shamima Rayhana Rumi
;Date: 21-05-2022
;Content: ASCII multiplication 

;A-Z -> 41H-5AH
;0-9 -> 30H-39H 


MOV AX, 0607H
MOV CH, 09H 
AAD
DIV CH
ADD AX, 3030H 
HLT
