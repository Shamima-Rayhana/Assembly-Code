.model small
.stack 100h
.data
a db 'Upper form $'
b db 'Lower form $'
.code

;Auther:Shamima Rayhana Rumi
;Date:16-04-2022
;Language:Assembly
;Content:Upper case to lower case

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    add bl,32 ;bl=bl+32
    mov dl,bl
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    