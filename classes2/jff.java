import android.app.Activity;

public class jff implements jfd {
  private Activity a;
  
  private mip b;
  
  private jiy c;
  
  private jfe d;
  
  public jff(Activity paramActivity, jfe paramjfe) {
    this.a = paramActivity;
    this.d = paramjfe;
    this.b = (mip)miq.C();
    this.c = new jiz(paramActivity);
  }
  
  private jdp b() {
    jdp jdp = new jdp();
    jdp.setConnUuid(this.b.i());
    jdp.setTokenSessao(this.b.j());
    jdp.setTokenTransacao(this.b.f().m());
    return jdp;
  }
  
  public void a() {
    this.c.a(new jfg(this), b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */