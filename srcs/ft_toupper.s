section .text
	global _ft_toupper

_ft_toupper:
	cmp rdi, 'a'		; compare passed char (rdi) to 'a'
	jl done				; jump to done if less
	cmp rdi, 'z'
	jg done				; jump to done if greater
	sub rdi, 32			; sub 32 to a passed char

done:
	mov rax, rdi		; move final char (rdi) to return register (rax)
	ret
