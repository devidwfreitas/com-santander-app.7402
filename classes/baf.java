import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class baf {
  public static bae a(JSONObject paramJSONObject, awr paramawr) {
    char c = paramJSONObject.optString("ch").charAt(0);
    int i = paramJSONObject.optInt("size");
    double d = paramJSONObject.optDouble("w");
    String str1 = paramJSONObject.optString("style");
    String str2 = paramJSONObject.optString("fFamily");
    JSONObject jSONObject = paramJSONObject.optJSONObject("data");
    List<?> list2 = Collections.emptyList();
    List<?> list1 = list2;
    if (jSONObject != null) {
      JSONArray jSONArray = jSONObject.optJSONArray("shapes");
      list1 = list2;
      if (jSONArray != null) {
        list1 = new ArrayList(jSONArray.length());
        int j;
        for (j = 0; j < jSONArray.length(); j++)
          list1.add(bdj.a(jSONArray.optJSONObject(j), paramawr)); 
      } 
    } 
    return new bae((List)list1, c, i, d, str1, str2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\baf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */