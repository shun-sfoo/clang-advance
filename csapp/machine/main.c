#include <stdio.h>

void multstore(long, long, long*);

int main(){
  long d;
  multstore(2, 3, &d);
  printf("2 * 3 --> %1d\n", d);
  return 0;
}

long mult2(long a, long b) {
  long s = a * b;
  return s;
}

long scale(long x, long y, long z) {
  long t = x + 4 * y + 12 * z;
  return t;
}
