.model small
.stack
.data
I dw 2
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dl,'2'
    mov ah,2
    int 21h
    
    main endp
end main