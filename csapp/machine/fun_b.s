	.file	"fun_b.c"
	.text
	.globl	fun_b
	.type	fun_b, @function
fun_b:
.LFB0:
	.cfi_startproc
	movl	$64, %edx
	movl	$0, %eax
.L2:
	addq	%rax, %rax
	movq	%rdi, %rcx
	andl	$1, %ecx
	orq	%rcx, %rax
	shrq	%rdi
	subq	$1, %rdx
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	fun_b, .-fun_b
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
