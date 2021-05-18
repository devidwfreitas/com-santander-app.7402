import android.util.Log;
import org.json.JSONObject;

public class aei extends aef {
  private static final String a = "authorized-direct-debit/v1/title-list";
  
  public void a(JSONObject paramJSONObject, aej paramaej) {
    try {
      adz.b().a().a((iq)a("authorized-direct-debit/v1/title-list", paramJSONObject, true), new ael(this, paramaej));
      return;
    } catch (Exception exception) {
      Log.e(aei.class.getName(), Log.getStackTraceString(exception));
      paramaej.a(null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */