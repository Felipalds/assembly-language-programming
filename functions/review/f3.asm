extern printf

section .data
    mc1: db 5
    mc2: db 5
    mult: db 0
    strCtrl: db "Número de Multiplicações: %d", 10, 0

section .bss
    p: resb 8


section .text
global main


powerOf3:
    push RBP
    mov RBP, RSP
    
    mov RAX, [RDI]
    mul dword[RDI]
    mul dword[RDI]
    mov [mult], RAX
    mov RSP, RBP
    pop RBP

    ret

isMulPossible:
    push RBP
    mov RBP, RSP
    
    cmp RDI, RSI
    JNE outFunc
    call powerOf3


    outFunc:
    mov RAX, [mult]

    mov RSP, RBP
    pop RBP
    ret


main:

    push RBP
    mov RBP, RSP

    mov RDI, [mc1]
    mov RSI, [mc2]
    call isMulPossible
    
    mov RDI, strCtrl
    mov RSI, RAX
    call printf



end:
    mov RSP, RBP
    pop RBP

    mov RAX, 60
    mov RDI, 0
    syscall
    
