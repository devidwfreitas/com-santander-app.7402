import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.transfergolden.presentation.LeituraInfoEditText;

public class mtm implements TextWatcher {
  public mtm(LeituraInfoEditText paramLeituraInfoEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {
    LeituraInfoEditText.a(this.a, LeituraInfoEditText.c(this.a).getText().toString());
    this.a.d();
    if (LeituraInfoEditText.b(this.a) != null)
      LeituraInfoEditText.b(this.a).a(); 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mtm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */