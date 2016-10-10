#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

// hyp : it is a strncmp, rdx is unused
int64_t f(char *, char *, char *, int64_t);

int main() {
    char first[4] = "abcd";
    char second[4] = "abcd";
    char third[4] = "abcd";
    int res = f(first, second, third, strlen(first));
    printf("after f, res is %d\n", res);
    return 0;
}
