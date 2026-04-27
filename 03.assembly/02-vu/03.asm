; from 16 bit calculation to 8 bit 

[org 0x0100]

    mov al, [num1]
    mov bl, [num1 + 1]
    add al, bl
    mov bl, [num1 + 2]
    add al, bl
    mov [result], al
    mov ax, 0x4c00 ; this line is for exit (0x4c00 is 16-bit so this can't move into al or ah only ax!)
    int 0x21

num1: db  5, 10, 15
result: db 0