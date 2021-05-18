import android.widget.TextView;
import com.santander.app.seguros.ui.consultative.activities.CoverageActivity;

public class lgq implements kxl<String> {
  public lgq(CoverageActivity paramCoverageActivity) {}
  
  public void a(String paramString) {
    if (this.a.isFinishing())
      return; 
    CoverageActivity.b(this.a).setState(aor.ERROR);
    try {
      TextView textView = (TextView)CoverageActivity.b(this.a).findViewById(2131757215);
      if (paramString == null)
        paramString = this.a.getResources().getString(2131297122); 
      textView.setText(paramString);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      ((TextView)CoverageActivity.b(this.a).findViewById(2131757215)).setText(this.a.getResources().getString(2131297122));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */