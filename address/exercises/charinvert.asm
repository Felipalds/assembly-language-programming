section .data
	text: db "abcdefghij", 10, 0
	lenText: equ $- text
	invertedText: db "aaaaaaaaaa", 10, 0
	
extern printf


section .bss

section .text

global main

main:

	push rbp
	mov rbp, rsp

	mov r12, 0
	mov r13, 9
	
	_invert:
	
		cmp r12, 10
		je _end

		mov r14b, [text + r12 * 1]

		mov [invertedText + r13 * 1], r14b
		
		inc r12
		dec r13

		jmp _invert

	



	_end:
		mov rdi, invertedText
		call printf

		mov rsp, rbp
		pop rbp

		mov rax, 60
		mov rdi, 0
		syscall

	



		
