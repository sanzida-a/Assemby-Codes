.model small
.stack 100h

.data
a dw 1
b dw 2
m1 dw 'ax is greater than bx$'
m2 dw 'bx is greater than ax$'
.code

main proc
    mov ax,@data
    mov ds,ax 
    
    mov ax,a
    mov bx,b
    
    cmp ax,bx
    jg greater 
    jl less
    
    greater:
    mov ah,9
    lea dx,m1
    int 21h
    
    less:
    mov ah,9
    lea dx,m2
    int 21h
    
    main endp
end main