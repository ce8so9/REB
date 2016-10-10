; calling conv x86_64 linux RDI, RSI, RDX, RCX, R8, R9
    global f
    section .text
f:
    ; rsi - rcx
	cmp	rcx, rsi
    ; CF = 0 and ZF = 0
    ; jump if greater, unsigned cmp
	ja	.L10
	sub	rsi, rcx
	add	rsi, 1
	mov	r11, rsi
    ; ZF = 1
	je	.L10
	test	rcx, rcx
    ; ZF = 0
	jne	.L16
	mov	rax, rdi
	ret
; return 0
.L10:
	xor	eax, eax
	ret
.L16:
	push	rbx
    ; Operations that output to a 32-bit subregister are automatically zero-extended to the entire 64-bit register
    ; r10d <-> lower 32 bits of r10
	xor	r10d, r10d
	mov	r9d, 1
.L4:
	lea	rax, [rdi+r10]
	xor	esi, esi
	xor	r8d, r8d
.L8:
; remove PTR to assemble with NASM
	movzx ebx, BYTE [rdx+rsi]
	cmp	BYTE [rax+rsi], bl
	cmovne	r8d, r9d
	add	rsi, 1
	cmp	rsi, rcx
	jne	.L8
    ; if !r8d return
	test	r8d, r8d
	je	.L12
	add	r10, 1
	cmp	r10, r11
	jne	.L4
	xor	eax, eax
.L12:
	pop	rbx
	ret
