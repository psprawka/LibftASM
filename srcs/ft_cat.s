section .text
	global _ft_cat

extern _read

_ft_cat:
	push rbp
	mov rbp, rsp
	sub rsp, 520

_ft_read:
	mov rsi, [rbp - 512] 
	mov rdx, 512
	call _read
	cmp rax, 0
	je _ft_ret
	
	
	jmp _ft_read

_ft_ret:
	ret

