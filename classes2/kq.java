import android.text.Editable;
import android.text.TextWatcher;
import br.com.santander.dynamicauth.features.sms.viewmodel.SmsViewModel;

public class kq implements TextWatcher {
  public kq(SmsViewModel paramSmsViewModel) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (paramEditable.length() >= 4) {
      SmsViewModel.d(this.a).setVisibility(0);
      SmsViewModel.c(this.a).setEnabled(true);
      SmsViewModel.c(this.a).setClickable(true);
      return;
    } 
    SmsViewModel.d(this.a).setVisibility(4);
    SmsViewModel.c(this.a).setEnabled(false);
    SmsViewModel.c(this.a).setClickable(false);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */