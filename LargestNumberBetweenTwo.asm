.model small
.stack 100h
.data
a db 'Input two numbers $'
b db 10,13, 'Largest number $'
.code

;Auther: shamima Rayhana Rumi
;Date: 17-04-2022
;Language: Assembly
;content: Find bigger number between two

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    biggest:
    cmp bl,bh
    jg level1
    jmp level2
    
    
    level2:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    level1:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main