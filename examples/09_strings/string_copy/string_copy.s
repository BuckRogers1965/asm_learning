	.file	"string_copy.c"
	.intel_syntax noprefix
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables
	.text
	.globl	string_copy
	.type	string_copy, @function
string_copy:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# dest, dest
	mov	QWORD PTR -32[rbp], rsi	# src, src
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:2:     int i = 0;
	mov	DWORD PTR -4[rbp], 0	# i,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:3:     while (src[i] != '\0') {
	jmp	.L2	#
.L3:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:4:         dest[i] = src[i];
	mov	eax, DWORD PTR -4[rbp]	# tmp92, i
	movsx	rdx, eax	# _1, tmp92
	mov	rax, QWORD PTR -32[rbp]	# tmp93, src
	add	rax, rdx	# _2, _1
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:4:         dest[i] = src[i];
	mov	edx, DWORD PTR -4[rbp]	# tmp94, i
	movsx	rcx, edx	# _3, tmp94
	mov	rdx, QWORD PTR -24[rbp]	# tmp95, dest
	add	rdx, rcx	# _4, _3
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:4:         dest[i] = src[i];
	movzx	eax, BYTE PTR [rax]	# _5, *_2
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:4:         dest[i] = src[i];
	mov	BYTE PTR [rdx], al	# *_4, _5
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:5:         i++;
	add	DWORD PTR -4[rbp], 1	# i,
.L2:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:3:     while (src[i] != '\0') {
	mov	eax, DWORD PTR -4[rbp]	# tmp96, i
	movsx	rdx, eax	# _6, tmp96
	mov	rax, QWORD PTR -32[rbp]	# tmp97, src
	add	rax, rdx	# _7, _6
	movzx	eax, BYTE PTR [rax]	# _8, *_7
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:3:     while (src[i] != '\0') {
	test	al, al	# _8
	jne	.L3	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:7:     dest[i] = '\0';
	mov	eax, DWORD PTR -4[rbp]	# tmp98, i
	movsx	rdx, eax	# _9, tmp98
	mov	rax, QWORD PTR -24[rbp]	# tmp99, dest
	add	rax, rdx	# _10, _9
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:7:     dest[i] = '\0';
	mov	BYTE PTR [rax], 0	# *_10,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:8: }
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	string_copy, .-string_copy
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:11:     char src[] = "Test";
	mov	DWORD PTR -5[rbp], 1953719636	# src,
	mov	BYTE PTR -1[rbp], 0	# src,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:13:     string_copy(dest, src);
	lea	rdx, -5[rbp]	# tmp85,
	lea	rax, -15[rbp]	# tmp86,
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	string_copy	#
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:14:     return dest[0];
	movzx	eax, BYTE PTR -15[rbp]	# _1, dest[0]
	movsx	eax, al	# _5, _1
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_copy/string_copy.c:15: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
