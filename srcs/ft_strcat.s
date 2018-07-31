section .text
	global _ft_strcat

extern _ft_strlen

_ft_strcat:
	mov r10, rdi
	call _ft_strlen

	mov al, 0
	mov rcx, 5
	cld
	repne movsb
	mov rax, r10
	rep 
