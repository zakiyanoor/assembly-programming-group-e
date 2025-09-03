; Move immediate value into register (32-bit)

section .text
    global _start

_start:
    mov eax, 10     ; load immediate value 10 into EAX
    mov ebx, 0x20   ; load hex value 20h into EBX

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
