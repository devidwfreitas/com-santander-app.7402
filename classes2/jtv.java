import android.app.Activity;
import android.app.Dialog;
import com.santander.app.contacorrente.domain.Conta;
import java.util.List;
import org.json.JSONObject;

public class jtv implements jtt {
  private mip a;
  
  private Dialog b;
  
  private jsr c;
  
  private List<ghu> d;
  
  private List<Conta> e;
  
  private Activity f;
  
  private jtu g;
  
  private jwi h;
  
  public jtv(Activity paramActivity, jsr paramjsr, jtu paramjtu) {
    this.f = paramActivity;
    this.c = paramjsr;
    this.a = (mip)miq.C();
    this.g = paramjtu;
    this.h = new jwj(this.f);
  }
  
  private iq b(jsr paramjsr) {
    String str2 = mwz.a();
    jta jta = new jta();
    if (str2 != null && !str2.isEmpty())
      jta.b(str2); 
    if (paramjsr.d() == null) {
      jta.a(this.a.f().q().a(paramjsr.c(), paramjsr.b()));
      jta.b(null);
    } else {
      jta.a(null);
      jta.b(this.a.f().s().a(paramjsr.d()));
    } 
    if ("S".equalsIgnoreCase(paramjsr.a())) {
      jta.a(nak.v(paramjsr.s()));
    } else {
      jta.a(null);
    } 
    jta.a(Double.valueOf(paramjsr.k().replace(".", "").replace(",", ".")));
    jta.a((new mzk(this.f)).a());
    String str1 = "";
    try {
      JSONObject jSONObject = new JSONObject(mys.b().b(jta));
      String str = nab.a().b(jSONObject.toString());
      str1 = str;
    } catch (Exception exception) {}
    return gnz.a().a("payment/v1/pay", im.POST, str1, true);
  }
  
  private jss b(jss paramjss) {
    paramjss.e(nak.u(paramjss.e()));
    paramjss.c(nak.u(paramjss.c()));
    paramjss.b(paramjss.b().replace(".", "").replace(",", "."));
    paramjss.setTokenSessao(this.a.j());
    paramjss.setConnUuid(this.a.i());
    return paramjss;
  }
  
  private boolean d() {
    return (this.a.f().s().a() != null && this.a.f().s().a().size() > 0) ? ((((ghu)this.a.f().s().a().get(0)).A() == null)) : false;
  }
  
  private void e() {
    this.b = mxn.b(this.f);
    this.a.f().t().a(new jtw(this));
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
  
  public void a(jsr paramjsr) {
    this.h.b(new jty(this, paramjsr), b(paramjsr));
  }
  
  public void a(jss paramjss) {
    this.h.a(new jtx(this, paramjss), b(paramjss));
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
      jtz jtz = new jtz(this);
      mzn.a(new mzp[] { mzp1, mzp2 }, jtz);
      return;
    } 
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jtv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */