.model small
.stack 100h
.data
  
num1 db ?
num2 db ?
msg1  db 'Enter number: $'
msg2  db '. Grade is : A$ '
msg3  db '. Grade is : A-$' 
msg4  db '. Grade is : B+$' 
msg5  db '. Grade is : B $' 
msg6  db '. Grade is : B-$' 
msg7  db '. Grade is : C+$'
msg8  db '. Grade is : C$' 
msg9  db '. Grade is : C-$' 
msg10 db '. Grade is : D+$' 
msg11 db '. Grade is : D-$' 
msg12 db '. Grade is : F$'   
  

.code
 
main proc
 
 
    mov ax,@data
    mov ds, ax 
    
    lea dx,msg1
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h 
    sub al,30h
    mov num1,al
    
    add al,num1 
    add al,num1
    add al,num1
    add al,num1
    add al,num1
    add al,num1
    add al,num1
    add al,num1
    add al,num1
    mov cl,al
 
    mov ah,1
    int 21h
    sub al,30h
    mov num2 ,al
    add cl,al 
    
    cmp cl,90
    jl  aneg 
    lea dx,msg2 
    jmp output
    
    
aneg: 
    cmp cl,86
    jl  bpos
    lea dx,msg3 
    jmp output
      
           
bpos: 
    cmp cl,82
    jl  bneg
    lea dx,msg4
    jmp output 
    
    
b:
    cmp cl,78
    jl  bneg
    lea dx,msg5
    jmp output
    
    
bneg:
    cmp cl,74
    jl  cpos  
    lea dx,msg6 
    jmp output
    
    
cpos:
    cmp cl,70
    jl  c 
    lea dx,msg7 
    jmp output
    
    
c:
    cmp cl,66
    jl  cneg
    lea dx,msg8 
    jmp output
    
    
cneg:
    cmp cl,62
    jl  dpos
    lea dx,msg9 
    jmp output
    
    
dpos:
    cmp cl,58
    jl  d
    lea dx,msg10 
    jmp output 
    
    
d:
    cmp cl,55
    jl  f
    lea dx,msg11 
    jmp output
    
    
f:
    lea dx, msg12
    jmp output         


output:    
    mov ah,9
    int 21h 
    mov ah,4ch
    int 21h
    
    main endp 
end main  
