#include <stdio.h>

// From http://www.hackersdelight.org/hdcodetxt/nlz.c.txt

/* Below are three nearly equivalent programs for computing the number
of leading zeros in a word. This material is not in HD, but may be in a
future edition.
   Immediately below is Robert Harley's algorithm, found at the
comp.arch newsgroup entry dated 7/12/96, pointed out to me by Norbert
Juffa.
   Table entries marked "u" are unused. 14 ops including a multiply,
plus an indexed load.
   The smallest multiplier that works is 0x045BCED1 = 17*65*129*513 (all
of form 2**k + 1). There are no multipliers of three terms of the form
2**k +- 1 that work, with a table size of 64 or 128. There are some,
with a table size of 64, if you precede the multiplication with x = x -
(x >> 1), but that seems less elegant. There are also some if you use a
table size of 256, the smallest is 0x01033CBF = 65*255*1025 (this would
save two instructions in the form of this algorithm with the
multiplication expanded into shifts and adds, but the table size is
getting a bit large). */

#define u 99
int nlz10(unsigned x) {

   static char table[64] =
     {32,31, u,16, u,30, 3, u,  15, u, u, u,29,10, 2, u,
       u, u,12,14,21, u,19, u,   u,28, u,25, u, 9, 1, u,
      17, u, 4, u, u, u,11, u,  13,22,20, u,26, u, u,18,
       5, u, u,23, u,27, u, 6,   u,24, 7, u, 8, u, 0, u};

   x = x | (x >> 1);    // Propagate leftmost
   x = x | (x >> 2);    // 1-bit to the right.
   x = x | (x >> 4);
   x = x | (x >> 8);
   x = x | (x >>16);
   x = x*0x06EB14F9;    // Multiplier is 7*255**3.
   return table[x >> 26];
}

int main(int argc, char *argv[])
{
	printf("nlz10(30) = %d\n", nlz10(30));
    return 0;
}
