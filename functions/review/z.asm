section .data
    num1: dd 13.0
    num2: dd 29.0

section .bss
    resp: resq 1


section .text
global main

main:

    push RBP
    mov RBP, RSP

    movss xmm0, [num1]
    movss xmm1, [num2]
    addss xmm0, xmm1
    movss [resp], xmm0

    see:


    mov RSP, RBP
    pop RBP



end:
    mov RAX, 60
    mov RDI, 0
    syscall
