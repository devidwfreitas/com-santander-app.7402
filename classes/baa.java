import android.graphics.Color;
import org.json.JSONArray;
import org.json.JSONObject;

public final class baa {
  public static azz a(JSONObject paramJSONObject) {
    String str1 = paramJSONObject.optString("t");
    String str2 = paramJSONObject.optString("f");
    int j = paramJSONObject.optInt("s");
    int k = paramJSONObject.optInt("j");
    int m = paramJSONObject.optInt("tr");
    double d = paramJSONObject.optDouble("lh");
    JSONArray jSONArray = paramJSONObject.optJSONArray("fc");
    int n = Color.argb(255, (int)(jSONArray.optDouble(0) * 255.0D), (int)(jSONArray.optDouble(1) * 255.0D), (int)(jSONArray.optDouble(2) * 255.0D));
    jSONArray = paramJSONObject.optJSONArray("sc");
    int i = 0;
    if (jSONArray != null)
      i = Color.argb(255, (int)(jSONArray.optDouble(0) * 255.0D), (int)(jSONArray.optDouble(1) * 255.0D), (int)(jSONArray.optDouble(2) * 255.0D)); 
    return new azz(str1, str2, j, k, m, d, n, i, paramJSONObject.optInt("sw"), paramJSONObject.optBoolean("of"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\baa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */