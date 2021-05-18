public class ifz {
  private gkw a;
  
  private mip b;
  
  public ifz(gkw paramgkw) {
    this.a = paramgkw;
    this.b = (mip)miq.C();
  }
  
  public void a(boolean paramBoolean) {
    String str;
    ifa ifa = new ifa();
    ifa.setConnUuid(this.b.i());
    ifa.setTokenSessao(this.b.j());
    ifa.setTokenTransacao(this.b.f().m());
    if (paramBoolean) {
      str = "true";
    } else {
      str = "false";
    } 
    ifa.a(str);
    (new igb(new iga(this))).c((Object[])new ifa[] { ifa });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ifz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */