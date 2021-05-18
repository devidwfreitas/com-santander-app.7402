import android.content.Context;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.ContestationActivity;

class lxe implements kxl<kwd> {
  lxe(lxc paramlxc) {}
  
  public void a(kwd paramkwd) {
    if (lxc.a(this.a).isFinishing())
      return; 
    if (paramkwd != null) {
      String str;
      if (paramkwd.b() == null) {
        lxc.a(this.a).b().setState(aor.CONTENT);
        lxc.a(this.a).a((Fragment)lxm.a(), "success-contestation-frag-tag");
        return;
      } 
      ContestationActivity contestationActivity = lxc.a(this.a);
      if (!TextUtils.isEmpty(paramkwd.a())) {
        str = paramkwd.a();
      } else {
        str = this.a.getResources().getString(2131297122);
      } 
      mhj.c((Context)contestationActivity, str);
      return;
    } 
    mhj.c((Context)lxc.a(this.a), this.a.getResources().getString(2131297122));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */