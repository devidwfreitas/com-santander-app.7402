import android.text.TextUtils;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lsb implements kxl<String> {
  public lsb(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void a(String paramString) {
    if (this.a.isFinishing())
      return; 
    this.a.b.setState(aor.ERROR);
    try {
      TextView textView = (TextView)this.a.b.findViewById(2131757215);
      if (TextUtils.isEmpty(paramString))
        paramString = this.a.getResources().getString(2131297122); 
      textView.setText(paramString);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      ((TextView)this.a.b.findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */