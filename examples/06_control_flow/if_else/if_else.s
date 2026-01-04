	.file	"if_else.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/if_else/if_else.c:2:     int x = 10;
	mov	DWORD PTR -8[rbp], 10	# x,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/if_else/if_else.c:5:     if (x > 5) {
	cmp	DWORD PTR -8[rbp], 5	# x,
	jle	.L2	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/if_else/if_else.c:6:         result = x * 2;
	mov	eax, DWORD PTR -8[rbp]	# tmp87, x
	add	eax, eax	# tmp86
	mov	DWORD PTR -4[rbp], eax	# result, tmp86
	jmp	.L3	#
.L2:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/if_else/if_else.c:8:         result = x + 1;
	mov	eax, DWORD PTR -8[rbp]	# tmp91, x
	add	eax, 1	# tmp90,
	mov	DWORD PTR -4[rbp], eax	# result, tmp90
.L3:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/if_else/if_else.c:11:     return result;
	mov	eax, DWORD PTR -4[rbp]	# _5, result
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/if_else/if_else.c:12: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
