public final class ezb {
  public static final ezb a = new ezb(929, 3);
  
  private final int[] b;
  
  private final int[] c;
  
  private final ezc d;
  
  private final ezc e;
  
  private final int f;
  
  private ezb(int paramInt1, int paramInt2) {
    this.f = paramInt1;
    this.b = new int[paramInt1];
    this.c = new int[paramInt1];
    int i = 0;
    int j = 1;
    while (i < paramInt1) {
      this.b[i] = j;
      j = j * paramInt2 % paramInt1;
      i++;
    } 
    for (paramInt2 = 0; paramInt2 < paramInt1 - 1; paramInt2++)
      this.c[this.b[paramInt2]] = paramInt2; 
    this.d = new ezc(this, new int[] { 0 });
    this.e = new ezc(this, new int[] { 1 });
  }
  
  int a(int paramInt) {
    return this.b[paramInt];
  }
  
  ezc a() {
    return this.d;
  }
  
  ezc a(int paramInt1, int paramInt2) {
    if (paramInt1 < 0)
      throw new IllegalArgumentException(); 
    if (paramInt2 == 0)
      return this.d; 
    int[] arrayOfInt = new int[paramInt1 + 1];
    arrayOfInt[0] = paramInt2;
    return new ezc(this, arrayOfInt);
  }
  
  int b(int paramInt) {
    if (paramInt == 0)
      throw new IllegalArgumentException(); 
    return this.c[paramInt];
  }
  
  int b(int paramInt1, int paramInt2) {
    return (paramInt1 + paramInt2) % this.f;
  }
  
  ezc b() {
    return this.e;
  }
  
  int c() {
    return this.f;
  }
  
  int c(int paramInt) {
    if (paramInt == 0)
      throw new ArithmeticException(); 
    return this.b[this.f - this.c[paramInt] - 1];
  }
  
  int c(int paramInt1, int paramInt2) {
    return (this.f + paramInt1 - paramInt2) % this.f;
  }
  
  int d(int paramInt1, int paramInt2) {
    return (paramInt1 == 0 || paramInt2 == 0) ? 0 : this.b[(this.c[paramInt1] + this.c[paramInt2]) % (this.f - 1)];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */