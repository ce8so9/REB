#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

int64_t f(int64_t *, int64_t *, int64_t, int64_t);

void
f_sol(int64_t *src, int64_t *dest, int divisor, int len)
{
    int i = 0;
    for (; i < len; i++)
        dest[i] = src[i] / divisor;
}

int main() {
    int64_t first[4] = {4, 8, 12, 16};
    int64_t second[4] = {0};
    printf("before f\n");
    printf("printing first : %" PRId64 " %" PRId64 " %" PRId64 " %" PRId64"\n",
            first[0], first[1], first[2], first[3]);
    printf("printing second: %" PRId64 " %" PRId64 " %" PRId64 " %" PRId64"\n",
            second[0], second[1], second[2], second[3]);
    f_sol(first, second, 2, 4);
    printf("after f\n");
    printf("printing second: %" PRId64 " %" PRId64 " %" PRId64 " %" PRId64"\n",
            second[0], second[1], second[2], second[3]);
    return 0;
}
