section .text
	global _ft_tolower

_ft_tolower:
	cmp rdi, 'A'		; compare passed char (rdi) to 'A'
	jl done				; jump to done if less
	cmp rdi, 'Z'
	jg done
	add rdi, 32

done:
	mov rax, rdi
	ret
