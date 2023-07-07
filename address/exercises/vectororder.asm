section .data
	vector: db "1234567890"
	vectorLen: equ $- vector
	test: db "TEST", 10
	testLen: equ $- test

segment .data
	SYS_EXIT: equ 0x3c
	RET_EXIT: equ 0x00
	SYS_WRITE: equ 0x01
	TERMINAL: equ 0x01

section .bss

section .text

global _start

_printVectorNum:
	push RBP
	mov RBP, RSP

	mov RAX, SYS_WRITE
	mov RDI, TERMINAL
	lea RSI, [vector + R13]
	mov RDX, 1
	syscall

	mov RAX, SYS_WRITE
	mov RDI, TERMINAL
	mov RSI, 10
	mov RDX, 1	
	syscall

	mov RSP, RBP
	pop RBP

	ret
	

_start:
	mov R13, 0
	
	_forVectorLen:
		cmp R13, 10
		je _endForVectorLen

		call _printVectorNum

		inc R13
		jmp _forVectorLen
		

	_endForVectorLen:


_end:
	mov RAX, SYS_EXIT
	mov RDI, RET_EXIT
	syscall
