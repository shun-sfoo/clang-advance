	.file	"fix_set_diag_opt.c"
	.text
	.globl	fix_set_diag_opt
	.type	fix_set_diag_opt, @function
fix_set_diag_opt:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	leaq	1088(%rdi), %rdx
.L2:
	movl	%esi, (%rax)
	addq	$68, %rax
	cmpq	%rdx, %rax
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	fix_set_diag_opt, .-fix_set_diag_opt
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
