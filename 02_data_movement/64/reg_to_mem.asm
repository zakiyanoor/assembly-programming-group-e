
section .data
    val dq 0              ; Reserve 8 bytes

section .text
    global _start

_start:
    mov rax, 987654321
    mov [val], rax        ; Store rax into memory at val

    ; Wrong usage:
    ; mov [val], [rax]
    ; ERROR: Both operands cannot be memory!

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall
