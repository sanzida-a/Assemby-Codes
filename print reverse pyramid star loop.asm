.model small
.stack 100h
.data 

x dw 1
y dw 7 
v dw 1 
g dw ?

.code
main proc
    mov ax,@data
    mov ds,ax
    mov cx,7
    
      
    
outer:
    cmp y,0
    jl p
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h  
    
    mov x,cx
    xor cx,cx
    mov cl,1
    
    loop1:
    
    mov dl,' '
    mov ah,2
    int 21h
          
    mov g,cx
    xor cx,cx
    mov cx,v
    
    loop2:
        mov dl,' ' 
        mov ah,2
        int 21h
         
        loop loop2  
        inc v
        mov cx,g
            
          
    loop loop1  
     
    mov cx,y
    inner:
    mov dl,'*'
    mov ah, 2
    int 21h  
    loop inner 
    sub y,2
    xor cx,cx
    mov cx,x
    inc x 
    loop outer
     mov cx,y
     mov ah,4ch
     int 21h 
    
    p:
    exit: 
    
   
    
    
     
  
main endp
end main