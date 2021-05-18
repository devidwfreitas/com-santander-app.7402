import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;
import java.util.Arrays;
import java.util.Collections;
import org.json.JSONArray;

public class lqq implements gkw<is> {
  public lqq(MySinisterActivity paramMySinisterActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        if (paramis.c() != null) {
          MySinisterActivity.c(this.a).setState(aor.CONTENT);
          try {
            JSONArray jSONArray = paramis.c().getJSONArray("data");
            MySinisterActivity.a(this.a, Arrays.asList(mys.a().<kvp[]>a(jSONArray.toString(), (Class)kvp[].class)));
            if (MySinisterActivity.d(this.a).size() > 1)
              Collections.sort(MySinisterActivity.d(this.a), new lqr(this)); 
            MySinisterActivity.b(this.a, MySinisterActivity.d(this.a));
            return;
          } catch (Exception exception) {
            exception.printStackTrace();
            MySinisterActivity.b(this.a, null);
            return;
          } 
        } 
        MySinisterActivity.c(this.a).setState(aor.ERROR);
        ((TextView)MySinisterActivity.c(this.a).findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
        return;
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      MySinisterActivity.c(this.a).setState(aor.CONTENT);
      MySinisterActivity.b(this.a, MySinisterActivity.d(this.a));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */