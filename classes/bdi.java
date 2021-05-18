import android.graphics.Path;
import org.json.JSONObject;

class bdi {
  static bdg a(JSONObject paramJSONObject, awr paramawr) {
    String str = paramJSONObject.optString("nm");
    JSONObject jSONObject1 = paramJSONObject.optJSONObject("c");
    if (jSONObject1 != null) {
      bal bal = ban.a(jSONObject1, paramawr);
    } else {
      jSONObject1 = null;
    } 
    JSONObject jSONObject2 = paramJSONObject.optJSONObject("o");
    if (jSONObject2 != null) {
      baw baw = bay.a(jSONObject2, paramawr);
    } else {
      paramawr = null;
    } 
    boolean bool = paramJSONObject.optBoolean("fillEnabled");
    if (paramJSONObject.optInt("r", 1) == 1) {
      Path.FillType fillType1 = Path.FillType.WINDING;
      return new bdg(str, bool, fillType1, (bal)jSONObject1, (baw)paramawr, null);
    } 
    Path.FillType fillType = Path.FillType.EVEN_ODD;
    return new bdg(str, bool, fillType, (bal)jSONObject1, (baw)paramawr, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */