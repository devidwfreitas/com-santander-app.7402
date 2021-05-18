import android.content.Context;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

public class agz extends ajc {
  private aha a;
  
  private Context b;
  
  private final String c = agz.class.getSimpleName();
  
  public agz(Context paramContext, aha paramaha) {
    this.a = paramaha;
    this.b = paramContext;
  }
  
  public void a() {
    String str = a(aiz.SALDO.getEndpoint());
    try {
      JSONObject jSONObject1 = new JSONObject();
      JSONObject jSONObject2 = new JSONObject();
      jSONObject2.put("code", "");
      jSONObject2.put("documentNumber", "");
      jSONObject1.put("customer", jSONObject2);
      aja.b().a().a(a(str, b(), jSONObject1), new ahb(this));
      return;
    } catch (ExecutionException executionException) {
      executionException.printStackTrace();
      return;
    } catch (InterruptedException interruptedException) {
      interruptedException.printStackTrace();
      return;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */