	.file	"sort.c"
	.intel_syntax noprefix
	.text
	.globl	change
	.type	change, @function
change:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi #int *b
	mov	QWORD PTR -32[rbp], rsi #int *a
	mov	rax, rdi #вместо QWORD PTR -24[rbp] 
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, rsi #вместо QWORD PTR -32[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, rdi #вместо QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, rsi #вместо QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR [rax], edx
	nop
	pop	rbp
	ret
	.size	change, .-change
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d "
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	DWORD PTR -108[rbp], 0
	lea	rax, -108[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -108[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L3:
	cmp	rsp, rdx
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
.L4:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L5
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L5:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	eax, DWORD PTR -108[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L6:
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
.L7:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L8:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -104[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -104[rbp], 1
.L9:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -104[rbp], eax
	jl	.L10
	mov	DWORD PTR -100[rbp], 0
	jmp	.L11
.L16:
	mov	eax, DWORD PTR -100[rbp]
	mov	DWORD PTR -96[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	add	eax, 1
	mov	DWORD PTR -92[rbp], eax
	jmp	.L12
.L14:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jle	.L13
	mov	eax, DWORD PTR -92[rbp]
	mov	DWORD PTR -96[rbp], eax
.L13:
	add	DWORD PTR -92[rbp], 1
.L12:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR -100[rbp]
	cmp	eax, DWORD PTR -96[rbp]
	je	.L15
	mov	eax, DWORD PTR -96[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -100[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	change
.L15:
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -100[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -100[rbp], 1
.L11:
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -100[rbp], eax
	jl	.L16
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	mov	rsp, rbx
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
