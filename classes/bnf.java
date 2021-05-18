import android.os.Bundle;
import org.json.JSONObject;

final class bnf implements bni {
  public void a(Bundle paramBundle, String paramString, Object paramObject) {
    paramBundle.putString(paramString, (String)paramObject);
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject) {
    paramJSONObject.put(paramString, paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */