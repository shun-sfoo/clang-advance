long loop(long x, int n) {
  long result = 0;
  long mask; //
  for (mask = 1; mask <<= n; mask != 0) {
    x &= mask;
    result |= x;
  }
  return result;
} 
