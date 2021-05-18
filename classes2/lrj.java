import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

public class lrj implements gkw<is> {
  public lrj(SinisterActivity paramSinisterActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing())
        try {
          JSONArray jSONArray = paramis.c().getJSONArray("data");
          SinisterActivity.a(this.a, new ArrayList(Arrays.asList((Object[])mys.a().<kuo[]>a(jSONArray.toString(), (Class)kuo[].class))));
          this.a.s();
          ArrayList<kuo> arrayList = new ArrayList();
          int i = 0;
          while (true) {
            if (i < SinisterActivity.a(this.a).size()) {
              kuo kuo = new kuo();
              kuo.i(String.valueOf(Integer.valueOf(((kuo)SinisterActivity.a(this.a).get(i)).i())));
              kuo.e(String.valueOf(Integer.valueOf(((kuo)SinisterActivity.a(this.a).get(i)).e())));
              arrayList.add(kuo);
              i++;
              continue;
            } 
            return;
          } 
        } catch (JSONException jSONException) {
          jSONException.printStackTrace();
          this.a.D.setState(aor.ERROR);
          ((TextView)this.a.D.findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
          return;
        }  
      return;
    } 
    if (!this.a.isFinishing()) {
      SinisterActivity.a(this.a, (is)jSONException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */