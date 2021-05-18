import android.app.Activity;
import android.app.Dialog;
import com.santander.app.contacorrente.domain.Conta;
import java.util.List;

public class jtp implements jtn {
  private mip a;
  
  private Dialog b;
  
  private jsr c;
  
  private List<ghu> d;
  
  private List<Conta> e;
  
  private Activity f;
  
  private jto g;
  
  private jwi h;
  
  public jtp(Activity paramActivity, jsr paramjsr, jto paramjto) {
    this.f = paramActivity;
    this.c = paramjsr;
    this.a = (mip)miq.C();
    this.g = paramjto;
    this.h = new jwj(this.f);
  }
  
  private jss b(jss paramjss) {
    paramjss.e(nak.u(paramjss.e()));
    paramjss.b(paramjss.b().replace(".", "").replace(",", "."));
    paramjss.setTokenSessao(this.a.j());
    paramjss.setConnUuid(this.a.i());
    return paramjss;
  }
  
  private boolean d() {
    return (this.a.f().s().a() != null && !this.a.f().s().a().isEmpty() && ((ghu)this.a.f().s().a().get(0)).A() == null);
  }
  
  private void e() {
    this.b = mxn.b(this.f);
    this.a.f().t().a(new jtq(this));
  }
  
  private void f() {
    b();
  }
  
  public void a() {
    if (d()) {
      e();
      return;
    } 
    f();
  }
  
  public void a(jss paramjss) {
    this.h.a(new jtr(this, paramjss), b(paramjss));
  }
  
  public void b() {
    this.e = this.a.f().q().a();
    if (this.c != null && this.c.i() != null && this.c.i().equalsIgnoreCase("S"))
      this.d = this.a.f().s().f(); 
    this.g.a(this.e, this.d);
  }
  
  public void c() {
    if (this.a.f().s().a() == null || this.a.f().s().a().size() == 0) {
      mzn mzn = new mzn();
      mzp mzp1 = mzp.RELOAD_CARTOES;
      mzp mzp2 = mzp.RELOAD_CARTOES_DESBLOQUEIO;
      jts jts = new jts(this);
      mzn.a(new mzp[] { mzp1, mzp2 }, jts);
      return;
    } 
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jtp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */