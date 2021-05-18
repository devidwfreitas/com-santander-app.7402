import android.text.TextUtils;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lsf implements kxl<String> {
  public lsf(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void a(String paramString) {
    if (!this.a.isFinishing() && SinisterDetailActivity.g(this.a, SinisterDetailActivity.f(this.a))) {
      SinisterDetailActivity.i(this.a).dismiss();
      this.a.b.setState(aor.ERROR);
      try {
        TextView textView = (TextView)this.a.b.findViewById(2131757215);
        if (TextUtils.isEmpty(paramString))
          paramString = this.a.getResources().getString(2131297122); 
        textView.setText(paramString);
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */