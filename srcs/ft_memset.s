section .text
	global _ft_memset

_ft_memset:
	mov r10, rdi
	mov rax, rsi
	mov rcx, rdx
	rep stosb
	mov rax, r10
	ret
