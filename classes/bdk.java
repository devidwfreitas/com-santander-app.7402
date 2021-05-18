import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

class bdk {
  private static bdj b(JSONObject paramJSONObject, awr paramawr) {
    JSONArray jSONArray = paramJSONObject.optJSONArray("it");
    String str = paramJSONObject.optString("nm");
    ArrayList<bcd> arrayList = new ArrayList();
    for (int i = 0; i < jSONArray.length(); i++) {
      bcd bcd = bdj.a(jSONArray.optJSONObject(i), paramawr);
      if (bcd != null)
        arrayList.add(bcd); 
    } 
    return new bdj(str, arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */