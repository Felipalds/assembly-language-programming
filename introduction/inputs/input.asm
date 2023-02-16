segment .data
	LF: equ 0xA ; LINE FEED

	SYS_READ: equ 0x0 ;syscall de read
	SYS_WRITE: equ 0x01 ; syscall de write
	TERMINAL: equ 0x01 ; entrada padrao

	SYS_EXIT: equ 0x3c ;Syscall de exit
	RET_EXIT: equ 0x0 ;Return 0

section .data
	msg: db "Entre com seu nome: ", LF
	msgL: equ $- msg

section .bss
	name: resb 1

section .text

global _start

_start:

	; Escreve na tela pedindo o nome
	mov RAX, SYS_WRITE
	mov RDI, TERMINAL
	mov RSI, msg
	mov RDX, msgL
	syscall

	; Input do usuário
	mov RAX, SYS_READ
	mov RDI, TERMINAL
	mov RSI, name
	mov RDX, 10
	syscall

	; escreve nome do usuário na tela
	mov RAX, SYS_WRITE
	mov RDI, TERMINAL
	mov RSI, name
	mov RDX, 10
	syscall
	
	
	mov RAX, SYS_EXIT
	mov RDI, RET_EXIT
	syscall
