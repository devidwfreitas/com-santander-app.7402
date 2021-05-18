import android.util.Log;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "validacaoTransacional")
public class mwy {
  private static final String a = "";
  
  @Element(required = false)
  private String acaoTransacional;
  
  private transient Map<String, List<String>> b;
  
  private Boolean c = Boolean.valueOf(true);
  
  private Boolean d = Boolean.valueOf(true);
  
  private Boolean e = Boolean.valueOf(true);
  
  private Boolean f = Boolean.valueOf(true);
  
  private Boolean g = Boolean.valueOf(true);
  
  private Boolean h = Boolean.valueOf(true);
  
  private Boolean i = Boolean.valueOf(true);
  
  @Element(required = false)
  private mwx idCso;
  
  @Element(required = false)
  private ive idSantander;
  
  private Boolean j = Boolean.valueOf(false);
  
  public String a() {
    return this.acaoTransacional;
  }
  
  public void a(ive paramive) {
    this.idSantander = paramive;
  }
  
  public void a(Boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public void a(String paramString) {
    this.acaoTransacional = paramString;
  }
  
  public void a(Map<String, List<String>> paramMap) {
    if (this.idCso != null) {
      String str2 = ((List<String>)paramMap.get("desafio")).get(0);
      String str1 = ((List<String>)paramMap.get("sequencia")).get(0);
      this.idCso.c(str2);
      this.idCso.b(str1);
    } 
  }
  
  public void a(mwx parammwx) {
    this.idCso = parammwx;
  }
  
  public void a(boolean paramBoolean) {
    this.h = Boolean.valueOf(paramBoolean);
  }
  
  public mwx b() {
    return this.idCso;
  }
  
  public void b(Boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public ive c() {
    return this.idSantander;
  }
  
  public void c(Boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public Boolean d() {
    return this.c;
  }
  
  public void d(Boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public Boolean e() {
    return this.d;
  }
  
  public void e(Boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public Boolean f() {
    return this.e;
  }
  
  public void f(Boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  public Boolean g() {
    return this.g;
  }
  
  public void g(Boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public Boolean h() {
    return this.f;
  }
  
  public Boolean i() {
    return this.h;
  }
  
  public Boolean j() {
    return this.i;
  }
  
  public Boolean k() {
    return this.j;
  }
  
  public void l() {
    miq.C().f(false);
    if (b() != null)
      b().f(""); 
    if (c() != null)
      c().b(""); 
  }
  
  public JSONObject m() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", miq.C().q());
      if (b() != null) {
        jSONObject.put("challengeValue", nab.a().b(b().g()));
        return jSONObject;
      } 
      if (c() != null) {
        jSONObject.put("otp", nab.a().b(c().c()));
        return jSONObject;
      } 
    } catch (Exception exception) {
      Log.e("", exception.getMessage());
    } 
    return jSONObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mwy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */