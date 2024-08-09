INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    PRINTN "                RESTURANT                "
    PRINTN "Product Name: "
    PRINTN "       1. Soup"
    PRINTN "       2. Noodles"
    PRINTN "       3. Kabab"
    PRINTN "Press 1, 2 or 3"
    
    MOV AH, 01
    INT 21H
    MOV BL, AL
    
    CMP BL, 49
    JE CONSOLE2 
    JNE I1
    CONSOLE2:
    PRINTN ""
    PRINTN "                SOUP                "
    PRINTN "Select from menu: "
    PRINTN "        1. Thai Soup"
    PRINTN "        2. Corn Soup"
    PRINTN "        3. Vegetable Soup"
    PRINTN "Press 1, 2 or 3" 
    JMP INPUT
    
    I1:
    CMP BL, 50
    JE CONSOLE2
    JNE I2
    
    I2:
    CMP BL, 51
    JE CONSOLE2
    JNE I3
    
    I3: 
    PRINTN ""
    PRINTN "Sorry!!! Product is not available"
    JMP EXIT
    
    INPUT:
    MOV AH, 01
    INT 21H
    MOV BH, AL
    
    CMP BH, 51
    JLE CONSOLE3
    JNE EXIT
    
    
    CONSOLE3:
    CMP BH, 48
    JE EXIT
    JNE ORDER
    
    ORDER:
    PRINTN ""
    PRINTN "Thank you for your order!!"
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN