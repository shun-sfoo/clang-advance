	.file	"shift_left4_rightn.c"
	.text
	.globl	shift_left4_rightn
	.type	shift_left4_rightn, @function
shift_left4_rightn:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	salq	$4, %rax
	movl	%esi, %ecx
	sarq	%cl, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	shift_left4_rightn, .-shift_left4_rightn
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
