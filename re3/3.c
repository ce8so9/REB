#include <stdio.h>
#include <assert.h>

/*int f(int);*/

int v[64]=
	{ -1,31, 8,30, -1, 7,-1,-1, 29,-1,26, 6, -1,-1, 2,-1,
	  -1,28,-1,-1, -1,19,25,-1, 5,-1,17,-1, 23,14, 1,-1,
	   9,-1,-1,-1, 27,-1, 3,-1, -1,-1,20,-1, 18,24,15,10,
	  -1,-1, 4,-1, 21,-1,16,11, -1,22,-1,12, 13,-1, 0,-1 };

/*int test(int x) {*/

    /*int temp = 0;*/

    /*asm(   ".intel_syntax;"*/
            /*"mov %0, %1;"*/
            /*".att_syntax;"*/
            /*: "=r"(temp)    // output operands*/
            /*: "r"(x)        // input operands*/
            /*: "eax"         // clobbered operands*/
        /*);*/

    /*printf("temp=%d\n", temp);*/
/*}*/

int f(int x) {

    int temp = 0;

    __asm__("mov	edx, %0\n\t"
            "shr	edx, 1\n\t"
            "or	edx, %0\n\t"
            "mov	eax, edx\n\t"
            "shr	eax, 2\n\t"
            "or	eax, edx\n\t"
            "mov	edx, eax\n\t"
            "shr	edx, 4\n\t"
            "or	edx, eax\n\t"
            "mov	eax, edx\n\t"
            "shr	eax, 8\n\t"
            "or	eax, edx\n\t"
            "mov	edx, eax\n\t"
            "shr	edx, 16\n\t"
            "or	edx, eax\n\t"
            "imul	eax, edx, 79355661\n\t"
            "shr	eax, 26\n\t"
            "mov	eax, [v+rax*4]\n\t"
            : "=a"(temp)    // output operands
            : "D"(x)        // input operands
            : "edx"         // clobbered operands
        );

    return temp;
}

/*not working*/
int f_sol(int x) {
    int tmp1, tmp2, tmp3, tmp4, tmp5, idx = 0;
    int cst = 0x4badf0d;

    tmp1 = (x | x >> 1);
    tmp2 = tmp1 | (tmp1 >> 2);
    tmp3 = tmp2 | (tmp2 >> 4);
    tmp4 = tmp3 | (tmp3 >> 8);
    tmp5 = tmp4 | (tmp4 >> 16);
    idx = (tmp5 * cst) >> 26;
    return v[idx];
}

int main(int argc, const char *argv[])
{
	printf("f(30) = %d\n", f(30));
	/*printf("f_sol(30) = %d\n", f_sol(30));*/
    /*assert(f_sol(30) == f(30));*/
    return 0;
}
