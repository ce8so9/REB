mov    edx,edi
shr    edx,1
and    edx,0x55555555
sub    edi,edx
mov    eax,edi
shr    edi,0x2
and    eax,0x33333333
and    edi,0x33333333
add    edi,eax
mov    eax,edi
shr    eax,0x4
add    eax,edi
and    eax,0xf0f0f0f
imul   eax,eax,0x1010101
shr    eax,0x18
ret
