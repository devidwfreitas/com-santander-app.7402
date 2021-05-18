import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class eja {
  private static final long d = TimeUnit.DAYS.toMillis(7L);
  
  public final String a;
  
  final String b;
  
  final long c;
  
  private eja(String paramString1, String paramString2, long paramLong) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramLong;
  }
  
  static eja a(String paramString) {
    String str;
    if (TextUtils.isEmpty(paramString))
      return null; 
    if (paramString.startsWith("{"))
      try {
        JSONObject jSONObject = new JSONObject(paramString);
        return new eja(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
      } catch (JSONException jSONException) {
        str = String.valueOf(jSONException);
        Log.w("InstanceID/Store", (new StringBuilder(String.valueOf(str).length() + 23)).append("Failed to parse token: ").append(str).toString());
        return null;
      }  
    return new eja(str, null, 0L);
  }
  
  static String a(String paramString1, String paramString2, long paramLong) {
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("token", paramString1);
      jSONObject.put("appVersion", paramString2);
      jSONObject.put("timestamp", paramLong);
      return jSONObject.toString();
    } catch (JSONException jSONException) {
      String str = String.valueOf(jSONException);
      Log.w("InstanceID/Store", (new StringBuilder(String.valueOf(str).length() + 24)).append("Failed to encode token: ").append(str).toString());
      return null;
    } 
  }
  
  public boolean b(String paramString) {
    return (System.currentTimeMillis() > this.c + d || !paramString.equals(this.b));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */