import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;

public class lqh implements kxl<ktp> {
  public lqh(ConfirmationPaymentActivity paramConfirmationPaymentActivity) {}
  
  public void a(ktp paramktp) {
    if (!this.a.isFinishing()) {
      ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
      if (paramktp != null && paramktp != null && !TextUtils.isEmpty(paramktp.b()) && !TextUtils.isEmpty(paramktp.g())) {
        ConfirmationPaymentActivity.e(this.a).setText("033 - SANTANDER");
        ConfirmationPaymentActivity.g(this.a).setText(mhj.a(paramktp.b(), '0', 4));
        if (paramktp.g().length() > 1) {
          ConfirmationPaymentActivity.h(this.a).setText(paramktp.g().substring(0, paramktp.g().length() - 1));
          ConfirmationPaymentActivity.i(this.a).setText(paramktp.g().substring(paramktp.g().length() - 1));
          return;
        } 
        ConfirmationPaymentActivity.h(this.a).setText(paramktp.g());
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */