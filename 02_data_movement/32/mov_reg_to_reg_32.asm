; Move value between registers (32-bit)

section .text
    global _start

_start:
    mov eax, 5      ; put 5 into EAX
    mov ebx, eax    ; copy value from EAX to EBX

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80
