import android.os.Bundle;
import org.json.JSONObject;

final class bnc implements bni {
  public void a(Bundle paramBundle, String paramString, Object paramObject) {
    paramBundle.putInt(paramString, ((Integer)paramObject).intValue());
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject) {
    paramJSONObject.put(paramString, paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */