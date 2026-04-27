; a program to add 3 numbers using memory variables
[org 0x0100]

	mov ax, [num1]		; load first number in ax register
	mov bx, [num2]      ; move second number in bx register
	add ax, bx          ; add bx into ax (i.e ax = 15)
	mov bx, [num3]		; move num3(15) into bx
	add ax, bx          ; add num3 from bx into ax (15+15=30)
	mov [num4], ax 		; moving from register to memory (i.e RAM)
	mov ax, 0x4c00		; exit from program
	int 0x21

; these are labels or variables
num1: dw  5
num2: dw  10
num3: dw  15
num4: dw  0

; jnz = Jump if Not 0
