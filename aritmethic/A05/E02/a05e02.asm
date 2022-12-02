; Aula 05 - Aritmética e Lógica
; arquivo: a05e02.asm
; objetivo: Carry e Overflow
; nasm -f elf64 a05e02.asm ; ld a05e02.o -o a05e02.x

section .data
    zoz: db 42

section .text
    global _start

_start:
    mov ax, 0x7fff ; 32767 ;int
    mov bx, 0xffff ; 65535 ;uint

overflow:
    add ax, 1 ; -32768     ;int
    ; IF = instruction fetch
    ; SF = sign flag
    ; AF = auxiliar flag, bit de carry do 4º p/ 5º bit, compacted decimal, contábil
    ; PF = paired flag, bit de paridade da palavra resultante
    ; ZF = zero
    ; CF = carry flag (entra na conta do PF)

carry:
    add bx, 1 ; 0 e carry 1 no 17º bit

incremento:
    inc byte [zoz]

fim:
    mov rax, 60
    mov rdi, 0
    syscall

    ; AND e OR são para inverter bits em uma palavra, usando uma mask
    ; XOR p/ zerar um registrador/memória