import android.widget.TextView;
import com.santander.app.seguros.ui.consultative.activities.CoverageActivity;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;

public class lgs implements gkw<is> {
  public lgs(CoverageActivity paramCoverageActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        CoverageActivity.b(this.a).setState(aor.CONTENT);
        try {
          JSONArray jSONArray = paramis.c().getJSONArray("data");
          List<kny> list = Arrays.asList(mys.a().<kny[]>a(jSONArray.toString(), (Class)kny[].class));
          CoverageActivity.c(this.a, list);
          return;
        } catch (Exception exception) {
          exception.printStackTrace();
          CoverageActivity.b(this.a).setState(aor.ERROR);
          ((TextView)CoverageActivity.b(this.a).findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
          return;
        } 
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      CoverageActivity.b(this.a).setState(aor.ERROR);
      try {
        String str;
        TextView textView = (TextView)CoverageActivity.b(this.a).findViewById(2131757215);
        if (exception.b() != null) {
          str = exception.b();
        } else {
          str = this.a.getResources().getString(2131297122);
        } 
        textView.setText(str);
        return;
      } catch (Exception exception1) {
        exception1.printStackTrace();
        ((TextView)CoverageActivity.b(this.a).findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */