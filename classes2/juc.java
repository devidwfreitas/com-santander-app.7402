import android.app.Activity;
import org.json.JSONObject;

public class juc implements jua {
  private mip a = (mip)miq.C();
  
  private Activity b;
  
  private jwj c;
  
  private jub d;
  
  public juc(Activity paramActivity, jub paramjub) {
    this.b = paramActivity;
    this.c = new jwj(this.b);
    this.d = paramjub;
  }
  
  private jsr a(jsz paramjsz) {
    jsr jsr = new jsr();
    if (paramjsz.j() != null) {
      str = paramjsz.j();
    } else {
      str = "";
    } 
    jsr.p(str);
    jsr.k(String.format("%.2f", new Object[] { paramjsz.a() }));
    jsr.g(paramjsz.b());
    if (paramjsz.c()) {
      str = "S";
    } else {
      str = "N";
    } 
    jsr.f(str);
    if (paramjsz.e()) {
      str = "S";
    } else {
      str = "N";
    } 
    jsr.m(str);
    if (paramjsz.d()) {
      str = "S";
      jsr.i(str);
      jsr.a(paramjsz.getFields());
      jsr.a(paramjsz.getOsgData());
      jsr.h(paramjsz.f());
      jsr.j(String.valueOf(paramjsz.i()));
      return jsr;
    } 
    String str = "N";
    jsr.i(str);
    jsr.a(paramjsz.getFields());
    jsr.a(paramjsz.getOsgData());
    jsr.h(paramjsz.f());
    jsr.j(String.valueOf(paramjsz.i()));
    return jsr;
  }
  
  private jss b(String paramString) {
    jss jss = new jss();
    jss.d(paramString);
    jss.e(nak.e());
    jss.f("N");
    jss.setTokenSessao(this.a.j());
    jss.setConnUuid(this.a.i());
    jss.setConta(this.a.f().g());
    jss.setAgencia(this.a.f().f());
    return jss;
  }
  
  private iq c(String paramString) {
    String str1;
    String str2 = "";
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("barcode", paramString);
      paramString = nab.a().b(jSONObject.toString());
    } catch (Exception exception) {
      str1 = str2;
    } 
    return gnz.a().a("payment/v1/checkBarcode", im.POST, str1, true);
  }
  
  public void a(String paramString) {
    if (!miq.C().w() || !miq.C().f().C().b("00000121")) {
      this.c.a(new jud(this), b(paramString));
      return;
    } 
    this.c.a(new jue(this, paramString), c(paramString));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\juc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */