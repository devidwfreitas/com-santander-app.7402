import com.facebook.GraphRequest;
import org.json.JSONArray;
import org.json.JSONObject;

public class bih implements bim {
  public bih(GraphRequest paramGraphRequest, bim parambim) {}
  
  public void a(bix parambix) {
    JSONArray jSONArray;
    JSONObject jSONObject = parambix.b();
    if (jSONObject != null) {
      jSONObject = jSONObject.optJSONObject("__debug__");
    } else {
      jSONObject = null;
    } 
    if (jSONObject != null) {
      jSONArray = jSONObject.optJSONArray("messages");
    } else {
      jSONArray = null;
    } 
    if (jSONArray != null)
      for (int i = 0; i < jSONArray.length(); i++) {
        String str;
        JSONObject jSONObject1 = jSONArray.optJSONObject(i);
        if (jSONObject1 != null) {
          String str1 = jSONObject1.optString("message");
        } else {
          jSONObject = null;
        } 
        if (jSONObject1 != null) {
          str = jSONObject1.optString("type");
        } else {
          str = null;
        } 
        if (jSONObject1 != null) {
          String str1 = jSONObject1.optString("link");
        } else {
          jSONObject1 = null;
        } 
        if (jSONObject != null && str != null) {
          String str1;
          bjb bjb = bjb.GRAPH_API_DEBUG_INFO;
          if (str.equals("warning"))
            bjb = bjb.GRAPH_API_DEBUG_WARNING; 
          JSONObject jSONObject2 = jSONObject;
          if (!bqq.a((String)jSONObject1))
            str1 = jSONObject + " Link: " + jSONObject1; 
          bpu.a(bjb, GraphRequest.b, str1);
        } 
      }  
    if (this.a != null)
      this.a.a(parambix); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bih.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */