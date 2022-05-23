include 'emu8086.inc'
.model small
.stack 100h
.data
 
 array1 db 'bsrm $'
 array2 db 'bsrb $'
 
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset array1
    mov di,offset array2
    
    mov cx,4
    
    loopx:
     
     mov al,[si]
     mov bl,[di]
     
     cmp al,bl
     jne notsame
     inc si
     inc di
     loop loopx
     
     print 'Both are same'
     mov ah,4ch
     int 21h
     
     
    notsame:
     
     print 'Both are not same'
     mov ah,4ch
     int 21h
     
     
    main endp
end main