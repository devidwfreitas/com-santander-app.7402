import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import org.json.JSONObject;

public class igo implements igm {
  private final String a = "ERROR_JSON_OBJECT";
  
  private final Activity b;
  
  private miq c;
  
  private Dialog d;
  
  private iia e;
  
  private ign f;
  
  public igo(ign paramign, Activity paramActivity) {
    this.f = paramign;
    this.b = paramActivity;
    this.c = miq.C();
    this.e = new iib();
  }
  
  private JSONObject b() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("statusType", "C");
      return jSONObject;
    } catch (Exception exception) {
      Log.e("ERROR_JSON_OBJECT", exception.getMessage());
      return jSONObject;
    } 
  }
  
  private JSONObject b(int paramInt) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("proposalCode", paramInt);
      return jSONObject;
    } catch (Exception exception) {
      Log.e("ERROR_JSON_OBJECT", exception.getMessage());
      return jSONObject;
    } 
  }
  
  private JSONObject b(igk paramigk) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("proposalId", paramigk.a());
      jSONObject.put("statusId", paramigk.b());
      jSONObject.put("cancellationReasonCode", paramigk.c());
      return jSONObject;
    } catch (Exception exception) {
      Log.e("ERROR_JSON_OBJECT", exception.getMessage());
      return jSONObject;
    } 
  }
  
  public void a() {
    this.d = mxn.b(this.b);
    this.e.c(new igp(this), b());
  }
  
  public void a(int paramInt) {
    this.e.d(new igr(this), b(paramInt));
  }
  
  public void a(igk paramigk) {
    this.d = mxn.b(this.b);
    this.e.b(new igq(this), b(paramigk));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\igo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */