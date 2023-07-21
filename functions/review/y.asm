%define flap 20
extern printf
section .data
    strCtrl: db "rotação em %d", 10, 0

section .text
global main

dflap:
    push RBP
    mov RBP, RSP
        mov RAX, RDI
        mul RSI
    mov RSP, RBP
    pop RBP
    ret


main:
    push RBP
    mov RBP, RSP
    mov RDI, flap
    mov RSI, 2
    call dflap

    mov RDI, strCtrl
    mov RSI, RAX
    call printf
    

    mov RSP, RBP
    pop RBP

end:
    mov RAX, 60
    mov RDI, 0
    syscall
