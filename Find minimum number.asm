.model small
.stack 100h 

.data
cr equ 0dh
lf equ 0ah  


n1 db ?
n2 db ?  
n3 db ?
n4 db ?
min db ?  

ms1 db 'enter number 1: $'
ms2 db cr,lf,'enter number 2: $'   
ms3 db cr,lf,'enter number 3: $'
ms4 db cr,lf,'enter number 4: $'
ms5 db cr,lf,'minimum is: $' 
 
    
.code

main proc
    mov ax,@data
    mov ds, ax  
    
    lea dx,ms1
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    sub al,30h 
    mov n1,al 
     

    lea dx,ms2
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    sub al,30h        
    mov n2,al  
    
        
    lea dx,ms3
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h        
    mov n3,al 
    
    
    lea dx,ms4
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h        
    mov n4,al
              
              
    mov al,n1
    cmp al,n2
    jg x
    cmp al,n3
    jg y
    cmp al,n4
    jg z
    mov min,al
    jmp output 
    
    
    
  x:
    mov al,n2
    cmp al,n3
    jg y 
    cmp al,n4
    jg z
    mov min,al
    jmp output
    
  y:
    mov al,n3 
    cmp al,n4
    jg z
    mov min,al
    jmp output
        
                
  z:
    mov al,n4
    mov min,al
    jmp output               
                
              
                
output:     
    lea dx,ms5
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,min  
    add dl,30h
    int 21h


    main endp

end main