import android.content.Context;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lrz implements kxl<String> {
  public lrz(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void a(String paramString) {
    if (this.a.isFinishing())
      return; 
    this.a.b.setState(aor.ERROR);
    SinisterDetailActivity sinisterDetailActivity = this.a;
    if (TextUtils.isEmpty(paramString))
      paramString = this.a.getResources().getString(2131297122); 
    mhj.c((Context)sinisterDetailActivity, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */