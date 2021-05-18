import org.json.JSONObject;

public final class baq {
  static bao a() {
    return new bao(null);
  }
  
  public static bao a(JSONObject paramJSONObject, awr paramawr) {
    return a(paramJSONObject, paramawr, true);
  }
  
  public static bao a(JSONObject paramJSONObject, awr paramawr, boolean paramBoolean) {
    float f;
    if (paramBoolean) {
      f = paramawr.p();
    } else {
      f = 1.0F;
    } 
    if (paramJSONObject != null && paramJSONObject.has("x"))
      paramawr.a("Lottie doesn't support expressions."); 
    bbx bbx = bbw.a(paramJSONObject, f, paramawr, bar.a).a();
    return new bao(bbx.a, (Float)bbx.b, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\baq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */