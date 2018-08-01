section .text
	global _ft_cat

extern _read
extern _ft_puts
extern _puts

_ft_cat:
	push rbp
	mov rbp, rsp
	sub rsp, 528
	mov qword [rbp - 8], rdi

_ft_read:
	mov rdi, qword [rbp - 8]
	lea rsi, [rbp - 528] 
	mov rdx, 516
	call _read
	mov byte[rbp - 528 + rax], 0
	cmp rax, 0
	je _ft_ret
	
_ft_write:
	lea rdi, [rbp - 528]
	call _ft_puts
	jmp _ft_read

_ft_ret:
	leave
	ret

