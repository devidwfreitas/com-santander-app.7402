import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;

public class lpy implements gkw<is> {
  public lpy(ConfirmationPaymentActivity paramConfirmationPaymentActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
        if (paramis != null) {
          ktp ktp = mys.a().<ktp>a(paramis.c().toString(), ktp.class);
          if (ktp != null && !TextUtils.isEmpty(ktp.b()) && !TextUtils.isEmpty(ktp.g())) {
            ConfirmationPaymentActivity.e(this.a).setText("033 - SANTANDER");
            ConfirmationPaymentActivity.g(this.a).setText(mhj.a(ktp.b(), '0', 4));
            if (ktp.g().length() > 1) {
              ConfirmationPaymentActivity.h(this.a).setText(ktp.g().substring(0, ktp.g().length() - 1));
              ConfirmationPaymentActivity.i(this.a).setText(ktp.g().substring(ktp.g().length() - 1));
              return;
            } 
            ConfirmationPaymentActivity.h(this.a).setText(ktp.g());
            return;
          } 
        } 
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */