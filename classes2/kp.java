import android.os.CountDownTimer;
import android.support.v4.content.res.ResourcesCompat;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.features.sms.viewmodel.SmsViewModel;

public class kp extends CountDownTimer {
  public kp(SmsViewModel paramSmsViewModel, long paramLong1, long paramLong2) {
    super(paramLong1, paramLong2);
  }
  
  public void onFinish() {
    if (SmsViewModel.a(this.a) != null) {
      SmsViewModel.a(this.a).setEnabled(true);
      SmsViewModel.a(this.a).setClickable(true);
      SmsViewModel.c(this.a).setBackground(ResourcesCompat.getDrawable(SmsViewModel.b(this.a).getResources(), R.drawable.style_gray_button, null));
    } 
  }
  
  public void onTick(long paramLong) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */