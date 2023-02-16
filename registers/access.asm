section .data
	num: dq 0x7766554433221101
	
section .text
	global _start

_start:
	mov rax, [num]

fim:
	mov rax, 60
	mov rdi, 0
	syscall
