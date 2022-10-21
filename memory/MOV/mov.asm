; nasm -f elf64 mov.asm && ld mov.o -o mov.x


section .data
    ; parte 1
    pt1r8 : db 0x10
    pt1r16 : dw 0x2020
    pt1r32 : dd 0x30303030
    pt1r64 : dq 0x4040404040404040

    ; parte 2
    pt2m8 : db 0x00
    pt2m16 : dw 0x0000
    pt2m32 : dd 0x00000000
    pt2m64 : dq 0x0000000000000000

    ; parte 3 nao contem variaveis

    ; parte 4
    pt4m8 : db 0x00
    pt4m16 : dw 0x0000
    pt4m32 : dd 0x00000000

section .text 
    global _start

_start:

    MOV r8b, [pt1r8]
    MOV r9w, [pt1r16]

fim:
