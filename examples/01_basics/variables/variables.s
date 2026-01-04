	.file	"variables.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/01_basics/variables/variables.c:2:     int a = 10;
	mov	DWORD PTR -4[rbp], 10	# a,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/01_basics/variables/variables.c:3:     int b = 20;
	mov	DWORD PTR -8[rbp], 20	# b,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/01_basics/variables/variables.c:4:     int c = a + b;
	mov	edx, DWORD PTR -4[rbp]	# tmp88, a
	mov	eax, DWORD PTR -8[rbp]	# tmp89, b
	add	eax, edx	# tmp87, tmp88
	mov	DWORD PTR -12[rbp], eax	# c, tmp87
# /home/jrogers/Documents/Programs/github/asm_learning/examples/01_basics/variables/variables.c:5:     return c;
	mov	eax, DWORD PTR -12[rbp]	# _4, c
# /home/jrogers/Documents/Programs/github/asm_learning/examples/01_basics/variables/variables.c:6: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
