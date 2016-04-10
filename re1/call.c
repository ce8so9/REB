#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

int64_t f(char *, char *, int64_t, int64_t);

int main() {
    char *first = malloc(15);
    char *second = malloc(15);
    strncpy(first, "aaaaaaaaaa", 15);
    strncpy(second, "bbbbbbbbbb", 15);
    printf("printing first : %s\n", first);
    printf("printing second : %s\n", second);
    f(second, first, strlen(first), 4);
    printf("printing first : %s\n", first);
    printf("printing second : %s\n", second);
    return 0;
}
