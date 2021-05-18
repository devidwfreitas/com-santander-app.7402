import org.json.JSONObject;

public final class bbq {
  public static bbp a(JSONObject paramJSONObject, awr paramawr) {
    bao bao = null;
    if (paramJSONObject == null || !paramJSONObject.has("a"))
      return new bbp(null, null, null, null); 
    JSONObject jSONObject3 = paramJSONObject.optJSONObject("a");
    paramJSONObject = jSONObject3.optJSONObject("fc");
    if (paramJSONObject != null) {
      bal bal = ban.a(paramJSONObject, paramawr);
    } else {
      paramJSONObject = null;
    } 
    JSONObject jSONObject1 = jSONObject3.optJSONObject("sc");
    if (jSONObject1 != null) {
      bal bal = ban.a(jSONObject1, paramawr);
    } else {
      jSONObject1 = null;
    } 
    JSONObject jSONObject2 = jSONObject3.optJSONObject("sw");
    if (jSONObject2 != null) {
      bao bao1 = baq.a(jSONObject2, paramawr);
    } else {
      jSONObject2 = null;
    } 
    jSONObject3 = jSONObject3.optJSONObject("t");
    if (jSONObject3 != null)
      bao = baq.a(jSONObject3, paramawr); 
    return new bbp((bal)paramJSONObject, (bal)jSONObject1, (bao)jSONObject2, bao);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bbq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */