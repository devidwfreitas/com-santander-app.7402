import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;
import org.json.JSONObject;

public class mmv implements mmt {
  private static final String a = "TED";
  
  private static final String b = "DOC";
  
  private static final String c = "TEF";
  
  private Activity d;
  
  private mmu e;
  
  private mqn f;
  
  private mip g;
  
  public mmv(Activity paramActivity, mmu parammmu) {
    this.d = paramActivity;
    this.e = parammmu;
    this.f = new mqn(this.d);
    this.g = (mip)miq.C();
  }
  
  private iq b(mlo parammlo) {
    String str2;
    String str3 = mwz.a();
    mln mln = new mln();
    if (parammlo.o() != null) {
      str2 = parammlo.o();
    } else {
      str2 = "";
    } 
    mln.a(str2);
    mln.b(parammlo.d().replace(".", "").replace(",", "."));
    mln.a(this.g.f().q().a(parammlo.a().getAgencia(), parammlo.a().getCuenta()));
    if (parammlo.b() != null) {
      mln.b(parammlo.b().l());
      mln.a(null);
      mln.c("N");
      mln.a(false);
    } else {
      mln.b(null);
      mkr mkr = new mkr(parammlo.c().c(), parammlo.c().l(), parammlo.c().n());
      String str4 = parammlo.c().d();
      String str5 = parammlo.c().e() + parammlo.c().j();
      String str6 = parammlo.c().h();
      String str7 = nai.a(parammlo.c().f());
      String str8 = parammlo.c().g();
      if (nai.a(parammlo.c().f()).length() < 12) {
        str2 = "1";
      } else {
        str2 = "2";
      } 
      mln.a(new mlg(mkr, str4, str5, false, str6, str7, str8, str2, parammlo.c().k()));
      mln.c("N");
      mln.a(parammlo.c().k());
    } 
    if (parammlo.e().equals("CC")) {
      str2 = "01";
    } else {
      str2 = "11";
    } 
    mln.d(str2);
    if (parammlo.h() || parammlo.i()) {
      str2 = nak.q(parammlo.g());
    } else {
      str2 = null;
    } 
    mln.e(str2);
    if (parammlo.i()) {
      str2 = parammlo.j();
    } else {
      str2 = null;
    } 
    mln.f(str2);
    if (parammlo.i()) {
      str2 = parammlo.k();
    } else {
      str2 = null;
    } 
    mln.g(str2);
    if (str3 != null && !str3.isEmpty())
      mln.h(str3); 
    mln.a((new mzk(this.d)).a());
    try {
      JSONObject jSONObject = new JSONObject(mys.b().b(mln));
      String str = nab.a().b(jSONObject.toString());
      str1 = parammlo.f().toUpperCase();
      byte b = -1;
      switch (str1.hashCode()) {
        default:
          switch (b) {
            default:
              str1 = "";
              return gnz.a().a(str1, im.POST, str, true);
            case 0:
              str1 = "transfer/v1/ted/check";
              return gnz.a().a(str1, im.POST, str, true);
            case 1:
              str1 = "transfer/v1/doc/check";
              return gnz.a().a(str1, im.POST, str, true);
            case 2:
              break;
          } 
          break;
        case 82931:
          if (str1.equals("TED"))
            b = 0; 
        case 67864:
          if (str1.equals("DOC"))
            b = 1; 
        case 82933:
          if (str1.equals("TEF"))
            b = 2; 
      } 
    } catch (Exception exception) {
      str2 = "";
      str1 = str1.f().toUpperCase();
      byte b = -1;
      switch (str1.hashCode()) {
        default:
          switch (b) {
            default:
              str1 = "";
              return gnz.a().a(str1, im.POST, str2, true);
            case 0:
              str1 = "transfer/v1/ted/check";
              return gnz.a().a(str1, im.POST, str2, true);
            case 1:
              str1 = "transfer/v1/doc/check";
              return gnz.a().a(str1, im.POST, str2, true);
            case 2:
              break;
          } 
          break;
        case 82931:
          if (str1.equals("TED"))
            b = 0; 
        case 67864:
          if (str1.equals("DOC"))
            b = 1; 
        case 82933:
          if (str1.equals("TEF"))
            b = 2; 
      } 
    } 
    String str1 = "transfer/v1/santander/check";
    return gnz.a().a(str1, im.POST, str2, true);
  }
  
  private mky b(Conta paramConta) {
    mky mky = new mky();
    mky.setConnUuid(this.g.i());
    mky.setTokenSessao(this.g.j());
    mky.setTokenTransacao(this.g.f().m());
    mky.b(paramConta.getAgencia());
    mky.a(paramConta.getCuenta());
    mky.c("0033");
    return mky;
  }
  
  private mlq c(mlo parammlo) {
    mlq mlq = new mlq();
    mlq.setConnUuid(this.g.i());
    mlq.setTokenSessao(this.g.j());
    mlq.setTokenTransacao(this.g.f().m());
    mlq.q(parammlo.f());
    mlq.r(parammlo.d());
    mlq.b(parammlo.i());
    if (parammlo.h()) {
      mlq.a(parammlo.h());
      mlq.h(parammlo.g());
    } else {
      mlq.a(parammlo.h());
    } 
    mlq.p(parammlo.e());
    mlq.f(parammlo.a().getCuenta());
    mlq.b(parammlo.a().getAgencia());
    mlq.o(d(parammlo));
    mlq.p(parammlo.e());
    if (parammlo.b() != null) {
      mlq.c(naj.a(parammlo.b().g(), 4));
      mlq.a(naj.a(parammlo.b().h(), 4));
      mlq.e(naj.a(parammlo.b().k(), 12));
      if (!parammlo.f().equalsIgnoreCase("TEF")) {
        mlq.g(parammlo.b().c());
        mlq.k(parammlo.b().e());
      } 
    } else {
      mlq.c(naj.a(parammlo.c().c(), 4));
      mlq.a(naj.a(parammlo.c().d(), 4));
      mlq.e(naj.a(parammlo.c().e() + parammlo.c().j(), 12));
      if (!parammlo.f().equalsIgnoreCase("TEF")) {
        mlq.g(parammlo.c().f());
        mlq.k(parammlo.c().h());
      } 
    } 
    if (parammlo.i()) {
      mlq.h(parammlo.g());
      mlq.m(parammlo.j());
      mlq.n(parammlo.k());
    } 
    return mlq;
  }
  
  private String d(mlo parammlo) {
    return "01".equals(parammlo.a().getTipoConta()) ? "CC" : "CCC";
  }
  
  public void a(Conta paramConta) {
    if (!miq.C().w() || !miq.C().f().C().b("00000122")) {
      this.f.a(new mmw(this), b(paramConta));
      return;
    } 
    this.f.a(new mmx(this));
  }
  
  public void a(mlo parammlo) {
    if (!miq.C().w() || !miq.C().f().C().b("00000122")) {
      this.f.a(new mmy(this), c(parammlo));
      return;
    } 
    this.f.a(new mmz(this, parammlo), b(parammlo));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */