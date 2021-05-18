class gmu implements hxy {
  gmu(gmm paramgmm, gmv paramgmv, boolean paramBoolean) {}
  
  private void c() {
    gmm.b(this.c, this.a);
    gmm.c(this.c, this.a);
    d();
  }
  
  private void d() {
    gmm.j(this.c);
    if ((gmm.k(this.c) == 0 && gmm.l(this.c) != null) || this.b)
      gmm.l(this.c).dismiss(); 
  }
  
  public void a() {
    if (gmm.d(this.c)) {
      frq.d(gmm.e(this.c), "Nao");
      frq.d(gmm.g(this.c), gmm.h(this.c));
    } 
    d();
    if (this.b) {
      gmv.a(this.a).h();
      return;
    } 
    c();
  }
  
  public void a(@hyr int paramInt) {
    if (gmm.d(this.c)) {
      frq.d(gmm.e(this.c), "Sim");
      frq.a(gmm.f(this.c), "CreditoFinanciamento");
      frq.d(gmm.g(this.c), gmm.h(this.c));
    } 
    gmm.a(this.c, gmv.a(this.a));
    d();
    if (this.b) {
      gmv.a(this.a).a(paramInt);
      return;
    } 
    c();
  }
  
  public void b() {
    if (gmm.d(this.c)) {
      frq.d(gmm.i(this.c), "SistemaIndisponivel");
      frq.d(gmm.g(this.c), gmm.h(this.c));
    } 
    d();
    if (this.b) {
      gmv.a(this.a).i();
      return;
    } 
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */