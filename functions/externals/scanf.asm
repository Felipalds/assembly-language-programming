extern printf
extern scanf

section .data
    strScanf: db "%s", 0
    strPrint: db "Olá, %s. Tudo bem?", 10, 0

section .bss
    name: resb 50

section .text
global main
main:
    push RBP
    mov RBP, RSP
        mov RDI, strScanf
        mov RSI, name
        call scanf

        mov RDI, strPrint
        mov RSI, name
        call printf
        
    mov RSP, RBP
    pop RBP
end:
    mov RAX, 60
    mov RDI, 0
    syscall
