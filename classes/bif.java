import org.json.JSONArray;
import org.json.JSONObject;

public final class bif implements bim {
  public bif(bin parambin) {}
  
  public void a(bix parambix) {
    if (this.a != null) {
      JSONObject jSONObject = parambix.b();
      if (jSONObject != null) {
        JSONArray jSONArray = jSONObject.optJSONArray("data");
      } else {
        jSONObject = null;
      } 
      this.a.a((JSONArray)jSONObject, parambix);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */