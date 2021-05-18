public final class euh {
  public static final euh a = new euh(4201, 4096, 1);
  
  public static final euh b = new euh(1033, 1024, 1);
  
  public static final euh c = new euh(67, 64, 1);
  
  public static final euh d = new euh(19, 16, 1);
  
  public static final euh e = new euh(285, 256, 0);
  
  public static final euh f = new euh(301, 256, 1);
  
  public static final euh g = f;
  
  public static final euh h = c;
  
  private final int[] i;
  
  private final int[] j;
  
  private final eui k;
  
  private final eui l;
  
  private final int m;
  
  private final int n;
  
  private final int o;
  
  public euh(int paramInt1, int paramInt2, int paramInt3) {
    this.n = paramInt1;
    this.m = paramInt2;
    this.o = paramInt3;
    this.i = new int[paramInt2];
    this.j = new int[paramInt2];
    int i = 0;
    paramInt3 = 1;
    while (i < paramInt2) {
      this.i[i] = paramInt3;
      int j = paramInt3 * 2;
      paramInt3 = j;
      if (j >= paramInt2)
        paramInt3 = (j ^ paramInt1) & paramInt2 - 1; 
      i++;
    } 
    for (paramInt1 = 0; paramInt1 < paramInt2 - 1; paramInt1++)
      this.j[this.i[paramInt1]] = paramInt1; 
    this.k = new eui(this, new int[] { 0 });
    this.l = new eui(this, new int[] { 1 });
  }
  
  static int b(int paramInt1, int paramInt2) {
    return paramInt1 ^ paramInt2;
  }
  
  int a(int paramInt) {
    return this.i[paramInt];
  }
  
  eui a() {
    return this.k;
  }
  
  eui a(int paramInt1, int paramInt2) {
    if (paramInt1 < 0)
      throw new IllegalArgumentException(); 
    if (paramInt2 == 0)
      return this.k; 
    int[] arrayOfInt = new int[paramInt1 + 1];
    arrayOfInt[0] = paramInt2;
    return new eui(this, arrayOfInt);
  }
  
  int b(int paramInt) {
    if (paramInt == 0)
      throw new IllegalArgumentException(); 
    return this.j[paramInt];
  }
  
  eui b() {
    return this.l;
  }
  
  public int c() {
    return this.m;
  }
  
  int c(int paramInt) {
    if (paramInt == 0)
      throw new ArithmeticException(); 
    return this.i[this.m - this.j[paramInt] - 1];
  }
  
  int c(int paramInt1, int paramInt2) {
    return (paramInt1 == 0 || paramInt2 == 0) ? 0 : this.i[(this.j[paramInt1] + this.j[paramInt2]) % (this.m - 1)];
  }
  
  public int d() {
    return this.o;
  }
  
  public String toString() {
    return "GF(0x" + Integer.toHexString(this.n) + ',' + this.m + ')';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */