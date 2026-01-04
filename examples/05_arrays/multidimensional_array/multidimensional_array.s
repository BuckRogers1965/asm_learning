	.file	"multidimensional_array.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/multidimensional_array/multidimensional_array.c:2:     int matrix[2][3] = {
	mov	DWORD PTR -32[rbp], 1	# matrix[0][0],
	mov	DWORD PTR -28[rbp], 2	# matrix[0][1],
	mov	DWORD PTR -24[rbp], 3	# matrix[0][2],
	mov	DWORD PTR -20[rbp], 4	# matrix[1][0],
	mov	DWORD PTR -16[rbp], 5	# matrix[1][1],
	mov	DWORD PTR -12[rbp], 6	# matrix[1][2],
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/multidimensional_array/multidimensional_array.c:6:     int sum = matrix[0][1] + matrix[1][2];
	mov	edx, DWORD PTR -28[rbp]	# _1, matrix[0][1]
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/multidimensional_array/multidimensional_array.c:6:     int sum = matrix[0][1] + matrix[1][2];
	mov	eax, DWORD PTR -12[rbp]	# _2, matrix[1][2]
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/multidimensional_array/multidimensional_array.c:6:     int sum = matrix[0][1] + matrix[1][2];
	add	eax, edx	# tmp86, _1
	mov	DWORD PTR -4[rbp], eax	# sum, tmp86
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/multidimensional_array/multidimensional_array.c:7:     return sum;
	mov	eax, DWORD PTR -4[rbp]	# _11, sum
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/multidimensional_array/multidimensional_array.c:8: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
