import android.support.v7.widget.LinearLayoutManager;
import android.util.Log;
import org.json.JSONObject;

final class afu extends aer {
  afu(afh paramafh, LinearLayoutManager paramLinearLayoutManager) {
    super(paramLinearLayoutManager);
  }
  
  public final void b() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("rebootIndicator", "S");
      JSONObject jSONObject1 = new JSONObject();
      aeb aeb = afh.d(this.b).get(afh.d(this.b).size() - 1);
      jSONObject.put("paymentType", aeb.i());
      jSONObject1.put("dueDate", aeb.d());
      jSONObject1.put("sequentialNumber", aeb.b());
      jSONObject1.put("documentNumber", aea.a().d().f(aea.a().d().c(aeb.h())));
      jSONObject.put("recall", jSONObject1);
      afh.a(this.b, jSONObject);
      return;
    } catch (Exception exception) {
      Log.e(afh.class.getName(), Log.getStackTraceString(exception));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */