import android.app.Activity;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class gxg implements gxs {
  public mip a;
  
  private htz b;
  
  private gxu c;
  
  private Activity d;
  
  private SharedPreferences e;
  
  private hhq f;
  
  private hxh g;
  
  private boolean h = true;
  
  private final gyd i;
  
  private gxb j;
  
  private hya k;
  
  private gww l;
  
  private gxc m;
  
  private jos n;
  
  public gxg(gxu paramgxu, Activity paramActivity, gww paramgww) {
    this.c = paramgxu;
    this.d = paramActivity;
    this.l = paramgww;
    this.e = paramActivity.getSharedPreferences("cardPreferences", 0);
    this.a = (mip)miq.C();
    this.f = hhq.h();
    this.g = hxh.h();
    this.b = htz.h();
    this.i = gyd.n();
    this.j = gxb.a();
    this.k = hyb.j();
    this.n = new jos();
  }
  
  private gta a(gwr paramgwr, gxa paramgxa) {
    gta gta = new gta();
    switch (gxr.c[paramgwr.ordinal()]) {
      default:
        if (paramgxa.d() != null) {
          str = paramgxa.d();
        } else {
          str = "";
        } 
        gta.a(str);
        gta.b(2130838733);
        gta.c(2130838731);
        if (paramgxa.f() != null) {
          str = paramgxa.f();
        } else {
          str = "";
        } 
        gta.c(str);
        if (paramgxa.i() != null) {
          str = paramgxa.i();
        } else {
          str = "";
        } 
        gta.d(str);
        if (paramgxa.j() != null) {
          str = paramgxa.j();
          gta.e(str);
          return gta;
        } 
        break;
      case 1:
        if (paramgxa.e() != null) {
          str = paramgxa.e();
        } else {
          str = "";
        } 
        gta.b(str);
        gta.a(2130838730);
    } 
    String str = "";
    gta.e(str);
    return gta;
  }
  
  private gta a(gxa paramgxa) {
    gta gta;
    String str = paramgxa.h();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            gta = a(gwr.padrao, paramgxa);
            gta.a(gwq.tela);
            return gta;
          case 0:
            break;
        } 
        gta = a(gwr.padrao, (gxa)gta);
        gta.a(gwq.link);
        gta.c(false);
        return gta;
      case 2336762:
        break;
    } 
    if (str.equals("LINK"))
      b = 0; 
  }
  
  private gta a(jnd paramjnd) {
    gta gta = new gta();
    gta.b(paramjnd.c());
    gta.a(gwq.lojaOnline);
    gta.a((String)null);
    gta.a(paramjnd.b());
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c(paramjnd.a());
    gta.d((String)null);
    gta.e(null);
    gta.c(false);
    return gta;
  }
  
  private ArrayList<gta> a(ArrayList<gta> paramArrayList) {
    ArrayList<gta> arrayList = new ArrayList();
    for (int i = paramArrayList.size() - 1; i >= 0; i--)
      arrayList.add(paramArrayList.get(i)); 
    return arrayList;
  }
  
  private void a(gkw paramgkw, gta paramgta) {
    (new gxv(paramgkw, this.d)).a(paramgta.f(), paramgta.i());
  }
  
  private void a(gkw paramgkw, gta paramgta, String paramString) {
    (new gxv(paramgkw, this.d)).a(paramgta.d(), paramString, paramgta.f(), paramgta.i());
  }
  
  private Boolean b(gta paramgta) {
    return !this.h ? Boolean.valueOf(false) : ((paramgta != null && (paramgta.e().equals(gwq.investimento) || paramgta.e().equals(gwq.poupanca))) ? Boolean.valueOf(false) : Boolean.valueOf(true));
  }
  
  private ArrayList<gta> b(ArrayList<gta> paramArrayList) {
    gta gta = paramArrayList.get(paramArrayList.size() - 1);
    paramArrayList.remove(gta);
    Collections.reverse(paramArrayList);
    paramArrayList.add(gta);
    return paramArrayList;
  }
  
  private void d() {
    (new gxv(new gxh(this), this.d)).a();
  }
  
  private void e() {
    this.n.a(new gxi(this));
  }
  
  private void f() {
    boolean bool = true;
    if (this.j.d()) {
      this.e.edit().putBoolean("sortCardState", true).commit();
      return;
    } 
    SharedPreferences.Editor editor = this.e.edit();
    if (this.e.getBoolean("sortCardState", false))
      bool = false; 
    editor.putBoolean("sortCardState", bool).commit();
  }
  
  private gta g() {
    gta gta2 = null;
    String str = this.e.getString("cpfCDB", "");
    gta gta1 = gta2;
    if (str != "")
      try {
        str = new String(Base64.decode(str, 0));
        gta1 = gta2;
        if (str.equalsIgnoreCase(miq.C().f().k())) {
          gta1 = gta2;
          if (this.e.getBoolean("isCardCDB", false))
            gta1 = l(); 
        } 
        return gta1;
      } catch (Exception exception) {
        Log.e("Error", exception.getMessage());
        return null;
      }  
    return (gta)exception;
  }
  
  private gta h() {
    if (this.a.f().q().a() != null && this.a.f().q().a().size() > 0) {
      Boolean bool;
      Float float_ = Float.valueOf(Float.parseFloat(naj.p(((Conta)this.a.f().q().a().get(0)).getExtractoHome().u().replaceAll("\\.", "").replace(",", ""))) / 100.0F);
      if (this.a.f().u().a() != null && this.a.f().u().a().a() != null) {
        boolean bool1;
        if (Float.valueOf(Float.parseFloat(naj.p(this.a.f().u().a().a().replaceAll("\\.", "").replace(",", ""))) / 100.0F).floatValue() > 0.0F) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        bool = Boolean.valueOf(bool1);
      } else {
        bool = Boolean.valueOf(false);
      } 
      switch (mzr.d()) {
        default:
          return null;
        case 3:
        case 4:
          if (float_.floatValue() < 500.0F)
            if (bool.booleanValue())
              return k();  
          return j();
        case 2:
        case 5:
          if (float_.floatValue() < 200.0F)
            if (bool.booleanValue())
              return k();  
          return i();
        case 1:
          break;
      } 
      if (float_.floatValue() < 100.0F)
        if (bool.booleanValue())
          return k();  
      return i();
    } 
  }
  
  private gta i() {
    gta gta = new gta();
    gta.b(this.d.getResources().getString(2131297081));
    gta.a(gwq.poupanca);
    gta.a((String)null);
    gta.a(2130838732);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    return gta;
  }
  
  private gta j() {
    gta gta = new gta();
    gta.b(this.d.getResources().getString(2131297081));
    gta.a(gwq.investimento);
    gta.a((String)null);
    gta.a(2130838732);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    return gta;
  }
  
  private gta k() {
    gta gta = new gta();
    gta.b(this.d.getResources().getString(2131297079));
    gta.a(gwq.emprestimo);
    gta.a((String)null);
    gta.a(2130838730);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    return gta;
  }
  
  private gta l() {
    gta gta = new gta();
    gta.b(this.d.getResources().getString(2131296814));
    gta.a(gwq.cardCDB);
    gta.a((String)null);
    gta.a(2130838729);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    return gta;
  }
  
  private gta m() {
    gta gta = new gta();
    gta.b(this.d.getResources().getString(2131298185));
    gta.a(gwq.carrinhoAbandonadoPDI);
    gta.a((String)null);
    gta.a(2130838732);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    return gta;
  }
  
  public void a() {
    this.c.a(3);
    if (this.a.f().w() == null)
      this.a.f().a(new gwx()); 
    f();
    if (this.a.f().w().a().size() >= 1) {
      this.i.d();
      this.f.d();
      this.g.d();
      this.b.d();
      this.j.e();
      this.c.a(this.a.f().w().a());
      return;
    } 
    e();
  }
  
  public void a(gta paramgta) {
    byte b;
    gwq gwq = paramgta.e();
    switch (gxr.a[gwq.ordinal()]) {
      default:
        return;
      case 1:
        if (paramgta.b() != null && paramgta.b().equalsIgnoreCase("acordo")) {
          b = 9;
        } else {
          b = 3;
        } 
        this.k.a(b, new gxq(this, b));
        return;
      case 2:
        this.c.e();
        return;
      case 4:
        break;
    } 
    jcw.c(this.d, "POUPANCA");
  }
  
  public void a(List<gta> paramList) {
    gta gta = m();
    if (gta != null)
      paramList.add(gta); 
  }
  
  public void b() {
    this.c.a(new gxj(this));
  }
  
  public void c() {
    ArrayList<gta> arrayList = new ArrayList();
    ipi ipi = miq.C().f().C();
    if (this.c.h() && ipi.b("00000115"))
      a(arrayList); 
    if (this.j.d())
      arrayList.add(this.j.b()); 
    if (this.m.a().size() > 0)
      for (int i = 0; i < this.m.a().size(); i++) {
        gta gta1;
        gxa gxa = this.m.a().get(i);
        if (!gxa.b()) {
          gta1 = a(gxa);
          if (gta1 != null)
            arrayList.add(gta1); 
        } else {
          this.h = false;
          this.c.a((gxa)gta1);
        } 
      }  
    if (this.a.z() != null && mzr.d() != 8)
      arrayList.add(a(this.a.z().a())); 
    gta gta = g();
    if (gta != null)
      arrayList.add(gta); 
    if (arrayList.size() > 1)
      if (this.e.getBoolean("sortCardState", false)) {
        arrayList = a(arrayList);
      } else {
        arrayList = b(arrayList);
      }  
    if (this.i.e())
      arrayList.add(this.i.g()); 
    if (this.b.e())
      arrayList.add(this.b.g()); 
    if (this.f.e())
      arrayList.add(this.f.g()); 
    if (this.g.e())
      arrayList.add(this.g.g()); 
    if (arrayList.size() > 0) {
      this.c.a(arrayList);
      this.a.f().w().a(arrayList);
    } 
    gpu.a(b((gta)null));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */