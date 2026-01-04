	.file	"recursive.c"
	.intel_syntax noprefix
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables
	.text
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# n, n
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/recursive/recursive.c:2:     if (n <= 1) return 1;
	cmp	DWORD PTR -4[rbp], 1	# n,
	jg	.L2	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/recursive/recursive.c:2:     if (n <= 1) return 1;
	mov	eax, 1	# _3,
	jmp	.L3	#
.L2:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/recursive/recursive.c:3:     return n * factorial(n - 1);
	mov	eax, DWORD PTR -4[rbp]	# tmp86, n
	sub	eax, 1	# _1,
	mov	edi, eax	#, _1
	call	factorial	#
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/recursive/recursive.c:3:     return n * factorial(n - 1);
	imul	eax, DWORD PTR -4[rbp]	# _3, n
.L3:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/recursive/recursive.c:4: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/recursive/recursive.c:7:     return factorial(5);
	mov	edi, 5	#,
	call	factorial	#
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/recursive/recursive.c:8: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
