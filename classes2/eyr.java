final class eyr {
  private static final int a = -1;
  
  private final int b;
  
  private final int c;
  
  private final int d;
  
  private final int e;
  
  private int f = -1;
  
  eyr(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
    this.e = paramInt4;
  }
  
  boolean a() {
    return a(this.f);
  }
  
  boolean a(int paramInt) {
    return (paramInt != -1 && this.d == paramInt % 3 * 3);
  }
  
  void b() {
    this.f = this.e / 30 * 3 + this.d / 3;
  }
  
  void b(int paramInt) {
    this.f = paramInt;
  }
  
  int c() {
    return this.c - this.b;
  }
  
  int d() {
    return this.b;
  }
  
  int e() {
    return this.c;
  }
  
  int f() {
    return this.d;
  }
  
  int g() {
    return this.e;
  }
  
  int h() {
    return this.f;
  }
  
  public String toString() {
    return this.f + "|" + this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */