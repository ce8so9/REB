rev64:
	nasm -felf64 reverse.asm && gcc call.c reverse.o && ./a.out

rev32:
	nasm -felf reverse.asm && gcc -m32 call.c reverse.o && ./a.out

.PHONY: clean

clean:
	rm *.o a.out
