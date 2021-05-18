public class gnv implements ih {
  private static int c = 0;
  
  private gkw a;
  
  private ir b;
  
  public gnv(gkw paramgkw) {
    this.a = paramgkw;
  }
  
  public gnv(gkw paramgkw, ir paramir) {
    this.a = paramgkw;
    this.b = paramir;
  }
  
  private void c() {
    gnp.a().b(new gnw(this));
  }
  
  public void onFailure(is paramis) {
    if (paramis.a().intValue() == 401 || paramis.a().intValue() == 412) {
      if (!this.b.b().equalsIgnoreCase(gny.TOKEN_VALIDADE.getEndpoint()))
        c(); 
      return;
    } 
    this.a.a(paramis);
  }
  
  public void onSuccess(is paramis) {
    this.a.a(paramis);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */