	.file	"loop_while.c"
	.text
	.globl	loop_while
	.type	loop_while, @function
loop_while:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L2
.L3:
	leaq	(%rdi,%rsi), %rdx
	imulq	%rdx, %rax
	addq	$1, %rdi
.L2:
	cmpq	%rsi, %rdi
	jg	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	loop_while, .-loop_while
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
