	.file	"exit_syscall.c"
	.intel_syntax noprefix
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# /home/jrogers/Documents/Programs/github/asm_learning/examples/03_system_calls/exit_syscall/exit_syscall.c:5:     syscall(SYS_exit, 42);
	mov	esi, 42	#,
	mov	edi, 60	#,
	mov	eax, 0	#,
	call	syscall@PLT	#
# /home/jrogers/Documents/Programs/github/asm_learning/examples/03_system_calls/exit_syscall/exit_syscall.c:6:     return 0;  // Never reached
	mov	eax, 0	# _3,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/03_system_calls/exit_syscall/exit_syscall.c:7: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
