segment .data
	LF: equ 0xA ; LINE FEED

	SYS_READ: equ 0x0 ;syscall de read
	SYS_WRITE: equ 0x01 ; syscall de write
	TERMINAL: equ 0x01 ; entrada padrao

	SYS_EXIT: equ 0x3c ;Syscall de exit
	RET_EXIT: equ 0x0 ;Return 0

section .data
	entrada: db "-0", 0
	tamanho: equ $- entrada
	positivo:db "Lendo Positivo", 10
	posL: equ $- positivo
	negativo: db "Lendo Negativo", 10
	negL: equ $- negativo

section .bss
	name: resb 1
	resultado: resq 1
 	isCastValid: resb 1

section .text

global _start

_start:
	xor r9, r9
	xor r10, r10
	mov r10, tamanho
	dec r10
	dec r10	

	xor r13, r13 ;somador temporario

	xor r14, r14 ;iterador exponencial
	mov r14, 1
	xor r15, r15 ;result final

	mov al, [entrada]
	cmp al, 45
	je _negativo

	_positivo:
		xor rdx, rdx

		mov dl, [entrada + r10]
		sub dl, 48

		imul rdx, r14
		add r15, rdx
		imul r14, 10
		jo _overflow

		dec r10	
		cmp r10, -1
		je _right
		jmp _positivo

	_negativo:
		xor rdx, rdx
		
		mov dl, [entrada + r10]
		sub dl, 48

		imul rdx, r14
		add r15, rdx
		imul r14, 10
		jo _overflow

		dec r10
		cmp r10, 0
		jg _negativo
		neg r15
		jmp _right

_right:
	mov rax, 1
	mov [isCastValid], rax
	jmp _fim

_overflow:
	mov rax, 0
	mov [isCastValid], rax
	jmp _fim	
	

_fim:
	mov RAX, SYS_EXIT
	mov RDI, RET_EXIT
	syscall
