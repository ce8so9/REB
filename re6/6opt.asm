<f>:
   0:          jmp    10 
   2:          nop    WORD PTR [rax+rax*1+0x0]
   8:          add    rdi,0x1
   c:          add    rsi,0x2
  10:          movsx  ax,BYTE PTR [rdi]
  14:          test   ax,ax
  17:          mov    WORD PTR [rsi],ax
  1a:          jne    8 
  1c:          repz ret
  1e:          xchg   ax,ax