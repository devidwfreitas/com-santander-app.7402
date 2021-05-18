final class eyg extends eyh {
  static final int a = 10;
  
  private final int b;
  
  private final int c;
  
  eyg(int paramInt1, int paramInt2, int paramInt3) {
    super(paramInt1);
    if (paramInt2 < 0 || paramInt2 > 10 || paramInt3 < 0 || paramInt3 > 10)
      throw eqb.a(); 
    this.b = paramInt2;
    this.c = paramInt3;
  }
  
  int a() {
    return this.b;
  }
  
  int b() {
    return this.c;
  }
  
  int c() {
    return this.b * 10 + this.c;
  }
  
  boolean d() {
    return (this.b == 10);
  }
  
  boolean e() {
    return (this.c == 10);
  }
  
  boolean f() {
    return (this.b == 10 || this.c == 10);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */