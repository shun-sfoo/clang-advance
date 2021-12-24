	.file	"switch_eg_impl.c"
	.text
	.globl	switch_eg_impl
	.type	switch_eg_impl, @function
switch_eg_impl:
.LFB0:
	.cfi_startproc
	subq	$100, %rsi
	cmpq	$6, %rsi
	jbe	.L2
	leaq	jt.0(%rip), %rax
	jmp	*(%rax,%rsi,8)
.L2:
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rdi,%rax,4), %rdi
.L3:
	movq	%rdi, (%rdx)
	ret
.L4:
	addq	$10, %rdi
.L5:
	addq	$11, %rdi
	jmp	.L3
.L6:
	imulq	%rdi, %rdi
	jmp	.L3
.L7:
	movl	$0, %edi
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	switch_eg_impl, .-switch_eg_impl
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	jt.0, @object
	.size	jt.0, 56
jt.0:
	.quad	.L2
	.quad	.L7
	.quad	.L4
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L6
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
