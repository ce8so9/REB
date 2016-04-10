
<f>:
   0:             push   rbp
   1:             mov    rbp,rsp
   4:             mov    QWORD PTR [rbp-0x8],rdi
   8:             mov    QWORD PTR [rbp-0x10],rsi
   c:             mov    rax,QWORD PTR [rbp-0x8]
  10:             movzx  eax,BYTE PTR [rax]
  13:             movsx  dx,al
  17:             mov    rax,QWORD PTR [rbp-0x10]
  1b:             mov    WORD PTR [rax],dx
  1e:             mov    rax,QWORD PTR [rbp-0x10]
  22:             movzx  eax,WORD PTR [rax]
  25:             test   ax,ax
  28:             jne    2c 
  2a:             jmp    38 
  2c:             add    QWORD PTR [rbp-0x8],0x1
  31:             add    QWORD PTR [rbp-0x10],0x2
  36:             jmp    c 
  38:             pop    rbp
  39:             ret