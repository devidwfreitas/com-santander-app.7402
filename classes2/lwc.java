import android.content.Context;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

class lwc implements kxl<String> {
  lwc(lwa paramlwa) {}
  
  public void a(String paramString) {
    if (lvz.b(this.a.a).isFinishing())
      return; 
    (lvz.b(this.a.a)).b.setState(aor.CONTENT);
    SinisterDetailActivity sinisterDetailActivity = lvz.b(this.a.a);
    if (TextUtils.isEmpty(paramString))
      paramString = this.a.a.getResources().getString(2131297122); 
    mhj.c((Context)sinisterDetailActivity, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */