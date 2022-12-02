;nasm -f elf64 a05at01.asm && ld a05at01.o -o a05at01.x
; Maiusculas e Minusculas

section .data
    maiuscula: db 'a'
    minuscula: db 'B'
    adder: db 32

section .bss
    lowercase: resb 1 
    uppercase: resb 1

section .text
    global _start

_start:
    mov EAX, [maiuscula]
    mov EBX, [minuscula]


addd:
    add RAX, [adder]
    sub RBX, [adder]

fim:






