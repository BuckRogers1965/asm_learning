	.file	"inline_function.c"
	.intel_syntax noprefix
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables
	.text
	.type	square, @function
square:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# x, x
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/inline_function/inline_function.c:2:     return x * x;
	mov	eax, DWORD PTR -4[rbp]	# tmp84, x
	imul	eax, eax	# _2, tmp84
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/inline_function/inline_function.c:3: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	square, .-square
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/inline_function/inline_function.c:6:     int a = 5;
	mov	DWORD PTR -4[rbp], 5	# a,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/inline_function/inline_function.c:7:     int b = square(a);
	mov	eax, DWORD PTR -4[rbp]	# tmp84, a
	mov	edi, eax	#, tmp84
	call	square	#
	mov	DWORD PTR -8[rbp], eax	# b, tmp85
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/inline_function/inline_function.c:8:     return b;
	mov	eax, DWORD PTR -8[rbp]	# _5, b
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/inline_function/inline_function.c:9: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
