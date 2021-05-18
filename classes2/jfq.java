import android.app.Activity;

public class jfq implements jfo {
  private Activity a;
  
  private mip b;
  
  private jiy c;
  
  private jfp d;
  
  public jfq(Activity paramActivity, jfp paramjfp) {
    this.a = paramActivity;
    this.d = paramjfp;
    this.b = (mip)miq.C();
    this.c = new jiz(paramActivity);
  }
  
  private void a(jdi paramjdi) {
    this.c.a(new jfr(this), b(paramjdi));
  }
  
  private jdj b(jdx paramjdx) {
    jdj jdj = new jdj();
    jdj.setConnUuid(this.b.i());
    jdj.setTokenSessao(this.b.j());
    jdj.setTokenTransacao(this.b.f().m());
    jdj.setAgencia(paramjdx.Z());
    jdj.setConta(paramjdx.n());
    jdj.a(paramjdx.j());
    if (paramjdx.j())
      jdj.a(nak.a(paramjdx.m(), "dd/MM/yyyy", "ddMMyyyy")); 
    jdj.b(true);
    jdj.d("APLICACAO");
    jdj.b(paramjdx.y().substring(1, paramjdx.y().length()));
    jdj.c(true);
    jdj.e(naj.l(paramjdx.l()));
    return jdj;
  }
  
  private jdt b(jdi paramjdi) {
    jdt jdt = new jdt();
    jdt.setConnUuid(this.b.i());
    jdt.setTokenSessao(this.b.j());
    jdt.setTokenTransacao(this.b.f().m());
    jdt.b(paramjdi.c());
    jdt.a(paramjdi.f());
    return jdt;
  }
  
  public void a(jdx paramjdx) {
    this.c.a(new jfs(this), b(paramjdx));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jfq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */