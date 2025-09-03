; Move immediate value into memory (32-bit)

section .data
    num dd 0

section .text
    global _start

_start:
    mov dword [num], 42  ; store immediate 42 into memory

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
