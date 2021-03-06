; ************************************
;   memory - asm_interrupt.S
;   Update  develop3.6
; ************************************

extern timerHandler
extern keyboardHandler
extern mouseHandler

global asmTimerHandler
asmTimerHandler:
    push    rax
    push    rcx
    push    rdx
    push    rbx
    push    rbp
    push    rsi
    push    rdi
    call    timerHandler
    pop     rdi
    pop     rsi
    pop     rbp
    pop     rbx
    pop     rdx
    pop     rcx
    pop     rax
    iretq

global asmKeyboardHandler
asmKeyboardHandler:
    push    rax
    push    rcx
    push    rdx
    push    rbx
    push    rbp
    push    rsi
    push    rdi
    call    keyboardHandler
    pop     rdi
    pop     rsi
    pop     rbp
    pop     rbx
    pop     rdx
    pop     rcx
    pop     rax
    iretq

global asmMouseHandler
asmMouseHandler:
    push    rax
    push    rcx
    push    rdx
    push    rbx
    push    rbp
    push    rsi
    push    rdi
    call    mouseHandler
    pop     rdi
    pop     rsi
    pop     rbp
    pop     rbx
    pop     rdx
    pop     rcx
    pop     rax
    iretq

