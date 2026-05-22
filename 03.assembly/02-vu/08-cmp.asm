[org 0x0100]

mov ax, 2
cmp ax, 2  ; 0

mov ax, 1
cmp ax, 2  ; -1

mov ax, 3
cmp ax, 2  ; 1

;cmp 0, 2 ; -2
;cmp 2, 0 ; 2
;cmp -1, 2  ; -3
;cmp 2, -1  ; 1

mov ax, 0x4c00
int 0x21