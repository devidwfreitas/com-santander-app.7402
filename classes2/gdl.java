import android.app.Activity;
import android.app.Dialog;
import com.santander.app.contacorrente.domain.Conta;
import java.util.List;

public class gdl implements gbk, gdk {
  private gce a;
  
  private gbj b;
  
  private gbc c;
  
  private Dialog d;
  
  private Activity e;
  
  private gaz f;
  
  public gdl(gce paramgce) {
    this.a = paramgce;
    this.e = (Activity)paramgce;
    this.b = new gbl(this, this.e);
  }
  
  public void a() {
    if (this.b != null)
      this.b.b(); 
  }
  
  public void a(Conta paramConta, String paramString, boolean paramBoolean) {
    String str2 = naj.m(paramConta.getValor());
    String str1 = paramString;
    if (paramString.indexOf("R$") > -1)
      str1 = paramString.substring(2, paramString.length()).trim(); 
    str1 = naj.m(str1);
    try {
      double d1 = Double.parseDouble(str1);
      double d2 = Double.parseDouble(str2) / 100.0D;
      if (this.a != null) {
        if (Double.valueOf(d1).doubleValue() > Double.valueOf(d2).doubleValue()) {
          this.a.d();
          return;
        } 
      } else {
        return;
      } 
      if (paramBoolean) {
        this.a.a();
        return;
      } 
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void a(gaq paramgaq, Conta paramConta, String paramString, gaz paramgaz1, gaz paramgaz2) {
    if (this.a != null) {
      String str1;
      String str2;
      String str3;
      paramgaq.f(paramConta.getAgencia());
      paramgaq.q(paramConta.getCuenta());
      paramgaq.k(paramgaz1.d());
      paramgaq.l(paramgaz1.d());
      paramgaq.p(this.c.c());
      if (paramgaz1.b().equals(gba.real)) {
        String str4 = paramgaz1.a();
        str1 = paramgaz2.a();
        paramgaz1.c();
        String str5 = paramgaz2.c();
        str3 = str4;
        str2 = str1;
        str1 = str5;
      } else {
        String str5 = str2.a();
        String str4 = str3.a();
        str1 = str2.c();
        str3.c();
        str2 = str5;
        str3 = str4;
      } 
      paramgaq.a(str3);
      paramgaq.b(str2);
      paramgaq.I(str1);
      if (str1.equalsIgnoreCase("JPY")) {
        paramgaq.A(paramString);
      } else {
        paramgaq.A(naj.m(paramString));
      } 
      paramgaq.B(this.c.i());
      paramgaq.D(this.c.d());
      paramgaq.G(this.c.h());
      paramgaq.H(this.c.g());
      paramgaq.C(this.c.e());
      paramgaq.E(this.c.f());
      paramgaq.F(this.c.j());
      this.a.a(paramgaq);
    } 
  }
  
  public void a(gas paramgas) {
    if (this.a != null && paramgas != null) {
      this.a.a(paramgas.getMensagemErro());
      return;
    } 
    if (this.a != null) {
      this.a.a("Falha ao comunicar com o sistema !");
      return;
    } 
  }
  
  public void a(gaz paramgaz1, gaz paramgaz2, String paramString1, String paramString2, String paramString3) {
    paramString1 = naj.m(paramString1);
    if (Double.parseDouble(paramString1) <= 0.0D && this.a != null)
      this.a.c(); 
    if (this.b != null) {
      this.f = paramgaz1;
      this.b.a(paramgaz1, paramgaz2, paramString1, paramString2, paramString3);
    } 
  }
  
  public void a(gbc paramgbc) {
    this.c = paramgbc;
    if (this.a != null) {
      if (paramgbc.b() == null) {
        paramgbc = paramgbc.a();
        if (Double.parseDouble(paramgbc.i()) > 0.0D) {
          paramgbc.h(paramgbc.i());
          paramgbc.c(naj.f(paramgbc.d()));
          paramgbc.g(naj.f(paramgbc.h()));
          paramgbc.f(naj.a(paramgbc.g(), false));
          paramgbc.d(naj.f(paramgbc.e()));
          paramgbc.e(naj.f(paramgbc.f()));
          paramgbc.i(naj.a(paramgbc.j(), true));
          this.a.a(paramgbc);
          if (this.f.b().equals(gba.real)) {
            this.a.a(0);
            return;
          } 
          this.a.a(8);
          return;
        } 
        this.a.a(this.e.getResources().getString(2131296756));
        return;
      } 
    } else {
      return;
    } 
    if (paramgbc.b().equalsIgnoreCase("S")) {
      this.d = mxn.a(this.e, paramgbc.getMensagemErro(), this.e.getResources().getString(2131296718), new gdm(this));
      return;
    } 
  }
  
  public void a(List<gaz> paramList) {
    if (this.a != null)
      this.a.b(paramList); 
  }
  
  public void b(gbc paramgbc) {
    if (this.a != null && paramgbc != null) {
      this.a.a(paramgbc.getMensagemErro());
      return;
    } 
    if (this.a != null) {
      this.a.a("Falha ao comunicar com o sistema !");
      return;
    } 
  }
  
  public void b(List<Conta> paramList) {
    if (this.a != null) {
      paramList = (List)gmy.a(paramList);
      this.a.a((List)paramList);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */