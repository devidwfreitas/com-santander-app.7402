import android.graphics.PointF;
import android.util.Log;
import java.util.Collections;
import org.json.JSONObject;

public class bbt {
  public static bbr a() {
    return new bbr(new bba(), new bba(), bbh.a(), baq.a(), bay.a(), baq.a(), baq.a(), null);
  }
  
  public static bbr a(JSONObject paramJSONObject, awr paramawr) {
    bba bba;
    bbf bbf;
    baw baw;
    JSONObject jSONObject1 = paramJSONObject.optJSONObject("a");
    if (jSONObject1 != null) {
      bba = new bba(jSONObject1.opt("k"), paramawr);
    } else {
      Log.w("LOTTIE", "Layer has no transform property. You may be using an unsupported layer type such as a camera.");
      bba = new bba();
    } 
    JSONObject jSONObject2 = paramJSONObject.optJSONObject("p");
    if (jSONObject2 != null) {
      bbu<PointF, PointF> bbu = bba.a(jSONObject2, paramawr);
    } else {
      a("position");
      jSONObject2 = null;
    } 
    JSONObject jSONObject3 = paramJSONObject.optJSONObject("s");
    if (jSONObject3 != null) {
      bbf = bbh.a(jSONObject3, paramawr);
    } else {
      bbf = new bbf(Collections.emptyList(), new baj());
    } 
    JSONObject jSONObject5 = paramJSONObject.optJSONObject("r");
    JSONObject jSONObject4 = jSONObject5;
    if (jSONObject5 == null)
      jSONObject4 = paramJSONObject.optJSONObject("rz"); 
    if (jSONObject4 != null) {
      bao bao = baq.a(jSONObject4, paramawr, false);
    } else {
      a("rotation");
      jSONObject4 = null;
    } 
    jSONObject5 = paramJSONObject.optJSONObject("o");
    if (jSONObject5 != null) {
      baw = bay.a(jSONObject5, paramawr);
    } else {
      baw = new baw(Collections.emptyList(), Integer.valueOf(100));
    } 
    JSONObject jSONObject6 = paramJSONObject.optJSONObject("so");
    if (jSONObject6 != null) {
      bao bao = baq.a(jSONObject6, paramawr, false);
    } else {
      jSONObject6 = null;
    } 
    paramJSONObject = paramJSONObject.optJSONObject("eo");
    if (paramJSONObject != null) {
      bao bao = baq.a(paramJSONObject, paramawr, false);
      return new bbr(bba, (bbu)jSONObject2, bbf, (bao)jSONObject4, baw, (bao)jSONObject6, bao, null);
    } 
    paramJSONObject = null;
    return new bbr(bba, (bbu)jSONObject2, bbf, (bao)jSONObject4, baw, (bao)jSONObject6, (bao)paramJSONObject, null);
  }
  
  private static void a(String paramString) {
    throw new IllegalArgumentException("Missing transform for " + paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bbt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */