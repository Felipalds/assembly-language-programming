extern printf

section .data
    strCtrl : db "Char = %c", 10, "hInt = %hu", 10, "fInt = %u", 10, "lInt = %lld", 10, "float = %f", 10, "double = %lf", 10, "sting = %s", 10, 0

    halfInt : dw 42000
    fullInt : dd 420000000
    longInt : dq 4200000000000000000
    fpSingle: dd 3.1415
    fpDouble: dq 3.1415
    stringS : db "Quarenta e dois", 10, 0
    charC   : db "A"

section .text
global main
main:

    push RBP
    mov RBP, RSP
    
    mov RAX, 2
    movss XMM0, [fpSingle]
    movsd XMM1, [fpDouble]
    cvtss2sd XMM0, XMM0
    mov RDI, strCtrl
    mov RSI, [charC]
    mov DX, [halfInt]
    mov ECX, [fullInt]
    mov R8, [longInt]
    mov R9, stringS





    call printf

end:
    mov RSP, RBP
    pop RBP
    mov RAX, 60
    mov RDI, 0
    syscall

