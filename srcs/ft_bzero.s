section .text
    global _ft_bzero

_ft_bzero:
	mov r10, 0						; moving ptr to iterator to register 10 (temp register)

FT_LOOP:
	cmp	r10, rsi					; cmp iterator and second argument
	jge FT_END						; jump to END if greater or equal
	mov byte[rdi + r10], 0			; setting 0 to data + iterator pointer 
	inc r10							; incrementing iterator
	jmp FT_LOOP						; jump to LOOP label

FT_END:
	ret


