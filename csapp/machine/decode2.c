long decode2(long x, long y, long z) {
  y -= z ;
  x *= y;
  y = (y << 63) >> 63 ^ x;
  return y;
}
