import android.content.Context;
import com.santander.app.seguros.ui.consultative.activities.BillingActivity;
import java.util.Arrays;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;

public class lgk implements gkw<is> {
  public lgk(BillingActivity paramBillingActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        BillingActivity.c(this.a).setState(aor.CONTENT);
        try {
          JSONArray jSONArray = paramis.c().getJSONArray("data");
        } catch (JSONException jSONException) {
          jSONException.printStackTrace();
          jSONException = null;
        } 
        if (jSONException != null) {
          BillingActivity.a(this.a, Arrays.asList(mys.a().<knx[]>a(jSONException.toString(), (Class)knx[].class)));
          if (BillingActivity.d(this.a).size() > 1)
            Collections.sort(BillingActivity.d(this.a), new lgl(this)); 
          BillingActivity.e(this.a);
          return;
        } 
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      String str;
      BillingActivity.c(this.a).setState(aor.CONTENT);
      BillingActivity billingActivity = this.a;
      if (jSONException != null) {
        str = jSONException.toString();
      } else {
        str = this.a.getString(2131297343);
      } 
      mhj.c((Context)billingActivity, str);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */