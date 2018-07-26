section .text
    global _ft_bzero

_ft_bzero:
    push rbp						; base pointer, points to the base of currect stack frame
	mov rbp, rsp					; rsp - stack pointer, points to the top of currect stack frame
	mov qword[rbp - 8], rdi			; moves first argument (data to bzero) to the stack; -8 because we want to skip rbp pointer
	mov dword[rbp - 12], rsi		; moves second argument to the stack (so size), dword means 32 bits, qword means 64 bits
	mov dword[rbp - 16], 0			; initializes 32 bits variable with value 0 to go through data

FT_LOOP:
	mov r10, dword[rbp - 16]		; moving ptr to iterator to register 10 (temp register)
	mov r11, dword[rbp - 12]		; moving ptr to size variable to register 11 (temp register)
	cmp	r10, r11
	jge FT_END						; jump to END if greater or equal
	
	mov rax, qword[rbp - 8]			; moving ptr to our data to rax (temp and 1st ret register)
	mov rcx, dword[rbp - 16]		; moving pointer to iterator to rcx (4th intereger arg passed function | I use as a temp)
	mov byte[rax + rcx], 0			; setting 0 to data + iterator pointer 
	add r10, 1						; incrementing iterator
	mov dword[rbp - 16], r10		; assigning new interator's value to iterator position in stack
	jmp FT_LOOP						; jump to LOOP label

FT_END:
	leave
	ret
