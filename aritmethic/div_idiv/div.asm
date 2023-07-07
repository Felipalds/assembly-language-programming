section .data
    dividend    dq 100    ; 64-bit signed dividend
    divisor     dq 7      ; 64-bit divisor

section .text
    global _start
_start:
    ; Unsigned Division (DIV)
    mov rax, qword [dividend]   ; Load dividend into RAX
    mov rbx, qword [divisor]    ; Load divisor into RBX
    xor rdx, rdx                ; Clear RDX (used for remainder)
    div rbx                     ; Divide RAX by RBX (quotient in RAX, remainder in RDX)

    ; Display unsigned division results
    mov rdi, rax                ; Move quotient to RDI (for display)
    mov rsi, rdx                ; Move remainder to RSI (for display)
    call display_results        ; Display the results

    ; Signed Division (IDIV)
    mov rax, qword [dividend]   ; Load signed dividend into RAX
    mov rbx, qword [divisor]    ; Load divisor into RBX
    xor rdx, rdx                ; Clear RDX (used for remainder)
    cqo                         ; Sign-extend RAX into RDX:RAX
    idiv rbx                    ; Divide RDX:RAX by RBX (quotient in RAX, remainder in RDX)

    ; Display signed division results
    mov rdi, rax                ; Move quotient to RDI (for display)
    mov rsi, rdx                ; Move remainder to RSI (for display)
    call display_results        ; Display the results

    ; Exit program
    mov eax, 60                 ; System call number for exit
    xor edi, edi                ; Exit with return code 0
    syscall                     ; Make the system call

display_results:
    ; Display the results in hexadecimal format
    push rax                    ; Preserve registers
    mov eax, 1                  ; System call number for write
    mov edi, 1                  ; File descriptor (stdout)
    lea rsi, [rel output_buffer] ; Output buffer address
    mov edx, 9                  ; Number of bytes to write (including null-terminator)
    syscall                     ; Make the system call
    pop rax                     ; Restore registers
    ret                         ; Return from the subroutine

section .data
    output_buffer   db "Quotient: ", 0
                    db "Remainder: ", 0

