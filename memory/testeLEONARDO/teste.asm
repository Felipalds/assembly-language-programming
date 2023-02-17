section .data
	var1: dw 2
	var2: dw 0
	var3: dd 1
	var4: dq 0x01020304

section .text

global _start

_start:

	mov R8, [var4]
	_veja:

	mov RAX, 0x3c
	mov RDI, 0x00
	syscall


