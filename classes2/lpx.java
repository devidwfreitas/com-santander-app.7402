import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;
import java.util.Locale;

public class lpx implements TextWatcher {
  public lpx(ConfirmationPaymentActivity paramConfirmationPaymentActivity, EditText paramEditText, grz paramgrz) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramCharSequence = this.a.getText().toString().toLowerCase(Locale.getDefault());
    this.b.a((String)paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */