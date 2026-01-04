	.file	"volatile_variable.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/volatile_variable/volatile_variable.c:2:     volatile int x = 10;
	mov	DWORD PTR -4[rbp], 10	# x,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/volatile_variable/volatile_variable.c:3:     x = x + 5;
	mov	eax, DWORD PTR -4[rbp]	# x.0_1, x
	add	eax, 5	# _2,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/volatile_variable/volatile_variable.c:3:     x = x + 5;
	mov	DWORD PTR -4[rbp], eax	# x, _2
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/volatile_variable/volatile_variable.c:4:     x = x + 3;
	mov	eax, DWORD PTR -4[rbp]	# x.1_3, x
	add	eax, 3	# _4,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/volatile_variable/volatile_variable.c:4:     x = x + 3;
	mov	DWORD PTR -4[rbp], eax	# x, _4
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/volatile_variable/volatile_variable.c:5:     return x;
	mov	eax, DWORD PTR -4[rbp]	# _9, x
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/volatile_variable/volatile_variable.c:6: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
