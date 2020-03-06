.model small
.stack 100h

.data
  v db 1 
  g db ?

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cl,9
    
outer:
    
    mov dl,v 
    add dl,30h
    mov ah,2
    int 21h
          
    mov g,cl
    xor cx,cx
    mov cl,v
    
    inner:
        mov dl,v 
        add dl,30h
        mov ah,2
        int 21h
         
        loop inner  
           
    inc v
    mov cl,g       
    loop outer
    
    
    main endp
end main