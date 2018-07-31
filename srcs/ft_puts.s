section .text
	global _ft_puts

extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	mov dword[rbp - 16], 10
	mov rsi, rdi			; move ptr to data to 2nd arg
	call _ft_strlen
	mov rdx, rax			; move len of an argument to third arg
	mov rdi, 1			    ; stdout as 1st arg
	mov rax, 0x2000004      ; write
	syscall
	lea rsi, [rbp - 16]
	mov rdx, 1
	mov rdi, 1
	mov rax, 0x2000004
	syscall
	leave
	ret
