<f>:
   0:                movzx  edx,BYTE PTR [rdi]
   3:                mov    rax,rdi
   6:                mov    rcx,rdi
   9:                test   dl,dl
   b:                je     29 
   d:                nop    DWORD PTR [rax]
  10:                lea    esi,[rdx-0x41]
  13:                cmp    sil,0x19
  17:                ja     1e 
  19:                add    edx,0x20
  1c:                mov    BYTE PTR [rcx],dl
  1e:                add    rcx,0x1
  22:                movzx  edx,BYTE PTR [rcx]
  25:                test   dl,dl
  27:                jne    10 
  29:                repz ret