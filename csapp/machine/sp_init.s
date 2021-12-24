	.file	"sp_init.c"
	.text
	.globl	sp_init
	.type	sp_init, @function
sp_init:
.LFB0:
	.cfi_startproc
	movl	12(%rdi), %eax
	movl	%eax, 8(%rdi)
	leaq	8(%rdi), %rax
	movq	%rax, (%rdi)
	movq	%rdi, 16(%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	sp_init, .-sp_init
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
