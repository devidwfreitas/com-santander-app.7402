public enum fac {
  H,
  L(1),
  M(0),
  Q(3);
  
  private static final fac[] FOR_BITS;
  
  private final int bits;
  
  static {
    H = new fac("H", 3, 2);
    $VALUES = new fac[] { L, M, Q, H };
    FOR_BITS = new fac[] { M, L, H, Q };
  }
  
  fac(int paramInt1) {
    this.bits = paramInt1;
  }
  
  public static fac forBits(int paramInt) {
    if (paramInt < 0 || paramInt >= FOR_BITS.length)
      throw new IllegalArgumentException(); 
    return FOR_BITS[paramInt];
  }
  
  public int getBits() {
    return this.bits;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */