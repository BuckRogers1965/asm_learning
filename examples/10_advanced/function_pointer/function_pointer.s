	.file	"function_pointer.c"
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:2:     return a + b;
	mov	edx, DWORD PTR -4[rbp]	# tmp84, a
	mov	eax, DWORD PTR -8[rbp]	# tmp85, b
	add	eax, edx	# _3, tmp84
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:3: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.globl	subtract
	.type	subtract, @function
subtract:
.LFB1:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# a, a
	mov	DWORD PTR -8[rbp], esi	# b, b
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:6:     return a - b;
	mov	eax, DWORD PTR -4[rbp]	# tmp84, a
	sub	eax, DWORD PTR -8[rbp]	# _3, b
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:7: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	subtract, .-subtract
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:11:     operation = &add;
	lea	rax, add[rip]	# tmp84,
	mov	QWORD PTR -8[rbp], rax	# operation, tmp84
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:12:     int result = operation(10, 5);
	mov	rax, QWORD PTR -8[rbp]	# tmp85, operation
	mov	esi, 5	#,
	mov	edi, 10	#,
	call	rax	# tmp85
	mov	DWORD PTR -12[rbp], eax	# result, tmp86
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:13:     return result;
	mov	eax, DWORD PTR -12[rbp]	# _5, result
# /home/jrogers/Documents/Programs/github/asm_learning/examples/10_advanced/function_pointer/function_pointer.c:14: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
