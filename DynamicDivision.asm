.model small
.stack 256
.code
main proc
    
    mov bx, 0
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    
    mov ah,1
    int 21h
    mov cl, al 
    sub cl, 48
    
    
    mov ax, bx
    div cl 
    
    mov bx,ax
    
    
    mov ah,2
    mov dl,bl  
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,bh  
    add dl,48
    int 21h 
    
    exit: 
    mov ah,4ch
    main endp
end main
Write to Rafatur Rahman Rakin
