section .data ;Here goes our consts

section .bss ;Here goes our variables

section .text ;Here goes our program

global _start ;The entry point is called _start (the init of our program)

_start: ;The label we defined before :)
    mov EAX, 0x1 ;mov destiny, source. Exit
   ; 0 1 2 3 4 5 6 7 8 9 A B C D E F 10 11 12 13 14 15 16 17 18 19 1A 1B 1C
    mov EBX, 0x0 ;Return 0
    syscall ;int 0x80
