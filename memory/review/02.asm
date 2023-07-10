segment .data
    SYS_WRITE equ 1
    SYS_EXIT equ 60
    STD_OUT equ 1
    RET_EXIT equ 0


section .data
    dimensoes: dw 50, 65, -75 ;largura altura profundidade

section .bss
    volume: resq 1

section .text
global _start


_start: 
    mov R8w, [dimensoes] ;R8w means the part of R8 register that have only 2 bytes
    ;Doesnt work to pass to entire register because of the little endian form
    mov R9w, [dimensoes + 2] ;here we should add 2 to get the second position, because we need to walk 2 bytes
    mov R10w, [dimensoes + 4]



_end:
    mov RAX, SYS_EXIT
    mov RDI, RET_EXIT
    syscall
