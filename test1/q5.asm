section .data
	intV: dd 4, 8, 15, 16, 23, 42
	intS: dd 6
	key: dd 23

section .bss
	pos: resd 1

section .text
	global _start

_start:
	xor eax, eax
	mov ebx, [intS]
	dec ebx
	xor ecx, ecx
	mov r8d, [key]

	entradaWhile:
		mov ecx, eax
		add ecx, ebx
		shr ecx, 1

		cmp eax, ebx
		jg saidaWhileNotOK
		
		cmp [intV + rcx * 4], r8d
		jl jumpl
		jg jumpg
		jmp saidaWhileOK

	jumpl:
		inc ecx
		mov eax, ecx
		jmp entradaWhile

	jumpg:
		dec ecx
		mov ebx, ecx
		jmp entradaWhile
	
	saidaWhileOK:
		mov [pos], ecx
		jmp _fim

	saidaWhileNotOK:
		mov dword[pos], -1
	
_fim:
	mov rax, 60
	mov rdi, 0
