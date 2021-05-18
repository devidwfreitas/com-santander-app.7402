import android.graphics.PointF;
import org.json.JSONArray;
import org.json.JSONObject;

public class azi {
  public static azg a(JSONObject paramJSONObject, awr paramawr, bbv<PointF> parambbv) {
    boolean bool;
    axz<PointF> axz = aya.a(paramJSONObject, paramawr, paramawr.p(), parambbv);
    JSONArray jSONArray2 = paramJSONObject.optJSONArray("ti");
    JSONArray jSONArray1 = paramJSONObject.optJSONArray("to");
    if (jSONArray2 != null && jSONArray1 != null) {
      PointF pointF2 = bes.a(jSONArray1, paramawr.p());
      PointF pointF1 = bes.a(jSONArray2, paramawr.p());
    } else {
      jSONArray1 = null;
      parambbv = null;
    } 
    azg azg = new azg(paramawr, (PointF)axz.a, (PointF)axz.b, axz.c, axz.d, axz.e, null);
    if (axz.b != null && axz.a != null && ((PointF)axz.a).equals(((PointF)axz.b).x, ((PointF)axz.b).y)) {
      bool = true;
    } else {
      bool = false;
    } 
    if (azg.b != null && !bool)
      azg.a(azg, bey.a((PointF)axz.a, (PointF)axz.b, (PointF)parambbv, (PointF)jSONArray1)); 
    return azg;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */