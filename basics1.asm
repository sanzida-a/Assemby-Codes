.model small 
.stack 100h
.data
I dw 2
.code 

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al  
    
    main endp
endp main

    