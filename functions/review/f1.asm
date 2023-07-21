section .data
    strCtrl: db "%lf times that %d Leo deu o cu", 10, 0
    numberSS: dd 3.14159

    strCtrl2: db "%lf %c %d", 10, 0
    numberSS2: dd 9.11
    
section .bss

extern printf

section .text
global main

main:

    push RBP
    mov RBP, RSP

    mov RAX, 1
    mov RDI, strCtrl
    movss XMM0, [numberSS]
    cvtss2sd XMM0, XMM0
    mov RSI, 101
    call printf

    mov RAX, 1
    mov RDI, strCtrl2
    movss XMM0, [numberSS2]
    cvtss2sd XMM0, XMM0
    mov RSI, 'c'
    mov RDX, 10
    call printf


    mov RSP, RBP
    pop RBP



exit:

    mov RAX, 60
    mov RDI, 0
    syscall
