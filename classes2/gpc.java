import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.santander.app.components.view.ClickToSelectEditText;
import java.util.Locale;

public class gpc implements TextWatcher {
  public gpc(ClickToSelectEditText paramClickToSelectEditText, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramCharSequence = this.a.getText().toString().toLowerCase(Locale.getDefault());
    ClickToSelectEditText.a(this.b, (String)paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */