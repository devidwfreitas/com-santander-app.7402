import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterDocumentsActivity;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;

public class lsj implements gkw<is> {
  public lsj(SinisterDocumentsActivity paramSinisterDocumentsActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        if (paramis != null)
          try {
            SinisterDocumentsActivity.g(this.a).setState(aor.CONTENT);
            JSONArray jSONArray = paramis.c().getJSONArray("data");
            if (jSONArray != null) {
              List<kuw> list = Arrays.asList(mys.a().<kuw[]>a(jSONArray.toString(), (Class)kuw[].class));
              SinisterDocumentsActivity.a(this.a, list);
              return;
            } 
            return;
          } catch (Exception exception) {
            exception.printStackTrace();
            SinisterDocumentsActivity.g(this.a).setState(aor.ERROR);
            ((TextView)SinisterDocumentsActivity.g(this.a).findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
            return;
          }  
        SinisterDocumentsActivity.g(this.a).setState(aor.ERROR);
        ((TextView)SinisterDocumentsActivity.g(this.a).findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
        return;
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      SinisterDocumentsActivity.g(this.a).setState(aor.ERROR);
      try {
        String str;
        TextView textView = (TextView)SinisterDocumentsActivity.g(this.a).findViewById(2131757215);
        if (exception.b() != null) {
          str = exception.b();
        } else {
          str = this.a.getResources().getString(2131297122);
        } 
        textView.setText(str);
        return;
      } catch (Exception exception1) {
        exception1.printStackTrace();
        ((TextView)SinisterDocumentsActivity.g(this.a).findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */