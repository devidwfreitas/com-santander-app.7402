import android.content.Context;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.ContestationActivity;

class lxj implements kxl<String> {
  lxj(lxc paramlxc) {}
  
  public void a(String paramString) {
    if (lxc.a(this.a).isFinishing())
      return; 
    lxc.a(this.a).b().setState(aor.CONTENT);
    ContestationActivity contestationActivity = lxc.a(this.a);
    if (TextUtils.isEmpty(paramString))
      paramString = this.a.getResources().getString(2131297122); 
    mhj.c((Context)contestationActivity, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */