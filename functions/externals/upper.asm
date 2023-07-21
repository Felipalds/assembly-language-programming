extern printf
extern scanf

section .data
    scanfCtrl: db "%[a-z]s", 10, 0
    printfCtrl: db "%s", 10, 0
    print2: db "AAAAAA", 10, 0

section .bss
    txt: resb 25
    txt2: resb 25

section .text
global main

toUpper:
    push RBP
    mov RBP, RSP
    mov R10, 0
    in:
        mov bl, [RDI + R10]
        cmp bl, 0
        je out
        sub bl, 32
        mov [txt2 + R10], bl
        inc R10


        jmp in

    out:
    mov RAX, R12


    mov RSP, RBP
    pop RBP
    ret


main:
    push RBP
    mov RBP, RSP

        mov RDI, scanfCtrl
        mov RSI, txt
        call scanf

        mov RDI, txt
        call toUpper

    mov RDI, printfCtrl
    mov RSI, txt2
    call printf




end:
    mov RSP, RBP
    pop RBP

    mov RAX, 60
    mov RDI, 0
    syscall
