public final class epw {
  private final epv a;
  
  private ett b;
  
  public epw(epv paramepv) {
    if (paramepv == null)
      throw new IllegalArgumentException("Binarizer must be non-null."); 
    this.a = paramepv;
  }
  
  public int a() {
    return this.a.c();
  }
  
  public epw a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    eqd eqd = this.a.a().a(paramInt1, paramInt2, paramInt3, paramInt4);
    return new epw(this.a.a(eqd));
  }
  
  public ets a(int paramInt, ets paramets) {
    return this.a.a(paramInt, paramets);
  }
  
  public int b() {
    return this.a.d();
  }
  
  public ett c() {
    if (this.b == null)
      this.b = this.a.b(); 
    return this.b;
  }
  
  public boolean d() {
    return this.a.a().b();
  }
  
  public boolean e() {
    return this.a.a().c();
  }
  
  public epw f() {
    eqd eqd = this.a.a().e();
    return new epw(this.a.a(eqd));
  }
  
  public epw g() {
    eqd eqd = this.a.a().f();
    return new epw(this.a.a(eqd));
  }
  
  public String toString() {
    try {
      return c().toString();
    } catch (eqh eqh) {
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */