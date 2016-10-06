un64:
	#nasm -felf64 -g 3.asm
	gcc -g -masm=intel 3.c && ./a.out

.PHONY: clean

clean:
	rm *.o a.out
