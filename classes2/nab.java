import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public class nab {
  private static final String a = "ERROR_DLCRYPTO";
  
  private static final String b = "MBB";
  
  private static nab c;
  
  private ji d = ji.a();
  
  public static nab a() {
    if (c == null)
      c = new nab(); 
    return c;
  }
  
  private void d(String paramString) {
    try {
      this.d.a(paramString);
      return;
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.toString());
      return;
    } 
  }
  
  private ir g() {
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("clientPublicKey", d());
      jSONObject1.put("system", "MBB");
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.toString());
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.toString());
    } 
  }
  
  private ih h() {
    return new nac(this);
  }
  
  public void a(String paramString) {
    try {
      this.d.b(paramString);
      return;
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.toString());
      return;
    } 
  }
  
  public String b(String paramString) {
    String str1;
    String str2 = "";
    try {
      paramString = this.d.f(paramString);
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.toString());
      str1 = str2;
    } 
    return str1.replaceAll("//s", "");
  }
  
  public void b() {
    String str = miq.C().f().b();
    if (str != null && !str.equals("")) {
      a(str);
      return;
    } 
    e();
  }
  
  public String c(String paramString) {
    try {
      return this.d.c(paramString);
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.toString());
      return "";
    } 
  }
  
  public void c() {
    try {
      a(miq.C().f().b());
      return;
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.toString());
      return;
    } 
  }
  
  public String d() {
    this.d.a(true);
    try {
      return this.d.c();
    } catch (Exception exception) {
      Log.e("ERROR_DLCRYPTO", exception.toString());
      return "";
    } 
  }
  
  public void e() {
    try {
      gnp.a().b().a(g(), h());
      return;
    } catch (Exception exception) {
      Log.e("ERROR_CALL_HUB", exception.toString());
      return;
    } 
  }
  
  public ji f() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */