import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.Map;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

public class gnt {
  private static gnt a;
  
  private static String f;
  
  private Context b;
  
  private je c;
  
  private boolean d;
  
  private boolean e;
  
  private gnt(Context paramContext, boolean paramBoolean) {
    this.b = paramContext;
    d();
    this.c = new je();
    this.c.a(miq.C().A(), in.MBB).a(Boolean.valueOf(true)).a(ip.HUB);
    a(paramContext);
  }
  
  public static gnt a(Context paramContext, boolean paramBoolean) {
    if (a == null)
      a = new gnt(paramContext, paramBoolean); 
    return a;
  }
  
  private ir a(kks paramkks) {
    ir ir = new ir();
    if (this.e) {
      ir.a(ilr.PUBLIC_KEY.getEndpoint());
    } else {
      ir.a(gny.SECURY_PUBLIC_KEY.getEndpoint());
    } 
    ir.a(im.POST);
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("X-Application-Key", paramkks.c());
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("clientPublicKey", paramkks.a());
      jSONObject2.put("system", paramkks.b());
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
  
  private void a(Context paramContext) {
    try {
      f = (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0)).versionName;
      return;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("Error", nameNotFoundException.toString());
      return;
    } 
  }
  
  private JSONObject c() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", String.valueOf(mzy.a(this.b, this.e).a().get("appKey")));
      jSONObject.put("Content-Type", "application/json");
      jSONObject.put("v:", f);
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
      return jSONObject;
    } 
  }
  
  private void d() {
    if (miq.C().A() == null)
      miq.C().a(il.PROD); 
  }
  
  public ir a(String paramString, im paramim, JSONObject paramJSONObject1, JSONObject paramJSONObject2, boolean paramBoolean) {
    ir ir = new ir();
    ir.a(paramString);
    ir.a(paramim);
    if (paramJSONObject1 != null) {
      try {
        paramJSONObject1.put("v:", f);
      } catch (JSONException jSONException) {
        Log.e("Error", jSONException.getMessage());
      } 
      ir.a(paramJSONObject1);
      ir.a(paramJSONObject2);
      ir.a(Boolean.valueOf(paramBoolean));
      return ir;
    } 
    ir.a(c());
    ir.a(paramJSONObject2);
    ir.a(Boolean.valueOf(paramBoolean));
    return ir;
  }
  
  public ir a(String paramString, im paramim, JSONObject paramJSONObject, boolean paramBoolean) {
    return a(paramString, paramim, c(), paramJSONObject, paramBoolean);
  }
  
  public ir a(String paramString, im paramim, boolean paramBoolean) {
    return a(paramString, paramim, new JSONObject(), paramBoolean);
  }
  
  public je a() {
    return b() ? this.c : null;
  }
  
  public void a(ih paramih, boolean paramBoolean) {
    this.e = paramBoolean;
    Properties properties = mzy.a(this.b, this.e).a();
    kks kks = new kks();
    if (paramBoolean) {
      kks.c(properties.getProperty("labNoAuthKey"));
    } else {
      kks.c(properties.getProperty("appKey"));
    } 
    kks.a(nad.a().b());
    kks.b(properties.getProperty("system"));
    ir ir = a(kks);
    try {
      this.c.a(ir, new gnu(this, paramBoolean, paramih));
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public boolean b() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */