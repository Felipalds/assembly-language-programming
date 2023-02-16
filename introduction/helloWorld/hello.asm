section .data
	msg: db "Hello world!", 0xA
	msg2: db "gustavo porteira", 0xA
	lenmsg: equ $- msg

section .text

global _start

_start:

	mov RAX, 0x1
	mov RDI, 0x0
	mov RSI, msg
	mov RDX, lenmsg
	syscall

	;MOV DESTINO, fonte
	mov EAX, 0x1 ; 0 1 2 3 4 5 6 7 8 9 A B C D E F 10 11 12 13 14 15 16 17 18 19 1A 1B 1C 1D 1E 1F 20 
	; estou saindo do programa
	mov EBX, 0x0 ; return 0
	int 0x80 ; sem isso dá segmentation fault
	
	
