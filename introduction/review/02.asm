segment .data ;a part of a section
  ;EAX
  SYS_EXIT equ 60 ;Exit syscall
  SYS_WRITE equ 1 ;Write syscall
  SYS_READ equ 0
  
  ;EBX
  RET_EXIT equ 0;Default exit value
  STD_OUT equ 1
  STD_IN equ  0


section .data ;Only consts here
  msg db "Type your name", 10, 0
  msgL equ $- msg
  hello db "Hello, "
  helloL equ $- hello

section .bss ;Here goes our variables
  name resb 1 ;It will store byte to byte
 
section .text
global _start
  
_start:

  mov RAX, SYS_WRITE
  mov RDI, STD_OUT
  mov RSI, msg
  mov RDX, msgL
  syscall

  mov RAX, SYS_READ
  mov RDI, STD_IN
  mov RSI, name
  mov RDX, 10
  syscall

  mov RAX, SYS_WRITE
  mov RDI, STD_OUT
  mov RSI, hello
  mov RDX, helloL
  syscall

  mov RAX, SYS_WRITE
  mov RDI, STD_OUT
  mov RSI, name
  mov RDX, 10
  syscall

_end:
  mov RAX, SYS_EXIT
  mov RDI, RET_EXIT
  syscall
  

