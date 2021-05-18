import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;
import java.util.List;

public class lqe implements gkw {
  public lqe(ConfirmationPaymentActivity paramConfirmationPaymentActivity) {}
  
  public void a(Object paramObject) {
    if (paramObject == null)
      return; 
    paramObject = paramObject;
    if (paramObject != null && paramObject.b() != null && !paramObject.b().isEmpty()) {
      List list = paramObject.b();
      if (list != null && !TextUtils.isEmpty(ConfirmationPaymentActivity.d(this.a))) {
        paramObject = mhj.a(ConfirmationPaymentActivity.d(this.a), '0', 4);
        for (mkq mkq : list) {
          if (!TextUtils.isEmpty(mkq.d()) && mkq.d().replaceAll(" ", "").equalsIgnoreCase((String)paramObject)) {
            ConfirmationPaymentActivity.e(this.a).setText(mkq.d() + " " + mkq.e());
            break;
          } 
        } 
      } 
    } 
    ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */