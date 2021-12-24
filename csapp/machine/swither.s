	.file	"swither.c"
	.text
	.globl	switcher
	.type	switcher, @function
switcher:
.LFB0:
	.cfi_startproc
	cmpq	$7, %rdi
	ja	.L6
	leaq	.L4(%rip), %r8
	movslq	(%r8,%rdi,4), %rax
	addq	%r8, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L3-.L4
	.long	.L6-.L4
	.long	.L8-.L4
	.long	.L5-.L4
	.long	.L6-.L4
	.long	.L3-.L4
	.text
.L5:
	movq	%rsi, %rdx
	xorq	$21, %rdx
.L7:
	leaq	112(%rdx), %rsi
.L6:
	movq	%rsi, (%rcx)
	ret
.L3:
	addq	%rdx, %rsi
	salq	$2, %rsi
	jmp	.L6
.L8:
	movq	%rdi, %rsi
	jmp	.L6
	.cfi_endproc
.LFE0:
	.size	switcher, .-switcher
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
