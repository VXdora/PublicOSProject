; *****************************************
;   util - asmfunc.S
;   Update  develop3.0
; *****************************************

global io_cli
io_cli:
    cli
    ret

global io_sti
io_sti:
    sti
    ret

global io_hlt
io_hlt:
    hlt
    ret

global getCR0
getCR0:
    mov     rax, cr0
    ret

global setCR0
setCR0:
    mov     rax, rcx
    mov     cr0, rax
    ret

global getCR3
getCR3:
    mov     rax, cr3
    ret

global setCR3
setCR3:
    mov     rax, rcx
    mov     cr3, rax
    ret

global getCR4
getCR4:
    mov     rax, cr4
    ret

global setCR4
setCR4:
    mov     rax, rcx
    mov     cr4, rax
    ret

global io_in8
io_in8:
    mov     edx, ecx
    xor     eax, eax
    in      al, dx
    ret

global io_in32
io_in32:
    mov     rdx, rcx
    in      eax, dx
    ret

global io_out8
io_out8:
    mov     eax, edx
    mov     edx, ecx
    out     dx, al
    ret

global io_out32
io_out32:
    mov     eax, edx
    mov     edx, ecx
    out     dx, eax
    ret


