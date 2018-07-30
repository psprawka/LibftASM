section .text
    global _ft_isalnum

extern _ft_isdigit
extern _ft_isalpha

_ft_isalnum:
    call _ft_isdigit
    cmp rax, 1
    je ret_true
    call _ft_isalpha
    cmp rax, 1
    je ret_true
    
    mov rax, 0
    ret
ret_true:
    mov rax, 1
    ret 
