	.file	"switch_statement.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:2:     int x = 2;
	mov	DWORD PTR -8[rbp], 2	# x,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:5:     switch(x) {
	cmp	DWORD PTR -8[rbp], 3	# x,
	je	.L2	#,
	cmp	DWORD PTR -8[rbp], 3	# x,
	jg	.L3	#,
	cmp	DWORD PTR -8[rbp], 1	# x,
	je	.L4	#,
	cmp	DWORD PTR -8[rbp], 2	# x,
	je	.L5	#,
	jmp	.L3	#
.L4:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:7:             result = 10;
	mov	DWORD PTR -4[rbp], 10	# result,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:8:             break;
	jmp	.L6	#
.L5:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:10:             result = 20;
	mov	DWORD PTR -4[rbp], 20	# result,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:11:             break;
	jmp	.L6	#
.L2:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:13:             result = 30;
	mov	DWORD PTR -4[rbp], 30	# result,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:14:             break;
	jmp	.L6	#
.L3:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:16:             result = 0;
	mov	DWORD PTR -4[rbp], 0	# result,
.L6:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:19:     return result;
	mov	eax, DWORD PTR -4[rbp]	# _7, result
# /home/jrogers/Documents/Programs/github/asm_learning/examples/06_control_flow/switch_statement/switch_statement.c:20: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
