; a program to add 5, 10, and 15 using indirect addressing
[org 0x100]

    mov bx, num1    ; puts the address of num1 in bx (not the content)
    mov ax, [bx]    ; move 5 into bx
                    ; move into ax the content of the memory location bx
    add bx, 2       ; 
    add ax, [bx]       ; 
    add bx, 2       ; 
    add ax, [bx]       ; 
    add bx, 2       ; 
    mov [bx], ax

    mov ax, 0x4c00
    int 0x21



num1: dw 5, 10, 15, 0