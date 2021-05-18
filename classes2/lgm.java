import android.content.Context;
import com.santander.app.seguros.ui.consultative.activities.BillingActivity;

public class lgm implements gkw<is> {
  public lgm(BillingActivity paramBillingActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        BillingActivity.c(this.a).setState(aor.CONTENT);
        BillingActivity.a(this.a, mys.a().<ktp>a(paramis.c().toString(), ktp.class));
        BillingActivity.f(this.a);
        return;
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      String str;
      BillingActivity.c(this.a).setState(aor.CONTENT);
      BillingActivity billingActivity = this.a;
      if (paramis != null) {
        str = paramis.b();
      } else {
        str = this.a.getString(2131297343);
      } 
      mhj.c((Context)billingActivity, str);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */