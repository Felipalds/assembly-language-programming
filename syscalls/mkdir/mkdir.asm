%define mode 755o

section .data
	pathname: db "zoz_e_leo", 0

section .text

global _start

_start:
	mov RAX, 83d
	mov RDI, pathname
	mov RSI, mode
	syscall

	mov RAX, 0x3c
	mov RDI, 0x0
	syscall
