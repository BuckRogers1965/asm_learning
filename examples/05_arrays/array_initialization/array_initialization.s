	.file	"array_initialization.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:2:     int arr[5] = {10, 20, 30, 40, 50};
	mov	DWORD PTR -32[rbp], 10	# arr[0],
	mov	DWORD PTR -28[rbp], 20	# arr[1],
	mov	DWORD PTR -24[rbp], 30	# arr[2],
	mov	DWORD PTR -20[rbp], 40	# arr[3],
	mov	DWORD PTR -16[rbp], 50	# arr[4],
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:3:     int sum = 0;
	mov	DWORD PTR -4[rbp], 0	# sum,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:4:     for (int i = 0; i < 5; i++) {
	mov	DWORD PTR -8[rbp], 0	# i,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:4:     for (int i = 0; i < 5; i++) {
	jmp	.L2	#
.L3:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:5:         sum += arr[i];
	mov	eax, DWORD PTR -8[rbp]	# tmp86, i
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]	# _1, arr[i_3]
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:5:         sum += arr[i];
	add	DWORD PTR -4[rbp], eax	# sum, _1
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:4:     for (int i = 0; i < 5; i++) {
	add	DWORD PTR -8[rbp], 1	# i,
.L2:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:4:     for (int i = 0; i < 5; i++) {
	cmp	DWORD PTR -8[rbp], 4	# i,
	jle	.L3	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:7:     return sum;
	mov	eax, DWORD PTR -4[rbp]	# _12, sum
# /home/jrogers/Documents/Programs/github/asm_learning/examples/05_arrays/array_initialization/array_initialization.c:8: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
