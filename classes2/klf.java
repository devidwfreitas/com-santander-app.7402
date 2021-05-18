public class klf implements klq {
  private kla a;
  
  public klf(kla paramkla) {
    this.a = paramkla;
  }
  
  public kla a() {
    kla kla1 = new kla();
    kla1.setAgencia(this.a.getAgencia());
    kla1.j(this.a.j());
    kla1.a(this.a.a());
    kla1.b(this.a.b());
    kla1.c(this.a.c());
    kla1.d(this.a.d());
    kla1.setConnUuid(this.a.getConnUuid());
    kla1.setTokenSessao(this.a.getTokenSessao());
    return kla1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\klf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */