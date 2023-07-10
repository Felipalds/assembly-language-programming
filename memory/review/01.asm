segment .data
    SYS_WRITE equ 1
    STD_OUT equ 1

    RET_EXIT equ 0
    SYS_EXIT equ 60

section .data
    dado: db 91d, 10



section .text
global _start

_start:
    mov RAX, SYS_WRITE
    mov RDI, STD_OUT
    mov RSI, dado
    mov RDX, 2
    syscall


_end:
    mov RAX, SYS_EXIT
    mov RDI, RET_EXIT
    syscall
