.model small
.stack 100h
.data
a equ  '2'
b equ 'computer Science and Engineering $' 
c db b
.code

;Auther: Shamima Rayhana Rumi
;Date: 17-04-2022
;Language: Assembly
;content: constant declaration

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,a
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    