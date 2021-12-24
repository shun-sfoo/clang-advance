typedef union {
  struct {
    long u; 
    short v;
    char w;
  } t1;
  struct {
    int a[2];
    char *p;
  } t2;
} u_type;

void get1(u_type *up, long *dest) {
  *dest = up->t1.u;
}


void get2(u_type *up, short *dest) {
  *dest = up->t1.v;
}


void get3(u_type *up, char* *dest) {
  *dest = &up->t1.w;
}


void get4(u_type *up, int* *dest) {
  *dest = up->t2.a;
}

void get5(u_type *up, int *dest) {
  *dest = up->t2.a[up->t1.u];
}

void get6(u_type *up, char *dest) {
  *dest = *up->t2.p;
  // movw 8(%rdi) %rax
  // %rax (%rsi) 
  //
}
