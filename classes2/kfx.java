public class kfx implements kec, kfw {
  private kew a;
  
  private kcy b;
  
  private kcz c;
  
  private keb d;
  
  private mip e;
  
  public kfx(kew paramkew) {
    this.a = paramkew;
    this.b = new kcy();
    this.d = new ked(this);
    this.e = (mip)miq.C();
  }
  
  public void a() {
    this.a.b();
    this.c = new kcz();
    this.c.setTokenTransacao(this.e.f().m());
    this.c.setConnUuid(this.e.i());
    this.c.setTokenSessao(this.e.j());
    this.d.a(this.c);
  }
  
  public void a(kcy paramkcy) {
    this.b = paramkcy;
    this.a.c();
    if (paramkcy.getConfirmacao().equalsIgnoreCase("OK"))
      this.a.a(paramkcy); 
  }
  
  public void b(kcy paramkcy) {
    this.a.c();
    if (paramkcy != null) {
      if (paramkcy.getConfirmacao() != null) {
        if (paramkcy.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.a.a(paramkcy.getMensagemErro());
          return;
        } 
        this.a.d();
        return;
      } 
      this.a.d();
      return;
    } 
    this.a.d();
  }
  
  public void c(kcy paramkcy) {
    this.b = paramkcy;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */