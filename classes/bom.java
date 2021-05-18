import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

final class bom implements Runnable {
  bom(Context paramContext, String paramString1, String paramString2) {}
  
  public void run() {
    SharedPreferences sharedPreferences = this.a.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
    String str = sharedPreferences.getString(this.b, null);
    if (!bqq.a(str)) {
      try {
        JSONObject jSONObject1 = new JSONObject(str);
      } catch (JSONException jSONException) {
        bqq.a("FacebookSDK", (Exception)jSONException);
        jSONException = null;
      } 
      if (jSONException != null)
        bol.a(this.c, (JSONObject)jSONException); 
    } 
    JSONObject jSONObject = bol.b(this.c);
    if (jSONObject != null) {
      bol.a(this.c, jSONObject);
      sharedPreferences.edit().putString(this.b, jSONObject.toString()).apply();
    } 
    bma.a();
    bol.b().set(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */