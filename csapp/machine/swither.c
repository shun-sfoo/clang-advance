void switcher(long a, long b, long c, long *dest) {
  long val;
  switch(a) {
    case 5:
      c = b ^ 0x15;
    case 0:
      val = c + 112;
      break;
    case 2:
    case 7:
      val = (c + b) << 2;
      break;
    case 4:
      val = a;
      break;
    default: 
      val = b;
  }

  *dest = val;
}
