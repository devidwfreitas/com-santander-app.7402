import android.app.Activity;
import java.util.List;
import java.util.Vector;

public class mkb implements mjj, mjq, mka {
  private mjz a;
  
  private Activity b;
  
  private List<ftq> c;
  
  private mji d;
  
  private mjp e;
  
  private int f = 0;
  
  private String g = "";
  
  private String h = "";
  
  private String i = "";
  
  private String j = "";
  
  private String k;
  
  private ftq l;
  
  public mkb(mjz parammjz, List<ftq> paramList) {
    this.a = parammjz;
    this.c = paramList;
    this.b = (Activity)parammjz;
    this.d = new mjk(this, this.b);
    this.e = new mjr(this);
  }
  
  private ftd c(miy parammiy) {
    ftd ftd = new ftd();
    ftd.d(parammiy.e());
    ftd.e(parammiy.a());
    ftd.f(parammiy.b());
    ftd.a(parammiy.f());
    ftd.g(parammiy.c());
    ftd.c(parammiy.h());
    ftd.b(parammiy.g());
    ftd.h(parammiy.d());
    return ftd;
  }
  
  private ftt c(mjf parammjf) {
    ftt ftt = new ftt();
    ftt.a(parammjf.a());
    ftt.b(parammjf.b());
    ftt.c(parammjf.c());
    ftt.d(parammjf.d());
    ftt.e(parammjf.e());
    ftt.f(parammjf.f());
    ftt.g(parammjf.g());
    Vector<ftu> vector = new Vector();
    if (vector.size() > 0)
      for (mjd mjd : parammjf.h()) {
        ftu ftu = new ftu();
        ftu.b(mjd.a());
        ftu.c(mjd.b());
        ftu.d(mjd.c());
        ftu.a(mjd.d());
        vector.add(ftu);
      }  
    ftt.a(vector);
    return ftt;
  }
  
  private void d(String paramString) {
    for (int i = 0;; i++) {
      if (i < this.c.size()) {
        if (((ftq)this.c.get(i)).a().equalsIgnoreCase(paramString)) {
          this.f = i;
          this.i = ((ftq)this.c.get(i)).a();
          this.j = ((ftq)this.c.get(i)).b();
          return;
        } 
      } else {
        return;
      } 
    } 
  }
  
  private mje e() {
    mje mje = new mje();
    mje.e(((ftq)this.c.get(this.f)).c().g());
    mje.i(this.g);
    mje.k(this.i);
    mje.p(naj.a(naj.l(this.k), 15));
    return mje;
  }
  
  public void a() {
    if (this.a.n().equalsIgnoreCase("cdb10m")) {
      d("0019");
    } else if (this.a.n().equalsIgnoreCase("cdb100m")) {
      d("0025");
    } else if (this.a.n().equalsIgnoreCase("func")) {
      d("0106");
    } 
    if (!"".equals(this.i) && !"".equals(this.j)) {
      this.a.h().setText(this.j);
      this.l = this.c.get(this.f);
      b(this.i);
      return;
    } 
    b();
  }
  
  public void a(String paramString) {
    this.a.a(paramString);
  }
  
  public void a(miw parammiw) {
    this.d.a(e());
  }
  
  public void a(miy parammiy) {
    this.a.f();
    if (parammiy.e().equalsIgnoreCase("0")) {
      (new ftd()).d(parammiy.e());
      ((ftq)this.c.get(this.f)).a(c(parammiy));
      this.g = ((ftq)this.c.get(this.f)).c().i();
      this.h = ((ftq)this.c.get(this.f)).c().j();
      this.a.i().setText(naj.f(this.h));
      this.a.j().setText(String.format("%s dias (Liquidez diária)", new Object[] { Integer.valueOf(Integer.parseInt(this.g)) }));
      if (this.a.n().equalsIgnoreCase("cdb10m")) {
        this.a.k().setText(String.format("Até %s do CDI", new Object[] { parammiy.h() }));
        return;
      } 
    } else {
      return;
    } 
    if (this.a.n().equalsIgnoreCase("cdb100m")) {
      this.a.k().setText(String.format("Até %s do CDI", new Object[] { parammiy.g() }));
      return;
    } 
    if (this.a.n().equalsIgnoreCase("func")) {
      this.a.k().setText(String.format("%s do CDI", new Object[] { parammiy.j() }));
      return;
    } 
  }
  
  public void a(mjb parammjb) {
    this.a.f();
    if (parammjb.b().equalsIgnoreCase("0")) {
      this.a.a(parammjb);
      this.a.p().a();
    } 
  }
  
  public void a(mjf parammjf) {
    this.a.f();
    fuu fuu = new fuu();
    fuu.setCuenta(miq.C().f().g());
    fuu.setAgencia(miq.C().f().f());
    this.a.a(c(parammjf), this.l, fuu);
  }
  
  public void a(mjh parammjh) {
    this.a.f();
    if (parammjh.p().equalsIgnoreCase("0"))
      this.d.a(e()); 
  }
  
  public void b() {
    c();
  }
  
  public void b(String paramString) {
    this.a.e();
    mix mix = new mix();
    mix.m(paramString);
    this.d.a(mix);
  }
  
  public void b(miw parammiw) {
    this.a.f();
    this.a.a(parammiw.getMensagemErro(), false);
  }
  
  public void b(miy parammiy) {
    this.a.f();
    if (parammiy != null) {
      if (parammiy.e() != null) {
        if (!parammiy.e().equalsIgnoreCase("0")) {
          this.a.a(parammiy.f(), true);
          return;
        } 
        this.a.d();
        return;
      } 
      this.a.d();
      return;
    } 
    this.a.d();
  }
  
  public void b(mjb parammjb) {
    this.a.f();
    if (parammjb != null) {
      if (parammjb.b() != null) {
        if (!parammjb.b().equalsIgnoreCase("0")) {
          this.a.a(parammjb.a(), true);
          return;
        } 
        this.a.d();
        return;
      } 
      this.a.d();
      return;
    } 
    this.a.d();
  }
  
  public void b(mjf parammjf) {
    this.a.f();
    this.a.a(parammjf.j(), false);
  }
  
  public void b(mjh parammjh) {
    this.a.f();
    if (parammjh != null) {
      if (parammjh.p() != null) {
        if (!parammjh.p().equalsIgnoreCase("0")) {
          this.a.a(parammjh.t(), true);
          return;
        } 
        this.a.d();
        return;
      } 
      this.a.d();
      return;
    } 
    this.a.d();
  }
  
  public void c() {
    this.a.e();
    mja mja = new mja();
    this.e.a(mja);
  }
  
  public void c(String paramString) {
    this.k = paramString;
    if (!paramString.equals("")) {
      miv miv = new miv();
      miv.d(naj.a(naj.l(paramString), 15));
      miv.b(this.i);
      this.a.e();
      this.d.a(miv);
      return;
    } 
    this.a.a(this.b.getResources().getString(2131297203), false);
  }
  
  public void d() {
    mjg mjg = new mjg();
    mjg.setAgencia(miq.C().f().f());
    mjg.a("033");
    mjg.b(this.i);
    mjg.c(miq.C().f().g());
    this.d.a(mjg);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mkb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */