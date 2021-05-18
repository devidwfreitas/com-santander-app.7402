import android.content.Context;
import android.content.pm.PackageManager;
import com.santander.app.MinhaConta;
import java.util.Map;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

public class gnz {
  public static final iv a = new goc();
  
  public static final iv b = new god();
  
  private static gnz c;
  
  private static String e;
  
  private boolean d;
  
  private je f;
  
  private je g;
  
  private je h;
  
  private gnz(Context paramContext) {
    h();
    this.f = new je();
    this.f.a(miq.C().A(), in.MBB).a(ip.PAAS).a(b);
    this.g = new je();
    this.g.a(miq.C().A(), in.MBB).a(ip.HUB);
    this.h = new je();
    this.h.a(miq.C().A(), in.MBB).a(ip.REST).a(a);
    a(paramContext);
  }
  
  private gnz(Context paramContext, ip paramip) {
    h();
    this.f = new je();
    this.f.a(miq.C().A(), in.MBB).a(paramip).a(b);
    this.g = new je();
    this.g.a(miq.C().A(), in.MBB).a(ip.HUB);
    this.h = new je();
    this.h.a(miq.C().A(), in.MBB).a(ip.REST).a(a);
    a(paramContext);
  }
  
  public static gnz a() {
    if (c == null)
      c = new gnz(MinhaConta.b()); 
    return c;
  }
  
  public static gnz a(Context paramContext, ip paramip) {
    if (c == null)
      c = new gnz(paramContext, paramip); 
    return c;
  }
  
  private iq a(kkt paramkkt, Properties paramProperties) {
    iq iq = new iq();
    iq.a(gny.TOKEN_VALIDADE.getEndpoint());
    iq.a(im.POST);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", String.valueOf(paramProperties.get("appKey")));
      jSONObject2.put("versao-mbb", e);
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("ticket", paramkkt.a());
      jSONObject1.put("siglaSistema", "MBB");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
  }
  
  public static String a(Map<?, ?> paramMap) {
    StringBuilder stringBuilder = new StringBuilder();
    for (Map.Entry<?, ?> entry : paramMap.entrySet()) {
      if (stringBuilder.length() > 0)
        stringBuilder.append('&'); 
      stringBuilder.append((String)entry.getKey()).append('=').append(entry.getValue());
    } 
    return stringBuilder.toString();
  }
  
  private void a(Context paramContext) {
    try {
      e = (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0)).versionName;
      return;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      nameNotFoundException.printStackTrace();
      return;
    } 
  }
  
  private void h() {
    if (miq.C().A() == null)
      miq.C().a(il.PROD); 
  }
  
  private JSONObject i() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", String.valueOf(mzx.b().c().get("appKey")));
      jSONObject.put("Content-Type", "application/json");
      jSONObject.put("versao-mbb", e);
      return jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      return jSONObject;
    } 
  }
  
  private JSONObject j() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("Content-Type", "application/json");
      jSONObject.put("accept", "application/json");
      jSONObject.put("Accept-Encoding", "gzip");
      jSONObject.put("Content-Encoding", "gzip");
      jSONObject.put("x-uid", miq.C().i());
      jSONObject.put("x-authorization-token", miq.C().f().a());
      miq.C().f().a("");
      return jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      return jSONObject;
    } 
  }
  
  private kku k() {
    kku kku = new kku();
    kku.setConnUuid(miq.C().i());
    kku.setTokenSessao(miq.C().j());
    kku.a(miq.C().f().m());
    return kku;
  }
  
  public iq a(String paramString1, im paramim, String paramString2, boolean paramBoolean) {
    return a(paramString1, paramim, j(), paramString2, paramBoolean);
  }
  
  public iq a(String paramString1, im paramim, JSONObject paramJSONObject, String paramString2, boolean paramBoolean) {
    iq iq = new iq();
    iq.a(paramString1);
    iq.a(paramim);
    if (paramJSONObject != null) {
      iq.a(paramJSONObject);
      iq.a(paramString2);
      iq.a(Boolean.valueOf(paramBoolean));
      return iq;
    } 
    iq.a(j());
    iq.a(paramString2);
    iq.a(Boolean.valueOf(paramBoolean));
    return iq;
  }
  
  public ir a(String paramString, im paramim, JSONObject paramJSONObject1, JSONObject paramJSONObject2, boolean paramBoolean) {
    ir ir = new ir();
    ir.a(paramString);
    ir.a(paramim);
    if (paramJSONObject1 != null) {
      try {
        paramJSONObject1.put("versao-mbb", e);
      } catch (JSONException jSONException) {
        jSONException.printStackTrace();
      } 
      ir.a(paramJSONObject1);
      ir.a(paramJSONObject2);
      ir.a(Boolean.valueOf(paramBoolean));
      return ir;
    } 
    ir.a(i());
    ir.a(paramJSONObject2);
    ir.a(Boolean.valueOf(paramBoolean));
    return ir;
  }
  
  public ir a(String paramString, im paramim, JSONObject paramJSONObject, boolean paramBoolean) {
    return a(paramString, paramim, i(), paramJSONObject, paramBoolean);
  }
  
  public ir a(String paramString, im paramim, boolean paramBoolean) {
    return a(paramString, paramim, new JSONObject(), paramBoolean);
  }
  
  public void a(ih paramih) {
    (new kkv(new goa(this, paramih))).execute((Object[])new kku[] { k() });
  }
  
  public void a(je paramje) {
    this.h = paramje;
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public je b() {
    return this.f;
  }
  
  public je c() {
    return (this.f == null) ? null : this.f;
  }
  
  public je d() {
    return this.g;
  }
  
  public je e() {
    return (this.f == null) ? null : this.f;
  }
  
  public boolean f() {
    return this.d;
  }
  
  public je g() {
    return this.h;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */