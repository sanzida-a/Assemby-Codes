 .model small
 .stack 100h
 .data 
 a db '1'
 b db '5' 
 c db '7'
 d db '9'
 
 .code
main proc
    mov ax,@data
    mov ds,ax  
    
    mov ax,a
    mov bx,b
    mov cx,c
    mov dx,d
    
    cmp ax,bx
    jg y
    jl x 
    
    x:  
    cmp ax,cx
    jg l
    jl k
    
    k:
    cmp ax,dx
    jg p
    jl o
    
    l:
    cmp cx,dx
    jg h
    jl y
    
    y:
    cmp bx,cx
    jg 
    jl m  
    
    m:
    cmp bx,dx
    jg l
    jl f
    
    o:
    mov ah,2
    mov dl,ax
    int 21h 
     f: 
     mov ah,2
    mov dl,bx
    int 21h 
        
    
    
    
    
    
    
    
    
    
    
   
    
    