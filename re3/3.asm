    extern v

    global f
    section .text
f:
	mov	edx, edi
	shr	edx, 1
	or	edx, edi
	mov	eax, edx
	shr	eax, 2
	or	eax, edx
	mov	edx, eax
	shr	edx, 4
	or	edx, eax
	mov	eax, edx
	shr	eax, 8
	or	eax, edx
	mov	edx, eax
	shr	edx, 16
	or	edx, eax
    ;  	IMUL r32,imm32 	doubleword register = r/m32 * immediate doubleword.
    ;   result in EDX:EAX
	imul	eax, edx, 79355661 ; 0x4badf0d
	shr	eax, 26
	mov	eax, [v+rax*4]
	ret
