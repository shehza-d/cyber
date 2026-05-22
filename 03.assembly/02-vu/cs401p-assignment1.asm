; QUESTION
;  Write an assembly language program to perform the following tasks:
;     a. Store the numeric part (9 digits) of your VUID in memory.
;     b. multiply the first four digits and save the result in memory. 
;     c. multiply the last four digits and store the value in the dx register.
;     d. Compute the factorial of the fifth digit in the bx register.
;     e. Add the results from steps (b), (c), and (d), and place the final value in the dx register.


[org 0x0100]

; task A
    mov si, digits          

    mov al, [si]            
    mov bl, [si+1]          
    mul bl                  

    mov bl, [si+2]          
    mul bl                  

    mov bl, [si+3]          
    mul bl                  

    mov [result_b], ax      

; task C
    mov al, [si+5]          
    mov bl, [si+6]          
    mul bl                  

    mov bl, [si+7]          
    mul bl                  

    mov bl, [si+8]          
    mul bl                  

    mov dx, ax             

; tsk D
    mov cl, [si+4]        
    mov bx, 1             

FACT_LOOP:
    cmp cl, 0             
    je  FACT_DONE
    mov ax, bx           
    mul cl                
    mov bx, ax           
    dec cl               
    jmp FACT_LOOP

FACT_DONE:
    ; bx = 120

    mov ax, [result_b]    
    ADD ax, dx            
    ADD ax, bx           
    mov dx, ax            
    
mov  ax, 0x4c00
int  0x21

result_b DW  0
digits: dw 2,4,0,2,0,0,3,1,1