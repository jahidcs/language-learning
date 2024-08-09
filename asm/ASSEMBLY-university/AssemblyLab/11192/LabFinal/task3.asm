INCLUDE 'EMU8086.INC'
TITLE EQUATION_SOLVING 2A-B+3C
.MODEL SMALL
.STACK 100H
.DATA
    A DB ?
    B DB ?
    C DB ?
    CNST1 DB 2
    CNST2 DB 3
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    PRINT "VALUE OF A:  "
    MOV AH, 01
    INT 21H
    SUB AL, 48
    MUL CNST1
    MOV A, AL
    
    PRINTN
    PRINT "VALUE OF B:  "
    MOV AH, 01
    INT 21H
    SUB AL, 48
    SUB AL, A
    MOV B, AL
    
    PRINTN
    PRINT "VALUE OF C:  "
    MOV AH, 01
    INT 21H
    SUB AL, 48
    MUL CNST2
    ADD AL, B
    MOV C, AL
    ADD C, 48
    
    PRINTN
    PRINT "RESULT:  "         
    MOV AH, 02
    MOV DL, C
    INT 21H 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN