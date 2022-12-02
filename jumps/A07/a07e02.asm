; Aula 07 - Controle de Fluxo de Execucao
; arquivo: a07e02.asm
; objetivo: laco de repeticao finito
; nasm -f elf64 a07e02.asm ; ld a07e02.o -o a07e02.x

section .data
    ; usado para converter índice r8 em caractere
    passou : db 0, 10 ; chr(r8) + "\n"
    passod : db 0, 10
    passoc : db 0, 10

section .text
    global _start

_start:

    mov r14, 9

repetec:

    mov [passoc], r14b
    add byte [passoc], 0x30
    mov r13, 9

    repeted:

        mov [passod], r13b
        add byte [passod], 0x30
        mov r12, 9

        repeteu:

            mov rax, 1
            mov rdi, 1
            lea rsi, [passoc]
            mov rdx, 1
            syscall

            mov rax, 1
            mov rdi, 1
            lea rsi, [passod]
            mov rdx, 1
            syscall

            mov [passou], r12b
            add byte [passou], 0x30

            ; chamada WRITE
            mov rax, 1
            mov rdi, 1
            lea rsi, [passou]
            mov rdx, 2
            syscall

            dec r12
            jns repeteu

        dec r13
        jns repeted

    dec r14
    jns repetec
fim:
    mov rax, 60
    mov rdi, 0
    syscall