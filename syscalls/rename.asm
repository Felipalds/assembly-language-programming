segment .data

	TERMINAL: equ 0x00
	SYS_RENAME: equ 0x52
	SYS_WRITE: equ 0x01
	SYS_EXIT: equ 0x3c
	RET_EXIT: equ 0x00

section .data
	filename1: db './zoz.a'
	filename2: db './luiz.a'
	error: db "Erro!", 10
	errorL: equ $- error
	success: db "Success!", 10
	successL: equ $- success

section .text

global _start

_start:

	mov RAX, SYS_RENAME
	mov RDI, [filename1]
	mov RSI, [filename2]
	syscall

	cmp RAX, 0
	je _success

_error:
	mov RAX, SYS_WRITE
	mov RDI, TERMINAL
	mov RSI, error
	mov RDX, errorL
	syscall

	jmp _end

_success:
	mov RAX, SYS_WRITE
	mov RDI, TERMINAL
	mov RSI, success
	mov RDX, successL
	syscall
	

_end:
	mov RAX, SYS_EXIT
	mov RDI, RET_EXIT
	syscall
