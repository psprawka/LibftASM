section .text
	global _ft_strcat

extern _ft_strlen
extern _ft_memcpy

_ft_strcat:
	mov r13, rdi
	call _ft_strlen
	sub rdi, 1
	mov r12, rdi
	mov rdi, rsi
	call _ft_strlen
	mov rdi, r12
	mov rdx, rax
	call _ft_memcpy
	mov rax, r13
	ret 
