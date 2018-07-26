section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 'A'
	jl ret_false		; jump if less
	cmp rdi, 'Z'
	jle ret_true
	cmp rdi, 'a'
	jl ret_false
	cmp rdi, 'z'
	jle ret_true
	jmp ret_false

ret_false:
	mov rax, 0
	ret

ret_true:
	mov rax, 1
	ret
