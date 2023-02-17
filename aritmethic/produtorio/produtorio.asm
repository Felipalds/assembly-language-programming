section .data
	vet: db 1, 2, 3, 5, 8, 10
	vetL: db 6

section .bss
	prod: resw 1
	c: resb 1

section .text


global _start


_start:
	mov R9, 1
	mov R10, 0
	mov R11, vet

	_produtorio:
		mul R9, [R11 + R10]
		inc R10
		cmp R10, 5
		jne _produtorio

	add R9, 48

	_print:
		mov RAX, 0x01
		mov RDI, 0x01
		mov RSI, R9
		mov RDX, 2
		syscall
	
_fim:
	mov RAX, 0x3c
	mov RDI, 0x0
	syscall
	
