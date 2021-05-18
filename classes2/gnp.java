import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.util.Map;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

public class gnp {
  private static gnp a;
  
  private static String d;
  
  private ie b;
  
  private boolean c;
  
  private gnp(Context paramContext) {
    e();
    this.b = new ie(miq.C().A(), in.MBB);
    b(paramContext);
  }
  
  public static gnp a() {
    if (a == null)
      a = new gnp(MinhaConta.b()); 
    return a;
  }
  
  public static gnp a(Context paramContext) {
    if (a == null)
      a = new gnp(paramContext); 
    return a;
  }
  
  private ir a(kkt paramkkt, Properties paramProperties) {
    ir ir = new ir();
    ir.a(gny.TOKEN_VALIDADE.getEndpoint());
    ir.a(im.POST);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", String.valueOf(paramProperties.get("appKey")));
      jSONObject2.put("versao-mbb", d);
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("ticket", paramkkt.a());
      jSONObject1.put("siglaSistema", "MBB");
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
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
  
  private void b(Context paramContext) {
    try {
      d = (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0)).versionName;
      return;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("Error", nameNotFoundException.toString());
      return;
    } 
  }
  
  private void e() {
    if (miq.C().A() == null)
      miq.C().a(il.PROD); 
  }
  
  private kku f() {
    kku kku = new kku();
    kku.setConnUuid(miq.C().i());
    kku.setTokenSessao(miq.C().j());
    kku.a(miq.C().f().m());
    return kku;
  }
  
  private JSONObject g() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
      jSONObject.put("Content-Type", "application/json");
      jSONObject.put("versao-mbb", d);
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
      return jSONObject;
    } 
  }
  
  public ir a(String paramString, im paramim, JSONObject paramJSONObject1, JSONObject paramJSONObject2, boolean paramBoolean) {
    ir ir = new ir();
    ir.a(paramString);
    ir.a(paramim);
    if (paramJSONObject1 != null) {
      try {
        paramJSONObject1.put("versao-mbb", d);
      } catch (JSONException jSONException) {
        Log.e("Error", jSONException.getMessage());
      } 
      ir.a(paramJSONObject1);
      ir.a(paramJSONObject2);
      ir.a(Boolean.valueOf(paramBoolean));
      return ir;
    } 
    ir.a(g());
    ir.a(paramJSONObject2);
    ir.a(Boolean.valueOf(paramBoolean));
    return ir;
  }
  
  public ir a(String paramString, im paramim, JSONObject paramJSONObject, boolean paramBoolean) {
    return a(paramString, paramim, g(), paramJSONObject, paramBoolean);
  }
  
  public ir a(String paramString, im paramim, boolean paramBoolean) {
    return a(paramString, paramim, new JSONObject(), paramBoolean);
  }
  
  public void a(ih paramih) {
    (new kkv(new gnq(this, paramih))).execute((Object[])new kku[] { f() });
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public ie b() {
    return d() ? this.b : null;
  }
  
  public void b(ih paramih) {
    (new nea(new gns(this, paramih))).a();
  }
  
  public ie c() {
    return (this.b == null) ? null : this.b;
  }
  
  public boolean d() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */