segment .data

	TERMINAL: equ 0x01

	SYS_WRITE: equ 0x01
	SYS_READ: equ 0x00

	SYS_EXIT: equ 0x3c
	RET_EXIT: equ 0x00

section .data
	message: db "ESCREVA UM NÚMERO: ", 10
	messageL: equ $- message

section .bss
	num1: resb 1
	num2: resb 1
	sum: resb 5


section .text

global _start

_start:

	mov R10, 0
	_showMessage:
		mov RAX, SYS_WRITE
		mov RDI, TERMINAL
		mov RSI, message
		mov RDX, messageL
		syscall

		cmp R10, 1
		je _readSecond

	_readNumber:
		mov RAX, SYS_READ
		mov RDI, TERMINAL
		mov RSI, num1
		mov RDX, 2
		syscall

		inc R10
		jmp _showMessage

	_readSecond:
		mov RAX, SYS_READ
		mov RDI, TERMINAL
		mov RSI, num2
		mov RDX, 2
		syscall

	_sumBoth:
		mov R11, [num1]
		mov R12, [num2]
		_verify1:
		sub R11, 48
		sub R12, 48
		_verify2:

		add R11, R12
		add R11, 48
		mov [sum], R11
		mov R15, 10
		mov [sum+1], R15
		_verify3:
	
	_showFinal:
		mov RAX, SYS_WRITE
		mov RDI, TERMINAL
		mov RSI, sum
		mov RDX, 2
		syscall

_fim:
	mov RAX, SYS_EXIT
	mov RDI, RET_EXIT
	syscall


