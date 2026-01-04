	.file	"struct_pointer.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/07_structures/struct_pointer/struct_pointer.c:7:     struct Point p = {5, 10};
	mov	DWORD PTR -16[rbp], 5	# p.x,
	mov	DWORD PTR -12[rbp], 10	# p.y,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/07_structures/struct_pointer/struct_pointer.c:8:     struct Point *ptr = &p;
	lea	rax, -16[rbp]	# tmp86,
	mov	QWORD PTR -8[rbp], rax	# ptr, tmp86
# /home/jrogers/Documents/Programs/github/asm_learning/examples/07_structures/struct_pointer/struct_pointer.c:9:     return ptr->x + ptr->y;
	mov	rax, QWORD PTR -8[rbp]	# tmp87, ptr
	mov	edx, DWORD PTR [rax]	# _1, ptr_6->x
# /home/jrogers/Documents/Programs/github/asm_learning/examples/07_structures/struct_pointer/struct_pointer.c:9:     return ptr->x + ptr->y;
	mov	rax, QWORD PTR -8[rbp]	# tmp88, ptr
	mov	eax, DWORD PTR 4[rax]	# _2, ptr_6->y
# /home/jrogers/Documents/Programs/github/asm_learning/examples/07_structures/struct_pointer/struct_pointer.c:9:     return ptr->x + ptr->y;
	add	eax, edx	# _7, _1
# /home/jrogers/Documents/Programs/github/asm_learning/examples/07_structures/struct_pointer/struct_pointer.c:10: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
