import android.graphics.PointF;
import org.json.JSONObject;

class bcw {
  static bcu a(JSONObject paramJSONObject, awr paramawr) {
    String str = paramJSONObject.optString("nm");
    bcx bcx = bcx.forValue(paramJSONObject.optInt("sy"));
    bao bao1 = baq.a(paramJSONObject.optJSONObject("pt"), paramawr, false);
    bbu<PointF, PointF> bbu = bba.a(paramJSONObject.optJSONObject("p"), paramawr);
    bao bao2 = baq.a(paramJSONObject.optJSONObject("r"), paramawr, false);
    bao bao3 = baq.a(paramJSONObject.optJSONObject("or"), paramawr);
    bao bao4 = baq.a(paramJSONObject.optJSONObject("os"), paramawr, false);
    if (bcx == bcx.Star) {
      bao bao7 = baq.a(paramJSONObject.optJSONObject("ir"), paramawr);
      bao bao6 = baq.a(paramJSONObject.optJSONObject("is"), paramawr, false);
      bao bao5 = bao7;
      return new bcu(str, bcx, bao1, bbu, bao2, bao5, bao3, bao6, bao4, null);
    } 
    paramawr = null;
    paramJSONObject = null;
    return new bcu(str, bcx, bao1, bbu, bao2, (bao)paramJSONObject, bao3, (bao)paramawr, bao4, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bcw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */