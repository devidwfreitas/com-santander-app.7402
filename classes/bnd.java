import android.os.Bundle;
import org.json.JSONObject;

final class bnd implements bni {
  public void a(Bundle paramBundle, String paramString, Object paramObject) {
    paramBundle.putLong(paramString, ((Long)paramObject).longValue());
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject) {
    paramJSONObject.put(paramString, paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */