section .text
    global factorial        ; Make the function visible to C

factorial:
    mov eax, edi            ; Get n from C (argument passed in edi)
    cmp eax, 1              ; if n <= 1
    jle .base_case
    dec eax                 ; n - 1
    push rdi                ; save n
    mov edi, eax
    call factorial          ; recursive call
    pop rdi                 ; restore n
    imul eax, edi           ; eax = n * factorial(n-1)
    ret

.base_case:
    mov eax, 1
    ret
