INCLUDE 'EMU8086.INC'
TITLE EQUATION_SOLVING 3A+B-2C
.MODEL SMALL
.STACK 100H
.DATA
    A DB ?
    B DB ?
    C DB ?
    CNST1 DB 3
    CNST2 DB 2
    
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
    ADD AL, A
    MOV B, AL
    
    PRINTN
    PRINT "VALUE OF C:  "
    MOV AH, 01
    INT 21H
    SUB AL, 48
    MUL CNST2
    SUB AL, B
    MOV C, AL
    ADD C, 48
    
    PRINTN
    PRINT "RESULT:  "         
    MOV AH, 02
    MOV DL, C
    INT 21H