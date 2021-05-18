final class erf extends erh {
  private final short b;
  
  private final short c;
  
  erf(erh paramerh, int paramInt1, int paramInt2) {
    super(paramerh);
    this.b = (short)paramInt1;
    this.c = (short)paramInt2;
  }
  
  void a(ets paramets, byte[] paramArrayOfbyte) {
    paramets.c(this.b, this.c);
  }
  
  public String toString() {
    short s1 = this.b;
    short s2 = this.c;
    short s3 = this.c;
    return '<' + Integer.toBinaryString(s1 & (1 << s2) - 1 | 1 << s3 | 1 << this.c).substring(1) + '>';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */