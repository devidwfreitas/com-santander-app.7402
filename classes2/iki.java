import android.text.Editable;
import android.text.TextWatcher;

class iki implements TextWatcher {
  iki(ikg paramikg) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (ikg.b(this.a).getText().toString().length() == 12)
      ikg.c(this.a).requestFocus(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */