public class jjy implements jjw {
  private mip a;
  
  private jla b;
  
  private jjx c;
  
  public jjy(jjx paramjjx) {
    this.c = paramjjx;
    this.a = (mip)miq.C();
    this.b = new jlb();
  }
  
  private jdg b() {
    jdg jdg = new jdg();
    jdg.setConnUuid(this.a.i());
    jdg.setTokenSessao(this.a.j());
    jdg.setTokenTransacao(this.a.f().m());
    jdg.setAgencia(this.a.f().f());
    jdg.setConta(this.a.f().g());
    return jdg;
  }
  
  public void a() {
    this.b.a(new jjz(this), b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jjy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */