import android.text.Editable;
import android.text.TextWatcher;

class kjz implements TextWatcher {
  kjz(kjo paramkjo) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (paramCharSequence.length() == 2) {
      kjo.a(this.a, paramCharSequence.toString());
      kjo.a(this.a).k();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */