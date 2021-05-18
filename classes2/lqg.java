import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;

public class lqg implements View.OnFocusChangeListener {
  public lqg(ConfirmationPaymentActivity paramConfirmationPaymentActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean)
      ConfirmationPaymentActivity.a(this.a, ConfirmationPaymentActivity.f(this.a)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */