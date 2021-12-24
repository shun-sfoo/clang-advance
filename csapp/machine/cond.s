	.file	"cond.c"
	.text
	.globl	cond
	.type	cond, @function
cond:
.LFB0:
	.cfi_startproc
	movq	(%rsi), %rax
	testq	%rax, %rax
	js	.L1
	cmpq	%rdi, %rax
	jge	.L1
	movq	%rdi, (%rsi)
.L2:
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	cond, .-cond
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
