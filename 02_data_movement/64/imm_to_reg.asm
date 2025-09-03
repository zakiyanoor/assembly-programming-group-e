
section .text
    global _start

_start:
    mov rax, 5          ; Immediate 5 into rax
    mov rbx, 0x1234     ; Hex immediate into rbx
    mov rcx, -42        ; Signed immediate

    ; Wrong usage example:
    ; mov rax, 0x123456789ABCDEF01234
    ; ERROR: Immediate too large for 64-bit

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall
