
section .data
    msg db "Register to Register MOV example", 10
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, rbx          ; Move contents of rbx into rax (OK)
    mov rcx, rdx          ; Move contents of rdx into rcx

    ; sys_write(stdout=1, msg, len)
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall
