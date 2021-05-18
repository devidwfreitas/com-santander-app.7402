final class eyc {
  private int a = 0;
  
  private eyd b = eyd.NUMERIC;
  
  int a() {
    return this.a;
  }
  
  void a(int paramInt) {
    this.a = paramInt;
  }
  
  void b(int paramInt) {
    this.a += paramInt;
  }
  
  boolean b() {
    return (this.b == eyd.ALPHA);
  }
  
  boolean c() {
    return (this.b == eyd.NUMERIC);
  }
  
  boolean d() {
    return (this.b == eyd.ISO_IEC_646);
  }
  
  void e() {
    this.b = eyd.NUMERIC;
  }
  
  void f() {
    this.b = eyd.ALPHA;
  }
  
  void g() {
    this.b = eyd.ISO_IEC_646;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */