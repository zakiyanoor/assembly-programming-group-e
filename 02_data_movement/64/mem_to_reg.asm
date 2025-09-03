
section .data
    num dq 123456789      ; 64-bit integer in memory

section .text
    global _start

_start:
    mov rax, [num]        ; Load 64-bit value from memory into rax
    mov ebx, [num]        ; Load lower 32 bits into ebx
    mov cx, [num]         ; Load lower 16 bits into cx
    mov dl, [num]         ; Load lowest 8 bits into dl

    ; Wrong usage:
    ; mov rax, num
    ; This moves the address of num, not its contents!

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall
