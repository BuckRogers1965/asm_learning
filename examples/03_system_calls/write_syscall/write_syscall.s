	.file	"write_syscall.c"
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
	sub	rsp, 32	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/03_system_calls/write_syscall/write_syscall.c:4:     const char msg[] = "Hello from syscall\n";
	movabs	rax, 8243311830880773448	# tmp87,
	movabs	rdx, 7017579609833106799	#,
	mov	QWORD PTR -32[rbp], rax	# msg, tmp87
	mov	QWORD PTR -24[rbp], rdx	# msg,
	mov	DWORD PTR -16[rbp], 683116	# msg,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/03_system_calls/write_syscall/write_syscall.c:5:     write(1, msg, sizeof(msg) - 1);
	lea	rax, -32[rbp]	# tmp84,
	mov	edx, 19	#,
	mov	rsi, rax	#, tmp84
	mov	edi, 1	#,
	call	write@PLT	#
# /home/jrogers/Documents/Programs/github/asm_learning/examples/03_system_calls/write_syscall/write_syscall.c:6:     return 0;
	mov	eax, 0	# _4,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/03_system_calls/write_syscall/write_syscall.c:7: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
