	.file	"bitwise_and_or.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:2:     int a = 0b1010;  // 10
	mov	DWORD PTR -4[rbp], 10	# a,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:3:     int b = 0b1100;  // 12
	mov	DWORD PTR -8[rbp], 12	# b,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:5:     int and_result = a & b;  // 0b1000 = 8
	mov	eax, DWORD PTR -4[rbp]	# tmp88, a
	and	eax, DWORD PTR -8[rbp]	# tmp87, b
	mov	DWORD PTR -12[rbp], eax	# and_result, tmp87
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:6:     int or_result = a | b;   // 0b1110 = 14
	mov	eax, DWORD PTR -4[rbp]	# tmp92, a
	or	eax, DWORD PTR -8[rbp]	# tmp91, b
	mov	DWORD PTR -16[rbp], eax	# or_result, tmp91
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:7:     int xor_result = a ^ b;  // 0b0110 = 6
	mov	eax, DWORD PTR -4[rbp]	# tmp96, a
	xor	eax, DWORD PTR -8[rbp]	# tmp95, b
	mov	DWORD PTR -20[rbp], eax	# xor_result, tmp95
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:9:     return and_result + or_result + xor_result;
	mov	edx, DWORD PTR -12[rbp]	# tmp97, and_result
	mov	eax, DWORD PTR -16[rbp]	# tmp98, or_result
	add	edx, eax	# _1, tmp98
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:9:     return and_result + or_result + xor_result;
	mov	eax, DWORD PTR -20[rbp]	# tmp99, xor_result
	add	eax, edx	# _7, _1
# /home/jrogers/Documents/Programs/github/asm_learning/examples/08_bitwise/bitwise_and_or/bitwise_and_or.c:10: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
