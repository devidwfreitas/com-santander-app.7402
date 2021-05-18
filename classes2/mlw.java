import android.app.Activity;
import org.json.JSONObject;

public class mlw implements mlu {
  private Activity a;
  
  private mlv b;
  
  private mqc c;
  
  private miq d;
  
  public mlw(Activity paramActivity, mlv parammlv) {
    this.a = paramActivity;
    this.b = parammlv;
    this.c = new mqc(paramActivity);
    this.d = miq.C();
  }
  
  private iq a(String paramString1, String paramString2) {
    String str1;
    String str2 = "";
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("branch", paramString1);
      jSONObject.put("account", paramString2);
      paramString1 = nab.a().b(jSONObject.toString());
    } catch (Exception exception) {
      str1 = str2;
    } 
    return gnz.a().a("transfer/v1/validateBranchAndAccount", im.POST, str1, true);
  }
  
  private iq a(mkw parammkw, int paramInt) {
    String str1;
    mln mln = new mln();
    mln.a(Integer.valueOf(paramInt));
    mkr mkr = new mkr(parammkw.c(), parammkw.l(), parammkw.n());
    String str2 = parammkw.d();
    String str3 = parammkw.e() + parammkw.j();
    String str4 = parammkw.h();
    String str5 = nai.a(parammkw.f());
    String str6 = parammkw.g();
    if (nai.a(parammkw.f()).length() < 12) {
      str1 = "1";
    } else {
      str1 = "2";
    } 
    mln.a(new mlg(mkr, str2, str3, false, str4, str5, str6, str1, false));
    try {
      JSONObject jSONObject = new JSONObject(mys.b().b(mln));
      String str = nab.a().b(jSONObject.toString());
    } catch (Exception exception) {
      str1 = "";
    } 
    return gnz.a().a("transfer/v1/validateAccounts", im.POST, str1, true);
  }
  
  private mlt a(String paramString1, String paramString2, String paramString3) {
    mlt mlt = new mlt();
    mlt.a(naj.a(paramString3, 4));
    mlt.b(naj.a(paramString2, 4));
    mlt.c(naj.a(paramString1, 4));
    mlt.setConnUuid(this.d.i());
    mlt.setTokenSessao(this.d.j());
    return mlt;
  }
  
  private mlt b(String paramString1, String paramString2) {
    mlt mlt = new mlt();
    mlt.a(naj.a(paramString1, 4));
    mlt.setConta(naj.a(paramString2, 12));
    if ("6".equalsIgnoreCase(paramString2.substring(0, 1))) {
      paramString1 = "P";
      mlt.d(paramString1);
      mlt.setConnUuid(this.d.i());
      mlt.setTokenSessao(this.d.j());
      mlt.c("0033");
      return mlt;
    } 
    paramString1 = "C";
    mlt.d(paramString1);
    mlt.setConnUuid(this.d.i());
    mlt.setTokenSessao(this.d.j());
    mlt.c("0033");
    return mlt;
  }
  
  private mlj c() {
    mlj mlj = new mlj();
    mlj.setConnUuid(this.d.i());
    mlj.setTokenSessao(this.d.j());
    return mlj;
  }
  
  public void a() {
    if (!miq.C().w() || !miq.C().f().C().b("00000122")) {
      this.c.a(new mlx(this));
      return;
    } 
    this.c.b(new mly(this));
  }
  
  public void a(String paramString1, String paramString2, String paramString3, mkw parammkw, int paramInt) {
    if (!miq.C().w() || !miq.C().f().C().b("00000122")) {
      this.c.b(new mme(this), a(paramString1, paramString2, paramString3));
      return;
    } 
    this.c.c(new mmf(this), a(parammkw, paramInt));
  }
  
  public void a(String paramString1, String paramString2, mkw parammkw, int paramInt) {
    if (!miq.C().w() || !miq.C().f().C().b("00000122")) {
      this.c.a(new mmb(this), b(paramString1, paramString2));
      return;
    } 
    this.c.b(new mmc(this, parammkw, paramInt), a(paramString1, paramString2));
  }
  
  public void b() {
    if (!miq.C().w() || !miq.C().f().C().b("00000122")) {
      this.c.a(new mlz(this), c());
      return;
    } 
    this.c.c(new mma(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mlw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */