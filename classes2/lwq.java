import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

class lwq implements gkw<is> {
  lwq(lwk paramlwk) {}
  
  public void a(is paramis) {
    String str;
    if (paramis != null && paramis.a().intValue() == 200) {
      Log.i("DOCUMENT_RECTOR", "STATUS EDIT SUCCESS");
      if (lwk.a(this.a) == null || lwk.a(this.a).isFinishing())
        return; 
      (lwk.a(this.a)).b.setState(aor.CONTENT);
      lwk.c(this.a).setVisibility(8);
      lwk.a(this.a).c();
      return;
    } 
    Log.i("DOCUMENT_RECTOR", "STATUS EDIT ERROR");
    SinisterDetailActivity sinisterDetailActivity = lwk.a(this.a);
    if (paramis != null && !TextUtils.isEmpty(paramis.b())) {
      str = paramis.b();
    } else {
      str = this.a.getResources().getString(2131297122);
    } 
    mhj.c((Context)sinisterDetailActivity, str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */