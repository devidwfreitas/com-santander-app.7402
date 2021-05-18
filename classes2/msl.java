import android.text.TextUtils;

class msl implements msi {
  private mqn a = new mqn(null);
  
  private miq b = miq.C();
  
  private mlq c;
  
  private mlp d;
  
  private mrp e;
  
  private mrk f;
  
  private mlq a(mrp parammrp) {
    String str;
    mlq mlq1 = new mlq();
    mlq1.setConnUuid(this.b.i());
    mlq1.setTokenSessao(this.b.j());
    mlq1.setTokenTransacao(this.b.f().m());
    if (parammrp.a()) {
      str = "TEF";
    } else {
      str = "TED";
    } 
    mlq1.q(str);
    mlq1.o("CC");
    mlq1.b(this.b.f().f());
    mlq1.f(this.b.f().g());
    mlq1.t(this.b.f().j());
    mlq1.p("CC");
    mlq1.c(naj.a(parammrp.b(), 4));
    mlq1.a(naj.a(parammrp.d().substring(0, 4), 4));
    mlq1.e(naj.a(parammrp.e().replaceAll("[^0-9]+", ""), 12));
    if (!parammrp.a()) {
      mlq1.g(nai.a(parammrp.f()));
      mlq1.k(parammrp.g());
    } 
    mlq1.b(false);
    mlq1.n("");
    mlq1.a(false);
    mlq1.m("");
    mlq1.j("");
    mlq1.r(parammrp.i());
    this.e = parammrp;
    return mlq1;
  }
  
  private mrk a(mlp parammlp) {
    if (this.e.a()) {
      String str1 = this.d.b();
      parammlp.b(str1);
      return new mrl(this.c, parammlp, this.e);
    } 
    String str = this.e.g();
    parammlp.b(str);
    return new mrl(this.c, parammlp, this.e);
  }
  
  private void a(msk parammsk) {
    this.a.a(new msm(this, parammsk), this.c);
  }
  
  private boolean a(String paramString) {
    return (paramString.toUpperCase().contains("PZE5618") || paramString.toUpperCase().contains("PZE5619"));
  }
  
  private boolean b(String paramString) {
    return (paramString.toUpperCase().contains("PZE1010") || paramString.toUpperCase().contains("BGE0002"));
  }
  
  public void a(mrp parammrp, msk parammsk) {
    this.c = a(parammrp);
    a(parammsk);
  }
  
  public void a(msj parammsj) {
    if (this.c == null) {
      parammsj.a(new NullPointerException());
      return;
    } 
    this.c.setTokenTransacao(this.b.f().m());
    this.c.d(this.d.a());
    this.c.s(this.d.f());
    this.c.l(this.d.e());
    this.c.i(this.d.d());
    this.c.v("N");
    this.c.u("N");
    if (!TextUtils.isEmpty(this.d.c()))
      this.c.k(this.d.c().trim()); 
    this.a.b(new msn(this, parammsj), this.c);
  }
  
  public boolean a() {
    return (this.c != null && this.c.c());
  }
  
  public mrk b() {
    return this.f;
  }
  
  public void b(mrp parammrp, msk parammsk) {
    this.c = a(parammrp);
    this.c.a(true);
    this.c.h(parammrp.h().replaceAll("[^0-9]+", ""));
    a(parammsk);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\msl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */