global _start

section .data
	message: db "Hello, world!", 10
section .text
_start:


	 

	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, 12121234
	syscall

	mov rax, 0x3c
	mov rdi, 0x00
	syscall
