import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class nhd implements nje {
  private final nhp a;
  
  private final String b;
  
  private final nhc c;
  
  private final String d;
  
  public nhd(nkj paramnkj, nhp paramnhp, String paramString) {
    this.a = paramnhp;
    this.c = paramnkj.o();
    this.d = paramString;
    if (paramnkj.p() != null) {
      byte b;
      if (paramnkj.p().endsWith("data=")) {
        this.b = paramnkj.p();
        return;
      } 
      StringBuilder stringBuilder = (new StringBuilder()).append(paramnkj.p());
      if (paramnkj.p().contains("?")) {
        b = 38;
      } else {
        b = 63;
      } 
      this.b = stringBuilder.append(b).append("data=").toString();
      return;
    } 
    this.b = String.format(Locale.ROOT, "https://datacloud.tealiumiq.com/%s/%s/8/i.gif?data=", new Object[] { paramnkj.c(), paramnkj.d() });
  }
  
  private String b(nil paramnil) {
    JSONObject jSONObject = paramnil.b().put("cp.utag_main_v_id", this.d);
    jSONObject = (new JSONObject()).put("data", jSONObject);
    return this.b + URLEncoder.encode(jSONObject.toString(), "UTF-8");
  }
  
  public void a(nil paramnil) {
    try {
      String str = b(paramnil);
      this.a.c(nii.b(str).a());
      return;
    } catch (JSONException jSONException) {
    
    } catch (UnsupportedEncodingException unsupportedEncodingException) {}
    this.c.b(unsupportedEncodingException);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */