import android.text.Editable;
import android.text.TextWatcher;

class lzu implements TextWatcher {
  lzu(lzt paramlzt) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (lzt.a(this.a).getText().toString().trim().length() <= 0) {
      lzt.b(this.a).setError(this.a.getResources().getString(2131297358));
      return;
    } 
    lzt.b(this.a).setError(null);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */