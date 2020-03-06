.model small
.stack 100h 

.data

ms1 db 'enter char= $' 
ms2 db 0dh,0ah,'Upper$'
ms3 db 0dh,0ah,'Lower$'
ms4 db 0dh,0ah,'Num$'
    
.code

main proc
    mov ax,@data
    mov ds, ax 
    
    mov ah,9
    lea dx,ms1
    int 21h 
    
    mov ah,1
    int 21h
    
    cmp al,'A'
    jl n
    cmp al,'Z'
    jg n 
    
    lea dx,ms2 
    jmp out  
    
    n:
    cmp al,'0'
    jl l
    cmp al,'9'        
    jg l          
    lea dx, ms4 
    int 21h
    jmp out
    
    l:
    lea dx,ms3
    int 21h           
    
    out:    
    mov ah,9
    int 21h       
    
      
    main endp
end main