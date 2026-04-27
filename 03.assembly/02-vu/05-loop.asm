; loop

[org 0x0100]

	mov ax, 0		  ; reset the accumulator
	mov bx, num1	  ; set the base
	mov cx, 5		  ; set the iterator count 

	outerloop:
		add ax, [bx]  ; add number pointed by bx to ax
		add bx, 2	  ; increment bx pointer (if this product 0 it doesn't matter)
		sub cx, 1 	  ; decrement (if this product 0, then it will effect jnz)
		jnz outerloop ; condition
	
	mov [result], ax

	mov ax, 0x4c00
	int 0x21


num1: dw 5, 10, 15, 5, 5, 5, 5
result: dw 0