	.file	"string_length.c"
	.intel_syntax noprefix
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables
	.text
	.globl	string_length
	.type	string_length, @function
string_length:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# str, str
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:2:     int len = 0;
	mov	DWORD PTR -4[rbp], 0	# len,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:3:     while (str[len] != '\0') {
	jmp	.L2	#
.L3:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:4:         len++;
	add	DWORD PTR -4[rbp], 1	# len,
.L2:
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:3:     while (str[len] != '\0') {
	mov	eax, DWORD PTR -4[rbp]	# tmp87, len
	movsx	rdx, eax	# _1, tmp87
	mov	rax, QWORD PTR -24[rbp]	# tmp88, str
	add	rax, rdx	# _2, _1
	movzx	eax, BYTE PTR [rax]	# _3, *_2
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:3:     while (str[len] != '\0') {
	test	al, al	# _3
	jne	.L3	#,
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:6:     return len;
	mov	eax, DWORD PTR -4[rbp]	# _8, len
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:7: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	string_length, .-string_length
	.section	.rodata
.LC0:
	.string	"Hello"
	.text
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
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:10:     return string_length("Hello");
	lea	rax, .LC0[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	call	string_length	#
# /home/jrogers/Documents/Programs/github/asm_learning/examples/09_strings/string_length/string_length.c:11: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
