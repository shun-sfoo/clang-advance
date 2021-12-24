long loop_while2(long a, long b) {
  long result = b;
    if (b > 0) {
      result *= a;
      b = b - a;
    }
    return result;
}
