section .text
	global _ft_strcat

extern _ft_strlen
extern _ft_memcpy
extern _ft_puts

_ft_strcat:
	mov r10, rdi
	call _ft_strlen
	mov r11, rdi
	mov rdi, rsi
	;mov r11, rdi
	;call _ft_puts
	;call _ft_strlen
	;call _ft_puts
	mov rdi, r11
	mov rdx, rax
	mov rsi, rdi
	mov rdi, r11
	call _ft_memcpy
	mov rax, r10
	rep 
