	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	L_.str(%rip), %rdi
	leaq	-40(%rbp), %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-41(%rbp), %r8
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	$0, -32(%rbp)
	movb	$65, -33(%rbp)
	movb	$97, -34(%rbp)
	movq	L_main.string(%rip), %r9
	movq	%r9, -18(%rbp)
	movw	L_main.string+8(%rip), %r10w
	movw	%r10w, -10(%rbp)
	movq	L_main.string2(%rip), %r9
	movq	%r9, -26(%rbp)
	movl	l_main.string3(%rip), %ecx
	movl	%ecx, -40(%rbp)
	movw	l_main.string3+4(%rip), %r10w
	movw	%r10w, -36(%rbp)
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	movl	%eax, %esi
	callq	_memset
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	-64(%rbp), %rsi         ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	leaq	-40(%rbp), %rdi
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_ft_puts
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rdx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	jne	LBB0_2
## BB#1:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.string:                          ## @main.string
	.asciz	"123456789"

	.section	__TEXT,__literal8,8byte_literals
L_main.string2:                         ## @main.string2
	.asciz	"Polcia\000"

	.section	__TEXT,__const
l_main.string3:                         ## @main.string3
	.asciz	"Bobo\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"9. Puts: [%s]\n"


.subsections_via_symbols
