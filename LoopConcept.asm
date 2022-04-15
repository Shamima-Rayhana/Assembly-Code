.model small
.stack 100h
.data
a db 'Lopp concept 4'
.code

;Name: Shamima Rayhana Rumi
;Date: 15-04-2022
;Language: Assembly
;Content: Loop concept

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    ;Loop
    mov cx,26
    mov ah,2
    mov dl,'A'
    
    level1:
    int 21h
    inc dl ;increament 
    loop level1 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main