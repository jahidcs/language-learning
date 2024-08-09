INCLUDE 'EMU8086.INC'
TITLE ADDITION OF ID & DATE
.MODEL SMALL
.STACK 100H
.DATA
    num dw ?
    num2 dd 11182020 
    a dw 1000
    b db 100
    c db 10

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX 
    
    PRINTN "HELLO"
    PRINTN "WHAT IS YOUR LAST 4 DIGIT OF ID?" 
    
    mov AH,1
    INT 21H  
    SUB AL,30H
    MUL a                       ;1st digit
    mov num,AX 
    
    mov AH,1
    INT 21H  
    SUB AL,30H
    MUL b                       ;2nd digit
    add num,AX
    
    mov AH,1
    INT 21H  
    SUB AL,30H
    MUL c                      ;3rd digit
    ADD num,AX
    
    mov AH,1
    INT 21H                      ;4th digit
    SUB AL,30H
    ADD num,AX
    
    PRINTN "" 
    printn "Sum: "
    
    call addfunc 
     
    exit:
    mov AH,4CH
    INT 21H 
     
    addfunc proc near 
        
        mov BX,num2
        ADD BX,num
        SUB bl,48D
        sub bh,48d
     
        mov AH,2
        mov DL,bH
        INT 21H 
         
        mov AH,2
        mov DL,bl
        INT 21H  
        
        ret 
END MAIN