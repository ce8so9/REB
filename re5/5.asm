<f>:
   0:	 	push   rbp
   1:	 	mov    rbp,rsp
   4:	 	mov    QWORD PTR [rbp-0x28],rdi
   8:	 	mov    QWORD PTR [rbp-0x30],rsi
   c:	 	mov    QWORD PTR [rbp-0x38],rdx
  10:	 	mov    QWORD PTR [rbp-0x40],rcx
  14:	 	mov    rax,QWORD PTR [rbp-0x40]
  18:	 	cmp    rax,QWORD PTR [rbp-0x30]
  1c:	 	jbe    28 
  1e:	 	mov    eax,0x0
  23:	 	jmp    b5 
  28:	 	mov    QWORD PTR [rbp-0x10],0x0
  2f:	
  30:	 	jmp    98 
  32:	 	mov    DWORD PTR [rbp-0x14],0x0
  39:	 	mov    QWORD PTR [rbp-0x8],0x0
  40:	
  41:	 	jmp    76 
  43:	 	mov    rax,QWORD PTR [rbp-0x8]
  47:	 	mov    rdx,QWORD PTR [rbp-0x10]
  4b:	 	add    rdx,rax
  4e:	 	mov    rax,QWORD PTR [rbp-0x28]
  52:	 	add    rax,rdx
  55:	 	movzx  edx,BYTE PTR [rax]
  58:	 	mov    rax,QWORD PTR [rbp-0x10]
  5c:	 	mov    rcx,QWORD PTR [rbp-0x38]
  60:	 	add    rax,rcx
  63:	 	movzx  eax,BYTE PTR [rax]
  66:	 	cmp    dl,al
  68:	 	je     71 
  6a:	 	mov    DWORD PTR [rbp-0x14],0x1
  71:	 	add    QWORD PTR [rbp-0x8],0x1
  76:	 	mov    rax,QWORD PTR [rbp-0x8]
  7a:	 	cmp    rax,QWORD PTR [rbp-0x40]
  7e:	 	jb     43 
  80:	 	cmp    DWORD PTR [rbp-0x14],0x0
  84:	 	jne    93 
  86:	 	mov    rax,QWORD PTR [rbp-0x10]
  8a:	 	mov    rdx,QWORD PTR [rbp-0x28]
  8e:	 	add    rax,rdx
  91:	 	jmp    b5 
  93:	 	add    QWORD PTR [rbp-0x10],0x1
  98:	 	mov    rax,QWORD PTR [rbp-0x40]
  9c:	 	mov    rdx,QWORD PTR [rbp-0x30]
  a0:	 	sub    rdx,rax
  a3:	 	mov    rax,rdx
  a6:	 	add    rax,0x1
  aa:	 	cmp    rax,QWORD PTR [rbp-0x10]
  ae:	 	ja     32 
  b0:	 	mov    eax,0x0
  b5:	 	pop    rbp
  b6:	 	ret 