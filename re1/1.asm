; calling conv x86_64 linux RDI, RSI, RDX, RCX, R8, R9
; The function has 4 arguments
; rsi destination pointer, rdi source pointer, rcx length, rdx is value used to divide *(rsi)
global f
section .text

f:
    mov    r8,rdi ; r8 = $1
    ; save rbx because clobbering
    push   rbx
    mov    rdi,rsi ; rdi = $2
    mov    rbx,rdx ; rbx = $3
    mov    rsi,r8  ; rsi = r8 = $1
    xor    rdx,rdx ; rdx = 0

begin:
;LODSQ   Load qword from rsi into rax.
;STOSQ   Store qword to rdi from rax.
; rsi and rdi pointers
    lodsq
    div    rbx
    stosq
    ;LOOP (M) decrement CX/ECX/RCX, jump if it is still not zero.
    loop   begin
    ; for (i from 0 to rcx) *(rdi + i) = *(rsi + i) / rbx

    ; restore rbx
    pop    rbx

    ; return result
    mov    rax,rdx
    ret
