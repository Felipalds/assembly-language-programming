section .text
global _start

_start:
  
    mov EAX, 10
    mov EBX, 20
    mov ECX, 30
    mov EDX, -2

a:

    add EBX, EAX ;EBX += EAX
    add EDX, EAX ;EDX += EAX

b:
  
    sub ECX, EAX ;ECX -= EAX
    sub EAX, ECX ;EAX -= ECX

_end:
    mov RAX, 60
    mov RDI, 0
    syscall
