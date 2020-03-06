.model small
.stack 100h
.data 
.code
main proc   
    
    mov ax,@data  
    mov ds,ax
    
    mov ah,1   
    int 21h 
    mov bl,al
    sub bl,20h
    mov dl,bl
    mov ah,2    
    int 21h
    
   main endp
end main