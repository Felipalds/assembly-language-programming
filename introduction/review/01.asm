section .data ;Here goes our consts, acually, it is only an appointment to memory
    msg db "Hello World!", 10
    tam equ $- msg ;it gets from the start of address msg till this command!

section .text ;Here goes our program

global _start ;The entry point is called _start (the init of our program)

_start: ;The label we defined before :)
    mov RAX, 1
    mov RDI, 1
    mov RSI, msg ;from this address
    mov RDX, tam ;we will get the TAM firsts chars
    syscall

    mov RAX, 60 ;mov destiny, source. Exit
   ; 0 1 2 3 4 5 6 7 8 9 A B C D E F 10 11 12 13 14 15 16 17 18 19 1A 1B 1C
    mov RDI, 0 ;Return 0
    syscall
