.model small
.stack 100h
.code

main proc
    ; negation
    mov cl, 5
    neg cl
    
    ; shifting
    mov ax, 4
    shl ax, 1   ; left shift
                
    ; right shift
    shr ax, 1
    
    ; rotate
    
    mov ax, 6
    
    ror ax, 1
    rol ax, 1
    rcr ax, 1
    rcl ax, 1
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main