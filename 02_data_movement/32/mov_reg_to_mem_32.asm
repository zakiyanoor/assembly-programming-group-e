; Move value from register to memory (32-bit)

section .data
    num dd 0        ; space for integer

section .text
    global _start

_start:
    mov eax, 99     ; load 99 into EAX
    mov [num], eax  ; store value into memory

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
