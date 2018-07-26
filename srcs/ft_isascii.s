section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl ret_false		; jump if less
	cmp rdi, 127
	jg ret_false		; jump if greater

ret_true:
	mov rax, 1
	ret

ret_false:
	mov rax, 0
	ret
