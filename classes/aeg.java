import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public class aeg extends aef {
  private static final String a = "authorized-direct-debit/v1/title-detail";
  
  private JSONObject a(aeb paramaeb) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("sequentialNumber", paramaeb.b());
      jSONObject.put("sourceCode", paramaeb.f());
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e(aeg.class.getName(), Log.getStackTraceString((Throwable)jSONException));
      return jSONObject;
    } 
  }
  
  public void a(aeb paramaeb, aeh paramaeh) {
    try {
      adz.b().a().a((iq)a("authorized-direct-debit/v1/title-detail", a(paramaeb), true), new aek(this, paramaeb, paramaeh));
      return;
    } catch (Exception exception) {
      Log.e(aeg.class.getName(), Log.getStackTraceString(exception));
      paramaeh.a((is)null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aeg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */