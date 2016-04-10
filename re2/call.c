#include <stdio.h>
#include <inttypes.h>

int32_t reverse(int32_t);

//assumes little endian
void printBits(size_t const size, void const * const ptr)
{
    unsigned char *b = (unsigned char*) ptr;
    unsigned char byte;
    int i, j;

    for (i=size-1;i>=0;i--)
    {
        for (j=7;j>=0;j--)
        {
            byte = b[i] & (1<<j);
            byte >>= j;
            printf("%u", byte);
        }
    }
    puts("");
}

int main() {
    int i = 1;
    int ir = reverse(1);
    printf("%d\n", i);
    printf("%d\n", ir);
    printBits(sizeof(i), &i);
    printBits(sizeof(ir), &ir);
    return 0;
}
