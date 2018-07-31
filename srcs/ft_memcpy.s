section .text
	global _ft_memcpy

_ft_memcpy:
	mov r10, rdi
	mov rcx, rdx
	rep movsb
	mov rax, r10
	ret
