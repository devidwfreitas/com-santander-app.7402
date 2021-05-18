import android.text.Editable;
import android.text.TextWatcher;

class ldc implements TextWatcher {
  ldc(lcy paramlcy) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    boolean bool;
    lcy lcy1 = this.a;
    if (paramCharSequence.length() == 14) {
      bool = true;
    } else {
      bool = false;
    } 
    lcy.b(lcy1, bool);
    lcy.e(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ldc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */