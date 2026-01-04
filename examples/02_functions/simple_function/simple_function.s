	.file	"simple_function.c"
	.intel_syntax noprefix
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables
	.text
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# a, a
	mov	DWORD PTR -8[rbp], esi	# b, b
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/simple_function/simple_function.c:2:     return a + b;
	mov	edx, DWORD PTR -4[rbp]	# tmp84, a
	mov	eax, DWORD PTR -8[rbp]	# tmp85, b
	add	eax, edx	# _3, tmp84
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/simple_function/simple_function.c:3: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	add, .-add
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/simple_function/simple_function.c:6:     int result = add(5, 3);
	mov	esi, 3	#,
	mov	edi, 5	#,
	call	add	#
	mov	DWORD PTR -4[rbp], eax	# result, tmp84
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/simple_function/simple_function.c:7:     return result;
	mov	eax, DWORD PTR -4[rbp]	# _4, result
# /home/jrogers/Documents/Programs/github/asm_learning/examples/02_functions/simple_function/simple_function.c:8: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
