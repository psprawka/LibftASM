section .text
	global _ft_isdigit
	
_ft_isdigit:
	cmp rdi, '0'
	jl ret_false		; jump if less
	cmp rdi, '9'
	jg ret_false		; jump if greater

ret_true:
	mov rax, 1
	ret

ret_false:
	mov rax, 0
	ret
