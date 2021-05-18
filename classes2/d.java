import java.util.Comparator;
import org.json.JSONException;
import org.json.JSONObject;

class d implements Comparator<JSONObject> {
  public int a(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    String str1;
    String str4 = new String();
    String str3 = new String();
    try {
      str1 = (String)paramJSONObject1.get("c");
      try {
        String str = (String)paramJSONObject2.get("c");
        return str1.compareTo(str);
      } catch (JSONException jSONException) {}
    } catch (JSONException jSONException) {
      str1 = str4;
    } 
    String str2 = str3;
    return str1.compareTo(str2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */