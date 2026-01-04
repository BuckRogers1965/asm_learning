	.file	"pointer_basics.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/04_pointers/pointer_basics/pointer_basics.c:2:     int x = 42;
	mov	DWORD PTR -16[rbp], 42	# x,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/04_pointers/pointer_basics/pointer_basics.c:3:     int *ptr = &x;
	lea	rax, -16[rbp]	# tmp84,
	mov	QWORD PTR -8[rbp], rax	# ptr, tmp84
# /home/jrogers/Documents/Programs/github/asm_learning/examples/04_pointers/pointer_basics/pointer_basics.c:4:     int y = *ptr;
	mov	rax, QWORD PTR -8[rbp]	# tmp85, ptr
	mov	eax, DWORD PTR [rax]	# tmp86, *ptr_3
	mov	DWORD PTR -12[rbp], eax	# y, tmp86
# /home/jrogers/Documents/Programs/github/asm_learning/examples/04_pointers/pointer_basics/pointer_basics.c:5:     return y;
	mov	eax, DWORD PTR -12[rbp]	# _5, y
# /home/jrogers/Documents/Programs/github/asm_learning/examples/04_pointers/pointer_basics/pointer_basics.c:6: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
