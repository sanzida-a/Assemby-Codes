.model small
.stack 100h
.data 
 

.code
main proc   
    
    mov ax,@data 
    
    mov ah,1
    int 21h 
    mov bl,al
    sub bl,30h
    mov ah,1
    int 21h 
    mov cl,al
    sub cl,30h    
    add bl,bl
    
    
    sub bl,cl   
    add bl,30h
    mov dl,bl
   
    mov ah,2    
    int 21h
   
    main endp
end main