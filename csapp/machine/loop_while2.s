	.file	"loop_while2.c"
	.text
	.globl	loop_while2
	.type	loop_while2, @function
loop_while2:
.LFB0:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	jle	.L1
	imulq	%rdi, %rax
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	loop_while2, .-loop_while2
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
