	.file	"while_loop.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:2:     int count = 0;
	mov	DWORD PTR -4[rbp], 0	# count,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:3:     int i = 0;
	mov	DWORD PTR -8[rbp], 0	# i,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:5:     while (i < 10) {
	jmp	.L2	#
.L3:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:6:         count += i;
	mov	eax, DWORD PTR -8[rbp]	# tmp84, i
	add	DWORD PTR -4[rbp], eax	# count, tmp84
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:7:         i++;
	add	DWORD PTR -8[rbp], 1	# i,
.L2:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:5:     while (i < 10) {
	cmp	DWORD PTR -8[rbp], 9	# i,
	jle	.L3	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:10:     return count;
	mov	eax, DWORD PTR -4[rbp]	# _5, count
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/while_loop/while_loop.c:11: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
