; (bubble sort) using nested loop and swapping 2 numbers
[org 0x0100]

; this in unconditional jump (should not be used except in this case)
jmp start

data: dw 6, 4, 5, 2     ; try changing numbers and adjusting code

start:
    mov cx, 4

    outerloop:
        mov bx, 0

        innerloop:
            mov ax, [data + bx]
            cmp ax, [data + bx + 2]
            jbe noswap
                mov dx, [data + bx + 2]
                mov [data + bx], dx
                mov [data + bx + 2], ax


            noswap:
            ; check innerloop termination
            add bx, 2
            cmp bx, 6
            jne innerloop



    ; check outerloop termination
    sub cx, 1
    jnz outerloop  

; exit system call
mov ax, 0x4c00
int 0x21