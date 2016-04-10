        global reverse
        section .text
reverse:
        mov    eax,[esp+0x4]
        bswap  eax
        mov    edx,eax
        and    eax,0xf0f0f0f
        and    edx,0xf0f0f0f0
        shr    edx,0x4
        shl    eax,0x4
        or     eax,edx
        mov    edx,eax
        and    eax,0x33333333
        and    edx,0xcccccccc
        shr    edx,0x2
        shl    eax,0x2
        or     eax,edx
        mov    edx,eax
        and    eax,0x55555555
        and    edx,0xaaaaaaaa
        add    eax,eax
        shr    edx,1
        or     eax,edx
        ret
