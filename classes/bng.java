import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONObject;

final class bng implements bni {
  public void a(Bundle paramBundle, String paramString, Object paramObject) {
    throw new IllegalArgumentException("Unexpected type from JSON");
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject) {
    JSONArray jSONArray = new JSONArray();
    paramObject = paramObject;
    int j = paramObject.length;
    int i;
    for (i = 0; i < j; i++)
      jSONArray.put(paramObject[i]); 
    paramJSONObject.put(paramString, jSONArray);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */