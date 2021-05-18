class elq extends ekn<T> {
  private ekn<T> f;
  
  elq(elp paramelp, boolean paramBoolean1, boolean paramBoolean2, ejm paramejm, epn paramepn) {}
  
  private ekn<T> b() {
    ekn<T> ekn1 = this.f;
    if (ekn1 != null)
      return ekn1; 
    ekn1 = this.c.a(this.e, this.d);
    this.f = ekn1;
    return ekn1;
  }
  
  public void a(eps parameps, T paramT) {
    if (this.b) {
      parameps.f();
      return;
    } 
    b().a(parameps, paramT);
  }
  
  public T b(epo paramepo) {
    if (this.a) {
      paramepo.n();
      return null;
    } 
    return b().b(paramepo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */