un64:
	nasm -felf64 -g 5.asm && gcc -g call.c 5.o && ./a.out

.PHONY: clean

clean:
	rm *.o a.out
