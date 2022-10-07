; Aula 01 - Introdução
; montar: nasm -f elf64 hello.asm 
; linkar: ld hello.o -o hello.x
; sugestão: nasm -f elf64 hello.asm && ld hello.o -o hello.x

section .data
   strOla :  db "Ola", 10
   strOlaL:  equ $ - strOla

section .text
	global _start

_start:
   mov rax, 1
   mov rdi, 1
   mov rsi, strOla
   mov edx, strNomeL
   syscall

   mov rax, 60
   mov rdi, 5
   syscall


; Documentação
; 1) Ao tirar o default start: ld: warning: cannot find entry symbol _start; defaulting to 0000000000401000
; 2) lea sem parênteses = mov com parênteses
;  mov leva o ponteiro. lea leva o conteúdo, sempre com colchetes
; 3) Ao comentar mov edx, não printa nada
; 4) mov com número printa um certo número de caracteres
; 5) sem syscall, não imprimiu
; 6) rdi 5 é o return 0