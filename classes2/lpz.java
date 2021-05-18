import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;

public class lpz implements gkw<is> {
  public lpz(ConfirmationPaymentActivity paramConfirmationPaymentActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        try {
          if (!paramis.c().isNull("data")) {
            JSONArray jSONArray = paramis.c().getJSONArray("data");
            ArrayList arrayList = new ArrayList(Arrays.asList((Object[])mys.a().<ktt[]>a(jSONArray.toString(), (Class)ktt[].class)));
            ConfirmationPaymentActivity.a(this.a, ConfirmationPaymentActivity.b(this.a, arrayList));
            ConfirmationPaymentActivity.b(this.a);
            return;
          } 
        } catch (Exception exception) {
          exception.printStackTrace();
          ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
          return;
        } 
        ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
        return;
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */