import android.app.Activity;

public class jfj implements jfh {
  private Activity a;
  
  private mip b;
  
  private jiy c;
  
  private jfi d;
  
  public jfj(Activity paramActivity, jfi paramjfi) {
    this.a = paramActivity;
    this.d = paramjfi;
    this.b = (mip)miq.C();
    this.c = new jiz(paramActivity);
  }
  
  private jdn b(jdv paramjdv) {
    jdn jdn = new jdn();
    jdn.setConnUuid(this.b.i());
    jdn.setTokenSessao(this.b.j());
    jdn.setTokenTransacao(this.b.f().m());
    jdn.setAgencia(this.b.f().f());
    jdn.setConta(this.b.f().g());
    if (paramjdv != null) {
      String str = paramjdv.getValue();
      jdn.a(str);
      return jdn;
    } 
    paramjdv = null;
    jdn.a((String)paramjdv);
    return jdn;
  }
  
  private jdg d() {
    jdg jdg = new jdg();
    jdg.setConnUuid(this.b.i());
    jdg.setTokenSessao(this.b.j());
    jdg.setTokenTransacao(this.b.f().m());
    jdg.setAgencia(this.b.f().f());
    jdg.setConta(this.b.f().g());
    return jdg;
  }
  
  private jdr e() {
    jdr jdr = new jdr();
    jdr.setConnUuid(this.b.i());
    jdr.setTokenSessao(this.b.j());
    jdr.setTokenTransacao(this.b.f().m());
    jdr.setAgencia(this.b.f().f());
    jdr.setConta(this.b.f().g());
    return jdr;
  }
  
  private jdp f() {
    jdp jdp = new jdp();
    jdp.setConnUuid(this.b.i());
    jdp.setTokenSessao(this.b.j());
    jdp.setTokenTransacao(this.b.f().m());
    return jdp;
  }
  
  public void a() {
    this.c.b(new jfl(this), b(null));
  }
  
  public void a(jdv paramjdv) {
    this.c.a(new jfk(this), b(paramjdv));
  }
  
  public void b() {
    this.c.a(new jfm(this), f());
  }
  
  public void c() {
    if (!this.b.f().i().equalsIgnoreCase("PR"))
      this.c.a(new jfn(this), e()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jfj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */