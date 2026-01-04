	.file	"bit_shifts.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bit_shifts/bit_shifts.c:2:     int x = 8;
	mov	DWORD PTR -4[rbp], 8	# x,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bit_shifts/bit_shifts.c:4:     int left = x << 2;   // 32 (multiply by 4)
	mov	eax, DWORD PTR -4[rbp]	# tmp87, x
	sal	eax, 2	# tmp86,
	mov	DWORD PTR -8[rbp], eax	# left, tmp86
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bit_shifts/bit_shifts.c:5:     int right = x >> 1;  // 4 (divide by 2)
	mov	eax, DWORD PTR -4[rbp]	# tmp91, x
	sar	eax	# tmp90
	mov	DWORD PTR -12[rbp], eax	# right, tmp90
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bit_shifts/bit_shifts.c:7:     return left + right;
	mov	edx, DWORD PTR -8[rbp]	# tmp92, left
	mov	eax, DWORD PTR -12[rbp]	# tmp93, right
	add	eax, edx	# _4, tmp92
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bit_shifts/bit_shifts.c:8: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
