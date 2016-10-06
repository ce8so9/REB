un64:
	nasm -felf64 -g 1.asm && gcc -g call.c 1.o && ./a.out

.PHONY: clean

clean:
	rm *.o a.out
