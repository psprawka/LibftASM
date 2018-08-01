section .text
	global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy

_ft_strdup:
	push rbp
	mov rbp, rsp
	sub rsp, 32

	mov qword [rbp - 8], rdi		;saves ptr to orginal str
	call _ft_strlen
	add rax, 1		
	mov qword [rbp - 16], rax		;saves len for ft_memcpy
	mov rdi, rax					;len for malloc
	call _malloc

	mov qword [rbp - 24], rax		;ptr to a new str
	mov rdi, [rbp - 24]				;ptr from malloc to dest
	mov rsi, [rbp - 8]				;ptr to the inital str
	mov rdx, [rbp - 16]
	call _ft_memcpy

_ft_ret:
	leave
	ret
