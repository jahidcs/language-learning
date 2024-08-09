INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH, 01
    INT 21H
    MOV BL, AL        
    
    CMP BL, 65
    JL EXIT
    JE VOWEL
    JNE V1
    
    V1:
    CMP BL, 69
    JE VOWEL
    JNE V2
    
    V2:
    CMP BL, 73
    JE VOWEL
    JNE V3
    
    V3:
    CMP BL, 79
    JE VOWEL
    JNE V4
    
    V4:
    CMP BL, 85
    JE VOWEL
    JNE V5
    
    V5:
    CMP BL, 97
    JE VOWEL
    JNE V6
    
    V6:
    CMP BL, 101
    JE VOWEL
    JNE V7
    
    V7:
    CMP BL, 105
    JE VOWEL
    JNE V8
    
    V8:
    CMP BL, 111
    JE VOWEL
    JNE V9
    
    V9:
    CMP BL, 117
    JE VOWEL
    JNE CONSONANT
    
    VOWEL:
    PRINTN ""
    PRINTN "VOWEL"
    JMP EXIT
    
    CONSONANT:
    CMP BL, 91
    JGE INS
    JNE INS2
    
    INS:
    CMP BL, 96
    JLE EXIT
    
    INS2:
    PRINTN ""
    PRINTN "CONSONANT"
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    