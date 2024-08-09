.model small
.data  
st2 db 13,10,"",'$'
st9 db 13,10,"Enter First Number : ",'$'
st10 db 13,10,"Enter Second Number : ",'$'
st11 db 13,10,"Result = ",'$'
num dw ?
num2 dw ? 
a dw 1000
b db 100
c db 10
.code
main proc
    mov AX,@data
    mov DS,AX
     
    addition:     
    mov AH,9H
    mov DX,offset st9
    INT 21H
     
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
     
    mov AH,9H
    mov DX,offset st10
    INT 21H
     
    mov AH,1
    INT 21H  
    SUB AL,30H
    MUL a                     ;1st digit
    mov num2,AX
     
    mov AH,1
    INT 21H  
    SUB AL,30H
    MUL b                   ;2nd digit
    ADD num2,AX
     
    mov AH,1
    INT 21H  
    SUB AL,30H
    MUL c                     ;3rd digit
    ADD num2,AX
     
    mov AH,1
    INT 21H                ;4th digit
    SUB AL,30H 
    ADD num2,AX
     
    call addfunc 
     
    exit:
    mov AH,4CH
    INT 21H 
     
    addfunc proc near 
        
        mov BX,num2
        ADD BX,num
        SUB bl,48D
        sub bh,48d
         
        mov AH,9H
        mov DX,offset st11
        INT 21H
     
        mov AH,2
        mov DL,bH
        INT 21H 
         
        mov AH,2
        mov DL,bl
        INT 21H  
        
        ret 
   
end main
