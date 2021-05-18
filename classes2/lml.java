import android.text.Editable;
import android.text.TextWatcher;

class lml implements TextWatcher {
  lml(lmi paramlmi) {}
  
  public void afterTextChanged(Editable paramEditable) {
    lmi.a(this.a, paramEditable, this);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */