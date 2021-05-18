class dop {
  private final cvo a;
  
  private long b;
  
  public dop(cvo paramcvo) {
    csp.a(paramcvo);
    this.a = paramcvo;
  }
  
  public void a() {
    this.b = this.a.b();
  }
  
  public boolean a(long paramLong) {
    return !(this.b != 0L && this.a.b() - this.b < paramLong);
  }
  
  public void b() {
    this.b = 0L;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dop.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */