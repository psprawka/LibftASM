section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl ret_false
	cmp rdi, 126
	jg ret_false 
	jmp ret_true

ret_true:
	mov rax, 1
	ret

ret_false:
	mov rax, 0
	ret

	
