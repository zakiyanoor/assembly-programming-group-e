section .data
    sum db 0

section .text
    global _start

_start:
    mov ecx, 15        ; start number
    mov eax, 0         ; accumulator

loop_start:
    add eax, ecx       ; add current number
    inc ecx            ; next number
    cmp ecx, 26        ; stop when ecx = 26
    jne loop_start

    ; exit (Linux)
    mov ebx, eax       ; put result in ebx for viewing in debugger
    mov eax, 1         ; syscall: exit
    int 0x80
