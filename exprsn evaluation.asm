.MODEL SMALL
.STACK 100H
.DATA
    M1 DB 'RIGHT$'
    M2 DB 'NOT RIGHT$'
    X DB ?
    Y DB ?
    Z DB ?
    A DW ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV A,0
    
    LOOP1:
    MOV AH,1
    INT 21H
    CMP AL,0DH
    JE LOOP2
    PUSH AX
    ADD A,1
    JMP LOOP1
    

LOOP2:    
    XOR CX,CX
    MOV CX,A
    MOV BH,1
    MOV BL,1
    MOV X,1
    MOV Y,1
    MOV Z,1
    
    BRAC1:
    POP DX
    CMP DX,129H
    JE C1
    O1:
    
    CMP DX,128H
    JE C2
    
    
    O2:
    
    LOOP BRAC1
    
    
     C1:
     CMP CX,0
     JE U1
    ADD BL,1
    JMP O1
   
    
    C2:
    CMP CX,0
    JE U1
    ADD BH,1
    JMP O2
    
   
   
   U1: 
    CMP BH,BL
    JE MS1
    JL MS2
    JG MS3
    
    
    MS1:
    MOV AH,9
    LEA DX,M1
    INT 21H
    JMP EXIT
    MS2:
    MOV AH,9
    LEA DX,M2
    INT 21H
    JMP EXIT
    MS3:
    MOV AH,9
    LEA DX,M2
    INT 21H
    JMP EXIT
    
 EXIT:   
     
    
    MAIN ENDP
END MAIN