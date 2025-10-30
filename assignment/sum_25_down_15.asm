section .text
    global _start

_start:
    mov ecx, 25        ; start from 25
    mov eax, 0         ; accumulator

loop_down:
    add eax, ecx
    dec ecx
    cmp ecx, 14        ; stop when ecx = 14
    jne loop_down

    mov ebx, eax       ; result
    mov eax, 1
    int 0x80
