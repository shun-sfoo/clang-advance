#define N 16
typedef int fix_matrix[N][N];

void fix_set_diag_opt(fix_matrix A, int val) {
  int *Abase = &A[0][0];
  int i = 0;
  int iend = N * (N + 1);
  do {
    Abase[i] = val;
    i+= (N + 1);
  } while (i != iend);

}
