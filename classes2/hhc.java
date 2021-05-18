import android.text.TextUtils;
import com.santander.app.contacorrente.domain.Conta;
import java.util.List;

public class hhc implements hhb {
  private static final int a = 1;
  
  private static final int b = 2;
  
  private hgw c;
  
  private hgc d;
  
  private mip e;
  
  private Conta f;
  
  private String g;
  
  private String h;
  
  @hfr
  private int i;
  
  private int j;
  
  private hfx k;
  
  private List<String> l;
  
  public hhc(hgw paramhgw) {
    this.c = paramhgw;
    this.d = hgh.f();
    this.e = (mip)miq.C();
  }
  
  private void a(hfx paramhfx) {
    this.k = paramhfx;
    this.c.a(paramhfx.b());
    q();
    g();
    h();
    i();
    j();
    d();
    this.c.c();
    this.c.r();
  }
  
  private void a(hfy paramhfy) {
    this.c.r();
    this.c.a(paramhfy);
  }
  
  private void b(hfx paramhfx) {
    this.k = paramhfx;
    k();
    e();
    this.c.r();
  }
  
  private hfk c(String paramString) {
    if (this.i == 1) {
      Conta conta1 = this.f;
      return new hfk(conta1, this.k, this.g, this.i, paramString);
    } 
    Conta conta = null;
    return new hfk(conta, this.k, this.g, this.i, paramString);
  }
  
  private void c(hfx paramhfx) {
    this.k = paramhfx;
    k();
    this.c.r();
  }
  
  private void d(hfx paramhfx) {
    String str;
    this.k = paramhfx;
    if (this.c.i()) {
      str = "1";
    } else {
      str = this.h;
    } 
    hfk hfk = c(str);
    this.d.a(hfk, this.f, this.i, new hhh(this));
  }
  
  private void g() {
    if (this.k.d().equalsIgnoreCase("APENAS_PAGAMENTO_EM_BOLETO")) {
      this.c.a(2131296349);
    } else if (this.k.d().equalsIgnoreCase("APENAS_PAGAMENTO_EM_DEBITO")) {
      this.c.a(2131296351);
    } 
    this.c.b(this.k.e());
    b(this.k.e());
  }
  
  private void h() {
    List<String> list = this.d.e();
    this.c.a(list);
  }
  
  private void i() {
    List<String> list = this.d.c();
    int i = list.indexOf(String.valueOf(this.k.g()));
    this.c.a(list, i);
  }
  
  private void j() {
    List<String> list = this.d.d();
    int i = list.indexOf(String.valueOf(this.k.h()));
    this.c.b(list, i);
  }
  
  private void k() {
    if (this.k.c().equalsIgnoreCase("PAGAMENTO_A_VISTA_E_PARCELADO")) {
      this.c.c(this.k);
      l();
    } else if (this.k.c().equalsIgnoreCase("APENAS_PAGAMENTO_A_VISTA")) {
      this.c.b(this.k);
    } else if (this.k.c().equalsIgnoreCase("APENAS_PAGAMENTO_PARCELADO")) {
      this.c.a(this.k);
    } 
    m();
  }
  
  private void l() {
    float f = 0.0F;
    try {
      float f1 = hyx.a(this.k.j());
      try {
        float f2 = hyx.a(this.k.t());
        f = f2;
      } catch (Exception exception) {}
      if (f > f1) {
        this.c.j();
        return;
      } 
    } catch (Exception exception) {
      float f1 = 0.0F;
      try {
        float f2 = hyx.a(this.k.t());
        f = f2;
      } catch (Exception exception1) {}
      if (f > f1) {
        this.c.j();
        return;
      } 
    } 
    this.c.k();
  }
  
  private void m() {
    n();
    o();
  }
  
  private void n() {
    try {
      if (hyx.a(this.k.u()) == 0.0F)
        throw new Exception(); 
    } catch (Exception exception) {
      this.c.g();
    } 
  }
  
  private void o() {
    try {
      if (hyx.a(this.k.v()) == 0.0F)
        throw new Exception(); 
    } catch (Exception exception) {
      this.c.h();
    } 
  }
  
  private void p() {
    this.c.d();
    this.c.q();
    this.d.a(new hhd(this));
  }
  
  private void q() {
    if (this.k.o() >= 60) {
      this.c.d(0);
      return;
    } 
    this.c.d(1);
  }
  
  private void r() {
    this.c.r();
    this.c.s();
  }
  
  private void s() {
    this.c.q();
    hfk hfk = z();
    this.d.a(hfk, new hhe(this));
  }
  
  private void t() {
    this.c.r();
    this.c.s();
  }
  
  private void u() {
    this.c.q();
    hfk hfk = z();
    this.d.a(hfk, new hhf(this));
  }
  
  private void v() {
    this.c.r();
    this.c.s();
  }
  
  private void w() {
    String str;
    this.c.q();
    if (this.c.i()) {
      str = "1";
    } else {
      str = this.h;
    } 
    hfk hfk = c(str);
    this.d.a(hfk, new hhg(this));
  }
  
  private void x() {
    this.c.r();
    this.c.s();
  }
  
  private void y() {
    this.c.r();
    this.c.s();
  }
  
  private hfk z() {
    return c(this.h);
  }
  
  public void a() {
    p();
  }
  
  public void a(int paramInt) {
    this.f = this.e.f().q().a().get(paramInt);
  }
  
  public void a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      this.g = paramString;
      if (this.j == 2)
        u(); 
    } 
  }
  
  public void b() {}
  
  public void b(@hfr int paramInt) {
    this.i = paramInt;
    if (this.j == 2)
      u(); 
  }
  
  public void b(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      this.h = paramString;
      if (this.j == 2)
        u(); 
    } 
  }
  
  public boolean c() {
    if (this.j == 1)
      return true; 
    d();
    return false;
  }
  
  public void d() {
    this.j = 1;
    this.c.b();
    this.c.f();
    this.c.o();
  }
  
  public void e() {
    this.j = 2;
    this.c.a();
    this.c.e();
    this.c.p();
  }
  
  public void f() {
    if (this.j == 1) {
      hhr.b();
      s();
      return;
    } 
    hhr.c();
    w();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hhc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */