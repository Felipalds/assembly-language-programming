segment .data
	SYS_EXIT: equ 0x3c
	RET_EXIT: equ 0x00

section .data
	v1: db "Kart_"
	v2: dw "é_"
	v3: db " _ _ _ "

section .text

global _start

_start:
	mov EAX, [v1]
	mov BX, [v1]
	mov CL, [v1]
	mov R8, [v1]
	


_end:
	mov RAX, SYS_EXIT
	mov RDI, RET_EXIT
	syscall
