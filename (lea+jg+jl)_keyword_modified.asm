.model small
.stack 100h

.data

a dw 1
b dw 2  

m1 dw "a is greater than b$"
m2 dw "a is less than b$"

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ax, 5
    mov bx, 2
    
    cmp ax,bx
    jg greater 
    jl less
    
    
  greater:
  mov ah,9
  lea dx,m1
  int 21h
  jmp exit
  
  less:
       mov ah,9
       lea dx, m2
       int 21h 
       
       
       
  exit:
    
    
    main endp

end main