import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.OpenSuccessSinisterActivity;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

public class lqv implements gkw<is> {
  public lqv(OpenSuccessSinisterActivity paramOpenSuccessSinisterActivity) {}
  
  public void a(is paramis) {
    List<kve> list;
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        OpenSuccessSinisterActivity.b(this.a).setState(aor.CONTENT);
        if (paramis != null) {
          JSONException jSONException2 = null;
          try {
            JSONArray jSONArray = paramis.c().getJSONArray("data");
          } catch (JSONException jSONException1) {
            jSONException1.printStackTrace();
            jSONException1 = jSONException2;
          } 
          list = Arrays.asList(mys.a().<kve[]>a(jSONException1.toString(), (Class)kve[].class));
          OpenSuccessSinisterActivity.d(this.a).setText(OpenSuccessSinisterActivity.c(this.a));
          OpenSuccessSinisterActivity.a(this.a, list.get(0));
          OpenSuccessSinisterActivity.a(this.a, OpenSuccessSinisterActivity.e(this.a).h());
          OpenSuccessSinisterActivity.g(this.a).setText(OpenSuccessSinisterActivity.f(this.a));
          OpenSuccessSinisterActivity.h(this.a).setText(mhj.a(new Date(), "dd/MM/yyyy - HH:mm:ss"));
          return;
        } 
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      String str;
      OpenSuccessSinisterActivity.b(this.a).setState(aor.ERROR);
      TextView textView = (TextView)OpenSuccessSinisterActivity.b(this.a).findViewById(2131757215);
      if (list.b() != null) {
        str = list.b();
      } else {
        str = this.a.getResources().getString(2131297122);
      } 
      textView.setText(str);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */